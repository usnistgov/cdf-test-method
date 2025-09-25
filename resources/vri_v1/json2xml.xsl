<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xml:id="json2xml" xpath-default-namespace="http://www.w3.org/2005/xpath-functions" xmlns:addr="http://www.fgdc.gov/schemas/address/addr" xmlns:addr_type="http://www.fgdc.gov/schemas/address/addr_type" xmlns:VRI="http://itl.nist.gov/ns/voting/1500-102/v1" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:cdf="http://itl.nist.gov/ns/voting/1500-102/v1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" exclude-result-prefixes="cdf" version="3.0">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template name="start" match=".[. instance of map(*)]" priority="1">
		<xsl:variable name="xml">
			<xsl:apply-templates select=". => serialize(map { 'method' : 'json' }) => json-to-xml()"/>
		</xsl:variable>
		<xsl:copy-of select="$xml"/>
	</xsl:template>
	<xsl:template name="VRI:AdditionalInfo" match="*[string = 'VRI.AdditionalInfo' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="boolean(*[@key = 'FileValue'])">
			<VRI:FileValue>
				<xsl:apply-templates select="*[@key = 'FileValue']"/>
			</VRI:FileValue>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Name'])">
			<VRI:Name>
				<xsl:value-of select="*[@key = 'Name']"/>
			</VRI:Name>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'StringValue'])">
			<VRI:StringValue>
				<xsl:value-of select="*[@key = 'StringValue']"/>
			</VRI:StringValue>
		</xsl:if>
	</xsl:template>
	<xsl:template name="VRI:BallotRequest" match="*[string = 'VRI.BallotRequest' and string/@key = '@type']" priority="-1">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="boolean(*[@key = 'BallotReceiptPreference'])">
			<xsl:for-each select="*[@key = 'BallotReceiptPreference']/string">
				<VRI:BallotReceiptPreference>
					<xsl:value-of select="."/>
				</VRI:BallotReceiptPreference>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'MailForwardingAddress'])">
			<VRI:MailForwardingAddress>
				<xsl:apply-templates select="*[@key = 'MailForwardingAddress']"/>
			</VRI:MailForwardingAddress>
		</xsl:if>
	</xsl:template>
	<xsl:template name="VRI:BallotStyle" match="*[string = 'VRI.BallotStyle' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="boolean(*[@key = 'ExternalIdentifier'])">
			<xsl:for-each select="*[@key = 'ExternalIdentifier']/map">
				<VRI:ExternalIdentifier>
					<xsl:apply-templates select="."/>
				</VRI:ExternalIdentifier>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'ImageUri'])">
			<xsl:for-each select="*[@key = 'ImageUri']/string">
				<VRI:ImageUri>
					<xsl:value-of select="."/>
				</VRI:ImageUri>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Party'])">
			<xsl:for-each select="*[@key = 'Party']/map">
				<VRI:Party>
					<xsl:apply-templates select="."/>
				</VRI:Party>
			</xsl:for-each>
		</xsl:if>
	</xsl:template>
	<xsl:template name="VRI:ContactMethod" match="*[string = 'VRI.ContactMethod' and string/@key = '@type']" priority="-1">
		<xsl:param name="set_type" select="true()"/>		
		<xsl:if test="boolean(*[@key = 'Type'])">
			<xsl:element name="VRI:Type">
				<xsl:value-of select="*[@key = 'Type']"/>
			</xsl:element>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'OtherType'])">
			<xsl:element name="VRI:OtherType">
				<xsl:value-of select="*[@key = 'OtherType']"/>
			</xsl:element>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Value'])">
			<xsl:element name="VRI:Value">
				<xsl:value-of select="*[@key = 'Value']"/>
			</xsl:element>
		</xsl:if>
		
	</xsl:template>
	<xsl:template name="VRI:Election" match="*[string = 'VRI.Election' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="boolean(*[@key = 'EndDate'])">
			<VRI:EndDate>
				<xsl:value-of select="*[@key = 'EndDate']"/>
			</VRI:EndDate>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'ExternalIdentifier'])">
			<xsl:for-each select="*[@key = 'ExternalIdentifier']/map">
				<VRI:ExternalIdentifier>
					<xsl:apply-templates select="."/>
				</VRI:ExternalIdentifier>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Name'])">
			<VRI:Name>
				<xsl:value-of select="*[@key = 'Name']"/>
			</VRI:Name>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'StartDate'])">
			<VRI:StartDate>
				<xsl:value-of select="*[@key = 'StartDate']"/>
			</VRI:StartDate>
		</xsl:if>
	</xsl:template>
	<xsl:template name="VRI:ElectionAdministration" match="*[string = 'VRI.ElectionAdministration' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="boolean(*[@key = 'ContactMethod'])">
			<xsl:for-each select="*[@key = 'ContactMethod']/map">
				<VRI:ContactMethod>
					<xsl:apply-templates select="."/>
				</VRI:ContactMethod>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Location'])">
			<VRI:Location>
				<xsl:apply-templates select="*[@key = 'Location']"/>
			</VRI:Location>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Name'])">
			<VRI:Name>
				<xsl:value-of select="*[@key = 'Name']"/>
			</VRI:Name>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Uri'])">
			<xsl:for-each select="*[@key = 'Uri']/string">
				<VRI:Uri>
					<xsl:value-of select="."/>
				</VRI:Uri>
			</xsl:for-each>
		</xsl:if>
	</xsl:template>
	<xsl:template name="VRI:ElectionBasedBallotRequest" match="*[string = 'VRI.ElectionBasedBallotRequest' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="$set_type">
			<xsl:attribute name="xsi:type">VRI:ElectionBasedBallotRequest</xsl:attribute>
		</xsl:if>
		<xsl:call-template name="VRI:BallotRequest">
			<xsl:with-param name="set_type" select="false()"/>
		</xsl:call-template>
		<xsl:if test="boolean(*[@key = 'Election'])">
			<VRI:Election>
				<xsl:apply-templates select="*[@key = 'Election']"/>
			</VRI:Election>
		</xsl:if>
	</xsl:template>
	<xsl:template name="VRI:Error" match="*[string = 'VRI.Error' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="boolean(*[@key = 'Name'])">
			<VRI:Name>
				<xsl:value-of select="*[@key = 'Name']"/>
			</VRI:Name>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'OtherError'])">
			<VRI:OtherError>
				<xsl:value-of select="*[@key = 'OtherError']"/>
			</VRI:OtherError>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Ref'])">
			<VRI:Ref>
				<xsl:value-of select="*[@key = 'Ref']"/>
			</VRI:Ref>
		</xsl:if>
	</xsl:template>
	<xsl:template name="VRI:ExternalIdentifier" match="*[string = 'VRI.ExternalIdentifier' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="boolean(*[@key = 'OtherType'])">
			<xsl:attribute name="OtherType">
				<xsl:value-of select="*[@key = 'OtherType']"/>
			</xsl:attribute>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Type'])">
			<xsl:attribute name="Type">
				<xsl:value-of select="*[@key = 'Type']"/>
			</xsl:attribute>
		</xsl:if>
		<xsl:value-of select="*[@key = 'Value']"/>
	</xsl:template>
	<xsl:template name="VRI:File" match="*[string = 'VRI.File' and string/@key = '@type']" priority="-1">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="boolean(*[@key = 'FileName'])">
			<xsl:attribute name="FileName">
				<xsl:value-of select="*[@key = 'FileName']"/>
			</xsl:attribute>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'MimeType'])">
			<xsl:attribute name="MimeType">
				<xsl:value-of select="*[@key = 'MimeType']"/>
			</xsl:attribute>
		</xsl:if>
		<xsl:value-of select="*[@key = 'Data']"/>
	</xsl:template>
	<xsl:template name="VRI:Image" match="*[string = 'VRI.Image' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="$set_type">
			<xsl:attribute name="xsi:type">VRI:Image</xsl:attribute>
		</xsl:if>
		<xsl:call-template name="VRI:File">
			<xsl:with-param name="set_type" select="false()"/>
		</xsl:call-template>
	</xsl:template>
	<xsl:template name="VRI:LatLng" match="*[string = 'VRI.LatLng' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="boolean(*[@key = 'Latitude'])">
			<VRI:Latitude>
				<xsl:value-of select="*[@key = 'Latitude']"/>
			</VRI:Latitude>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Longitude'])">
			<VRI:Longitude>
				<xsl:value-of select="*[@key = 'Longitude']"/>
			</VRI:Longitude>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Source'])">
			<VRI:Source>
				<xsl:value-of select="*[@key = 'Source']"/>
			</VRI:Source>
		</xsl:if>
	</xsl:template>
	<xsl:template name="VRI:Location" match="*[string = 'VRI.Location' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="boolean(*[@key = 'Address'])">
			<VRI:Address>
				<xsl:apply-templates select="*[@key = 'Address']"/>
			</VRI:Address>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Directions'])">
			<VRI:Directions>
				<xsl:value-of select="*[@key = 'Directions']"/>
			</VRI:Directions>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'LatLng'])">
			<VRI:LatLng>
				<xsl:apply-templates select="*[@key = 'LatLng']"/>
			</VRI:LatLng>
		</xsl:if>
	</xsl:template>
	<xsl:template name="VRI:Name" match="*[string = 'VRI.Name' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="boolean(*[@key = 'FirstName'])">
			<VRI:FirstName>
				<xsl:value-of select="*[@key = 'FirstName']"/>
			</VRI:FirstName>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'FullName'])">
			<VRI:FullName>
				<xsl:value-of select="*[@key = 'FullName']"/>
			</VRI:FullName>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'LastName'])">
			<VRI:LastName>
				<xsl:value-of select="*[@key = 'LastName']"/>
			</VRI:LastName>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'MiddleName'])">
			<xsl:for-each select="*[@key = 'MiddleName']/string">
				<VRI:MiddleName>
					<xsl:value-of select="."/>
				</VRI:MiddleName>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Prefix'])">
			<VRI:Prefix>
				<xsl:value-of select="*[@key = 'Prefix']"/>
			</VRI:Prefix>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Suffix'])">
			<VRI:Suffix>
				<xsl:value-of select="*[@key = 'Suffix']"/>
			</VRI:Suffix>
		</xsl:if>
	</xsl:template>
	<xsl:template name="VRI:Party" match="*[string = 'VRI.Party' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="boolean(*[@key = 'Abbreviation'])">
			<VRI:Abbreviation>
				<xsl:value-of select="*[@key = 'Abbreviation']"/>
			</VRI:Abbreviation>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'ExternalIdentifier'])">
			<xsl:for-each select="*[@key = 'ExternalIdentifier']/map">
				<VRI:ExternalIdentifier>
					<xsl:apply-templates select="."/>
				</VRI:ExternalIdentifier>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Name'])">
			<VRI:Name>
				<xsl:value-of select="*[@key = 'Name']"/>
			</VRI:Name>
		</xsl:if>
	</xsl:template>
	<xsl:template name="VRI:PermanentBallotRequest" match="*[string = 'VRI.PermanentBallotRequest' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="$set_type">
			<xsl:attribute name="xsi:type">VRI:PermanentBallotRequest</xsl:attribute>
		</xsl:if>
		<xsl:call-template name="VRI:BallotRequest">
			<xsl:with-param name="set_type" select="false()"/>
		</xsl:call-template>
	</xsl:template>
	<xsl:template name="VRI:PhoneContactMethod" match="*[string = 'VRI.PhoneContactMethod' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="$set_type">
			<xsl:attribute name="xsi:type">VRI:PhoneContactMethod</xsl:attribute>
		</xsl:if>
		<xsl:call-template name="VRI:ContactMethod">
			<xsl:with-param name="set_type" select="false()"/>
		</xsl:call-template>
		<xsl:if test="boolean(*[@key = 'Capability'])">
			<xsl:for-each select="*[@key = 'Capability']/string">
				<VRI:Capability>
					<xsl:value-of select="."/>
				</VRI:Capability>
			</xsl:for-each>
		</xsl:if>
	</xsl:template>
	<xsl:template name="VRI:ReportingUnit" match="*[string = 'VRI.ReportingUnit' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="boolean(*[@key = 'ExternalIdentifier'])">
			<xsl:for-each select="*[@key = 'ExternalIdentifier']/map">
				<VRI:ExternalIdentifier>
					<xsl:apply-templates select="."/>
				</VRI:ExternalIdentifier>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'IsDistricted'])">
			<VRI:IsDistricted>
				<xsl:value-of select="*[@key = 'IsDistricted']"/>
			</VRI:IsDistricted>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Location'])">
			<VRI:Location>
				<xsl:apply-templates select="*[@key = 'Location']"/>
			</VRI:Location>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Name'])">
			<VRI:Name>
				<xsl:value-of select="*[@key = 'Name']"/>
			</VRI:Name>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'OtherType'])">
			<VRI:OtherType>
				<xsl:value-of select="*[@key = 'OtherType']"/>
			</VRI:OtherType>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Type'])">
			<VRI:Type>
				<xsl:value-of select="*[@key = 'Type']"/>
			</VRI:Type>
		</xsl:if>
	</xsl:template>
	<xsl:template name="VRI:RequestAcknowledgement" match="*[string = 'VRI.RequestAcknowledgement' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<VRI:VoterRecordsResponse>
			<xsl:if test="$set_type">
				<xsl:attribute name="xsi:type">VRI:RequestAcknowledgement</xsl:attribute>
			</xsl:if>
			<xsl:call-template name="VRI:VoterRecordsResponse">
				<xsl:with-param name="set_type" select="false()"/>
			</xsl:call-template>
		</VRI:VoterRecordsResponse>
	</xsl:template>
	<xsl:template name="VRI:RequestHelper" match="*[string = 'VRI.RequestHelper' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="boolean(*[@key = 'Address'])">
			<VRI:Address>
				<xsl:apply-templates select="*[@key = 'Address']"/>
			</VRI:Address>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Name'])">
			<VRI:Name>
				<xsl:apply-templates select="*[@key = 'Name']"/>
			</VRI:Name>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Phone'])">
			<VRI:Phone>
				<xsl:apply-templates select="*[@key = 'Phone']"/>
			</VRI:Phone>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Signature'])">
			<VRI:Signature>
				<xsl:apply-templates select="*[@key = 'Signature']"/>
			</VRI:Signature>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Type'])">
			<VRI:Type>
				<xsl:value-of select="*[@key = 'Type']"/>
			</VRI:Type>
		</xsl:if>
	</xsl:template>
	<xsl:template name="VRI:RequestProxy" match="*[string = 'VRI.RequestProxy' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="boolean(*[@key = 'Address'])">
			<VRI:Address>
				<xsl:apply-templates select="*[@key = 'Address']"/>
			</VRI:Address>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Name'])">
			<VRI:Name>
				<xsl:value-of select="*[@key = 'Name']"/>
			</VRI:Name>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'OriginTransactionId'])">
			<VRI:OriginTransactionId>
				<xsl:value-of select="*[@key = 'OriginTransactionId']"/>
			</VRI:OriginTransactionId>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'OtherType'])">
			<VRI:OtherType>
				<xsl:value-of select="*[@key = 'OtherType']"/>
			</VRI:OtherType>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Phone'])">
			<VRI:Phone>
				<xsl:apply-templates select="*[@key = 'Phone']"/>
			</VRI:Phone>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'TimeStamp'])">
			<VRI:TimeStamp>
				<xsl:value-of select="*[@key = 'TimeStamp']"/>
			</VRI:TimeStamp>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Type'])">
			<VRI:Type>
				<xsl:value-of select="*[@key = 'Type']"/>
			</VRI:Type>
		</xsl:if>
	</xsl:template>
	<xsl:template name="VRI:RequestRejection" match="*[string = 'VRI.RequestRejection' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<VRI:VoterRecordsResponse>
			<xsl:if test="$set_type">
				<xsl:attribute name="xsi:type">VRI:RequestRejection</xsl:attribute>
			</xsl:if>
			<xsl:call-template name="VRI:VoterRecordsResponse">
				<xsl:with-param name="set_type" select="false()"/>
			</xsl:call-template>
			<xsl:if test="boolean(*[@key = 'AdditionalDetails'])">
				<xsl:for-each select="*[@key = 'AdditionalDetails']/string">
					<VRI:AdditionalDetails>
						<xsl:value-of select="."/>
					</VRI:AdditionalDetails>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'Error'])">
				<xsl:for-each select="*[@key = 'Error']/map">
					<VRI:Error>
						<xsl:apply-templates select="."/>
					</VRI:Error>
				</xsl:for-each>
			</xsl:if>
		</VRI:VoterRecordsResponse>
	</xsl:template>
	<xsl:template name="VRI:RequestSuccess" match="*[string = 'VRI.RequestSuccess' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<VRI:VoterRecordsResponse>
			<xsl:if test="$set_type">
				<xsl:attribute name="xsi:type">VRI:RequestSuccess</xsl:attribute>
			</xsl:if>
			<xsl:call-template name="VRI:VoterRecordsResponse">
				<xsl:with-param name="set_type" select="false()"/>
			</xsl:call-template>
			<xsl:if test="boolean(*[@key = 'Action'])">
				<xsl:for-each select="*[@key = 'Action']/string">
					<VRI:Action>
						<xsl:value-of select="."/>
					</VRI:Action>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'District'])">
				<xsl:for-each select="*[@key = 'District']/map">
					<VRI:District>
						<xsl:apply-templates select="."/>
					</VRI:District>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'EffectiveDate'])">
				<VRI:EffectiveDate>
					<xsl:value-of select="*[@key = 'EffectiveDate']"/>
				</VRI:EffectiveDate>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'ElectionAdministration'])">
				<VRI:ElectionAdministration>
					<xsl:apply-templates select="*[@key = 'ElectionAdministration']"/>
				</VRI:ElectionAdministration>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'Locality'])">
				<xsl:for-each select="*[@key = 'Locality']/map">
					<VRI:Locality>
						<xsl:apply-templates select="."/>
					</VRI:Locality>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'PollingPlace'])">
				<VRI:PollingPlace>
					<xsl:apply-templates select="*[@key = 'PollingPlace']"/>
				</VRI:PollingPlace>
			</xsl:if>
		</VRI:VoterRecordsResponse>
	</xsl:template>
	<xsl:template name="VRI:Signature" match="*[string = 'VRI.Signature' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="boolean(*[@key = 'Date'])">
			<VRI:Date>
				<xsl:value-of select="*[@key = 'Date']"/>
			</VRI:Date>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'FileValue'])">
			<VRI:FileValue>
				<xsl:apply-templates select="*[@key = 'FileValue']"/>
			</VRI:FileValue>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'OtherSource'])">
			<VRI:OtherSource>
				<xsl:value-of select="*[@key = 'OtherSource']"/>
			</VRI:OtherSource>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'OtherType'])">
			<VRI:OtherType>
				<xsl:value-of select="*[@key = 'OtherType']"/>
			</VRI:OtherType>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Source'])">
			<VRI:Source>
				<xsl:value-of select="*[@key = 'Source']"/>
			</VRI:Source>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Type'])">
			<VRI:Type>
				<xsl:value-of select="*[@key = 'Type']"/>
			</VRI:Type>
		</xsl:if>
	</xsl:template>
	<xsl:template name="VRI:TemporalBallotRequest" match="*[string = 'VRI.TemporalBallotRequest' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="$set_type">
			<xsl:attribute name="xsi:type">VRI:TemporalBallotRequest</xsl:attribute>
		</xsl:if>
		<xsl:call-template name="VRI:BallotRequest">
			<xsl:with-param name="set_type" select="false()"/>
		</xsl:call-template>
		<xsl:if test="boolean(*[@key = 'EndDate'])">
			<VRI:EndDate>
				<xsl:value-of select="*[@key = 'EndDate']"/>
			</VRI:EndDate>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'StartDate'])">
			<VRI:StartDate>
				<xsl:value-of select="*[@key = 'StartDate']"/>
			</VRI:StartDate>
		</xsl:if>
	</xsl:template>
	<xsl:template name="VRI:Voter" match="*[string = 'VRI.Voter' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="boolean(*[@key = 'ContactMethod'])">
			<xsl:for-each select="*[@key = 'ContactMethod']/map">
				<VRI:ContactMethod>
					<xsl:apply-templates select="."/>
				</VRI:ContactMethod>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'DateOfBirth'])">
			<VRI:DateOfBirth>
				<xsl:value-of select="*[@key = 'DateOfBirth']"/>
			</VRI:DateOfBirth>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Ethnicity'])">
			<VRI:Ethnicity>
				<xsl:value-of select="*[@key = 'Ethnicity']"/>
			</VRI:Ethnicity>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Gender'])">
			<VRI:Gender>
				<xsl:value-of select="*[@key = 'Gender']"/>
			</VRI:Gender>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'MailingAddress'])">
			<VRI:MailingAddress>
				<xsl:apply-templates select="*[@key = 'MailingAddress']"/>
			</VRI:MailingAddress>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Name'])">
			<VRI:Name>
				<xsl:apply-templates select="*[@key = 'Name']"/>
			</VRI:Name>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Party'])">
			<VRI:Party>
				<xsl:apply-templates select="*[@key = 'Party']"/>
			</VRI:Party>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'PreviousName'])">
			<VRI:PreviousName>
				<xsl:apply-templates select="*[@key = 'PreviousName']"/>
			</VRI:PreviousName>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'PreviousResidenceAddress'])">
			<VRI:PreviousResidenceAddress>
				<xsl:apply-templates select="*[@key = 'PreviousResidenceAddress']"/>
			</VRI:PreviousResidenceAddress>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'PreviousSignature'])">
			<VRI:PreviousSignature>
				<xsl:apply-templates select="*[@key = 'PreviousSignature']"/>
			</VRI:PreviousSignature>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'ResidenceAddress'])">
			<VRI:ResidenceAddress>
				<xsl:apply-templates select="*[@key = 'ResidenceAddress']"/>
			</VRI:ResidenceAddress>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'ResidenceAddressIsMailingAddress'])">
			<VRI:ResidenceAddressIsMailingAddress>
				<xsl:value-of select="*[@key = 'ResidenceAddressIsMailingAddress']"/>
			</VRI:ResidenceAddressIsMailingAddress>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Signature'])">
			<VRI:Signature>
				<xsl:apply-templates select="*[@key = 'Signature']"/>
			</VRI:Signature>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'VoterClassification'])">
			<xsl:for-each select="*[@key = 'VoterClassification']/map">
				<VRI:VoterClassification>
					<xsl:apply-templates select="."/>
				</VRI:VoterClassification>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'VoterId'])">
			<xsl:for-each select="*[@key = 'VoterId']/map">
				<VRI:VoterId>
					<xsl:apply-templates select="."/>
				</VRI:VoterId>
			</xsl:for-each>
		</xsl:if>
	</xsl:template>
	<xsl:template name="VRI:VoterClassification" match="*[string = 'VRI.VoterClassification' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="boolean(*[@key = 'Assertion'])">
			<VRI:Assertion>
				<xsl:value-of select="*[@key = 'Assertion']"/>
			</VRI:Assertion>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'OtherAssertion'])">
			<VRI:OtherAssertion>
				<xsl:value-of select="*[@key = 'OtherAssertion']"/>
			</VRI:OtherAssertion>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'OtherType'])">
			<VRI:OtherType>
				<xsl:value-of select="*[@key = 'OtherType']"/>
			</VRI:OtherType>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Type'])">
			<VRI:Type>
				<xsl:value-of select="*[@key = 'Type']"/>
			</VRI:Type>
		</xsl:if>
	</xsl:template>
	<xsl:template name="VRI:VoterId" match="*[string = 'VRI.VoterId' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="boolean(*[@key = 'AttestNoSuchId'])">
			<VRI:AttestNoSuchId>
				<xsl:value-of select="*[@key = 'AttestNoSuchId']"/>
			</VRI:AttestNoSuchId>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'DateOfIssuance'])">
			<VRI:DateOfIssuance>
				<xsl:value-of select="*[@key = 'DateOfIssuance']"/>
			</VRI:DateOfIssuance>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'FileValue'])">
			<VRI:FileValue>
				<xsl:apply-templates select="*[@key = 'FileValue']"/>
			</VRI:FileValue>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'OtherType'])">
			<VRI:OtherType>
				<xsl:value-of select="*[@key = 'OtherType']"/>
			</VRI:OtherType>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'StringValue'])">
			<VRI:StringValue>
				<xsl:value-of select="*[@key = 'StringValue']"/>
			</VRI:StringValue>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Type'])">
			<VRI:Type>
				<xsl:value-of select="*[@key = 'Type']"/>
			</VRI:Type>
		</xsl:if>
	</xsl:template>
	<xsl:template name="VRI:VoterParticipation" match="*[string = 'VRI.VoterParticipation' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="boolean(*[@key = 'BallotStyle'])">
			<VRI:BallotStyle>
				<xsl:apply-templates select="*[@key = 'BallotStyle']"/>
			</VRI:BallotStyle>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Election'])">
			<VRI:Election>
				<xsl:apply-templates select="*[@key = 'Election']"/>
			</VRI:Election>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'PollingLocation'])">
			<VRI:PollingLocation>
				<xsl:apply-templates select="*[@key = 'PollingLocation']"/>
			</VRI:PollingLocation>
		</xsl:if>
	</xsl:template>
	<xsl:template name="VRI:VoterRecord" match="*[string = 'VRI.VoterRecord' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="boolean(*[@key = 'District'])">
			<xsl:for-each select="*[@key = 'District']/map">
				<VRI:District>
					<xsl:apply-templates select="."/>
				</VRI:District>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'ElectionAdministration'])">
			<VRI:ElectionAdministration>
				<xsl:apply-templates select="*[@key = 'ElectionAdministration']"/>
			</VRI:ElectionAdministration>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'HavaIdRequired'])">
			<VRI:HavaIdRequired>
				<xsl:value-of select="*[@key = 'HavaIdRequired']"/>
			</VRI:HavaIdRequired>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Locality'])">
			<xsl:for-each select="*[@key = 'Locality']/map">
				<VRI:Locality>
					<xsl:apply-templates select="."/>
				</VRI:Locality>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'OtherVoterStatus'])">
			<VRI:OtherVoterStatus>
				<xsl:value-of select="*[@key = 'OtherVoterStatus']"/>
			</VRI:OtherVoterStatus>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'PollingLocation'])">
			<VRI:PollingLocation>
				<xsl:apply-templates select="*[@key = 'PollingLocation']"/>
			</VRI:PollingLocation>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Voter'])">
			<VRI:Voter>
				<xsl:apply-templates select="*[@key = 'Voter']"/>
			</VRI:Voter>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'VoterParticipation'])">
			<xsl:for-each select="*[@key = 'VoterParticipation']/map">
				<VRI:VoterParticipation>
					<xsl:apply-templates select="."/>
				</VRI:VoterParticipation>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'VoterStatus'])">
			<VRI:VoterStatus>
				<xsl:value-of select="*[@key = 'VoterStatus']"/>
			</VRI:VoterStatus>
		</xsl:if>
	</xsl:template>
	<xsl:template name="VRI:VoterRecordResults" match="*[string = 'VRI.VoterRecordResults' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="$set_type">
			<xsl:attribute name="xsi:type">VRI:VoterRecordResults</xsl:attribute>
		</xsl:if>
		<xsl:call-template name="VRI:VoterRecordsResponse">
			<xsl:with-param name="set_type" select="false()"/>
		</xsl:call-template>
		<xsl:if test="boolean(*[@key = 'VoterRecord'])">
			<xsl:for-each select="*[@key = 'VoterRecord']/map">
				<VRI:VoterRecord>
					<xsl:apply-templates select="."/>
				</VRI:VoterRecord>
			</xsl:for-each>
		</xsl:if>
	</xsl:template>
	<xsl:template name="VRI:VoterRecordsRequest" match="*[string = 'VRI.VoterRecordsRequest' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<VRI:VoterRecordsRequest>
			<xsl:if test="boolean(*[@key = 'AdditionalInfo'])">
				<xsl:for-each select="*[@key = 'AdditionalInfo']/map">
					<VRI:AdditionalInfo>
						<xsl:apply-templates select="."/>
					</VRI:AdditionalInfo>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'BallotRequest'])">
				<VRI:BallotRequest>
					<xsl:apply-templates select="*[@key = 'BallotRequest']"/>
				</VRI:BallotRequest>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'Form'])">
				<VRI:Form>
					<xsl:value-of select="*[@key = 'Form']"/>
				</VRI:Form>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'GeneratedDate'])">
				<VRI:GeneratedDate>
					<xsl:value-of select="*[@key = 'GeneratedDate']"/>
				</VRI:GeneratedDate>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'Issuer'])">
				<VRI:Issuer>
					<xsl:value-of select="*[@key = 'Issuer']"/>
				</VRI:Issuer>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'OtherForm'])">
				<VRI:OtherForm>
					<xsl:value-of select="*[@key = 'OtherForm']"/>
				</VRI:OtherForm>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'OtherRequestMethod'])">
				<VRI:OtherRequestMethod>
					<xsl:value-of select="*[@key = 'OtherRequestMethod']"/>
				</VRI:OtherRequestMethod>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'OtherType'])">
				<VRI:OtherType>
					<xsl:value-of select="*[@key = 'OtherType']"/>
				</VRI:OtherType>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'RequestHelper'])">
				<xsl:for-each select="*[@key = 'RequestHelper']/map">
					<VRI:RequestHelper>
						<xsl:apply-templates select="."/>
					</VRI:RequestHelper>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'RequestMethod'])">
				<VRI:RequestMethod>
					<xsl:value-of select="*[@key = 'RequestMethod']"/>
				</VRI:RequestMethod>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'RequestProxy'])">
				<VRI:RequestProxy>
					<xsl:apply-templates select="*[@key = 'RequestProxy']"/>
				</VRI:RequestProxy>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'SelectedLanguage'])">
				<VRI:SelectedLanguage>
					<xsl:value-of select="*[@key = 'SelectedLanguage']"/>
				</VRI:SelectedLanguage>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'Subject'])">
				<VRI:Subject>
					<xsl:apply-templates select="*[@key = 'Subject']"/>
				</VRI:Subject>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'TransactionId'])">
				<VRI:TransactionId>
					<xsl:value-of select="*[@key = 'TransactionId']"/>
				</VRI:TransactionId>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'Type'])">
				<xsl:for-each select="*[@key = 'Type']/string">
					<VRI:Type>
						<xsl:value-of select="."/>
					</VRI:Type>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'VendorApplicationId'])">
				<VRI:VendorApplicationId>
					<xsl:value-of select="*[@key = 'VendorApplicationId']"/>
				</VRI:VendorApplicationId>
			</xsl:if>
		</VRI:VoterRecordsRequest>
	</xsl:template>
	<xsl:template name="VRI:VoterRecordsResponse" match="*[string = 'VRI.VoterRecordsResponse' and string/@key = '@type']" priority="-1">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="boolean(*[@key = 'TransactionId'])">
			<VRI:TransactionId>
				<xsl:value-of select="*[@key = 'TransactionId']"/>
			</VRI:TransactionId>
		</xsl:if>
	</xsl:template>
	<xsl:template name="addr:CommunityAddress_type" match="*[string = 'addr.CommunityAddress_type' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<VRI:CommunityAddress_type>
			<xsl:if test="boolean(*[@key = 'action'])">
				<addr:action>
					<xsl:value-of select="*[@key = 'action']"/>
				</addr:action>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressAnomalyStatus'])">
				<addr:AddressAnomalyStatus>
					<xsl:value-of select="*[@key = 'AddressAnomalyStatus']"/>
				</addr:AddressAnomalyStatus>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressAuthority'])">
				<addr:AddressAuthority>
					<xsl:value-of select="*[@key = 'AddressAuthority']"/>
				</addr:AddressAuthority>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressClassification'])">
				<addr:AddressClassification>
					<xsl:value-of select="*[@key = 'AddressClassification']"/>
				</addr:AddressClassification>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressCoordinateReferenceSystem'])">
				<addr:AddressCoordinateReferenceSystem>
					<xsl:apply-templates select="*[@key = 'AddressCoordinateReferenceSystem']"/>
				</addr:AddressCoordinateReferenceSystem>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressElevation'])">
				<addr:AddressElevation>
					<xsl:value-of select="*[@key = 'AddressElevation']"/>
				</addr:AddressElevation>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressEndDate'])">
				<addr:AddressEndDate>
					<xsl:value-of select="*[@key = 'AddressEndDate']"/>
				</addr:AddressEndDate>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressFeatureType'])">
				<xsl:for-each select="*[@key = 'AddressFeatureType']/string">
					<addr:AddressFeatureType>
						<xsl:value-of select="."/>
					</addr:AddressFeatureType>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressId'])">
				<addr:AddressId>
					<xsl:value-of select="*[@key = 'AddressId']"/>
				</addr:AddressId>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressLatitude'])">
				<addr:AddressLatitude>
					<xsl:value-of select="*[@key = 'AddressLatitude']"/>
				</addr:AddressLatitude>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressLifecycleStatus'])">
				<addr:AddressLifecycleStatus>
					<xsl:value-of select="*[@key = 'AddressLifecycleStatus']"/>
				</addr:AddressLifecycleStatus>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressLongitude'])">
				<addr:AddressLongitude>
					<xsl:value-of select="*[@key = 'AddressLongitude']"/>
				</addr:AddressLongitude>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressParcelIdentifier'])">
				<xsl:for-each select="*[@key = 'AddressParcelIdentifier']/string">
					<addr:AddressParcelIdentifier>
						<xsl:value-of select="."/>
					</addr:AddressParcelIdentifier>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressParcelIdentifierSource'])">
				<xsl:for-each select="*[@key = 'AddressParcelIdentifierSource']/string">
					<addr:AddressParcelIdentifierSource>
						<xsl:value-of select="."/>
					</addr:AddressParcelIdentifierSource>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressRangeDirectionality'])">
				<xsl:for-each select="*[@key = 'AddressRangeDirectionality']/string">
					<addr:AddressRangeDirectionality>
						<xsl:value-of select="."/>
					</addr:AddressRangeDirectionality>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressRangeParity'])">
				<xsl:for-each select="*[@key = 'AddressRangeParity']/string">
					<addr:AddressRangeParity>
						<xsl:value-of select="."/>
					</addr:AddressRangeParity>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressRangeSpan'])">
				<xsl:for-each select="*[@key = 'AddressRangeSpan']/string">
					<addr:AddressRangeSpan>
						<xsl:value-of select="."/>
					</addr:AddressRangeSpan>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressRangeType'])">
				<xsl:for-each select="*[@key = 'AddressRangeType']/string">
					<addr:AddressRangeType>
						<xsl:value-of select="."/>
					</addr:AddressRangeType>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressReferenceSystemAuthority'])">
				<addr:AddressReferenceSystemAuthority>
					<xsl:value-of select="*[@key = 'AddressReferenceSystemAuthority']"/>
				</addr:AddressReferenceSystemAuthority>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressReferenceSystemId'])">
				<addr:AddressReferenceSystemId>
					<xsl:value-of select="*[@key = 'AddressReferenceSystemId']"/>
				</addr:AddressReferenceSystemId>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressSideOfStreet'])">
				<addr:AddressSideOfStreet>
					<xsl:value-of select="*[@key = 'AddressSideOfStreet']"/>
				</addr:AddressSideOfStreet>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressStartDate'])">
				<addr:AddressStartDate>
					<xsl:value-of select="*[@key = 'AddressStartDate']"/>
				</addr:AddressStartDate>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressTransportationFeatureID'])">
				<addr:AddressTransportationFeatureID>
					<xsl:value-of select="*[@key = 'AddressTransportationFeatureID']"/>
				</addr:AddressTransportationFeatureID>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressTransportationFeatureType'])">
				<addr:AddressTransportationFeatureType>
					<xsl:value-of select="*[@key = 'AddressTransportationFeatureType']"/>
				</addr:AddressTransportationFeatureType>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressTransportationSystemAuthority'])">
				<addr:AddressTransportationSystemAuthority>
					<xsl:value-of select="*[@key = 'AddressTransportationSystemAuthority']"/>
				</addr:AddressTransportationSystemAuthority>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressTransportationSystemName'])">
				<addr:AddressTransportationSystemName>
					<xsl:value-of select="*[@key = 'AddressTransportationSystemName']"/>
				</addr:AddressTransportationSystemName>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressXCoordinate'])">
				<addr:AddressXCoordinate>
					<xsl:value-of select="*[@key = 'AddressXCoordinate']"/>
				</addr:AddressXCoordinate>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressYCoordinate'])">
				<addr:AddressYCoordinate>
					<xsl:value-of select="*[@key = 'AddressYCoordinate']"/>
				</addr:AddressYCoordinate>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressZLevel'])">
				<addr:AddressZLevel>
					<xsl:value-of select="*[@key = 'AddressZLevel']"/>
				</addr:AddressZLevel>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'CompleteAddressNumber'])">
				<addr:CompleteAddressNumber>
					<xsl:apply-templates select="*[@key = 'CompleteAddressNumber']"/>
				</addr:CompleteAddressNumber>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'CompleteLandmarkName'])">
				<addr:CompleteLandmarkName>
					<xsl:apply-templates select="*[@key = 'CompleteLandmarkName']"/>
				</addr:CompleteLandmarkName>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'CompletePlaceName1'])">
				<addr:CompletePlaceName>
					<xsl:apply-templates select="*[@key = 'CompletePlaceName1']"/>
				</addr:CompletePlaceName>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'CompletePlaceName2'])">
				<addr:CompletePlaceName>
					<xsl:apply-templates select="*[@key = 'CompletePlaceName2']"/>
				</addr:CompletePlaceName>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'CompleteSubaddress'])">
				<addr:CompleteSubaddress>
					<xsl:apply-templates select="*[@key = 'CompleteSubaddress']"/>
				</addr:CompleteSubaddress>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'CountryName'])">
				<addr:CountryName>
					<xsl:value-of select="*[@key = 'CountryName']"/>
				</addr:CountryName>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'DataSetID'])">
				<addr:DataSetID>
					<xsl:value-of select="*[@key = 'DataSetID']"/>
				</addr:DataSetID>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'LocationDescription'])">
				<addr:LocationDescription>
					<xsl:value-of select="*[@key = 'LocationDescription']"/>
				</addr:LocationDescription>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'MailableAddress'])">
				<addr:MailableAddress>
					<xsl:value-of select="*[@key = 'MailableAddress']"/>
				</addr:MailableAddress>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'OfficialStatus'])">
				<addr:OfficialStatus>
					<xsl:value-of select="*[@key = 'OfficialStatus']"/>
				</addr:OfficialStatus>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'PlaceStateZip'])">
				<xsl:for-each select="*[@key = 'PlaceStateZip']/string">
					<addr:PlaceStateZip>
						<xsl:value-of select="."/>
					</addr:PlaceStateZip>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'RelatedAddressId'])">
				<xsl:for-each select="*[@key = 'RelatedAddressId']/string">
					<addr:RelatedAddressId>
						<xsl:value-of select="."/>
					</addr:RelatedAddressId>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'RelatedTransportationFeatureID'])">
				<xsl:for-each select="*[@key = 'RelatedTransportationFeatureID']/string">
					<addr:RelatedTransportationFeatureID>
						<xsl:value-of select="."/>
					</addr:RelatedTransportationFeatureID>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'StateName'])">
				<addr:StateName>
					<xsl:value-of select="*[@key = 'StateName']"/>
				</addr:StateName>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'USNationalGridCoordinate'])">
				<addr:USNationalGridCoordinate>
					<xsl:value-of select="*[@key = 'USNationalGridCoordinate']"/>
				</addr:USNationalGridCoordinate>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'ZipCode'])">
				<addr:ZipCode>
					<xsl:value-of select="*[@key = 'ZipCode']"/>
				</addr:ZipCode>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'ZipPlus4'])">
				<addr:ZipPlus4>
					<xsl:value-of select="*[@key = 'ZipPlus4']"/>
				</addr:ZipPlus4>
			</xsl:if>
		</VRI:CommunityAddress_type>
	</xsl:template>
	<xsl:template name="addr:FourNumberAddressRange_type" match="*[string = 'addr.FourNumberAddressRange_type' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<VRI:FourNumberAddressRange_type>
			<xsl:if test="boolean(*[@key = 'action'])">
				<addr:action>
					<xsl:value-of select="*[@key = 'action']"/>
				</addr:action>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressAnomalyStatus'])">
				<addr:AddressAnomalyStatus>
					<xsl:value-of select="*[@key = 'AddressAnomalyStatus']"/>
				</addr:AddressAnomalyStatus>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressAuthority'])">
				<addr:AddressAuthority>
					<xsl:value-of select="*[@key = 'AddressAuthority']"/>
				</addr:AddressAuthority>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressClassification'])">
				<addr:AddressClassification>
					<xsl:value-of select="*[@key = 'AddressClassification']"/>
				</addr:AddressClassification>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressCoordinateReferenceSystem'])">
				<addr:AddressCoordinateReferenceSystem>
					<xsl:apply-templates select="*[@key = 'AddressCoordinateReferenceSystem']"/>
				</addr:AddressCoordinateReferenceSystem>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressElevation'])">
				<addr:AddressElevation>
					<xsl:value-of select="*[@key = 'AddressElevation']"/>
				</addr:AddressElevation>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressEndDate'])">
				<addr:AddressEndDate>
					<xsl:value-of select="*[@key = 'AddressEndDate']"/>
				</addr:AddressEndDate>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressFeatureType'])">
				<xsl:for-each select="*[@key = 'AddressFeatureType']/string">
					<addr:AddressFeatureType>
						<xsl:value-of select="."/>
					</addr:AddressFeatureType>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressId'])">
				<addr:AddressId>
					<xsl:value-of select="*[@key = 'AddressId']"/>
				</addr:AddressId>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressLatitude'])">
				<addr:AddressLatitude>
					<xsl:value-of select="*[@key = 'AddressLatitude']"/>
				</addr:AddressLatitude>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressLifecycleStatus'])">
				<addr:AddressLifecycleStatus>
					<xsl:value-of select="*[@key = 'AddressLifecycleStatus']"/>
				</addr:AddressLifecycleStatus>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressLongitude'])">
				<addr:AddressLongitude>
					<xsl:value-of select="*[@key = 'AddressLongitude']"/>
				</addr:AddressLongitude>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressParcelIdentifier'])">
				<xsl:for-each select="*[@key = 'AddressParcelIdentifier']/string">
					<addr:AddressParcelIdentifier>
						<xsl:value-of select="."/>
					</addr:AddressParcelIdentifier>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressParcelIdentifierSource'])">
				<xsl:for-each select="*[@key = 'AddressParcelIdentifierSource']/string">
					<addr:AddressParcelIdentifierSource>
						<xsl:value-of select="."/>
					</addr:AddressParcelIdentifierSource>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressRangeDirectionality'])">
				<xsl:for-each select="*[@key = 'AddressRangeDirectionality']/string">
					<addr:AddressRangeDirectionality>
						<xsl:value-of select="."/>
					</addr:AddressRangeDirectionality>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressRangeParity'])">
				<xsl:for-each select="*[@key = 'AddressRangeParity']/string">
					<addr:AddressRangeParity>
						<xsl:value-of select="."/>
					</addr:AddressRangeParity>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressRangeSpan'])">
				<xsl:for-each select="*[@key = 'AddressRangeSpan']/string">
					<addr:AddressRangeSpan>
						<xsl:value-of select="."/>
					</addr:AddressRangeSpan>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressRangeType'])">
				<xsl:for-each select="*[@key = 'AddressRangeType']/string">
					<addr:AddressRangeType>
						<xsl:value-of select="."/>
					</addr:AddressRangeType>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressReferenceSystemAuthority'])">
				<addr:AddressReferenceSystemAuthority>
					<xsl:value-of select="*[@key = 'AddressReferenceSystemAuthority']"/>
				</addr:AddressReferenceSystemAuthority>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressReferenceSystemId'])">
				<addr:AddressReferenceSystemId>
					<xsl:value-of select="*[@key = 'AddressReferenceSystemId']"/>
				</addr:AddressReferenceSystemId>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressSideOfStreet'])">
				<addr:AddressSideOfStreet>
					<xsl:value-of select="*[@key = 'AddressSideOfStreet']"/>
				</addr:AddressSideOfStreet>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressStartDate'])">
				<addr:AddressStartDate>
					<xsl:value-of select="*[@key = 'AddressStartDate']"/>
				</addr:AddressStartDate>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressTransportationFeatureID'])">
				<addr:AddressTransportationFeatureID>
					<xsl:value-of select="*[@key = 'AddressTransportationFeatureID']"/>
				</addr:AddressTransportationFeatureID>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressTransportationFeatureType'])">
				<addr:AddressTransportationFeatureType>
					<xsl:value-of select="*[@key = 'AddressTransportationFeatureType']"/>
				</addr:AddressTransportationFeatureType>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressTransportationSystemAuthority'])">
				<addr:AddressTransportationSystemAuthority>
					<xsl:value-of select="*[@key = 'AddressTransportationSystemAuthority']"/>
				</addr:AddressTransportationSystemAuthority>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressTransportationSystemName'])">
				<addr:AddressTransportationSystemName>
					<xsl:value-of select="*[@key = 'AddressTransportationSystemName']"/>
				</addr:AddressTransportationSystemName>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressXCoordinate'])">
				<addr:AddressXCoordinate>
					<xsl:value-of select="*[@key = 'AddressXCoordinate']"/>
				</addr:AddressXCoordinate>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressYCoordinate'])">
				<addr:AddressYCoordinate>
					<xsl:value-of select="*[@key = 'AddressYCoordinate']"/>
				</addr:AddressYCoordinate>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressZLevel'])">
				<addr:AddressZLevel>
					<xsl:value-of select="*[@key = 'AddressZLevel']"/>
				</addr:AddressZLevel>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'CompleteAddressNumber1'])">
				<addr:CompleteAddressNumber1>
					<xsl:apply-templates select="*[@key = 'CompleteAddressNumber1']"/>
				</addr:CompleteAddressNumber1>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'CompleteAddressNumber2'])">
				<addr:CompleteAddressNumber2>
					<xsl:apply-templates select="*[@key = 'CompleteAddressNumber2']"/>
				</addr:CompleteAddressNumber2>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'CompleteAddressNumber3'])">
				<addr:CompleteAddressNumber3>
					<xsl:apply-templates select="*[@key = 'CompleteAddressNumber3']"/>
				</addr:CompleteAddressNumber3>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'CompleteAddressNumber4'])">
				<addr:CompleteAddressNumber4>
					<xsl:apply-templates select="*[@key = 'CompleteAddressNumber4']"/>
				</addr:CompleteAddressNumber4>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'CompleteLandmarkName'])">
				<addr:CompleteLandmarkName>
					<xsl:apply-templates select="*[@key = 'CompleteLandmarkName']"/>
				</addr:CompleteLandmarkName>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'CompletePlaceName1'])">
				<addr:CompletePlaceName>
					<xsl:apply-templates select="*[@key = 'CompletePlaceName1']"/>
				</addr:CompletePlaceName>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'CompletePlaceName2'])">
				<addr:CompletePlaceName>
					<xsl:apply-templates select="*[@key = 'CompletePlaceName2']"/>
				</addr:CompletePlaceName>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'CompleteStreetName'])">
				<addr:CompleteStreetName>
					<xsl:apply-templates select="*[@key = 'CompleteStreetName']"/>
				</addr:CompleteStreetName>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'CountryName'])">
				<addr:CountryName>
					<xsl:value-of select="*[@key = 'CountryName']"/>
				</addr:CountryName>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'DataSetID'])">
				<addr:DataSetID>
					<xsl:value-of select="*[@key = 'DataSetID']"/>
				</addr:DataSetID>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'LocationDescription'])">
				<addr:LocationDescription>
					<xsl:value-of select="*[@key = 'LocationDescription']"/>
				</addr:LocationDescription>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'MailableAddress'])">
				<addr:MailableAddress>
					<xsl:value-of select="*[@key = 'MailableAddress']"/>
				</addr:MailableAddress>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'OfficialStatus'])">
				<addr:OfficialStatus>
					<xsl:value-of select="*[@key = 'OfficialStatus']"/>
				</addr:OfficialStatus>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'PlaceStateZip'])">
				<xsl:for-each select="*[@key = 'PlaceStateZip']/string">
					<addr:PlaceStateZip>
						<xsl:value-of select="."/>
					</addr:PlaceStateZip>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'RelatedAddressId'])">
				<xsl:for-each select="*[@key = 'RelatedAddressId']/string">
					<addr:RelatedAddressId>
						<xsl:value-of select="."/>
					</addr:RelatedAddressId>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'RelatedTransportationFeatureID'])">
				<xsl:for-each select="*[@key = 'RelatedTransportationFeatureID']/string">
					<addr:RelatedTransportationFeatureID>
						<xsl:value-of select="."/>
					</addr:RelatedTransportationFeatureID>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'SeparatorElement1'])">
				<addr:SeparatorElement1>
					<xsl:value-of select="*[@key = 'SeparatorElement1']"/>
				</addr:SeparatorElement1>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'SeparatorElement2'])">
				<addr:SeparatorElement2>
					<xsl:value-of select="*[@key = 'SeparatorElement2']"/>
				</addr:SeparatorElement2>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'StateName'])">
				<addr:StateName>
					<xsl:value-of select="*[@key = 'StateName']"/>
				</addr:StateName>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'USNationalGridCoordinate'])">
				<addr:USNationalGridCoordinate>
					<xsl:value-of select="*[@key = 'USNationalGridCoordinate']"/>
				</addr:USNationalGridCoordinate>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'ZipCode'])">
				<addr:ZipCode>
					<xsl:value-of select="*[@key = 'ZipCode']"/>
				</addr:ZipCode>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'ZipPlus4'])">
				<addr:ZipPlus4>
					<xsl:value-of select="*[@key = 'ZipPlus4']"/>
				</addr:ZipPlus4>
			</xsl:if>
		</VRI:FourNumberAddressRange_type>
	</xsl:template>
	<xsl:template name="addr:GeneralAddressClass_type" match="*[string = 'addr.GeneralAddressClass_type' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<VRI:GeneralAddressClass_type>
			<!-- Elements not in the original order -->
			<xsl:if test="boolean(*[@key = 'action'])">
				<addr:action>
					<xsl:value-of select="*[@key = 'action']"/>
				</addr:action>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'GeneralAddress'])">
				<addr:GeneralAddress>
					<xsl:value-of select="*[@key = 'GeneralAddress']"/>
				</addr:GeneralAddress>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'USPSGeneralDeliveryPoint'])">
				<addr:USPSGeneralDeliveryPoint>
					<xsl:value-of select="*[@key = 'USPSGeneralDeliveryPoint']"/>
				</addr:USPSGeneralDeliveryPoint>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'CompletePlaceName'])">
				<addr_type:CompletePlaceName>
					<xsl:apply-templates select="*[@key = 'CompletePlaceName']"/>
				</addr_type:CompletePlaceName>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'StateName'])">
				<addr_type:StateName>
					<xsl:value-of select="*[@key = 'StateName']"/>
				</addr_type:StateName>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'ZipCode'])">
				<addr_type:ZipCode>
					<xsl:value-of select="*[@key = 'ZipCode']"/>
				</addr_type:ZipCode>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'ZipPlus4'])">
				<addr_type:ZipPlus4>
					<xsl:value-of select="*[@key = 'ZipPlus4']"/>
				</addr_type:ZipPlus4>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'CountryName'])">
				<addr_type:CountryName>
					<xsl:value-of select="*[@key = 'CountryName']"/>
				</addr_type:CountryName>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'PlaceStateZip'])">
				<xsl:for-each select="*[@key = 'PlaceStateZip']/string">
					<addr_type:PlaceStateZip>
						<xsl:value-of select="."/>
					</addr_type:PlaceStateZip>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressId'])">
				<addr:AddressId>
					<xsl:value-of select="*[@key = 'AddressId']"/>
				</addr:AddressId>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressAuthority'])">
				<addr:AddressAuthority>
					<xsl:value-of select="*[@key = 'AddressAuthority']"/>
				</addr:AddressAuthority>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'RelatedAddressId'])">
				<xsl:for-each select="*[@key = 'RelatedAddressId']/string">
					<addr:RelatedAddressId>
						<xsl:value-of select="."/>
					</addr:RelatedAddressId>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressXCoordinate'])">
				<addr:AddressXCoordinate>
					<xsl:value-of select="*[@key = 'AddressXCoordinate']"/>
				</addr:AddressXCoordinate>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressYCoordinate'])">
				<addr:AddressYCoordinate>
					<xsl:value-of select="*[@key = 'AddressYCoordinate']"/>
				</addr:AddressYCoordinate>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressLongitude'])">
				<addr:AddressLongitude>
					<xsl:value-of select="*[@key = 'AddressLongitude']"/>
				</addr:AddressLongitude>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressLatitude'])">
				<addr:AddressLatitude>
					<xsl:value-of select="*[@key = 'AddressLatitude']"/>
				</addr:AddressLatitude>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'USNationalGridCoordinate'])">
				<addr:USNationalGridCoordinate>
					<xsl:value-of select="*[@key = 'USNationalGridCoordinate']"/>
				</addr:USNationalGridCoordinate>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressElevation'])">
				<addr:AddressElevation>
					<xsl:value-of select="*[@key = 'AddressElevation']"/>
				</addr:AddressElevation>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressCoordinateReferenceSystem'])">
				<addr:AddressCoordinateReferenceSystem>
					<xsl:apply-templates select="*[@key = 'AddressCoordinateReferenceSystem']"/>
				</addr:AddressCoordinateReferenceSystem>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressParcelIdentifierSource'])">
				<xsl:for-each select="*[@key = 'AddressParcelIdentifierSource']/string">
					<addr:AddressParcelIdentifierSource>
						<xsl:value-of select="."/>
					</addr:AddressParcelIdentifierSource>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressParcelIdentifier'])">
				<xsl:for-each select="*[@key = 'AddressParcelIdentifier']/string">
					<addr:AddressParcelIdentifier>
						<xsl:value-of select="."/>
					</addr:AddressParcelIdentifier>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressTransportationSystemName'])">
				<addr:AddressTransportationSystemName>
					<xsl:value-of select="*[@key = 'AddressTransportationSystemName']"/>
				</addr:AddressTransportationSystemName>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressTransportationSystemAuthority'])">
				<addr:AddressTransportationSystemAuthority>
					<xsl:value-of select="*[@key = 'AddressTransportationSystemAuthority']"/>
				</addr:AddressTransportationSystemAuthority>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressTransportationFeatureType'])">
				<addr:AddressTransportationFeatureType>
					<xsl:value-of select="*[@key = 'AddressTransportationFeatureType']"/>
				</addr:AddressTransportationFeatureType>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressTransportationFeatureID'])">
				<addr:AddressTransportationFeatureID>
					<xsl:value-of select="*[@key = 'AddressTransportationFeatureID']"/>
				</addr:AddressTransportationFeatureID>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'RelatedTransportationFeatureID'])">
				<xsl:for-each select="*[@key = 'RelatedTransportationFeatureID']/string">
					<addr:RelatedTransportationFeatureID>
						<xsl:value-of select="."/>
					</addr:RelatedTransportationFeatureID>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressRangeType'])">
				<xsl:for-each select="*[@key = 'AddressRangeType']/string">
					<addr:AddressRangeType>
						<xsl:value-of select="."/>
					</addr:AddressRangeType>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressRangeParity'])">
				<xsl:for-each select="*[@key = 'AddressRangeParity']/string">
					<addr:AddressRangeParity>
						<xsl:value-of select="."/>
					</addr:AddressRangeParity>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressRangeDirectionality'])">
				<xsl:for-each select="*[@key = 'AddressRangeDirectionality']/string">
					<addr:AddressRangeDirectionality>
						<xsl:value-of select="."/>
					</addr:AddressRangeDirectionality>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressRangeSpan'])">
				<xsl:for-each select="*[@key = 'AddressRangeSpan']/string">
					<addr:AddressRangeSpan>
						<xsl:value-of select="."/>
					</addr:AddressRangeSpan>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressClassification'])">
				<addr:AddressClassification>
					<xsl:value-of select="*[@key = 'AddressClassification']"/>
				</addr:AddressClassification>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressFeatureType'])">
				<xsl:for-each select="*[@key = 'AddressFeatureType']/string">
					<addr:AddressFeatureType>
						<xsl:value-of select="."/>
					</addr:AddressFeatureType>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressLifecycleStatus'])">
				<addr:AddressLifecycleStatus>
					<xsl:value-of select="*[@key = 'AddressLifecycleStatus']"/>
				</addr:AddressLifecycleStatus>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'OfficialStatus'])">
				<addr:OfficialStatus>
					<xsl:value-of select="*[@key = 'OfficialStatus']"/>
				</addr:OfficialStatus>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressAnomalyStatus'])">
				<addr:AddressAnomalyStatus>
					<xsl:value-of select="*[@key = 'AddressAnomalyStatus']"/>
				</addr:AddressAnomalyStatus>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressSideOfStreet'])">
				<addr:AddressSideOfStreet>
					<xsl:value-of select="*[@key = 'AddressSideOfStreet']"/>
				</addr:AddressSideOfStreet>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressZLevel'])">
				<addr:AddressZLevel>
					<xsl:value-of select="*[@key = 'AddressZLevel']"/>
				</addr:AddressZLevel>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'LocationDescription'])">
				<addr:LocationDescription>
					<xsl:value-of select="*[@key = 'LocationDescription']"/>
				</addr:LocationDescription>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'MailableAddress'])">
				<addr:MailableAddress>
					<xsl:value-of select="*[@key = 'MailableAddress']"/>
				</addr:MailableAddress>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressStartDate'])">
				<addr:AddressStartDate>
					<xsl:value-of select="*[@key = 'AddressStartDate']"/>
				</addr:AddressStartDate>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressEndDate'])">
				<addr:AddressEndDate>
					<xsl:value-of select="*[@key = 'AddressEndDate']"/>
				</addr:AddressEndDate>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'DataSetID'])">
				<addr:DataSetID>
					<xsl:value-of select="*[@key = 'DataSetID']"/>
				</addr:DataSetID>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressReferenceSystemId'])">
				<addr:AddressReferenceSystemId>
					<xsl:value-of select="*[@key = 'AddressReferenceSystemId']"/>
				</addr:AddressReferenceSystemId>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressReferenceSystemAuthority'])">
				<addr:AddressReferenceSystemAuthority>
					<xsl:value-of select="*[@key = 'AddressReferenceSystemAuthority']"/>
				</addr:AddressReferenceSystemAuthority>
			</xsl:if>
		</VRI:GeneralAddressClass_type>
	</xsl:template>
	<xsl:template name="addr:IntersectionAddress_type" match="*[string = 'addr.IntersectionAddress_type' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<VRI:IntersectionAddress_type>
			<xsl:if test="boolean(*[@key = 'action'])">
				<addr:action>
					<xsl:value-of select="*[@key = 'action']"/>
				</addr:action>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressAnomalyStatus'])">
				<addr:AddressAnomalyStatus>
					<xsl:value-of select="*[@key = 'AddressAnomalyStatus']"/>
				</addr:AddressAnomalyStatus>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressAuthority'])">
				<addr:AddressAuthority>
					<xsl:value-of select="*[@key = 'AddressAuthority']"/>
				</addr:AddressAuthority>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressClassification'])">
				<addr:AddressClassification>
					<xsl:value-of select="*[@key = 'AddressClassification']"/>
				</addr:AddressClassification>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressCoordinateReferenceSystem'])">
				<addr:AddressCoordinateReferenceSystem>
					<xsl:apply-templates select="*[@key = 'AddressCoordinateReferenceSystem']"/>
				</addr:AddressCoordinateReferenceSystem>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressElevation'])">
				<addr:AddressElevation>
					<xsl:value-of select="*[@key = 'AddressElevation']"/>
				</addr:AddressElevation>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressEndDate'])">
				<addr:AddressEndDate>
					<xsl:value-of select="*[@key = 'AddressEndDate']"/>
				</addr:AddressEndDate>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressFeatureType'])">
				<xsl:for-each select="*[@key = 'AddressFeatureType']/string">
					<addr:AddressFeatureType>
						<xsl:value-of select="."/>
					</addr:AddressFeatureType>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressId'])">
				<addr:AddressId>
					<xsl:value-of select="*[@key = 'AddressId']"/>
				</addr:AddressId>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressLatitude'])">
				<addr:AddressLatitude>
					<xsl:value-of select="*[@key = 'AddressLatitude']"/>
				</addr:AddressLatitude>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressLifecycleStatus'])">
				<addr:AddressLifecycleStatus>
					<xsl:value-of select="*[@key = 'AddressLifecycleStatus']"/>
				</addr:AddressLifecycleStatus>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressLongitude'])">
				<addr:AddressLongitude>
					<xsl:value-of select="*[@key = 'AddressLongitude']"/>
				</addr:AddressLongitude>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressParcelIdentifier'])">
				<xsl:for-each select="*[@key = 'AddressParcelIdentifier']/string">
					<addr:AddressParcelIdentifier>
						<xsl:value-of select="."/>
					</addr:AddressParcelIdentifier>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressParcelIdentifierSource'])">
				<xsl:for-each select="*[@key = 'AddressParcelIdentifierSource']/string">
					<addr:AddressParcelIdentifierSource>
						<xsl:value-of select="."/>
					</addr:AddressParcelIdentifierSource>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressRangeDirectionality'])">
				<xsl:for-each select="*[@key = 'AddressRangeDirectionality']/string">
					<addr:AddressRangeDirectionality>
						<xsl:value-of select="."/>
					</addr:AddressRangeDirectionality>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressRangeParity'])">
				<xsl:for-each select="*[@key = 'AddressRangeParity']/string">
					<addr:AddressRangeParity>
						<xsl:value-of select="."/>
					</addr:AddressRangeParity>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressRangeSpan'])">
				<xsl:for-each select="*[@key = 'AddressRangeSpan']/string">
					<addr:AddressRangeSpan>
						<xsl:value-of select="."/>
					</addr:AddressRangeSpan>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressRangeType'])">
				<xsl:for-each select="*[@key = 'AddressRangeType']/string">
					<addr:AddressRangeType>
						<xsl:value-of select="."/>
					</addr:AddressRangeType>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressReferenceSystemAuthority'])">
				<addr:AddressReferenceSystemAuthority>
					<xsl:value-of select="*[@key = 'AddressReferenceSystemAuthority']"/>
				</addr:AddressReferenceSystemAuthority>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressReferenceSystemId'])">
				<addr:AddressReferenceSystemId>
					<xsl:value-of select="*[@key = 'AddressReferenceSystemId']"/>
				</addr:AddressReferenceSystemId>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressSideOfStreet'])">
				<addr:AddressSideOfStreet>
					<xsl:value-of select="*[@key = 'AddressSideOfStreet']"/>
				</addr:AddressSideOfStreet>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressStartDate'])">
				<addr:AddressStartDate>
					<xsl:value-of select="*[@key = 'AddressStartDate']"/>
				</addr:AddressStartDate>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressTransportationFeatureID'])">
				<addr:AddressTransportationFeatureID>
					<xsl:value-of select="*[@key = 'AddressTransportationFeatureID']"/>
				</addr:AddressTransportationFeatureID>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressTransportationFeatureType'])">
				<addr:AddressTransportationFeatureType>
					<xsl:value-of select="*[@key = 'AddressTransportationFeatureType']"/>
				</addr:AddressTransportationFeatureType>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressTransportationSystemAuthority'])">
				<addr:AddressTransportationSystemAuthority>
					<xsl:value-of select="*[@key = 'AddressTransportationSystemAuthority']"/>
				</addr:AddressTransportationSystemAuthority>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressTransportationSystemName'])">
				<addr:AddressTransportationSystemName>
					<xsl:value-of select="*[@key = 'AddressTransportationSystemName']"/>
				</addr:AddressTransportationSystemName>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressXCoordinate'])">
				<addr:AddressXCoordinate>
					<xsl:value-of select="*[@key = 'AddressXCoordinate']"/>
				</addr:AddressXCoordinate>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressYCoordinate'])">
				<addr:AddressYCoordinate>
					<xsl:value-of select="*[@key = 'AddressYCoordinate']"/>
				</addr:AddressYCoordinate>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressZLevel'])">
				<addr:AddressZLevel>
					<xsl:value-of select="*[@key = 'AddressZLevel']"/>
				</addr:AddressZLevel>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'CompleteLandmarkName'])">
				<addr:CompleteLandmarkName>
					<xsl:apply-templates select="*[@key = 'CompleteLandmarkName']"/>
				</addr:CompleteLandmarkName>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'CompletePlaceName1'])">
				<addr:CompletePlaceName>
					<xsl:apply-templates select="*[@key = 'CompletePlaceName1']"/>
				</addr:CompletePlaceName>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'CompletePlaceName2'])">
				<addr:CompletePlaceName>
					<xsl:apply-templates select="*[@key = 'CompletePlaceName2']"/>
				</addr:CompletePlaceName>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'CompleteStreetName1'])">
				<addr:CompleteStreetName1>
					<xsl:apply-templates select="*[@key = 'CompleteStreetName1']"/>
				</addr:CompleteStreetName1>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'CompleteStreetName2'])">
				<addr:CompleteStreetName2>
					<xsl:apply-templates select="*[@key = 'CompleteStreetName2']"/>
				</addr:CompleteStreetName2>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'CornerOf'])">
				<addr:CornerOf>
					<xsl:value-of select="*[@key = 'CornerOf']"/>
				</addr:CornerOf>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'CountryName'])">
				<addr:CountryName>
					<xsl:value-of select="*[@key = 'CountryName']"/>
				</addr:CountryName>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'DataSetID'])">
				<addr:DataSetID>
					<xsl:value-of select="*[@key = 'DataSetID']"/>
				</addr:DataSetID>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'LocationDescription'])">
				<addr:LocationDescription>
					<xsl:value-of select="*[@key = 'LocationDescription']"/>
				</addr:LocationDescription>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'MailableAddress'])">
				<addr:MailableAddress>
					<xsl:value-of select="*[@key = 'MailableAddress']"/>
				</addr:MailableAddress>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'OfficialStatus'])">
				<addr:OfficialStatus>
					<xsl:value-of select="*[@key = 'OfficialStatus']"/>
				</addr:OfficialStatus>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'PlaceStateZip'])">
				<xsl:for-each select="*[@key = 'PlaceStateZip']/string">
					<addr:PlaceStateZip>
						<xsl:value-of select="."/>
					</addr:PlaceStateZip>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'RelatedAddressId'])">
				<xsl:for-each select="*[@key = 'RelatedAddressId']/string">
					<addr:RelatedAddressId>
						<xsl:value-of select="."/>
					</addr:RelatedAddressId>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'RelatedTransportationFeatureID'])">
				<xsl:for-each select="*[@key = 'RelatedTransportationFeatureID']/string">
					<addr:RelatedTransportationFeatureID>
						<xsl:value-of select="."/>
					</addr:RelatedTransportationFeatureID>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'SeparatorElement'])">
				<addr:SeparatorElement>
					<xsl:value-of select="*[@key = 'SeparatorElement']"/>
				</addr:SeparatorElement>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'StateName'])">
				<addr:StateName>
					<xsl:value-of select="*[@key = 'StateName']"/>
				</addr:StateName>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'USNationalGridCoordinate'])">
				<addr:USNationalGridCoordinate>
					<xsl:value-of select="*[@key = 'USNationalGridCoordinate']"/>
				</addr:USNationalGridCoordinate>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'ZipCode'])">
				<addr:ZipCode>
					<xsl:value-of select="*[@key = 'ZipCode']"/>
				</addr:ZipCode>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'ZipPlus4'])">
				<addr:ZipPlus4>
					<xsl:value-of select="*[@key = 'ZipPlus4']"/>
				</addr:ZipPlus4>
			</xsl:if>
		</VRI:IntersectionAddress_type>
	</xsl:template>
	<xsl:template name="addr:LandmarkAddress_type" match="*[string = 'addr.LandmarkAddress_type' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<VRI:LandmarkAddress_type>
			<xsl:if test="boolean(*[@key = 'action'])">
				<addr:action>
					<xsl:value-of select="*[@key = 'action']"/>
				</addr:action>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressAnomalyStatus'])">
				<addr:AddressAnomalyStatus>
					<xsl:value-of select="*[@key = 'AddressAnomalyStatus']"/>
				</addr:AddressAnomalyStatus>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressAuthority'])">
				<addr:AddressAuthority>
					<xsl:value-of select="*[@key = 'AddressAuthority']"/>
				</addr:AddressAuthority>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressClassification'])">
				<addr:AddressClassification>
					<xsl:value-of select="*[@key = 'AddressClassification']"/>
				</addr:AddressClassification>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressCoordinateReferenceSystem'])">
				<addr:AddressCoordinateReferenceSystem>
					<xsl:apply-templates select="*[@key = 'AddressCoordinateReferenceSystem']"/>
				</addr:AddressCoordinateReferenceSystem>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressElevation'])">
				<addr:AddressElevation>
					<xsl:value-of select="*[@key = 'AddressElevation']"/>
				</addr:AddressElevation>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressEndDate'])">
				<addr:AddressEndDate>
					<xsl:value-of select="*[@key = 'AddressEndDate']"/>
				</addr:AddressEndDate>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressFeatureType'])">
				<xsl:for-each select="*[@key = 'AddressFeatureType']/string">
					<addr:AddressFeatureType>
						<xsl:value-of select="."/>
					</addr:AddressFeatureType>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressId'])">
				<addr:AddressId>
					<xsl:value-of select="*[@key = 'AddressId']"/>
				</addr:AddressId>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressLatitude'])">
				<addr:AddressLatitude>
					<xsl:value-of select="*[@key = 'AddressLatitude']"/>
				</addr:AddressLatitude>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressLifecycleStatus'])">
				<addr:AddressLifecycleStatus>
					<xsl:value-of select="*[@key = 'AddressLifecycleStatus']"/>
				</addr:AddressLifecycleStatus>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressLongitude'])">
				<addr:AddressLongitude>
					<xsl:value-of select="*[@key = 'AddressLongitude']"/>
				</addr:AddressLongitude>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressParcelIdentifier'])">
				<xsl:for-each select="*[@key = 'AddressParcelIdentifier']/string">
					<addr:AddressParcelIdentifier>
						<xsl:value-of select="."/>
					</addr:AddressParcelIdentifier>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressParcelIdentifierSource'])">
				<xsl:for-each select="*[@key = 'AddressParcelIdentifierSource']/string">
					<addr:AddressParcelIdentifierSource>
						<xsl:value-of select="."/>
					</addr:AddressParcelIdentifierSource>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressRangeDirectionality'])">
				<xsl:for-each select="*[@key = 'AddressRangeDirectionality']/string">
					<addr:AddressRangeDirectionality>
						<xsl:value-of select="."/>
					</addr:AddressRangeDirectionality>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressRangeParity'])">
				<xsl:for-each select="*[@key = 'AddressRangeParity']/string">
					<addr:AddressRangeParity>
						<xsl:value-of select="."/>
					</addr:AddressRangeParity>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressRangeSpan'])">
				<xsl:for-each select="*[@key = 'AddressRangeSpan']/string">
					<addr:AddressRangeSpan>
						<xsl:value-of select="."/>
					</addr:AddressRangeSpan>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressRangeType'])">
				<xsl:for-each select="*[@key = 'AddressRangeType']/string">
					<addr:AddressRangeType>
						<xsl:value-of select="."/>
					</addr:AddressRangeType>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressReferenceSystemAuthority'])">
				<addr:AddressReferenceSystemAuthority>
					<xsl:value-of select="*[@key = 'AddressReferenceSystemAuthority']"/>
				</addr:AddressReferenceSystemAuthority>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressReferenceSystemId'])">
				<addr:AddressReferenceSystemId>
					<xsl:value-of select="*[@key = 'AddressReferenceSystemId']"/>
				</addr:AddressReferenceSystemId>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressSideOfStreet'])">
				<addr:AddressSideOfStreet>
					<xsl:value-of select="*[@key = 'AddressSideOfStreet']"/>
				</addr:AddressSideOfStreet>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressStartDate'])">
				<addr:AddressStartDate>
					<xsl:value-of select="*[@key = 'AddressStartDate']"/>
				</addr:AddressStartDate>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressTransportationFeatureID'])">
				<addr:AddressTransportationFeatureID>
					<xsl:value-of select="*[@key = 'AddressTransportationFeatureID']"/>
				</addr:AddressTransportationFeatureID>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressTransportationFeatureType'])">
				<addr:AddressTransportationFeatureType>
					<xsl:value-of select="*[@key = 'AddressTransportationFeatureType']"/>
				</addr:AddressTransportationFeatureType>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressTransportationSystemAuthority'])">
				<addr:AddressTransportationSystemAuthority>
					<xsl:value-of select="*[@key = 'AddressTransportationSystemAuthority']"/>
				</addr:AddressTransportationSystemAuthority>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressTransportationSystemName'])">
				<addr:AddressTransportationSystemName>
					<xsl:value-of select="*[@key = 'AddressTransportationSystemName']"/>
				</addr:AddressTransportationSystemName>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressXCoordinate'])">
				<addr:AddressXCoordinate>
					<xsl:value-of select="*[@key = 'AddressXCoordinate']"/>
				</addr:AddressXCoordinate>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressYCoordinate'])">
				<addr:AddressYCoordinate>
					<xsl:value-of select="*[@key = 'AddressYCoordinate']"/>
				</addr:AddressYCoordinate>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressZLevel'])">
				<addr:AddressZLevel>
					<xsl:value-of select="*[@key = 'AddressZLevel']"/>
				</addr:AddressZLevel>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'CompleteLandmarkName'])">
				<addr:CompleteLandmarkName>
					<xsl:apply-templates select="*[@key = 'CompleteLandmarkName']"/>
				</addr:CompleteLandmarkName>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'CompletePlaceName'])">
				<addr:CompletePlaceName>
					<xsl:apply-templates select="*[@key = 'CompletePlaceName']"/>
				</addr:CompletePlaceName>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'CompleteSubaddress'])">
				<addr:CompleteSubaddress>
					<xsl:apply-templates select="*[@key = 'CompleteSubaddress']"/>
				</addr:CompleteSubaddress>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'CountryName'])">
				<addr:CountryName>
					<xsl:value-of select="*[@key = 'CountryName']"/>
				</addr:CountryName>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'DataSetID'])">
				<addr:DataSetID>
					<xsl:value-of select="*[@key = 'DataSetID']"/>
				</addr:DataSetID>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'LocationDescription'])">
				<addr:LocationDescription>
					<xsl:value-of select="*[@key = 'LocationDescription']"/>
				</addr:LocationDescription>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'MailableAddress'])">
				<addr:MailableAddress>
					<xsl:value-of select="*[@key = 'MailableAddress']"/>
				</addr:MailableAddress>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'OfficialStatus'])">
				<addr:OfficialStatus>
					<xsl:value-of select="*[@key = 'OfficialStatus']"/>
				</addr:OfficialStatus>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'PlaceStateZip'])">
				<xsl:for-each select="*[@key = 'PlaceStateZip']/string">
					<addr:PlaceStateZip>
						<xsl:value-of select="."/>
					</addr:PlaceStateZip>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'RelatedAddressId'])">
				<xsl:for-each select="*[@key = 'RelatedAddressId']/string">
					<addr:RelatedAddressId>
						<xsl:value-of select="."/>
					</addr:RelatedAddressId>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'RelatedTransportationFeatureID'])">
				<xsl:for-each select="*[@key = 'RelatedTransportationFeatureID']/string">
					<addr:RelatedTransportationFeatureID>
						<xsl:value-of select="."/>
					</addr:RelatedTransportationFeatureID>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'StateName'])">
				<addr:StateName>
					<xsl:value-of select="*[@key = 'StateName']"/>
				</addr:StateName>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'USNationalGridCoordinate'])">
				<addr:USNationalGridCoordinate>
					<xsl:value-of select="*[@key = 'USNationalGridCoordinate']"/>
				</addr:USNationalGridCoordinate>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'ZipCode'])">
				<addr:ZipCode>
					<xsl:value-of select="*[@key = 'ZipCode']"/>
				</addr:ZipCode>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'ZipPlus4'])">
				<addr:ZipPlus4>
					<xsl:value-of select="*[@key = 'ZipPlus4']"/>
				</addr:ZipPlus4>
			</xsl:if>
		</VRI:LandmarkAddress_type>
	</xsl:template>
	<xsl:template name="addr:NumberedThoroughfareAddress_type" match="*[string = 'addr.NumberedThoroughfareAddress_type' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<VRI:NumberedThoroughfareAddress_type>
			<!-- Elements not in original order -->
			<xsl:if test="boolean(*[@key = 'action'])">
				<addr:action>
					<xsl:value-of select="*[@key = 'action']"/>
				</addr:action>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'CompleteLandmarkName'])">
				<addr:CompleteLandmarkName>
					<xsl:apply-templates select="*[@key = 'CompleteLandmarkName']"/>
				</addr:CompleteLandmarkName>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'CompleteAddressNumber'])">
				<addr:CompleteAddressNumber>
					<xsl:apply-templates select="*[@key = 'CompleteAddressNumber']"/>
				</addr:CompleteAddressNumber>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'CompleteStreetName'])">
				<addr:CompleteStreetName>
					<xsl:apply-templates select="*[@key = 'CompleteStreetName']"/>
				</addr:CompleteStreetName>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'CompleteSubaddress'])">
				<addr:CompleteSubaddress>
					<xsl:apply-templates select="*[@key = 'CompleteSubaddress']"/>
				</addr:CompleteSubaddress>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'CompletePlaceName1'])">
				<addr_type:CompletePlaceName>
					<xsl:apply-templates select="*[@key = 'CompletePlaceName1']"/>
				</addr_type:CompletePlaceName>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'CompletePlaceName2'])">
				<addr_type:CompletePlaceName>
					<xsl:apply-templates select="*[@key = 'CompletePlaceName2']"/>
				</addr_type:CompletePlaceName>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'StateName'])">
				<addr_type:StateName>
					<xsl:value-of select="*[@key = 'StateName']"/>
				</addr_type:StateName>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'ZipCode'])">
				<addr_type:ZipCode>
					<xsl:value-of select="*[@key = 'ZipCode']"/>
				</addr_type:ZipCode>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'ZipPlus4'])">
				<addr_type:ZipPlus4>
					<xsl:value-of select="*[@key = 'ZipPlus4']"/>
				</addr_type:ZipPlus4>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'CountryName'])">
				<addr_type:CountryName>
					<xsl:value-of select="*[@key = 'CountryName']"/>
				</addr_type:CountryName>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'PlaceStateZip'])">
				<xsl:for-each select="*[@key = 'PlaceStateZip']/string">
					<addr_type:PlaceStateZip>
						<xsl:value-of select="."/>
					</addr_type:PlaceStateZip>
				</xsl:for-each>
			</xsl:if>
			<!-- begin addr_type:AddressAttributes_group -->
			<xsl:if test="boolean(*[@key = 'AddressId'])">
				<addr:AddressId>
					<xsl:value-of select="*[@key = 'AddressId']"/>
				</addr:AddressId>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressAuthority'])">
				<addr:AddressAuthority>
					<xsl:value-of select="*[@key = 'AddressAuthority']"/>
				</addr:AddressAuthority>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'RelatedAddressId'])">
				<xsl:for-each select="*[@key = 'RelatedAddressId']/string">
					<addr:RelatedAddressId>
						<xsl:value-of select="."/>
					</addr:RelatedAddressId>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressXCoordinate'])">
				<addr:AddressXCoordinate>
					<xsl:value-of select="*[@key = 'AddressXCoordinate']"/>
				</addr:AddressXCoordinate>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressYCoordinate'])">
				<addr:AddressYCoordinate>
					<xsl:value-of select="*[@key = 'AddressYCoordinate']"/>
				</addr:AddressYCoordinate>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressLongitude'])">
				<addr:AddressLongitude>
					<xsl:value-of select="*[@key = 'AddressLongitude']"/>
				</addr:AddressLongitude>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressLatitude'])">
				<addr:AddressLatitude>
					<xsl:value-of select="*[@key = 'AddressLatitude']"/>
				</addr:AddressLatitude>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'USNationalGridCoordinate'])">
				<addr:USNationalGridCoordinate>
					<xsl:value-of select="*[@key = 'USNationalGridCoordinate']"/>
				</addr:USNationalGridCoordinate>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressElevation'])">
				<addr:AddressElevation>
					<xsl:value-of select="*[@key = 'AddressElevation']"/>
				</addr:AddressElevation>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressCoordinateReferenceSystem'])">
				<addr:AddressCoordinateReferenceSystem>
					<xsl:apply-templates select="*[@key = 'AddressCoordinateReferenceSystem']"/>
				</addr:AddressCoordinateReferenceSystem>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressParcelIdentifierSource'])">
				<xsl:for-each select="*[@key = 'AddressParcelIdentifierSource']/string">
					<addr:AddressParcelIdentifierSource>
						<xsl:value-of select="."/>
					</addr:AddressParcelIdentifierSource>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressParcelIdentifier'])">
				<xsl:for-each select="*[@key = 'AddressParcelIdentifier']/string">
					<addr:AddressParcelIdentifier>
						<xsl:value-of select="."/>
					</addr:AddressParcelIdentifier>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressTransportationSystemName'])">
				<addr:AddressTransportationSystemName>
					<xsl:value-of select="*[@key = 'AddressTransportationSystemName']"/>
				</addr:AddressTransportationSystemName>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressTransportationSystemAuthority'])">
				<addr:AddressTransportationSystemAuthority>
					<xsl:value-of select="*[@key = 'AddressTransportationSystemAuthority']"/>
				</addr:AddressTransportationSystemAuthority>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressTransportationFeatureType'])">
				<addr:AddressTransportationFeatureType>
					<xsl:value-of select="*[@key = 'AddressTransportationFeatureType']"/>
				</addr:AddressTransportationFeatureType>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressTransportationFeatureID'])">
				<addr:AddressTransportationFeatureID>
					<xsl:value-of select="*[@key = 'AddressTransportationFeatureID']"/>
				</addr:AddressTransportationFeatureID>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'RelatedTransportationFeatureID'])">
				<xsl:for-each select="*[@key = 'RelatedTransportationFeatureID']/string">
					<addr:RelatedTransportationFeatureID>
						<xsl:value-of select="."/>
					</addr:RelatedTransportationFeatureID>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressRangeType'])">
				<xsl:for-each select="*[@key = 'AddressRangeType']/string">
					<addr:AddressRangeType>
						<xsl:value-of select="."/>
					</addr:AddressRangeType>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressRangeParity'])">
				<xsl:for-each select="*[@key = 'AddressRangeParity']/string">
					<addr:AddressRangeParity>
						<xsl:value-of select="."/>
					</addr:AddressRangeParity>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressRangeDirectionality'])">
				<xsl:for-each select="*[@key = 'AddressRangeDirectionality']/string">
					<addr:AddressRangeDirectionality>
						<xsl:value-of select="."/>
					</addr:AddressRangeDirectionality>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressRangeSpan'])">
				<xsl:for-each select="*[@key = 'AddressRangeSpan']/string">
					<addr:AddressRangeSpan>
						<xsl:value-of select="."/>
					</addr:AddressRangeSpan>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressClassification'])">
				<addr:AddressClassification>
					<xsl:value-of select="*[@key = 'AddressClassification']"/>
				</addr:AddressClassification>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressFeatureType'])">
				<xsl:for-each select="*[@key = 'AddressFeatureType']/string">
					<addr:AddressFeatureType>
						<xsl:value-of select="."/>
					</addr:AddressFeatureType>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressLifecycleStatus'])">
				<addr:AddressLifecycleStatus>
					<xsl:value-of select="*[@key = 'AddressLifecycleStatus']"/>
				</addr:AddressLifecycleStatus>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'OfficialStatus'])">
				<addr:OfficialStatus>
					<xsl:value-of select="*[@key = 'OfficialStatus']"/>
				</addr:OfficialStatus>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressAnomalyStatus'])">
				<addr:AddressAnomalyStatus>
					<xsl:value-of select="*[@key = 'AddressAnomalyStatus']"/>
				</addr:AddressAnomalyStatus>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressSideOfStreet'])">
				<addr:AddressSideOfStreet>
					<xsl:value-of select="*[@key = 'AddressSideOfStreet']"/>
				</addr:AddressSideOfStreet>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressZLevel'])">
				<addr:AddressZLevel>
					<xsl:value-of select="*[@key = 'AddressZLevel']"/>
				</addr:AddressZLevel>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'LocationDescription'])">
				<addr:LocationDescription>
					<xsl:value-of select="*[@key = 'LocationDescription']"/>
				</addr:LocationDescription>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'MailableAddress'])">
				<addr:MailableAddress>
					<xsl:value-of select="*[@key = 'MailableAddress']"/>
				</addr:MailableAddress>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressStartDate'])">
				<addr:AddressStartDate>
					<xsl:value-of select="*[@key = 'AddressStartDate']"/>
				</addr:AddressStartDate>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressEndDate'])">
				<addr:AddressEndDate>
					<xsl:value-of select="*[@key = 'AddressEndDate']"/>
				</addr:AddressEndDate>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'DataSetID'])">
				<addr:DataSetID>
					<xsl:value-of select="*[@key = 'DataSetID']"/>
				</addr:DataSetID>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressReferenceSystemId'])">
				<addr:AddressReferenceSystemId>
					<xsl:value-of select="*[@key = 'AddressReferenceSystemId']"/>
				</addr:AddressReferenceSystemId>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressReferenceSystemAuthority'])">
				<addr:AddressReferenceSystemAuthority>
					<xsl:value-of select="*[@key = 'AddressReferenceSystemAuthority']"/>
				</addr:AddressReferenceSystemAuthority>
			</xsl:if>
		</VRI:NumberedThoroughfareAddress_type>
	</xsl:template>
	<xsl:template name="addr:TwoNumberAddressRange_type" match="*[string = 'addr.TwoNumberAddressRange_type' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<VRI:TwoNumberAddressRange_type>
			<xsl:if test="boolean(*[@key = 'action'])">
				<addr:action>
					<xsl:value-of select="*[@key = 'action']"/>
				</addr:action>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressAnomalyStatus'])">
				<addr:AddressAnomalyStatus>
					<xsl:value-of select="*[@key = 'AddressAnomalyStatus']"/>
				</addr:AddressAnomalyStatus>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressAuthority'])">
				<addr:AddressAuthority>
					<xsl:value-of select="*[@key = 'AddressAuthority']"/>
				</addr:AddressAuthority>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressClassification'])">
				<addr:AddressClassification>
					<xsl:value-of select="*[@key = 'AddressClassification']"/>
				</addr:AddressClassification>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressCoordinateReferenceSystem'])">
				<addr:AddressCoordinateReferenceSystem>
					<xsl:apply-templates select="*[@key = 'AddressCoordinateReferenceSystem']"/>
				</addr:AddressCoordinateReferenceSystem>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressElevation'])">
				<addr:AddressElevation>
					<xsl:value-of select="*[@key = 'AddressElevation']"/>
				</addr:AddressElevation>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressEndDate'])">
				<addr:AddressEndDate>
					<xsl:value-of select="*[@key = 'AddressEndDate']"/>
				</addr:AddressEndDate>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressFeatureType'])">
				<xsl:for-each select="*[@key = 'AddressFeatureType']/string">
					<addr:AddressFeatureType>
						<xsl:value-of select="."/>
					</addr:AddressFeatureType>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressId'])">
				<addr:AddressId>
					<xsl:value-of select="*[@key = 'AddressId']"/>
				</addr:AddressId>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressLatitude'])">
				<addr:AddressLatitude>
					<xsl:value-of select="*[@key = 'AddressLatitude']"/>
				</addr:AddressLatitude>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressLifecycleStatus'])">
				<addr:AddressLifecycleStatus>
					<xsl:value-of select="*[@key = 'AddressLifecycleStatus']"/>
				</addr:AddressLifecycleStatus>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressLongitude'])">
				<addr:AddressLongitude>
					<xsl:value-of select="*[@key = 'AddressLongitude']"/>
				</addr:AddressLongitude>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressParcelIdentifier'])">
				<xsl:for-each select="*[@key = 'AddressParcelIdentifier']/string">
					<addr:AddressParcelIdentifier>
						<xsl:value-of select="."/>
					</addr:AddressParcelIdentifier>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressParcelIdentifierSource'])">
				<xsl:for-each select="*[@key = 'AddressParcelIdentifierSource']/string">
					<addr:AddressParcelIdentifierSource>
						<xsl:value-of select="."/>
					</addr:AddressParcelIdentifierSource>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressRangeDirectionality'])">
				<xsl:for-each select="*[@key = 'AddressRangeDirectionality']/string">
					<addr:AddressRangeDirectionality>
						<xsl:value-of select="."/>
					</addr:AddressRangeDirectionality>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressRangeParity'])">
				<xsl:for-each select="*[@key = 'AddressRangeParity']/string">
					<addr:AddressRangeParity>
						<xsl:value-of select="."/>
					</addr:AddressRangeParity>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressRangeSpan'])">
				<xsl:for-each select="*[@key = 'AddressRangeSpan']/string">
					<addr:AddressRangeSpan>
						<xsl:value-of select="."/>
					</addr:AddressRangeSpan>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressRangeType'])">
				<xsl:for-each select="*[@key = 'AddressRangeType']/string">
					<addr:AddressRangeType>
						<xsl:value-of select="."/>
					</addr:AddressRangeType>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressReferenceSystemAuthority'])">
				<addr:AddressReferenceSystemAuthority>
					<xsl:value-of select="*[@key = 'AddressReferenceSystemAuthority']"/>
				</addr:AddressReferenceSystemAuthority>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressReferenceSystemId'])">
				<addr:AddressReferenceSystemId>
					<xsl:value-of select="*[@key = 'AddressReferenceSystemId']"/>
				</addr:AddressReferenceSystemId>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressSideOfStreet'])">
				<addr:AddressSideOfStreet>
					<xsl:value-of select="*[@key = 'AddressSideOfStreet']"/>
				</addr:AddressSideOfStreet>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressStartDate'])">
				<addr:AddressStartDate>
					<xsl:value-of select="*[@key = 'AddressStartDate']"/>
				</addr:AddressStartDate>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressTransportationFeatureID'])">
				<addr:AddressTransportationFeatureID>
					<xsl:value-of select="*[@key = 'AddressTransportationFeatureID']"/>
				</addr:AddressTransportationFeatureID>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressTransportationFeatureType'])">
				<addr:AddressTransportationFeatureType>
					<xsl:value-of select="*[@key = 'AddressTransportationFeatureType']"/>
				</addr:AddressTransportationFeatureType>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressTransportationSystemAuthority'])">
				<addr:AddressTransportationSystemAuthority>
					<xsl:value-of select="*[@key = 'AddressTransportationSystemAuthority']"/>
				</addr:AddressTransportationSystemAuthority>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressTransportationSystemName'])">
				<addr:AddressTransportationSystemName>
					<xsl:value-of select="*[@key = 'AddressTransportationSystemName']"/>
				</addr:AddressTransportationSystemName>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressXCoordinate'])">
				<addr:AddressXCoordinate>
					<xsl:value-of select="*[@key = 'AddressXCoordinate']"/>
				</addr:AddressXCoordinate>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressYCoordinate'])">
				<addr:AddressYCoordinate>
					<xsl:value-of select="*[@key = 'AddressYCoordinate']"/>
				</addr:AddressYCoordinate>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressZLevel'])">
				<addr:AddressZLevel>
					<xsl:value-of select="*[@key = 'AddressZLevel']"/>
				</addr:AddressZLevel>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'CompleteAddressNumber1'])">
				<addr:CompleteAddressNumber1>
					<xsl:apply-templates select="*[@key = 'CompleteAddressNumber1']"/>
				</addr:CompleteAddressNumber1>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'CompleteAddressNumber2'])">
				<addr:CompleteAddressNumber2>
					<xsl:apply-templates select="*[@key = 'CompleteAddressNumber2']"/>
				</addr:CompleteAddressNumber2>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'CompleteLandmarkName'])">
				<addr:CompleteLandmarkName>
					<xsl:apply-templates select="*[@key = 'CompleteLandmarkName']"/>
				</addr:CompleteLandmarkName>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'CompletePlaceName1'])">
				<addr:CompletePlaceName>
					<xsl:apply-templates select="*[@key = 'CompletePlaceName1']"/>
				</addr:CompletePlaceName>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'CompletePlaceName2'])">
				<addr:CompletePlaceName>
					<xsl:apply-templates select="*[@key = 'CompletePlaceName2']"/>
				</addr:CompletePlaceName>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'CompleteStreetName'])">
				<addr:CompleteStreetName>
					<xsl:apply-templates select="*[@key = 'CompleteStreetName']"/>
				</addr:CompleteStreetName>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'CountryName'])">
				<addr:CountryName>
					<xsl:value-of select="*[@key = 'CountryName']"/>
				</addr:CountryName>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'DataSetID'])">
				<addr:DataSetID>
					<xsl:value-of select="*[@key = 'DataSetID']"/>
				</addr:DataSetID>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'LocationDescription'])">
				<addr:LocationDescription>
					<xsl:value-of select="*[@key = 'LocationDescription']"/>
				</addr:LocationDescription>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'MailableAddress'])">
				<addr:MailableAddress>
					<xsl:value-of select="*[@key = 'MailableAddress']"/>
				</addr:MailableAddress>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'OfficialStatus'])">
				<addr:OfficialStatus>
					<xsl:value-of select="*[@key = 'OfficialStatus']"/>
				</addr:OfficialStatus>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'PlaceStateZip'])">
				<xsl:for-each select="*[@key = 'PlaceStateZip']/string">
					<addr:PlaceStateZip>
						<xsl:value-of select="."/>
					</addr:PlaceStateZip>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'RelatedAddressId'])">
				<xsl:for-each select="*[@key = 'RelatedAddressId']/string">
					<addr:RelatedAddressId>
						<xsl:value-of select="."/>
					</addr:RelatedAddressId>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'RelatedTransportationFeatureID'])">
				<xsl:for-each select="*[@key = 'RelatedTransportationFeatureID']/string">
					<addr:RelatedTransportationFeatureID>
						<xsl:value-of select="."/>
					</addr:RelatedTransportationFeatureID>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'SeparatorElement'])">
				<addr:SeparatorElement>
					<xsl:value-of select="*[@key = 'SeparatorElement']"/>
				</addr:SeparatorElement>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'StateName'])">
				<addr:StateName>
					<xsl:value-of select="*[@key = 'StateName']"/>
				</addr:StateName>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'USNationalGridCoordinate'])">
				<addr:USNationalGridCoordinate>
					<xsl:value-of select="*[@key = 'USNationalGridCoordinate']"/>
				</addr:USNationalGridCoordinate>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'ZipCode'])">
				<addr:ZipCode>
					<xsl:value-of select="*[@key = 'ZipCode']"/>
				</addr:ZipCode>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'ZipPlus4'])">
				<addr:ZipPlus4>
					<xsl:value-of select="*[@key = 'ZipPlus4']"/>
				</addr:ZipPlus4>
			</xsl:if>
		</VRI:TwoNumberAddressRange_type>
	</xsl:template>
	<xsl:template name="addr:USPSGeneralDeliveryOffice_type" match="*[string = 'addr.USPSGeneralDeliveryOffice_type' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<VRI:USPSGeneralDeliveryOffice_type>
			<xsl:if test="boolean(*[@key = 'action'])">
				<addr:action>
					<xsl:value-of select="*[@key = 'action']"/>
				</addr:action>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressAnomalyStatus'])">
				<addr:AddressAnomalyStatus>
					<xsl:value-of select="*[@key = 'AddressAnomalyStatus']"/>
				</addr:AddressAnomalyStatus>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressAuthority'])">
				<addr:AddressAuthority>
					<xsl:value-of select="*[@key = 'AddressAuthority']"/>
				</addr:AddressAuthority>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressClassification'])">
				<addr:AddressClassification>
					<xsl:value-of select="*[@key = 'AddressClassification']"/>
				</addr:AddressClassification>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressCoordinateReferenceSystem'])">
				<addr:AddressCoordinateReferenceSystem>
					<xsl:apply-templates select="*[@key = 'AddressCoordinateReferenceSystem']"/>
				</addr:AddressCoordinateReferenceSystem>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressElevation'])">
				<addr:AddressElevation>
					<xsl:value-of select="*[@key = 'AddressElevation']"/>
				</addr:AddressElevation>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressEndDate'])">
				<addr:AddressEndDate>
					<xsl:value-of select="*[@key = 'AddressEndDate']"/>
				</addr:AddressEndDate>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressFeatureType'])">
				<xsl:for-each select="*[@key = 'AddressFeatureType']/string">
					<addr:AddressFeatureType>
						<xsl:value-of select="."/>
					</addr:AddressFeatureType>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressId'])">
				<addr:AddressId>
					<xsl:value-of select="*[@key = 'AddressId']"/>
				</addr:AddressId>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressLatitude'])">
				<addr:AddressLatitude>
					<xsl:value-of select="*[@key = 'AddressLatitude']"/>
				</addr:AddressLatitude>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressLifecycleStatus'])">
				<addr:AddressLifecycleStatus>
					<xsl:value-of select="*[@key = 'AddressLifecycleStatus']"/>
				</addr:AddressLifecycleStatus>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressLongitude'])">
				<addr:AddressLongitude>
					<xsl:value-of select="*[@key = 'AddressLongitude']"/>
				</addr:AddressLongitude>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressParcelIdentifier'])">
				<xsl:for-each select="*[@key = 'AddressParcelIdentifier']/string">
					<addr:AddressParcelIdentifier>
						<xsl:value-of select="."/>
					</addr:AddressParcelIdentifier>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressParcelIdentifierSource'])">
				<xsl:for-each select="*[@key = 'AddressParcelIdentifierSource']/string">
					<addr:AddressParcelIdentifierSource>
						<xsl:value-of select="."/>
					</addr:AddressParcelIdentifierSource>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressRangeDirectionality'])">
				<xsl:for-each select="*[@key = 'AddressRangeDirectionality']/string">
					<addr:AddressRangeDirectionality>
						<xsl:value-of select="."/>
					</addr:AddressRangeDirectionality>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressRangeParity'])">
				<xsl:for-each select="*[@key = 'AddressRangeParity']/string">
					<addr:AddressRangeParity>
						<xsl:value-of select="."/>
					</addr:AddressRangeParity>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressRangeSpan'])">
				<xsl:for-each select="*[@key = 'AddressRangeSpan']/string">
					<addr:AddressRangeSpan>
						<xsl:value-of select="."/>
					</addr:AddressRangeSpan>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressRangeType'])">
				<xsl:for-each select="*[@key = 'AddressRangeType']/string">
					<addr:AddressRangeType>
						<xsl:value-of select="."/>
					</addr:AddressRangeType>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressReferenceSystemAuthority'])">
				<addr:AddressReferenceSystemAuthority>
					<xsl:value-of select="*[@key = 'AddressReferenceSystemAuthority']"/>
				</addr:AddressReferenceSystemAuthority>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressReferenceSystemId'])">
				<addr:AddressReferenceSystemId>
					<xsl:value-of select="*[@key = 'AddressReferenceSystemId']"/>
				</addr:AddressReferenceSystemId>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressSideOfStreet'])">
				<addr:AddressSideOfStreet>
					<xsl:value-of select="*[@key = 'AddressSideOfStreet']"/>
				</addr:AddressSideOfStreet>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressStartDate'])">
				<addr:AddressStartDate>
					<xsl:value-of select="*[@key = 'AddressStartDate']"/>
				</addr:AddressStartDate>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressTransportationFeatureID'])">
				<addr:AddressTransportationFeatureID>
					<xsl:value-of select="*[@key = 'AddressTransportationFeatureID']"/>
				</addr:AddressTransportationFeatureID>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressTransportationFeatureType'])">
				<addr:AddressTransportationFeatureType>
					<xsl:value-of select="*[@key = 'AddressTransportationFeatureType']"/>
				</addr:AddressTransportationFeatureType>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressTransportationSystemAuthority'])">
				<addr:AddressTransportationSystemAuthority>
					<xsl:value-of select="*[@key = 'AddressTransportationSystemAuthority']"/>
				</addr:AddressTransportationSystemAuthority>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressTransportationSystemName'])">
				<addr:AddressTransportationSystemName>
					<xsl:value-of select="*[@key = 'AddressTransportationSystemName']"/>
				</addr:AddressTransportationSystemName>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressXCoordinate'])">
				<addr:AddressXCoordinate>
					<xsl:value-of select="*[@key = 'AddressXCoordinate']"/>
				</addr:AddressXCoordinate>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressYCoordinate'])">
				<addr:AddressYCoordinate>
					<xsl:value-of select="*[@key = 'AddressYCoordinate']"/>
				</addr:AddressYCoordinate>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressZLevel'])">
				<addr:AddressZLevel>
					<xsl:value-of select="*[@key = 'AddressZLevel']"/>
				</addr:AddressZLevel>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'CompletePlaceName'])">
				<addr:CompletePlaceName>
					<xsl:apply-templates select="*[@key = 'CompletePlaceName']"/>
				</addr:CompletePlaceName>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'CountryName'])">
				<addr:CountryName>
					<xsl:value-of select="*[@key = 'CountryName']"/>
				</addr:CountryName>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'DataSetID'])">
				<addr:DataSetID>
					<xsl:value-of select="*[@key = 'DataSetID']"/>
				</addr:DataSetID>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'LocationDescription'])">
				<addr:LocationDescription>
					<xsl:value-of select="*[@key = 'LocationDescription']"/>
				</addr:LocationDescription>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'MailableAddress'])">
				<addr:MailableAddress>
					<xsl:value-of select="*[@key = 'MailableAddress']"/>
				</addr:MailableAddress>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'OfficialStatus'])">
				<addr:OfficialStatus>
					<xsl:value-of select="*[@key = 'OfficialStatus']"/>
				</addr:OfficialStatus>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'PlaceStateZip'])">
				<xsl:for-each select="*[@key = 'PlaceStateZip']/string">
					<addr:PlaceStateZip>
						<xsl:value-of select="."/>
					</addr:PlaceStateZip>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'RelatedAddressId'])">
				<xsl:for-each select="*[@key = 'RelatedAddressId']/string">
					<addr:RelatedAddressId>
						<xsl:value-of select="."/>
					</addr:RelatedAddressId>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'RelatedTransportationFeatureID'])">
				<xsl:for-each select="*[@key = 'RelatedTransportationFeatureID']/string">
					<addr:RelatedTransportationFeatureID>
						<xsl:value-of select="."/>
					</addr:RelatedTransportationFeatureID>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'StateName'])">
				<addr:StateName>
					<xsl:value-of select="*[@key = 'StateName']"/>
				</addr:StateName>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'USNationalGridCoordinate'])">
				<addr:USNationalGridCoordinate>
					<xsl:value-of select="*[@key = 'USNationalGridCoordinate']"/>
				</addr:USNationalGridCoordinate>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'USPSGeneralDeliveryPoint'])">
				<addr:USPSGeneralDeliveryPoint>
					<xsl:value-of select="*[@key = 'USPSGeneralDeliveryPoint']"/>
				</addr:USPSGeneralDeliveryPoint>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'ZipCode'])">
				<addr:ZipCode>
					<xsl:value-of select="*[@key = 'ZipCode']"/>
				</addr:ZipCode>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'ZipPlus4'])">
				<addr:ZipPlus4>
					<xsl:value-of select="*[@key = 'ZipPlus4']"/>
				</addr:ZipPlus4>
			</xsl:if>
		</VRI:USPSGeneralDeliveryOffice_type>
	</xsl:template>
	<xsl:template name="addr:USPSPostalDeliveryBox_type" match="*[string = 'addr.USPSPostalDeliveryBox_type' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<VRI:USPSPostalDeliveryBox_type>
			<xsl:if test="boolean(*[@key = 'action'])">
				<addr:action>
					<xsl:value-of select="*[@key = 'action']"/>
				</addr:action>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressAnomalyStatus'])">
				<addr:AddressAnomalyStatus>
					<xsl:value-of select="*[@key = 'AddressAnomalyStatus']"/>
				</addr:AddressAnomalyStatus>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressAuthority'])">
				<addr:AddressAuthority>
					<xsl:value-of select="*[@key = 'AddressAuthority']"/>
				</addr:AddressAuthority>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressClassification'])">
				<addr:AddressClassification>
					<xsl:value-of select="*[@key = 'AddressClassification']"/>
				</addr:AddressClassification>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressCoordinateReferenceSystem'])">
				<addr:AddressCoordinateReferenceSystem>
					<xsl:apply-templates select="*[@key = 'AddressCoordinateReferenceSystem']"/>
				</addr:AddressCoordinateReferenceSystem>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressElevation'])">
				<addr:AddressElevation>
					<xsl:value-of select="*[@key = 'AddressElevation']"/>
				</addr:AddressElevation>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressEndDate'])">
				<addr:AddressEndDate>
					<xsl:value-of select="*[@key = 'AddressEndDate']"/>
				</addr:AddressEndDate>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressFeatureType'])">
				<xsl:for-each select="*[@key = 'AddressFeatureType']/string">
					<addr:AddressFeatureType>
						<xsl:value-of select="."/>
					</addr:AddressFeatureType>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressId'])">
				<addr:AddressId>
					<xsl:value-of select="*[@key = 'AddressId']"/>
				</addr:AddressId>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressLatitude'])">
				<addr:AddressLatitude>
					<xsl:value-of select="*[@key = 'AddressLatitude']"/>
				</addr:AddressLatitude>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressLifecycleStatus'])">
				<addr:AddressLifecycleStatus>
					<xsl:value-of select="*[@key = 'AddressLifecycleStatus']"/>
				</addr:AddressLifecycleStatus>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressLongitude'])">
				<addr:AddressLongitude>
					<xsl:value-of select="*[@key = 'AddressLongitude']"/>
				</addr:AddressLongitude>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressParcelIdentifier'])">
				<xsl:for-each select="*[@key = 'AddressParcelIdentifier']/string">
					<addr:AddressParcelIdentifier>
						<xsl:value-of select="."/>
					</addr:AddressParcelIdentifier>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressParcelIdentifierSource'])">
				<xsl:for-each select="*[@key = 'AddressParcelIdentifierSource']/string">
					<addr:AddressParcelIdentifierSource>
						<xsl:value-of select="."/>
					</addr:AddressParcelIdentifierSource>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressRangeDirectionality'])">
				<xsl:for-each select="*[@key = 'AddressRangeDirectionality']/string">
					<addr:AddressRangeDirectionality>
						<xsl:value-of select="."/>
					</addr:AddressRangeDirectionality>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressRangeParity'])">
				<xsl:for-each select="*[@key = 'AddressRangeParity']/string">
					<addr:AddressRangeParity>
						<xsl:value-of select="."/>
					</addr:AddressRangeParity>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressRangeSpan'])">
				<xsl:for-each select="*[@key = 'AddressRangeSpan']/string">
					<addr:AddressRangeSpan>
						<xsl:value-of select="."/>
					</addr:AddressRangeSpan>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressRangeType'])">
				<xsl:for-each select="*[@key = 'AddressRangeType']/string">
					<addr:AddressRangeType>
						<xsl:value-of select="."/>
					</addr:AddressRangeType>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressReferenceSystemAuthority'])">
				<addr:AddressReferenceSystemAuthority>
					<xsl:value-of select="*[@key = 'AddressReferenceSystemAuthority']"/>
				</addr:AddressReferenceSystemAuthority>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressReferenceSystemId'])">
				<addr:AddressReferenceSystemId>
					<xsl:value-of select="*[@key = 'AddressReferenceSystemId']"/>
				</addr:AddressReferenceSystemId>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressSideOfStreet'])">
				<addr:AddressSideOfStreet>
					<xsl:value-of select="*[@key = 'AddressSideOfStreet']"/>
				</addr:AddressSideOfStreet>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressStartDate'])">
				<addr:AddressStartDate>
					<xsl:value-of select="*[@key = 'AddressStartDate']"/>
				</addr:AddressStartDate>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressTransportationFeatureID'])">
				<addr:AddressTransportationFeatureID>
					<xsl:value-of select="*[@key = 'AddressTransportationFeatureID']"/>
				</addr:AddressTransportationFeatureID>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressTransportationFeatureType'])">
				<addr:AddressTransportationFeatureType>
					<xsl:value-of select="*[@key = 'AddressTransportationFeatureType']"/>
				</addr:AddressTransportationFeatureType>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressTransportationSystemAuthority'])">
				<addr:AddressTransportationSystemAuthority>
					<xsl:value-of select="*[@key = 'AddressTransportationSystemAuthority']"/>
				</addr:AddressTransportationSystemAuthority>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressTransportationSystemName'])">
				<addr:AddressTransportationSystemName>
					<xsl:value-of select="*[@key = 'AddressTransportationSystemName']"/>
				</addr:AddressTransportationSystemName>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressXCoordinate'])">
				<addr:AddressXCoordinate>
					<xsl:value-of select="*[@key = 'AddressXCoordinate']"/>
				</addr:AddressXCoordinate>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressYCoordinate'])">
				<addr:AddressYCoordinate>
					<xsl:value-of select="*[@key = 'AddressYCoordinate']"/>
				</addr:AddressYCoordinate>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressZLevel'])">
				<addr:AddressZLevel>
					<xsl:value-of select="*[@key = 'AddressZLevel']"/>
				</addr:AddressZLevel>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'CompletePlaceName'])">
				<addr:CompletePlaceName>
					<xsl:apply-templates select="*[@key = 'CompletePlaceName']"/>
				</addr:CompletePlaceName>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'CompleteSubaddress'])">
				<addr:CompleteSubaddress>
					<xsl:apply-templates select="*[@key = 'CompleteSubaddress']"/>
				</addr:CompleteSubaddress>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'CountryName'])">
				<addr:CountryName>
					<xsl:value-of select="*[@key = 'CountryName']"/>
				</addr:CountryName>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'DataSetID'])">
				<addr:DataSetID>
					<xsl:value-of select="*[@key = 'DataSetID']"/>
				</addr:DataSetID>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'LocationDescription'])">
				<addr:LocationDescription>
					<xsl:value-of select="*[@key = 'LocationDescription']"/>
				</addr:LocationDescription>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'MailableAddress'])">
				<addr:MailableAddress>
					<xsl:value-of select="*[@key = 'MailableAddress']"/>
				</addr:MailableAddress>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'OfficialStatus'])">
				<addr:OfficialStatus>
					<xsl:value-of select="*[@key = 'OfficialStatus']"/>
				</addr:OfficialStatus>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'PlaceStateZip'])">
				<xsl:for-each select="*[@key = 'PlaceStateZip']/string">
					<addr:PlaceStateZip>
						<xsl:value-of select="."/>
					</addr:PlaceStateZip>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'RelatedAddressId'])">
				<xsl:for-each select="*[@key = 'RelatedAddressId']/string">
					<addr:RelatedAddressId>
						<xsl:value-of select="."/>
					</addr:RelatedAddressId>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'RelatedTransportationFeatureID'])">
				<xsl:for-each select="*[@key = 'RelatedTransportationFeatureID']/string">
					<addr:RelatedTransportationFeatureID>
						<xsl:value-of select="."/>
					</addr:RelatedTransportationFeatureID>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'StateName'])">
				<addr:StateName>
					<xsl:value-of select="*[@key = 'StateName']"/>
				</addr:StateName>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'USNationalGridCoordinate'])">
				<addr:USNationalGridCoordinate>
					<xsl:value-of select="*[@key = 'USNationalGridCoordinate']"/>
				</addr:USNationalGridCoordinate>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'USPSBox'])">
				<addr:USPSBox>
					<xsl:apply-templates select="*[@key = 'USPSBox']"/>
				</addr:USPSBox>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'ZipCode'])">
				<addr:ZipCode>
					<xsl:value-of select="*[@key = 'ZipCode']"/>
				</addr:ZipCode>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'ZipPlus4'])">
				<addr:ZipPlus4>
					<xsl:value-of select="*[@key = 'ZipPlus4']"/>
				</addr:ZipPlus4>
			</xsl:if>
		</VRI:USPSPostalDeliveryBox_type>
	</xsl:template>
	<xsl:template name="addr:USPSPostalDeliveryRoute_type" match="*[string = 'addr.USPSPostalDeliveryRoute_type' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<VRI:USPSPostalDeliveryRoute_type>
			<xsl:if test="boolean(*[@key = 'action'])">
				<addr:action>
					<xsl:value-of select="*[@key = 'action']"/>
				</addr:action>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressAnomalyStatus'])">
				<addr:AddressAnomalyStatus>
					<xsl:value-of select="*[@key = 'AddressAnomalyStatus']"/>
				</addr:AddressAnomalyStatus>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressAuthority'])">
				<addr:AddressAuthority>
					<xsl:value-of select="*[@key = 'AddressAuthority']"/>
				</addr:AddressAuthority>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressClassification'])">
				<addr:AddressClassification>
					<xsl:value-of select="*[@key = 'AddressClassification']"/>
				</addr:AddressClassification>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressCoordinateReferenceSystem'])">
				<addr:AddressCoordinateReferenceSystem>
					<xsl:apply-templates select="*[@key = 'AddressCoordinateReferenceSystem']"/>
				</addr:AddressCoordinateReferenceSystem>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressElevation'])">
				<addr:AddressElevation>
					<xsl:value-of select="*[@key = 'AddressElevation']"/>
				</addr:AddressElevation>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressEndDate'])">
				<addr:AddressEndDate>
					<xsl:value-of select="*[@key = 'AddressEndDate']"/>
				</addr:AddressEndDate>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressFeatureType'])">
				<xsl:for-each select="*[@key = 'AddressFeatureType']/string">
					<addr:AddressFeatureType>
						<xsl:value-of select="."/>
					</addr:AddressFeatureType>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressId'])">
				<addr:AddressId>
					<xsl:value-of select="*[@key = 'AddressId']"/>
				</addr:AddressId>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressLatitude'])">
				<addr:AddressLatitude>
					<xsl:value-of select="*[@key = 'AddressLatitude']"/>
				</addr:AddressLatitude>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressLifecycleStatus'])">
				<addr:AddressLifecycleStatus>
					<xsl:value-of select="*[@key = 'AddressLifecycleStatus']"/>
				</addr:AddressLifecycleStatus>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressLongitude'])">
				<addr:AddressLongitude>
					<xsl:value-of select="*[@key = 'AddressLongitude']"/>
				</addr:AddressLongitude>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressParcelIdentifier'])">
				<xsl:for-each select="*[@key = 'AddressParcelIdentifier']/string">
					<addr:AddressParcelIdentifier>
						<xsl:value-of select="."/>
					</addr:AddressParcelIdentifier>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressParcelIdentifierSource'])">
				<xsl:for-each select="*[@key = 'AddressParcelIdentifierSource']/string">
					<addr:AddressParcelIdentifierSource>
						<xsl:value-of select="."/>
					</addr:AddressParcelIdentifierSource>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressRangeDirectionality'])">
				<xsl:for-each select="*[@key = 'AddressRangeDirectionality']/string">
					<addr:AddressRangeDirectionality>
						<xsl:value-of select="."/>
					</addr:AddressRangeDirectionality>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressRangeParity'])">
				<xsl:for-each select="*[@key = 'AddressRangeParity']/string">
					<addr:AddressRangeParity>
						<xsl:value-of select="."/>
					</addr:AddressRangeParity>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressRangeSpan'])">
				<xsl:for-each select="*[@key = 'AddressRangeSpan']/string">
					<addr:AddressRangeSpan>
						<xsl:value-of select="."/>
					</addr:AddressRangeSpan>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressRangeType'])">
				<xsl:for-each select="*[@key = 'AddressRangeType']/string">
					<addr:AddressRangeType>
						<xsl:value-of select="."/>
					</addr:AddressRangeType>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressReferenceSystemAuthority'])">
				<addr:AddressReferenceSystemAuthority>
					<xsl:value-of select="*[@key = 'AddressReferenceSystemAuthority']"/>
				</addr:AddressReferenceSystemAuthority>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressReferenceSystemId'])">
				<addr:AddressReferenceSystemId>
					<xsl:value-of select="*[@key = 'AddressReferenceSystemId']"/>
				</addr:AddressReferenceSystemId>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressSideOfStreet'])">
				<addr:AddressSideOfStreet>
					<xsl:value-of select="*[@key = 'AddressSideOfStreet']"/>
				</addr:AddressSideOfStreet>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressStartDate'])">
				<addr:AddressStartDate>
					<xsl:value-of select="*[@key = 'AddressStartDate']"/>
				</addr:AddressStartDate>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressTransportationFeatureID'])">
				<addr:AddressTransportationFeatureID>
					<xsl:value-of select="*[@key = 'AddressTransportationFeatureID']"/>
				</addr:AddressTransportationFeatureID>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressTransportationFeatureType'])">
				<addr:AddressTransportationFeatureType>
					<xsl:value-of select="*[@key = 'AddressTransportationFeatureType']"/>
				</addr:AddressTransportationFeatureType>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressTransportationSystemAuthority'])">
				<addr:AddressTransportationSystemAuthority>
					<xsl:value-of select="*[@key = 'AddressTransportationSystemAuthority']"/>
				</addr:AddressTransportationSystemAuthority>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressTransportationSystemName'])">
				<addr:AddressTransportationSystemName>
					<xsl:value-of select="*[@key = 'AddressTransportationSystemName']"/>
				</addr:AddressTransportationSystemName>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressXCoordinate'])">
				<addr:AddressXCoordinate>
					<xsl:value-of select="*[@key = 'AddressXCoordinate']"/>
				</addr:AddressXCoordinate>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressYCoordinate'])">
				<addr:AddressYCoordinate>
					<xsl:value-of select="*[@key = 'AddressYCoordinate']"/>
				</addr:AddressYCoordinate>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressZLevel'])">
				<addr:AddressZLevel>
					<xsl:value-of select="*[@key = 'AddressZLevel']"/>
				</addr:AddressZLevel>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'CompletePlaceName'])">
				<addr:CompletePlaceName>
					<xsl:apply-templates select="*[@key = 'CompletePlaceName']"/>
				</addr:CompletePlaceName>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'CountryName'])">
				<addr:CountryName>
					<xsl:value-of select="*[@key = 'CountryName']"/>
				</addr:CountryName>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'DataSetID'])">
				<addr:DataSetID>
					<xsl:value-of select="*[@key = 'DataSetID']"/>
				</addr:DataSetID>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'LocationDescription'])">
				<addr:LocationDescription>
					<xsl:value-of select="*[@key = 'LocationDescription']"/>
				</addr:LocationDescription>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'MailableAddress'])">
				<addr:MailableAddress>
					<xsl:value-of select="*[@key = 'MailableAddress']"/>
				</addr:MailableAddress>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'OfficialStatus'])">
				<addr:OfficialStatus>
					<xsl:value-of select="*[@key = 'OfficialStatus']"/>
				</addr:OfficialStatus>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'PlaceStateZip'])">
				<xsl:for-each select="*[@key = 'PlaceStateZip']/string">
					<addr:PlaceStateZip>
						<xsl:value-of select="."/>
					</addr:PlaceStateZip>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'RelatedAddressId'])">
				<xsl:for-each select="*[@key = 'RelatedAddressId']/string">
					<addr:RelatedAddressId>
						<xsl:value-of select="."/>
					</addr:RelatedAddressId>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'RelatedTransportationFeatureID'])">
				<xsl:for-each select="*[@key = 'RelatedTransportationFeatureID']/string">
					<addr:RelatedTransportationFeatureID>
						<xsl:value-of select="."/>
					</addr:RelatedTransportationFeatureID>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'StateName'])">
				<addr:StateName>
					<xsl:value-of select="*[@key = 'StateName']"/>
				</addr:StateName>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'USNationalGridCoordinate'])">
				<addr:USNationalGridCoordinate>
					<xsl:value-of select="*[@key = 'USNationalGridCoordinate']"/>
				</addr:USNationalGridCoordinate>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'USPSAddress'])">
				<addr:USPSAddress>
					<xsl:apply-templates select="*[@key = 'USPSAddress']"/>
				</addr:USPSAddress>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'ZipCode'])">
				<addr:ZipCode>
					<xsl:value-of select="*[@key = 'ZipCode']"/>
				</addr:ZipCode>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'ZipPlus4'])">
				<addr:ZipPlus4>
					<xsl:value-of select="*[@key = 'ZipPlus4']"/>
				</addr:ZipPlus4>
			</xsl:if>
		</VRI:USPSPostalDeliveryRoute_type>
	</xsl:template>
	<xsl:template name="addr:UnnumberedThoroughfareAddress_type" match="*[string = 'addr.UnnumberedThoroughfareAddress_type' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<VRI:UnnumberedThoroughfareAddress_type>
			<xsl:if test="boolean(*[@key = 'action'])">
				<addr:action>
					<xsl:value-of select="*[@key = 'action']"/>
				</addr:action>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressAnomalyStatus'])">
				<addr:AddressAnomalyStatus>
					<xsl:value-of select="*[@key = 'AddressAnomalyStatus']"/>
				</addr:AddressAnomalyStatus>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressAuthority'])">
				<addr:AddressAuthority>
					<xsl:value-of select="*[@key = 'AddressAuthority']"/>
				</addr:AddressAuthority>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressClassification'])">
				<addr:AddressClassification>
					<xsl:value-of select="*[@key = 'AddressClassification']"/>
				</addr:AddressClassification>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressCoordinateReferenceSystem'])">
				<addr:AddressCoordinateReferenceSystem>
					<xsl:apply-templates select="*[@key = 'AddressCoordinateReferenceSystem']"/>
				</addr:AddressCoordinateReferenceSystem>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressElevation'])">
				<addr:AddressElevation>
					<xsl:value-of select="*[@key = 'AddressElevation']"/>
				</addr:AddressElevation>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressEndDate'])">
				<addr:AddressEndDate>
					<xsl:value-of select="*[@key = 'AddressEndDate']"/>
				</addr:AddressEndDate>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressFeatureType'])">
				<xsl:for-each select="*[@key = 'AddressFeatureType']/string">
					<addr:AddressFeatureType>
						<xsl:value-of select="."/>
					</addr:AddressFeatureType>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressId'])">
				<addr:AddressId>
					<xsl:value-of select="*[@key = 'AddressId']"/>
				</addr:AddressId>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressLatitude'])">
				<addr:AddressLatitude>
					<xsl:value-of select="*[@key = 'AddressLatitude']"/>
				</addr:AddressLatitude>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressLifecycleStatus'])">
				<addr:AddressLifecycleStatus>
					<xsl:value-of select="*[@key = 'AddressLifecycleStatus']"/>
				</addr:AddressLifecycleStatus>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressLongitude'])">
				<addr:AddressLongitude>
					<xsl:value-of select="*[@key = 'AddressLongitude']"/>
				</addr:AddressLongitude>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressParcelIdentifier'])">
				<xsl:for-each select="*[@key = 'AddressParcelIdentifier']/string">
					<addr:AddressParcelIdentifier>
						<xsl:value-of select="."/>
					</addr:AddressParcelIdentifier>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressParcelIdentifierSource'])">
				<xsl:for-each select="*[@key = 'AddressParcelIdentifierSource']/string">
					<addr:AddressParcelIdentifierSource>
						<xsl:value-of select="."/>
					</addr:AddressParcelIdentifierSource>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressRangeDirectionality'])">
				<xsl:for-each select="*[@key = 'AddressRangeDirectionality']/string">
					<addr:AddressRangeDirectionality>
						<xsl:value-of select="."/>
					</addr:AddressRangeDirectionality>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressRangeParity'])">
				<xsl:for-each select="*[@key = 'AddressRangeParity']/string">
					<addr:AddressRangeParity>
						<xsl:value-of select="."/>
					</addr:AddressRangeParity>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressRangeSpan'])">
				<xsl:for-each select="*[@key = 'AddressRangeSpan']/string">
					<addr:AddressRangeSpan>
						<xsl:value-of select="."/>
					</addr:AddressRangeSpan>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressRangeType'])">
				<xsl:for-each select="*[@key = 'AddressRangeType']/string">
					<addr:AddressRangeType>
						<xsl:value-of select="."/>
					</addr:AddressRangeType>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressReferenceSystemAuthority'])">
				<addr:AddressReferenceSystemAuthority>
					<xsl:value-of select="*[@key = 'AddressReferenceSystemAuthority']"/>
				</addr:AddressReferenceSystemAuthority>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressReferenceSystemId'])">
				<addr:AddressReferenceSystemId>
					<xsl:value-of select="*[@key = 'AddressReferenceSystemId']"/>
				</addr:AddressReferenceSystemId>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressSideOfStreet'])">
				<addr:AddressSideOfStreet>
					<xsl:value-of select="*[@key = 'AddressSideOfStreet']"/>
				</addr:AddressSideOfStreet>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressStartDate'])">
				<addr:AddressStartDate>
					<xsl:value-of select="*[@key = 'AddressStartDate']"/>
				</addr:AddressStartDate>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressTransportationFeatureID'])">
				<addr:AddressTransportationFeatureID>
					<xsl:value-of select="*[@key = 'AddressTransportationFeatureID']"/>
				</addr:AddressTransportationFeatureID>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressTransportationFeatureType'])">
				<addr:AddressTransportationFeatureType>
					<xsl:value-of select="*[@key = 'AddressTransportationFeatureType']"/>
				</addr:AddressTransportationFeatureType>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressTransportationSystemAuthority'])">
				<addr:AddressTransportationSystemAuthority>
					<xsl:value-of select="*[@key = 'AddressTransportationSystemAuthority']"/>
				</addr:AddressTransportationSystemAuthority>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressTransportationSystemName'])">
				<addr:AddressTransportationSystemName>
					<xsl:value-of select="*[@key = 'AddressTransportationSystemName']"/>
				</addr:AddressTransportationSystemName>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressXCoordinate'])">
				<addr:AddressXCoordinate>
					<xsl:value-of select="*[@key = 'AddressXCoordinate']"/>
				</addr:AddressXCoordinate>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressYCoordinate'])">
				<addr:AddressYCoordinate>
					<xsl:value-of select="*[@key = 'AddressYCoordinate']"/>
				</addr:AddressYCoordinate>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'AddressZLevel'])">
				<addr:AddressZLevel>
					<xsl:value-of select="*[@key = 'AddressZLevel']"/>
				</addr:AddressZLevel>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'CompleteLandmarkName'])">
				<addr:CompleteLandmarkName>
					<xsl:apply-templates select="*[@key = 'CompleteLandmarkName']"/>
				</addr:CompleteLandmarkName>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'CompletePlaceName1'])">
				<addr:CompletePlaceName>
					<xsl:apply-templates select="*[@key = 'CompletePlaceName1']"/>
				</addr:CompletePlaceName>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'CompletePlaceName2'])">
				<addr:CompletePlaceName>
					<xsl:apply-templates select="*[@key = 'CompletePlaceName2']"/>
				</addr:CompletePlaceName>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'CompleteStreetName'])">
				<addr:CompleteStreetName>
					<xsl:apply-templates select="*[@key = 'CompleteStreetName']"/>
				</addr:CompleteStreetName>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'CompleteSubaddress'])">
				<addr:CompleteSubaddress>
					<xsl:apply-templates select="*[@key = 'CompleteSubaddress']"/>
				</addr:CompleteSubaddress>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'CountryName'])">
				<addr:CountryName>
					<xsl:value-of select="*[@key = 'CountryName']"/>
				</addr:CountryName>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'DataSetID'])">
				<addr:DataSetID>
					<xsl:value-of select="*[@key = 'DataSetID']"/>
				</addr:DataSetID>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'LocationDescription'])">
				<addr:LocationDescription>
					<xsl:value-of select="*[@key = 'LocationDescription']"/>
				</addr:LocationDescription>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'MailableAddress'])">
				<addr:MailableAddress>
					<xsl:value-of select="*[@key = 'MailableAddress']"/>
				</addr:MailableAddress>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'OfficialStatus'])">
				<addr:OfficialStatus>
					<xsl:value-of select="*[@key = 'OfficialStatus']"/>
				</addr:OfficialStatus>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'PlaceStateZip'])">
				<xsl:for-each select="*[@key = 'PlaceStateZip']/string">
					<addr:PlaceStateZip>
						<xsl:value-of select="."/>
					</addr:PlaceStateZip>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'RelatedAddressId'])">
				<xsl:for-each select="*[@key = 'RelatedAddressId']/string">
					<addr:RelatedAddressId>
						<xsl:value-of select="."/>
					</addr:RelatedAddressId>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'RelatedTransportationFeatureID'])">
				<xsl:for-each select="*[@key = 'RelatedTransportationFeatureID']/string">
					<addr:RelatedTransportationFeatureID>
						<xsl:value-of select="."/>
					</addr:RelatedTransportationFeatureID>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'StateName'])">
				<addr:StateName>
					<xsl:value-of select="*[@key = 'StateName']"/>
				</addr:StateName>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'USNationalGridCoordinate'])">
				<addr:USNationalGridCoordinate>
					<xsl:value-of select="*[@key = 'USNationalGridCoordinate']"/>
				</addr:USNationalGridCoordinate>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'ZipCode'])">
				<addr:ZipCode>
					<xsl:value-of select="*[@key = 'ZipCode']"/>
				</addr:ZipCode>
			</xsl:if>
			<xsl:if test="boolean(*[@key = 'ZipPlus4'])">
				<addr:ZipPlus4>
					<xsl:value-of select="*[@key = 'ZipPlus4']"/>
				</addr:ZipPlus4>
			</xsl:if>
		</VRI:UnnumberedThoroughfareAddress_type>
	</xsl:template>
	<xsl:template name="addr_type:AddressCoordinateReferenceSystem_type" match="*[string = 'addr_type.AddressCoordinateReferenceSystem_type' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="boolean(*[@key = 'AddressCoordinateReferenceSystemAuthority'])">
			<addr_type:AddressCoordinateReferenceSystemAuthority>
				<xsl:value-of select="*[@key = 'AddressCoordinateReferenceSystemAuthority']"/>
			</addr_type:AddressCoordinateReferenceSystemAuthority>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'AddressCoordinateReferenceSystemID'])">
			<addr_type:AddressCoordinateReferenceSystemID>
				<xsl:value-of select="*[@key = 'AddressCoordinateReferenceSystemID']"/>
			</addr_type:AddressCoordinateReferenceSystemID>
		</xsl:if>
	</xsl:template>
	<xsl:template name="addr_type:AddressNumberPrefix_type" match="*[string = 'addr_type.AddressNumberPrefix_type' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="boolean(*[@key = 'Separator'])">
			<xsl:attribute name="Separator">
				<xsl:value-of select="*[@key = 'Separator']"/>
			</xsl:attribute>
		</xsl:if>
		<xsl:value-of select="*[@key = 'Value']"/>
	</xsl:template>
	<xsl:template name="addr_type:AddressNumberSuffix_type" match="*[string = 'addr_type.AddressNumberSuffix_type' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="boolean(*[@key = 'Separator'])">
			<xsl:attribute name="Separator">
				<xsl:value-of select="*[@key = 'Separator']"/>
			</xsl:attribute>
		</xsl:if>
		<xsl:value-of select="*[@key = 'Value']"/>
	</xsl:template>
	<xsl:template name="addr_type:CompleteAddressNumber_type" match="*[string = 'addr_type.CompleteAddressNumber_type' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="boolean(*[@key = 'AddressNumber'])">
			<addr_type:AddressNumber>
				<xsl:value-of select="*[@key = 'AddressNumber']"/>
			</addr_type:AddressNumber>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'AddressNumberParity'])">
			<addr_type:AddressNumberParity>
				<xsl:value-of select="*[@key = 'AddressNumberParity']"/>
			</addr_type:AddressNumberParity>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'AddressNumberPrefix'])">
			<addr_type:AddressNumberPrefix>
				<xsl:apply-templates select="*[@key = 'AddressNumberPrefix']"/>
			</addr_type:AddressNumberPrefix>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'AddressNumberSuffix'])">
			<addr_type:AddressNumberSuffix>
				<xsl:apply-templates select="*[@key = 'AddressNumberSuffix']"/>
			</addr_type:AddressNumberSuffix>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'AttachedElement'])">
			<addr_type:AttachedElement>
				<xsl:value-of select="*[@key = 'AttachedElement']"/>
			</addr_type:AttachedElement>
		</xsl:if>
	</xsl:template>
	<xsl:template name="addr_type:CompleteLandmarkName_type" match="*[string = 'addr_type.CompleteLandmarkName_type' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="boolean(*[@key = 'LandmarkName'])">
			<xsl:for-each select="*[@key = 'LandmarkName']/map">
				<addr_type:LandmarkName>
					<xsl:apply-templates select="."/>
				</addr_type:LandmarkName>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Separator'])">
			<addr_type:Separator>
				<xsl:value-of select="*[@key = 'Separator']"/>
			</addr_type:Separator>
		</xsl:if>
	</xsl:template>
	<xsl:template name="addr_type:CompletePlaceName_type" match="*[string = 'addr_type.CompletePlaceName_type' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="boolean(*[@key = 'PlaceName'])">
			<xsl:for-each select="*[@key = 'PlaceName']/map">
				<addr_type:PlaceName>
					<xsl:apply-templates select="."/>
				</addr_type:PlaceName>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Separator'])">
			<addr_type:Separator>
				<xsl:value-of select="*[@key = 'Separator']"/>
			</addr_type:Separator>
		</xsl:if>
	</xsl:template>
	<xsl:template name="addr_type:CompleteStreetName_type" match="*[string = 'addr_type.CompleteStreetName_type' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="boolean(*[@key = 'AttachedElement'])">
			<addr_type:AttachedElement>
				<xsl:value-of select="*[@key = 'AttachedElement']"/>
			</addr_type:AttachedElement>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'StreetNamePreModifier'])">
			<addr_type:StreetNamePreModifier>
				<xsl:apply-templates select="*[@key = 'StreetNamePreModifier']"/>
			</addr_type:StreetNamePreModifier>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'StreetNamePreDirectional'])">
			<addr_type:StreetNamePreDirectional>
				<xsl:apply-templates select="*[@key = 'StreetNamePreDirectional']"/>
			</addr_type:StreetNamePreDirectional>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'StreetNamePreType'])">
			<addr_type:StreetNamePreType>
				<xsl:apply-templates select="*[@key = 'StreetNamePreType']"/>
			</addr_type:StreetNamePreType>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'StreetName'])">
			<addr_type:StreetName>
				<xsl:value-of select="*[@key = 'StreetName']"/>
			</addr_type:StreetName>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'StreetNamePostType'])">
			<addr_type:StreetNamePostType>
				<xsl:apply-templates select="*[@key = 'StreetNamePostType']"/>
			</addr_type:StreetNamePostType>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'StreetNamePostDirectional'])">
			<addr_type:StreetNamePostDirectional>
				<xsl:apply-templates select="*[@key = 'StreetNamePostDirectional']"/>
			</addr_type:StreetNamePostDirectional>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'StreetNamePostModifier'])">
			<addr_type:StreetNamePostModifier>
				<xsl:apply-templates select="*[@key = 'StreetNamePostModifier']"/>
			</addr_type:StreetNamePostModifier>
		</xsl:if>
	</xsl:template>
	<xsl:template name="addr_type:CompleteSubaddress_type" match="*[string = 'addr_type.CompleteSubaddress_type' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="boolean(*[@key = 'SubaddressElement'])">
			<xsl:for-each select="*[@key = 'SubaddressElement']/map">
				<addr_type:SubaddressElement>
					<xsl:apply-templates select="."/>
				</addr_type:SubaddressElement>
			</xsl:for-each>
		</xsl:if>
	</xsl:template>
	<xsl:template name="addr_type:LandmarkName_type" match="*[string = 'addr_type.LandmarkName_type' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="boolean(*[@key = 'ElementSequenceNumber'])">
			<xsl:attribute name="ElementSequenceNumber">
				<xsl:value-of select="*[@key = 'ElementSequenceNumber']"/>
			</xsl:attribute>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'GNISFeatureID'])">
			<xsl:attribute name="GNISFeatureID">
				<xsl:value-of select="*[@key = 'GNISFeatureID']"/>
			</xsl:attribute>
		</xsl:if>
		<xsl:value-of select="*[@key = 'Value']"/>
	</xsl:template>
	<xsl:template name="addr_type:PlaceName_type" match="*[string = 'addr_type.PlaceName_type' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="boolean(*[@key = 'ElementSequenceNumber'])">
			<xsl:attribute name="ElementSequenceNumber">
				<xsl:value-of select="*[@key = 'ElementSequenceNumber']"/>
			</xsl:attribute>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'GNISFeatureID'])">
			<xsl:attribute name="GNISFeatureID">
				<xsl:value-of select="*[@key = 'GNISFeatureID']"/>
			</xsl:attribute>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'PlaceNameType'])">
			<xsl:attribute name="PlaceNameType">
				<xsl:value-of select="*[@key = 'PlaceNameType']"/>
			</xsl:attribute>
		</xsl:if>
		<xsl:value-of select="*[@key = 'Value']"/>
	</xsl:template>
	<xsl:template name="addr_type:StreetNamePreDirectional_type" match="*[string = 'addr_type.StreetNamePreDirectional_type' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="boolean(*[@key = 'Separator'])">
			<xsl:attribute name="Separator">
				<xsl:value-of select="*[@key = 'Separator']"/>
			</xsl:attribute>
		</xsl:if>
		<xsl:value-of select="*[@key = 'Value']"/>
	</xsl:template>
	<xsl:template name="addr_type:StreetNamePreModifier_type" match="*[string = 'addr_type.StreetNamePreModifier_type' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="boolean(*[@key = 'Separator'])">
			<xsl:attribute name="Separator">
				<xsl:value-of select="*[@key = 'Separator']"/>
			</xsl:attribute>
		</xsl:if>
		<xsl:value-of select="*[@key = 'Value']"/>
	</xsl:template>
	<xsl:template name="addr_type:StreetNamePreType_type" match="*[string = 'addr_type.StreetNamePreType_type' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="boolean(*[@key = 'Separator'])">
			<xsl:attribute name="Separator">
				<xsl:value-of select="*[@key = 'Separator']"/>
			</xsl:attribute>
		</xsl:if>
		<xsl:value-of select="*[@key = 'Value']"/>
	</xsl:template>
	<xsl:template name="addr_type:SubaddressElement_type" match="*[string = 'addr_type.SubaddressElement_type' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="boolean(*[@key = 'ElementSequenceNumber'])">
			<addr_type:ElementSequenceNumber>
				<xsl:value-of select="*[@key = 'ElementSequenceNumber']"/>
			</addr_type:ElementSequenceNumber>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'SubaddressComponentOrder'])">
			<addr_type:SubaddressComponentOrder>
				<xsl:value-of select="*[@key = 'SubaddressComponentOrder']"/>
			</addr_type:SubaddressComponentOrder>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Separator'])">
			<addr_type:Separator>
				<xsl:value-of select="*[@key = 'Separator']"/>
			</addr_type:Separator>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'GNISFeatureID'])">
			<addr_type:GNISFeatureID>
				<xsl:value-of select="*[@key = 'GNISFeatureID']"/>
			</addr_type:GNISFeatureID>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'SubaddressType'])">
			<addr_type:SubaddressType>
				<xsl:value-of select="*[@key = 'SubaddressType']"/>
			</addr_type:SubaddressType>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'SubaddressIdentifier'])">
			<addr_type:SubaddressIdentifier>
				<xsl:value-of select="*[@key = 'SubaddressIdentifier']"/>
			</addr_type:SubaddressIdentifier>
		</xsl:if>
	</xsl:template>
	<xsl:template name="addr_type:USPSAddress_type" match="*[string = 'addr_type.USPSAddress_type' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="boolean(*[@key = 'USPSBox'])">
			<addr_type:USPSBox>
				<xsl:apply-templates select="*[@key = 'USPSBox']"/>
			</addr_type:USPSBox>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'USPSRoute'])">
			<addr_type:USPSRoute>
				<xsl:apply-templates select="*[@key = 'USPSRoute']"/>
			</addr_type:USPSRoute>
		</xsl:if>
	</xsl:template>
	<xsl:template name="addr_type:USPSBox_type" match="*[string = 'addr_type.USPSBox_type' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="boolean(*[@key = 'USPSBoxId'])">
			<addr_type:USPSBoxId>
				<xsl:value-of select="*[@key = 'USPSBoxId']"/>
			</addr_type:USPSBoxId>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'USPSBoxType'])">
			<addr_type:USPSBoxType>
				<xsl:value-of select="*[@key = 'USPSBoxType']"/>
			</addr_type:USPSBoxType>
		</xsl:if>
	</xsl:template>
	<xsl:template name="addr_type:USPSRoute_type" match="*[string = 'addr_type.USPSRoute_type' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="boolean(*[@key = 'USPSBoxGroupId'])">
			<addr_type:USPSBoxGroupId>
				<xsl:value-of select="*[@key = 'USPSBoxGroupId']"/>
			</addr_type:USPSBoxGroupId>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'USPSBoxGroupType'])">
			<addr_type:USPSBoxGroupType>
				<xsl:value-of select="*[@key = 'USPSBoxGroupType']"/>
			</addr_type:USPSBoxGroupType>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>