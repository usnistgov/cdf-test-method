<?xml version="1.0" encoding="UTF-8"?>
<?xml-model href="../resources/xproc30.rng" type="application/xml"?>
<p:declare-step xmlns:p="http://www.w3.org/ns/xproc" name="pipeline"
    xmlns:tm="http://itl.nist.gov/ns/voting/test-method" type="tm:xml-steps" version="3.0">
    <p:import href="./consolidate_reports.xpl" />
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
    <!-- validate against baseline schema -->
    <p:validate-with-xml-schema message="Validating source against XML Schema {$schemaNS}"
        name="xml-validation" assert-valid="{$stopOnError}">
        <p:with-input port="schema">
            <p:document content-type="application/xml" href="{$schemaNS}" />
        </p:with-input>
    </p:validate-with-xml-schema>
    <!-- run internal wiring schematron ruleset -->
    <p:try name="try-schematron-validation">
        <p:output port="report" primary="false" pipe="report@schematron-validation" />
        <p:validate-with-schematron assert-valid="{$stopOnError}" report-format="xvrl"
            name="schematron-validation" message="Running Schematron Baseline Ruleset">
            <p:with-input port="schema">
                <p:document content-type="application/xml" href="{$schemaNS}/sch" />
            </p:with-input>
            <p:with-input port="source" pipe="source@pipeline" />
        </p:validate-with-schematron>
        <p:catch xmlns:err="http://www.w3.org/ns/xproc-error" code="err:XD0049">
           <p:output port="report" primary="false" pipe="result@empty" sequence="true"  />
            <p:identity name="empty" message="Schematron Ruleset for {$schemaNS} not found">
                <p:with-input>
                    <p:empty/>
                </p:with-input>
            </p:identity>
        </p:catch>
    </p:try>
    <!-- consolidate step reports -->
    <tm:consolidate-reports>
        <p:with-option name="mode" select="$mode" />
        <p:with-option name="reportType" select="$reportType" />
        <p:with-input>
            <p:pipe step="pipeline" port="json-report" />
            <p:pipe step="xml-validation" port="report" />
            <p:pipe step="try-schematron-validation" port="report" />
        </p:with-input>
    </tm:consolidate-reports>
</p:declare-step>