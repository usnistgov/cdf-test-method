<?xml version="1.0" encoding="UTF-8"?>
<?xml-model href="../resources/xproc30.rng" type="application/xml"?>
<p:declare-step xmlns:p="http://www.w3.org/ns/xproc" type="tm:json-steps" name="pipeline" version="3.0" xmlns:tm="http://itl.nist.gov/ns/voting/test-method">
    <p:import href="./validate_xml.xpl" />
    <p:input port="source" primary="true" />
    <p:output port="report" primary="true" />
    <p:output port="xml" pipe="result@json2xml" />
    <p:option name="mode" select="'conformance'" />
    <p:option name="reportType" select="'XML'" />
    <p:option name="schemaNS" required="true" />
    <p:option name="stopOnError" select="false()" />
    <p:validate-with-json-schema assert-valid="{$stopOnError}" name="json-validation" message="validating against JSON schema">
        <p:with-input port="schema" href="{concat($schemaNS,'/json')}" />
    </p:validate-with-json-schema>
    <!-- do we want to convert if its not valid JSON, steps may give incorrect results -->
    <p:xslt name="json2xml" message="Converting JSON to XML for further processing {concat($schemaNS, '#json2xml')}">
        <p:with-input port="stylesheet" href="{concat($schemaNS, '#json2xml')}" />
    </p:xslt>
    <tm:xml-steps>
        <p:with-option name="mode" select="$mode" />
        <p:with-option name="reportType" select="$reportType" />
        <p:with-option name="schemaNS" select="$schemaNS" />
        <p:with-option name="stopOnError" select="$stopOnError" />
        <p:with-input port="json-report">
            <p:pipe step="json-validation" port="report" />
        </p:with-input>
        <p:with-input port="source" pipe="result@json2xml" />
    </tm:xml-steps>
</p:declare-step>