<?xml version="1.0" encoding="UTF-8"?>
<?xml-model href="../resources/xproc30.rng" type="application/xml"?>
<p:declare-step xmlns:p="http://www.w3.org/ns/xproc" name="pipeline"
    xmlns:tm="http://itl.nist.gov/ns/voting/test-method" type="tm:xml-steps" version="3.0"
    xmlns:eel="http://itl.nist.gov/ns/voting/1500-101/v1">
    <p:import href="./consolidate_reports.xpl" />
    <p:input port="documentation" />
    <p:input port="json-report" sequence="true">
        <p:empty />
    </p:input>
    <p:input port="source" primary="true" />
    <p:output port="report" primary="true" />
    <p:option name="mode" select="'conformance'" />
    <p:option name="reportType" select="'XML'" />
    <p:option name="schemaNS" required="true" />
    <p:option name="stopOnError" select="false()" />
    <!-- we could also just delete it, but not sure we want to modify input, might break streaming
    later -->
    <p:if test="exists(/*/@xsi:schemaLocation)"
        xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
        <p:error code="tm:schemaLocationNotAllowed">
            <p:with-input port="source">
                <message>Attribute xsi:schemaLocation on root tag is disallowed for
                    {p:document-property(.,'base-uri')}.</message>
            </p:with-input>
        </p:error>
    </p:if>
    <!-- validate EEL according to baseline schema -->
    <p:validate-with-xml-schema
        message="Validating source against XML Election Event Logging v1 (1500-101)"
        name="source-xml-validation" assert-valid="{$stopOnError}">
        <p:with-input port="schema">
            <p:document content-type="application/xml" href="{$schemaNS}" />
        </p:with-input>
    </p:validate-with-xml-schema>
    <!-- check root -->
    <p:if test="not(exists(eel:ElectionEventLog))">
        <p:error code="tm:badtag">
            <p:with-input port="source">
                <message>The input document root tag is unexpected. Expected "ElectionEventLog" for
                    {p:document-property(.,'base-uri')}</message>
            </p:with-input>
        </p:error>
    </p:if>
    <!-- validate EEL-Documentation to baseline schema -->
    <p:validate-with-xml-schema
        message="Validating EEL Documentation against XML Election Event Logging v1 (1500-101)"
        name="documentation-xml-validation" assert-valid="{$stopOnError}">
        <p:with-input port="source" pipe="documentation@pipeline" />
        <p:with-input port="schema">
            <p:document content-type="application/xml" href="{$schemaNS}" />
        </p:with-input>
    </p:validate-with-xml-schema>
    <!-- we could also just delete it, but not sure we want to modify input, might break streaming
    later -->
    <p:if test="exists(/*/@xsi:schemaLocation)"
        xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
        <p:variable name="current-document" select="document-uri(.)"></p:variable>
        <p:error code="tm:schemaLocationNotAllowed">
            <p:with-input port="source">
                <message>Attribute xsi:schemaLocation on root tag is disallowed for
                    {p:document-property(.,'base-uri')}.</message>
            </p:with-input>
        </p:error>
    </p:if>
    <!-- check root -->
    <p:if test="not(exists(eel:ElectionEventLogDocumentation))">
        <p:error code="tm:badtag">
            <p:with-input port="source">
                <message>The input document root tag is unexpected. Expected
                    "ElectionEventLogDocumentation" for {p:document-property(.,'base-uri')}.</message>
            </p:with-input>
        </p:error>
    </p:if>
    <!-- Run XSLT to convert EEEL-D to SCH -->
    <p:xslt name="generate-sch" message="Creating Schematron rules from EEL Documentation">
        <p:with-input port="stylesheet" href="../resources/eel_v1/generate_eeld_sch.xslt" />
    </p:xslt>
    <!-- check is valid according to schematron RNG -->
    <p:if test="$mode = 'conformance'">
        <p:validate-with-relax-ng message="Validating generated Schematron ruleset">
            <p:with-input port="schema" href="http://purl.oclc.org/dsdl/schematron" />
        </p:validate-with-relax-ng>
    </p:if>
    <!-- Run SCH against EEL instance -->
    <p:validate-with-schematron assert-valid="{$stopOnError}" report-format="xvrl"
        name="schematron-validation" message="Running Schematron Ruleset against EEL input">
        <p:with-input port="schema" pipe="result@generate-sch" />
        <p:with-input port="source" pipe="source@pipeline" />
    </p:validate-with-schematron>
    <!-- consolidate step reports -->
    <tm:consolidate-reports>
        <p:with-input>
            <p:pipe step="pipeline" port="json-report" />
            <p:pipe step="documentation-xml-validation" port="report" />
            <p:pipe step="source-xml-validation" port="report" />
            <p:pipe step="schematron-validation" port="report" />
        </p:with-input>
        <p:with-option name="reportType" select="$reportType" />
        <p:with-option name="mode" select="$mode" />
    </tm:consolidate-reports>
</p:declare-step>