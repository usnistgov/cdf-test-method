<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tm="http://itl.nist.gov/ns/voting/test-method"
	xmlns:xvrl="http://www.xproc.org/ns/xvrl" xmlns:fn="http://www.w3.org/2005/xpath-functions"	
	xmlns:array="http://www.w3.org/2005/xpath-functions/array"
	xmlns:map="http://www.w3.org/2005/xpath-functions/map"
	xmlns:xhtml="http://www.w3.org/1999/xhtml" xmlns:err="http://www.w3.org/2005/xqt-errors"
	expand-text="true" exclude-result-prefixes="array fn map xhtml xs err" version="3.0">
	<xsl:output method="html" version="4.0" encoding="UTF-8" indent="yes"/>
	<xsl:variable name="severity-to-color" as="map(xs:string, xs:string)">
		<xsl:map>
			<xsl:map-entry key="'fatal-error'" select="'FF0000'"/>
			<xsl:map-entry key="'error'" select="'FF0000'"/>
			<xsl:map-entry key="'warning'" select="'FFD800'"/>
			<xsl:map-entry key="'info'" select="'4CFF00'"/>
			<xsl:map-entry key="'nothing'" select="'FFFFFF'"/>
			<xsl:map-entry key="'unspecified'" select="'FFD800'"/>
		</xsl:map>
	</xsl:variable>
	<xsl:variable name="validator-to-friendly-name" select="
			map {
				'org.apache.xerces.jaxp.validation.XMLSchemaFactory': 'XML Schema Validation',
				'networknt/json-schema-validator': 'JSON Schema Validation',
				'SchXslt': 'Schematron Validation'
			}"/>
	<xsl:template match="/" name="xsl:initial-template">
		<html>
			<head>
				<title>NIST Common Data Format Test Method HTML Output</title>
			</head>
			<body>
				<h1>CDF Test Method Result</h1>
				<xsl:apply-templates/>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="xvrl:reports">
		<h2>Reports Metadata</h2>
		<xsl:apply-templates/>
	</xsl:template>
	<xsl:template match="xvrl:reports/xvrl:metadata">
		<table border="1">
			<thead>
				<tr>
					<th>Name</th>
					<th>Value</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>Tool Version</td>
					<td>{xvrl:creator/@name} Version {xvrl:creator/@version}</td>
				</tr>
				<tr>
					<td>Timestamp</td>
					<td>{xvrl:timestamp}</td>
				</tr>
				<tr>
					<td>Validity</td>
					<td>{xvrl:supplemental/tm:validity/text()}</td>
				</tr>
				<tr>
					<td>Validity Reason</td>
					<td>{xvrl:supplemental/tm:validity-reason/text()}</td>
				</tr>
				<tr>
					<td>Runcode</td>
					<td>{xvrl:supplemental/tm:runcode/text()}</td>
				</tr>
			</tbody>
		</table>
	</xsl:template>
	<xsl:template match="xvrl:report">
		<xsl:apply-templates select="xvrl:metadata"/>		
		<xsl:choose>
			<xsl:when test="xvrl:detection">
				<table border="1">
					<thead>
						<th>level</th>
						<th>{if(xvrl:metadata/xvrl:validator/@name = 'networknt/json-schema-validator')
							then 'jsonpath' else 'xpath'}</th>
						<th>Description</th>
					</thead>
					<tbody>
						<xsl:apply-templates select="xvrl:detection"/>
					</tbody>
				</table>
			</xsl:when>			
			<xsl:otherwise>
				<b style="background-color: green">There are no detections for this step!</b>				
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<xsl:template match="xvrl:report/xvrl:metadata">
		<h2>{map:get($validator-to-friendly-name, xvrl:validator/@name)}</h2>
		<table border="1">
			<thead>
				<th>name</th>
				<th>value</th>
			</thead>
			<tbody>
				<tr>
					<td>Schema under test</td>
					<td>{xvrl:schema/@href}</td>
				</tr>
				<tr>
					<td>Validator</td>
					<td>{xvrl:validator/@name}</td>
				</tr>
				<tr>
					<td>Input file</td>
					<td>{xvrl:document/@href}</td>
				</tr>
			</tbody>
		</table>
	</xsl:template>
	<xsl:template match="xvrl:detection">
		<tr>
			<td style="background-color: #{map:get($severity-to-color,@severity)}">{@severity}</td>
			<td>{xvrl:location/(@jsonpath | @xpath)}</td>
			<td>
				<xsl:choose>
					<xsl:when
						test="../xvrl:metadata/xvrl:validator/@name = 'org.apache.xerces.jaxp.validation.XMLSchemaFactory'">
						<!-- TODO: some go to part 1, some go to part 2, and sometimes the URI needs to be truncated -->
						<a
							href="{concat('https://www.w3.org/TR/xmlschema-2/#',substring-before(xvrl:message,':'))}"
							>:{substring-before(xvrl:message,':')}</a>{substring-after(xvrl:message,':')} </xsl:when>
					<xsl:otherwise> {xvrl:message} </xsl:otherwise>
				</xsl:choose>
			</td>
		</tr>
	</xsl:template>
</xsl:stylesheet>
