<?xml version="1.0" encoding="UTF-8"?>
<?xml-model href="../resources/xproc30.rng" type="application/xml"?>
<p:declare-step xmlns:p="http://www.w3.org/ns/xproc" name="pipeline"
    xmlns:tm="http://itl.nist.gov/ns/voting/test-method" type="tm:consolidate-reports" version="3.0">
    <p:input port="source" primary="true" sequence="true" />
    <p:output port="result" />
    <p:option name="mode" select="'conformance'" />
    <p:option name="reportType" />
    <p:option name="stopOnError" select="false()" />
    <p:variable name="start-dateTime" select="current-dateTime()" />
    <!-- do report consolidation -->
    <p:wrap-sequence wrapper="xvrl:reports" xmlns:xvrl="http://www.xproc.org/ns/xvrl" />
    <p:insert position="first-child">
        <p:with-input port="insertion">
            <p:inline>
                <xvrl:metadata xmlns:xvrl="http://www.xproc.org/ns/xvrl">
                    <xvrl:creator name="NIST Common Data Format Test Method" version="1.0beta1" />
                    <xvrl:timestamp>{$start-dateTime}</xvrl:timestamp>
                    <xvrl:summary>Please review each report to determine conformance to the applicable test assertions / requirements</xvrl:summary>
                    <xvrl:supplemental tm:xproc-engine-name="{p:system-property('p:product-name')}"
                        tm:xproc-engine-version="{p:system-property('p:product-version')}"
                        tm:xproc-engine-vendor="{p:system-property('p:vendor')}"
                        tm:psvi-supported="{p:system-property('p:psvi-supported')}">
                        <tm:validity>{if($mode = 'conformance') then 'valid' else 'invalid'}</tm:validity>
                        <tm:validity-reason>{if($mode = 'conformance') then '' else 'TM run in
                            non-conformance mode'}</tm:validity-reason>
                        <tm:runcode>{p:system-property('p:episode')}</tm:runcode>
                    </xvrl:supplemental>
                </xvrl:metadata>
            </p:inline>
        </p:with-input>
    </p:insert>
    <p:if test="$mode = 'conformance'">
        <p:validate-with-relax-ng message="Validating generated XVRL report">
            <p:with-input port="schema" href="http://www.xproc.org/ns/xvrl" />
        </p:validate-with-relax-ng>
    </p:if>
    <p:if test="lower-case($reportType) = 'html'">
        <p:xslt name="generate-sch" message="Converting XVRL to HTML Report">
            <p:with-input port="stylesheet" href="../resources/xvrl2html.xsl" />
        </p:xslt>
    </p:if>
    <!-- do formatting -->
    <p:set-properties properties="map{'serialization' : map {'indent' : true()}}" />
    <p:cast-content-type content-type="text/plain" />
    <p:cast-content-type content-type="application/xml" />
</p:declare-step>