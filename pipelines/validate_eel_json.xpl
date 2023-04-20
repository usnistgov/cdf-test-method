<?xml version="1.0" encoding="UTF-8"?>
<?xml-model href="../resources/xproc30.rng" type="application/xml"?>
<p:declare-step xmlns:p="http://www.w3.org/ns/xproc" type="tm:json-steps" name="pipeline" version="3.0" xmlns:tm="http://itl.nist.gov/ns/voting/test-method">
    <p:import href="./validate_eel_xml.xpl" />
    <p:input port="documentation" />
    <p:input port="source" primary="true" />
    <p:output port="report" primary="true" />
    <p:output port="xml" pipe="result@source-json2xml" />
    <p:option name="mode" select="'conformance'" />
    <p:option name="reportType" select="'XML'" />
    <p:option name="schemaNS" required="true" />
    <p:option name="stopOnError" select="false()" />
    <p:validate-with-json-schema assert-valid="{$stopOnError}" name="source-json-validation" message="Validating against JSON schema">
        <p:with-input port="schema" href="{concat($schemaNS,'/json')}" />
    </p:validate-with-json-schema>
    <!-- do we want to convert if its not valid JSON, steps may give incorrect results -->
    <p:xslt name="source-json2xml" message="Converting JSON to XML for further processing">
        <p:with-input port="stylesheet" href="http://itl.nist.gov/ns/voting/1500-101/v1#json2xml" />
    </p:xslt>
    <p:validate-with-json-schema assert-valid="{$stopOnError}" name="documentation-json-validation" message="Validating documentation against JSON schema">
        <p:with-input port="source" pipe="documentation@pipeline" />
        <p:with-input port="schema" href="{concat($schemaNS,'/json')}" />
    </p:validate-with-json-schema>
    <p:xslt name="documentation-json2xml" message="Converting Documentation JSON to XML for further processing">
        <p:with-input port="stylesheet" href="{concat($schemaNS,'#json2xml')}" />
    </p:xslt>
    <tm:xml-steps>
        <p:with-option name="mode" select="$mode" />
        <p:with-option name="reportType" select="$reportType" />
        <p:with-option name="schemaNS" select="$schemaNS" />
        <p:with-option name="stopOnError" select="$stopOnError" />
        <p:with-input port="documentation" pipe="result@documentation-json2xml" />
        <p:with-input port="json-report">
            <p:pipe step="source-json-validation" port="report" />
            <p:pipe step="documentation-json-validation" port="report" />
        </p:with-input>
        <p:with-input port="source" pipe="result@source-json2xml" />
    </tm:xml-steps>
</p:declare-step>