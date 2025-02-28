<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/2005/xpath-functions" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:cdf="http://itl.nist.gov/ns/voting/1500-101/v1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:math="http://www.w3.org/2005/xpath-functions/math" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:xhtml="http://www.w3.org/1999/xhtml" xmlns:err="http://www.w3.org/2005/xqt-errors" exclude-result-prefixes="array cdf fn map math xhtml err xs xsi" version="3.0">
	<xsl:output method="text" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:import-schema namespace="http://itl.nist.gov/ns/voting/1500-101/v1" schema-location="../../catalog_documents/NIST_V1_election_event_logging.xsd"/>
	<xsl:template match="*|/" priority="-9">
		<!-- do nothing -->
	</xsl:template>
	<xsl:template match="/" name="xsl:initial-template">
		<xsl:variable name="json">
			<map>
				<xsl:apply-templates/>
			</map>
		</xsl:variable>
		<xsl:value-of select="xml-to-json($json, map{'indent': true()})" />
	</xsl:template>
	<xsl:template name="cdf:Device" match="element(*, cdf:Device)">
		<xsl:param name="set_type" select="false()"/>
		<xsl:where-populated>
			<string key="Details">
				<xsl:value-of select="cdf:Details"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<array key="Event">
				<xsl:for-each select="cdf:Event">
					<map>
						<xsl:apply-templates select="."/>
					</map>
				</xsl:for-each>
			</array>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="HashType">
				<xsl:value-of select="cdf:HashType"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="Id">
				<xsl:value-of select="cdf:Id"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="Manufacturer">
				<xsl:value-of select="cdf:Manufacturer"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="Model">
				<xsl:value-of select="cdf:Model"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="OtherHashType">
				<xsl:value-of select="cdf:OtherHashType"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="OtherType">
				<xsl:value-of select="cdf:OtherType"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="Type">
				<xsl:value-of select="cdf:Type"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="Version">
				<xsl:value-of select="cdf:Version"/>
			</string>
		</xsl:where-populated>
		<xsl:if test="not($set_type)">
			<string key="@type">EventLogging.Device</string>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:ElectionEventLog" match="element(*, cdf:ElectionEventLog)">
		<xsl:param name="set_type" select="false()"/>
		<xsl:where-populated>
			<string key="Details">
				<xsl:value-of select="cdf:Details"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<array key="Device">
				<xsl:for-each select="cdf:Device">
					<map>
						<xsl:apply-templates select="."/>
					</map>
				</xsl:for-each>
			</array>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="ElectionId">
				<xsl:value-of select="cdf:ElectionId"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="GeneratedTime">
				<xsl:value-of select="cdf:GeneratedTime"/>
			</string>
		</xsl:where-populated>
		<xsl:if test="not($set_type)">
			<string key="@type">EventLogging.ElectionEventLog</string>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:ElectionEventLogDocumentation" match="element(*, cdf:ElectionEventLogDocumentation)">
		<xsl:param name="set_type" select="false()"/>
		<xsl:where-populated>
			<string key="DeviceId">
				<xsl:value-of select="cdf:DeviceId"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="DeviceManufacturer">
				<xsl:value-of select="cdf:DeviceManufacturer"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="DeviceModel">
				<xsl:value-of select="cdf:DeviceModel"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="DeviceVersion">
				<xsl:value-of select="cdf:DeviceVersion"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<array key="EventIdDescription">
				<xsl:for-each select="cdf:EventIdDescription">
					<map>
						<xsl:apply-templates select="."/>
					</map>
				</xsl:for-each>
			</array>
		</xsl:where-populated>
		<xsl:where-populated>
			<array key="EventTypeDescription">
				<xsl:for-each select="cdf:EventTypeDescription">
					<map>
						<xsl:apply-templates select="."/>
					</map>
				</xsl:for-each>
			</array>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="GeneratedDate">
				<xsl:value-of select="cdf:GeneratedDate"/>
			</string>
		</xsl:where-populated>
		<xsl:if test="not($set_type)">
			<string key="@type">EventLogging.ElectionEventLogDocumentation</string>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:Event" match="element(*, cdf:Event)">
		<xsl:param name="set_type" select="false()"/>
		<xsl:where-populated>
			<string key="Description">
				<xsl:value-of select="cdf:Description"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="Details">
				<xsl:value-of select="cdf:Details"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="Disposition">
				<xsl:value-of select="cdf:Disposition"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="Hash">
				<xsl:value-of select="cdf:Hash"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="Id">
				<xsl:value-of select="cdf:Id"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="OtherDisposition">
				<xsl:value-of select="cdf:OtherDisposition"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="Sequence">
				<xsl:value-of select="cdf:Sequence"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="Severity">
				<xsl:value-of select="cdf:Severity"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="TimeStamp">
				<xsl:value-of select="cdf:TimeStamp"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="Type">
				<xsl:value-of select="cdf:Type"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="UserId">
				<xsl:value-of select="cdf:UserId"/>
			</string>
		</xsl:where-populated>
		<xsl:if test="not($set_type)">
			<string key="@type">EventLogging.Event</string>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:EventIdDescription" match="element(*, cdf:EventIdDescription)">
		<xsl:param name="set_type" select="false()"/>
		<xsl:where-populated>
			<string key="Description">
				<xsl:value-of select="cdf:Description"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="Id">
				<xsl:value-of select="cdf:Id"/>
			</string>
		</xsl:where-populated>
		<xsl:if test="not($set_type)">
			<string key="@type">EventLogging.EventIdDescription</string>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:EventTypeDescription" match="element(*, cdf:EventTypeDescription)">
		<xsl:param name="set_type" select="false()"/>
		<xsl:where-populated>
			<string key="Description">
				<xsl:value-of select="cdf:Description"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="Type">
				<xsl:value-of select="cdf:Type"/>
			</string>
		</xsl:where-populated>
		<xsl:if test="not($set_type)">
			<string key="@type">EventLogging.EventTypeDescription</string>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>