<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xml:id="json2xml" xpath-default-namespace="http://www.w3.org/2005/xpath-functions" xmlns="http://itl.nist.gov/ns/voting/1500-101/v1" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:cdf="http://itl.nist.gov/ns/voting/1500-101/v1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:math="http://www.w3.org/2005/xpath-functions/math" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:xhtml="http://www.w3.org/1999/xhtml" xmlns:err="http://www.w3.org/2005/xqt-errors" exclude-result-prefixes="array cdf fn map math xhtml err xs" version="3.0">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<!-- the root node must be XML, meaning the JSON must be nested in XML (not ideal) -->
	<xsl:template name="start" match=".[. instance of map(*)]" priority="1">
		<xsl:variable name="xml">
			<xsl:apply-templates select=". => serialize(map { 'method' : 'json' }) => json-to-xml()"/>
		</xsl:variable>
		<xsl:copy-of select="$xml"/>
	</xsl:template>
	<xsl:template name="cdf:Device" match="*[string = 'EventLogging.Device' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="boolean(*[@key = 'Details'])">
			<Details>
				<xsl:value-of select="*[@key = 'Details']"/>
			</Details>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Event'])">
			<xsl:for-each select="*[@key = 'Event']/map">
				<Event>
					<xsl:apply-templates select="."/>
				</Event>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'HashType'])">
			<HashType>
				<xsl:value-of select="*[@key = 'HashType']"/>
			</HashType>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'OtherHashType'])">
			<OtherHashType>
				<xsl:value-of select="*[@key = 'OtherHashType']"/>
			</OtherHashType>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Id'])">
			<Id>
				<xsl:value-of select="*[@key = 'Id']"/>
			</Id>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Manufacturer'])">
			<Manufacturer>
				<xsl:value-of select="*[@key = 'Manufacturer']"/>
			</Manufacturer>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Model'])">
			<Model>
				<xsl:value-of select="*[@key = 'Model']"/>
			</Model>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Type'])">
			<Type>
				<xsl:value-of select="*[@key = 'Type']"/>
			</Type>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'OtherType'])">
			<OtherType>
				<xsl:value-of select="*[@key = 'OtherType']"/>
			</OtherType>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Version'])">
			<Version>
				<xsl:value-of select="*[@key = 'Version']"/>
			</Version>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:ElectionEventLog" match="*[string = 'EventLogging.ElectionEventLog' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<ElectionEventLog>		
			<xsl:if test="boolean(*[@key = 'Details'])">
				<Details>
					<xsl:value-of select="*[@key = 'Details']"/>
				</Details>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'Device'])">
				<xsl:for-each select="*[@key = 'Device']/map">
					<Device>
						<xsl:apply-templates select="."/>
					</Device>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'ElectionId'])">
				<ElectionId>
					<xsl:value-of select="*[@key = 'ElectionId']"/>
				</ElectionId>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'GeneratedTime'])">
				<GeneratedTime>
					<xsl:value-of select="*[@key = 'GeneratedTime']"/>
				</GeneratedTime>
			</xsl:if>
		</ElectionEventLog>
	</xsl:template>
	<xsl:template name="cdf:ElectionEventLogDocumentation" match="*[string = 'EventLogging.ElectionEventLogDocumentation' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<ElectionEventLogDocumentation>
			<xsl:if test="boolean(*[@key = 'DeviceId'])">
				<DeviceId>
					<xsl:value-of select="*[@key = 'DeviceId']"/>
				</DeviceId>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'DeviceManufacturer'])">
				<DeviceManufacturer>
					<xsl:value-of select="*[@key = 'DeviceManufacturer']"/>
				</DeviceManufacturer>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'DeviceModel'])">
				<DeviceModel>
					<xsl:value-of select="*[@key = 'DeviceModel']"/>
				</DeviceModel>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'DeviceVersion'])">
				<DeviceVersion>
					<xsl:value-of select="*[@key = 'DeviceVersion']"/>
				</DeviceVersion>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'EventIdDescription'])">
				<xsl:for-each select="*[@key = 'EventIdDescription']/map">
					<EventIdDescription>
						<xsl:apply-templates select="."/>
					</EventIdDescription>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'EventTypeDescription'])">
				<xsl:for-each select="*[@key = 'EventTypeDescription']/map">
					<EventTypeDescription>
						<xsl:apply-templates select="."/>
					</EventTypeDescription>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'GeneratedDate'])">
				<GeneratedDate>
					<xsl:value-of select="*[@key = 'GeneratedDate']"/>
				</GeneratedDate>
			</xsl:if>
		</ElectionEventLogDocumentation>
	</xsl:template>
	<xsl:template name="cdf:Event" match="*[string = 'EventLogging.Event' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="boolean(*[@key = 'Description'])">
			<Description>
				<xsl:value-of select="*[@key = 'Description']"/>
			</Description>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Details'])">
			<Details>
				<xsl:value-of select="*[@key = 'Details']"/>
			</Details>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Disposition'])">
			<Disposition>
				<xsl:value-of select="*[@key = 'Disposition']"/>
			</Disposition>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'OtherDisposition'])">
			<OtherDisposition>
				<xsl:value-of select="*[@key = 'OtherDisposition']"/>
			</OtherDisposition>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Hash'])">
			<Hash>
				<xsl:value-of select="*[@key = 'Hash']"/>
			</Hash>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Id'])">
			<Id>
				<xsl:value-of select="*[@key = 'Id']"/>
			</Id>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Sequence'])">
			<Sequence>
				<xsl:value-of select="*[@key = 'Sequence']"/>
			</Sequence>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Severity'])">
			<Severity>
				<xsl:value-of select="*[@key = 'Severity']"/>
			</Severity>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'TimeStamp'])">
			<TimeStamp>
				<xsl:value-of select="*[@key = 'TimeStamp']"/>
			</TimeStamp>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Type'])">
			<Type>
				<xsl:value-of select="*[@key = 'Type']"/>
			</Type>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'UserId'])">
			<UserId>
				<xsl:value-of select="*[@key = 'UserId']"/>
			</UserId>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:EventIdDescription" match="*[string = 'EventLogging.EventIdDescription' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="boolean(*[@key = 'Description'])">
			<Description>
				<xsl:value-of select="*[@key = 'Description']"/>
			</Description>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Id'])">
			<Id>
				<xsl:value-of select="*[@key = 'Id']"/>
			</Id>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:EventTypeDescription" match="*[string = 'EventLogging.EventTypeDescription' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="boolean(*[@key = 'Description'])">
			<Description>
				<xsl:value-of select="*[@key = 'Description']"/>
			</Description>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Type'])">
			<Type>
				<xsl:value-of select="*[@key = 'Type']"/>
			</Type>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>