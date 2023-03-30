<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xml:id="json2xml" xpath-default-namespace="http://www.w3.org/2005/xpath-functions" xmlns="" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:cdf="http://itl.nist.gov/ns/voting/1500-20/v1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:math="http://www.w3.org/2005/xpath-functions/math" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:xhtml="http://www.w3.org/1999/xhtml" xmlns:err="http://www.w3.org/2005/xqt-errors" exclude-result-prefixes="array cdf fn map math xhtml err xs" version="3.0">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<!-- the root node must be XML, meaning the JSON must be nested in XML (not ideal) -->
	<xsl:template name="start" match="root" priority="1">
		<xsl:variable name="xml">
			<BallotDefinition>
				<xsl:apply-templates select="json-to-xml(.)"/>
			</BallotDefinition>
		</xsl:variable>
		<xsl:copy-of select="$xml"/>
	</xsl:template>
	<xsl:template name="cdf:ActivationContest" match="*[string = 'BallotDefinition.ActivationContest' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="$set_type">
			<xsl:attribute name="xsi:type">ActivationContest</xsl:attribute>
		</xsl:if>
		<xsl:call-template name="cdf:ControllingContest">
			<xsl:with-param name="set_type" select="false()"/>
		</xsl:call-template>
		<xsl:if test="boolean(*[@key = 'CandidateId'])">
			<CandidateId>
				<xsl:value-of select="*[@key = 'CandidateId']"/>
			</CandidateId>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'SummaryText'])">
			<SummaryText>
				<xsl:apply-templates select="*[@key = 'SummaryText']"/>
			</SummaryText>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:ActivationOption" match="*[string = 'BallotDefinition.ActivationOption' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="$set_type">
			<xsl:attribute name="xsi:type">ActivationOption</xsl:attribute>
		</xsl:if>
		<xsl:call-template name="cdf:ContestOption">
			<xsl:with-param name="set_type" select="false()"/>
		</xsl:call-template>
		<xsl:if test="boolean(*[@key = 'CausesActivation'])">
			<CausesActivation>
				<xsl:value-of select="*[@key = 'CausesActivation']"/>
			</CausesActivation>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Selection'])">
			<Selection>
				<xsl:apply-templates select="*[@key = 'Selection']"/>
			</Selection>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:AnnotatedString" match="*[string = 'BallotDefinition.AnnotatedString' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="boolean(*[@key = 'Annotation'])">
			<xsl:attribute name="Annotation">
				<xsl:value-of select="*[@key = 'Annotation']"/>
			</xsl:attribute>
		</xsl:if>
		<xsl:value-of select="*[@key = 'Content']"/>
	</xsl:template>
	<xsl:template name="cdf:AnnotatedUri" match="*[string = 'BallotDefinition.AnnotatedUri' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="boolean(*[@key = 'Annotation'])">
			<xsl:attribute name="Annotation">
				<xsl:value-of select="*[@key = 'Annotation']"/>
			</xsl:attribute>
		</xsl:if>
		<xsl:value-of select="*[@key = 'Content']"/>
	</xsl:template>
	<xsl:template name="cdf:BallotDefinition" match="*[string = 'BallotDefinition.BallotDefinition' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="boolean(*[@key = 'BallotFormat'])">
			<xsl:for-each select="*[@key = 'BallotFormat']/map">
				<BallotFormat>
					<xsl:apply-templates select="."/>
				</BallotFormat>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Election'])">
			<xsl:for-each select="*[@key = 'Election']/map">
				<Election>
					<xsl:apply-templates select="."/>
				</Election>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'ExternalIdentifier'])">
			<xsl:for-each select="*[@key = 'ExternalIdentifier']/map">
				<ExternalIdentifier>
					<xsl:apply-templates select="."/>
				</ExternalIdentifier>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'GeneratedDate'])">
			<GeneratedDate>
				<xsl:value-of select="*[@key = 'GeneratedDate']"/>
			</GeneratedDate>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'GpUnit'])">
			<xsl:for-each select="*[@key = 'GpUnit']/map">
				<GpUnit>
					<xsl:apply-templates select="."/>
				</GpUnit>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Header'])">
			<xsl:for-each select="*[@key = 'Header']/map">
				<Header>
					<xsl:apply-templates select="."/>
				</Header>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Issuer'])">
			<Issuer>
				<xsl:value-of select="*[@key = 'Issuer']"/>
			</Issuer>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'IssuerAbbreviation'])">
			<IssuerAbbreviation>
				<xsl:value-of select="*[@key = 'IssuerAbbreviation']"/>
			</IssuerAbbreviation>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'IsTest'])">
			<IsTest>
				<xsl:value-of select="*[@key = 'IsTest']"/>
			</IsTest>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Notes'])">
			<Notes>
				<xsl:value-of select="*[@key = 'Notes']"/>
			</Notes>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Office'])">
			<xsl:for-each select="*[@key = 'Office']/map">
				<Office>
					<xsl:apply-templates select="."/>
				</Office>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'OfficeGroup'])">
			<xsl:for-each select="*[@key = 'OfficeGroup']/map">
				<OfficeGroup>
					<xsl:apply-templates select="."/>
				</OfficeGroup>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Party'])">
			<xsl:for-each select="*[@key = 'Party']/map">
				<Party>
					<xsl:apply-templates select="."/>
				</Party>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Person'])">
			<xsl:for-each select="*[@key = 'Person']/map">
				<Person>
					<xsl:apply-templates select="."/>
				</Person>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'SequenceStart'])">
			<SequenceStart>
				<xsl:value-of select="*[@key = 'SequenceStart']"/>
			</SequenceStart>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'SequenceEnd'])">
			<SequenceEnd>
				<xsl:value-of select="*[@key = 'SequenceEnd']"/>
			</SequenceEnd>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Shape'])">
			<xsl:for-each select="*[@key = 'Shape']/map">
				<Shape>
					<xsl:apply-templates select="."/>
				</Shape>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'TestType'])">
			<TestType>
				<xsl:value-of select="*[@key = 'TestType']"/>
			</TestType>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'VendorApplicationId'])">
			<VendorApplicationId>
				<xsl:value-of select="*[@key = 'VendorApplicationId']"/>
			</VendorApplicationId>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Version'])">
			<Version>
				<xsl:value-of select="*[@key = 'Version']"/>
			</Version>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:BallotFormat" match="*[string = 'BallotDefinition.BallotFormat' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:attribute name="ObjectId">
			<xsl:value-of select="string[@key = '@id']"/>
		</xsl:attribute>
		<xsl:if test="boolean(*[@key = 'Application'])">
			<Application>
				<xsl:value-of select="*[@key = 'Application']"/>
			</Application>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'ExternalIdentifier'])">
			<xsl:for-each select="*[@key = 'ExternalIdentifier']/map">
				<ExternalIdentifier>
					<xsl:apply-templates select="."/>
				</ExternalIdentifier>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'FiducialMark'])">
			<xsl:for-each select="*[@key = 'FiducialMark']/map">
				<FiducialMark>
					<xsl:apply-templates select="."/>
				</FiducialMark>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'LongEdge'])">
			<LongEdge>
				<xsl:value-of select="*[@key = 'LongEdge']"/>
			</LongEdge>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Manufacturer'])">
			<Manufacturer>
				<xsl:value-of select="*[@key = 'Manufacturer']"/>
			</Manufacturer>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'mCDFArea'])">
			<xsl:for-each select="*[@key = 'mCDFArea']/map">
				<mCDFArea>
					<xsl:apply-templates select="."/>
				</mCDFArea>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'MeasurementUnit'])">
			<MeasurementUnit>
				<xsl:value-of select="*[@key = 'MeasurementUnit']"/>
			</MeasurementUnit>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Orientation'])">
			<Orientation>
				<xsl:value-of select="*[@key = 'Orientation']"/>
			</Orientation>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'SelectionCaptureMethod'])">
			<SelectionCaptureMethod>
				<xsl:value-of select="*[@key = 'SelectionCaptureMethod']"/>
			</SelectionCaptureMethod>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'ShortEdge'])">
			<ShortEdge>
				<xsl:value-of select="*[@key = 'ShortEdge']"/>
			</ShortEdge>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:BallotMeasureContest" match="*[string = 'BallotDefinition.BallotMeasureContest' and string/@key = '@type']" priority="-1">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="$set_type">
			<xsl:attribute name="xsi:type">BallotMeasureContest</xsl:attribute>
		</xsl:if>
		<xsl:call-template name="cdf:Contest">
			<xsl:with-param name="set_type" select="false()"/>
		</xsl:call-template>
		<xsl:if test="boolean(*[@key = 'ConStatement'])">
			<ConStatement>
				<xsl:apply-templates select="*[@key = 'ConStatement']"/>
			</ConStatement>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'EffectOfAbstain'])">
			<EffectOfAbstain>
				<xsl:apply-templates select="*[@key = 'EffectOfAbstain']"/>
			</EffectOfAbstain>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'FullText'])">
			<FullText>
				<xsl:apply-templates select="*[@key = 'FullText']"/>
			</FullText>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'InfoUri'])">
			<xsl:for-each select="*[@key = 'InfoUri']/map">
				<InfoUri>
					<xsl:apply-templates select="."/>
				</InfoUri>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'PassageThreshold'])">
			<PassageThreshold>
				<xsl:apply-templates select="*[@key = 'PassageThreshold']"/>
			</PassageThreshold>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'ProStatement'])">
			<ProStatement>
				<xsl:apply-templates select="*[@key = 'ProStatement']"/>
			</ProStatement>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'SummaryText'])">
			<SummaryText>
				<xsl:apply-templates select="*[@key = 'SummaryText']"/>
			</SummaryText>
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
	</xsl:template>
	<xsl:template name="cdf:BallotMeasureOption" match="*[string = 'BallotDefinition.BallotMeasureOption' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="$set_type">
			<xsl:attribute name="xsi:type">BallotMeasureOption</xsl:attribute>
		</xsl:if>
		<xsl:call-template name="cdf:ContestOption">
			<xsl:with-param name="set_type" select="false()"/>
		</xsl:call-template>
		<xsl:if test="boolean(*[@key = 'Selection'])">
			<Selection>
				<xsl:apply-templates select="*[@key = 'Selection']"/>
			</Selection>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:BallotStyle" match="*[string = 'BallotDefinition.BallotStyle' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="boolean(*[@key = 'ExternalIdentifier'])">
			<xsl:for-each select="*[@key = 'ExternalIdentifier']/map">
				<ExternalIdentifier>
					<xsl:apply-templates select="."/>
				</ExternalIdentifier>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'GpUnitIds'])">
			<GpUnitIds>
				<xsl:variable name="idrefs">
					<xsl:for-each select="*[@key = 'GpUnitIds']/string">
						<xsl:value-of select="concat(' ', .)"/>
					</xsl:for-each>
				</xsl:variable>
				<xsl:value-of select="normalize-space($idrefs)"/>
			</GpUnitIds>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'ImageUri'])">
			<xsl:for-each select="*[@key = 'ImageUri']/map">
				<ImageUri>
					<xsl:apply-templates select="."/>
				</ImageUri>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Language'])">
			<xsl:for-each select="*[@key = 'Language']/string">
				<Language>
					<xsl:value-of select="."/>
				</Language>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'OrderedContent'])">
			<xsl:for-each select="*[@key = 'OrderedContent']/map">
				<OrderedContent>
					<xsl:apply-templates select="."/>
				</OrderedContent>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'PartyIds'])">
			<PartyIds>
				<xsl:variable name="idrefs">
					<xsl:for-each select="*[@key = 'PartyIds']/string">
						<xsl:value-of select="concat(' ', .)"/>
					</xsl:for-each>
				</xsl:variable>
				<xsl:value-of select="normalize-space($idrefs)"/>
			</PartyIds>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Purpose'])">
			<Purpose>
				<xsl:value-of select="*[@key = 'Purpose']"/>
			</Purpose>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:BoundedObject" match="*[string = 'BallotDefinition.BoundedObject' and string/@key = '@type']" priority="-1">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="boolean(*[@key = 'H'])">
			<H>
				<xsl:value-of select="*[@key = 'H']"/>
			</H>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Sheet'])">
			<Sheet>
				<xsl:value-of select="*[@key = 'Sheet']"/>
			</Sheet>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Side'])">
			<Side>
				<xsl:value-of select="*[@key = 'Side']"/>
			</Side>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'W'])">
			<W>
				<xsl:value-of select="*[@key = 'W']"/>
			</W>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'X'])">
			<X>
				<xsl:value-of select="*[@key = 'X']"/>
			</X>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Y'])">
			<Y>
				<xsl:value-of select="*[@key = 'Y']"/>
			</Y>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:Candidate" match="*[string = 'BallotDefinition.Candidate' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:attribute name="ObjectId">
			<xsl:value-of select="string[@key = '@id']"/>
		</xsl:attribute>
		<xsl:if test="boolean(*[@key = 'BallotName'])">
			<BallotName>
				<xsl:apply-templates select="*[@key = 'BallotName']"/>
			</BallotName>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'CampaignSlogan'])">
			<CampaignSlogan>
				<xsl:apply-templates select="*[@key = 'CampaignSlogan']"/>
			</CampaignSlogan>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'ContactInformation'])">
			<ContactInformation>
				<xsl:apply-templates select="*[@key = 'ContactInformation']"/>
			</ContactInformation>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'ExternalIdentifier'])">
			<xsl:for-each select="*[@key = 'ExternalIdentifier']/map">
				<ExternalIdentifier>
					<xsl:apply-templates select="."/>
				</ExternalIdentifier>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'FileDate'])">
			<FileDate>
				<xsl:value-of select="*[@key = 'FileDate']"/>
			</FileDate>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'IsIncumbent'])">
			<IsIncumbent>
				<xsl:value-of select="*[@key = 'IsIncumbent']"/>
			</IsIncumbent>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'IsTopTicket'])">
			<IsTopTicket>
				<xsl:value-of select="*[@key = 'IsTopTicket']"/>
			</IsTopTicket>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'PartyId'])">
			<PartyId>
				<xsl:value-of select="*[@key = 'PartyId']"/>
			</PartyId>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'PersonId'])">
			<PersonId>
				<xsl:value-of select="*[@key = 'PersonId']"/>
			</PersonId>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'PreElectionStatus'])">
			<PreElectionStatus>
				<xsl:value-of select="*[@key = 'PreElectionStatus']"/>
			</PreElectionStatus>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'ReadName'])">
			<ReadName>
				<xsl:value-of select="*[@key = 'ReadName']"/>
			</ReadName>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:CandidateContest" match="*[string = 'BallotDefinition.CandidateContest' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="$set_type">
			<xsl:attribute name="xsi:type">CandidateContest</xsl:attribute>
		</xsl:if>
		<xsl:call-template name="cdf:Contest">
			<xsl:with-param name="set_type" select="false()"/>
		</xsl:call-template>
		<xsl:if test="boolean(*[@key = 'NumberElected'])">
			<NumberElected>
				<xsl:value-of select="*[@key = 'NumberElected']"/>
			</NumberElected>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'NumberRunoff'])">
			<NumberRunoff>
				<xsl:value-of select="*[@key = 'NumberRunoff']"/>
			</NumberRunoff>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'OfficeIds'])">
			<OfficeIds>
				<xsl:variable name="idrefs">
					<xsl:for-each select="*[@key = 'OfficeIds']/string">
						<xsl:value-of select="concat(' ', .)"/>
					</xsl:for-each>
				</xsl:variable>
				<xsl:value-of select="normalize-space($idrefs)"/>
			</OfficeIds>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'PrimaryPartyIds'])">
			<PrimaryPartyIds>
				<xsl:variable name="idrefs">
					<xsl:for-each select="*[@key = 'PrimaryPartyIds']/string">
						<xsl:value-of select="concat(' ', .)"/>
					</xsl:for-each>
				</xsl:variable>
				<xsl:value-of select="normalize-space($idrefs)"/>
			</PrimaryPartyIds>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'RanksAllowed'])">
			<RanksAllowed>
				<xsl:value-of select="*[@key = 'RanksAllowed']"/>
			</RanksAllowed>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'VotesAllowed'])">
			<VotesAllowed>
				<xsl:value-of select="*[@key = 'VotesAllowed']"/>
			</VotesAllowed>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:CandidateOption" match="*[string = 'BallotDefinition.CandidateOption' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="$set_type">
			<xsl:attribute name="xsi:type">CandidateOption</xsl:attribute>
		</xsl:if>
		<xsl:call-template name="cdf:ContestOption">
			<xsl:with-param name="set_type" select="false()"/>
		</xsl:call-template>
		<xsl:if test="boolean(*[@key = 'CandidateIds'])">
			<CandidateIds>
				<xsl:variable name="idrefs">
					<xsl:for-each select="*[@key = 'CandidateIds']/string">
						<xsl:value-of select="concat(' ', .)"/>
					</xsl:for-each>
				</xsl:variable>
				<xsl:value-of select="normalize-space($idrefs)"/>
			</CandidateIds>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'EndorsementPartyIds'])">
			<EndorsementPartyIds>
				<xsl:variable name="idrefs">
					<xsl:for-each select="*[@key = 'EndorsementPartyIds']/string">
						<xsl:value-of select="concat(' ', .)"/>
					</xsl:for-each>
				</xsl:variable>
				<xsl:value-of select="normalize-space($idrefs)"/>
			</EndorsementPartyIds>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'IsWriteIn'])">
			<IsWriteIn>
				<xsl:value-of select="*[@key = 'IsWriteIn']"/>
			</IsWriteIn>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:Coalition" match="*[string = 'BallotDefinition.Coalition' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="$set_type">
			<xsl:attribute name="xsi:type">Coalition</xsl:attribute>
		</xsl:if>
		<xsl:call-template name="cdf:Party">
			<xsl:with-param name="set_type" select="false()"/>
		</xsl:call-template>
		<xsl:if test="boolean(*[@key = 'ContestIds'])">
			<ContestIds>
				<xsl:variable name="idrefs">
					<xsl:for-each select="*[@key = 'ContestIds']/string">
						<xsl:value-of select="concat(' ', .)"/>
					</xsl:for-each>
				</xsl:variable>
				<xsl:value-of select="normalize-space($idrefs)"/>
			</ContestIds>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'PartyIds'])">
			<PartyIds>
				<xsl:variable name="idrefs">
					<xsl:for-each select="*[@key = 'PartyIds']/string">
						<xsl:value-of select="concat(' ', .)"/>
					</xsl:for-each>
				</xsl:variable>
				<xsl:value-of select="normalize-space($idrefs)"/>
			</PartyIds>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:ContactInformation" match="*[string = 'BallotDefinition.ContactInformation' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="boolean(*[@key = 'Label'])">
			<xsl:attribute name="Label">
				<xsl:value-of select="*[@key = 'Label']"/>
			</xsl:attribute>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'AddressLine'])">
			<xsl:for-each select="*[@key = 'AddressLine']/string">
				<AddressLine>
					<xsl:value-of select="."/>
				</AddressLine>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Directions'])">
			<Directions>
				<xsl:apply-templates select="*[@key = 'Directions']"/>
			</Directions>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Email'])">
			<xsl:for-each select="*[@key = 'Email']/map">
				<Email>
					<xsl:apply-templates select="."/>
				</Email>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Fax'])">
			<xsl:for-each select="*[@key = 'Fax']/map">
				<Fax>
					<xsl:apply-templates select="."/>
				</Fax>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'LatLng'])">
			<LatLng>
				<xsl:apply-templates select="*[@key = 'LatLng']"/>
			</LatLng>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Name'])">
			<Name>
				<xsl:value-of select="*[@key = 'Name']"/>
			</Name>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Phone'])">
			<xsl:for-each select="*[@key = 'Phone']/map">
				<Phone>
					<xsl:apply-templates select="."/>
				</Phone>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Schedule'])">
			<xsl:for-each select="*[@key = 'Schedule']/map">
				<Schedule>
					<xsl:apply-templates select="."/>
				</Schedule>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Uri'])">
			<xsl:for-each select="*[@key = 'Uri']/map">
				<Uri>
					<xsl:apply-templates select="."/>
				</Uri>
			</xsl:for-each>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:Contest" match="*[string = 'BallotDefinition.Contest' and string/@key = '@type']" priority="-1">
		<xsl:param name="set_type" select="true()"/>
		<xsl:attribute name="ObjectId">
			<xsl:value-of select="string[@key = '@id']"/>
		</xsl:attribute>
		<xsl:if test="boolean(*[@key = 'Abbreviation'])">
			<Abbreviation>
				<xsl:value-of select="*[@key = 'Abbreviation']"/>
			</Abbreviation>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'BallotSubTitle'])">
			<BallotSubTitle>
				<xsl:apply-templates select="*[@key = 'BallotSubTitle']"/>
			</BallotSubTitle>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'BallotTitle'])">
			<BallotTitle>
				<xsl:apply-templates select="*[@key = 'BallotTitle']"/>
			</BallotTitle>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'ContestOption'])">
			<xsl:for-each select="*[@key = 'ContestOption']/map">
				<ContestOption>
					<xsl:apply-templates select="."/>
				</ContestOption>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'ElectionDistrictId'])">
			<ElectionDistrictId>
				<xsl:value-of select="*[@key = 'ElectionDistrictId']"/>
			</ElectionDistrictId>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'ExternalIdentifier'])">
			<xsl:for-each select="*[@key = 'ExternalIdentifier']/map">
				<ExternalIdentifier>
					<xsl:apply-templates select="."/>
				</ExternalIdentifier>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'HasRotation'])">
			<HasRotation>
				<xsl:value-of select="*[@key = 'HasRotation']"/>
			</HasRotation>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Name'])">
			<Name>
				<xsl:value-of select="*[@key = 'Name']"/>
			</Name>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'SequenceOrder'])">
			<SequenceOrder>
				<xsl:value-of select="*[@key = 'SequenceOrder']"/>
			</SequenceOrder>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'TotalSubUnits'])">
			<TotalSubUnits>
				<xsl:value-of select="*[@key = 'TotalSubUnits']"/>
			</TotalSubUnits>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'VoteVariation'])">
			<VoteVariation>
				<xsl:value-of select="*[@key = 'VoteVariation']"/>
			</VoteVariation>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'OtherVoteVariation'])">
			<OtherVoteVariation>
				<xsl:value-of select="*[@key = 'OtherVoteVariation']"/>
			</OtherVoteVariation>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:ContestOption" match="*[string = 'BallotDefinition.ContestOption' and string/@key = '@type']" priority="-1">
		<xsl:param name="set_type" select="true()"/>
		<xsl:attribute name="ObjectId">
			<xsl:value-of select="string[@key = '@id']"/>
		</xsl:attribute>
		<xsl:if test="boolean(*[@key = 'ExternalIdentifier'])">
			<xsl:for-each select="*[@key = 'ExternalIdentifier']/map">
				<ExternalIdentifier>
					<xsl:apply-templates select="."/>
				</ExternalIdentifier>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'SequenceOrder'])">
			<SequenceOrder>
				<xsl:value-of select="*[@key = 'SequenceOrder']"/>
			</SequenceOrder>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:ControllingContest" match="*[string = 'BallotDefinition.ControllingContest' and string/@key = '@type']" priority="-1">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="$set_type">
			<xsl:attribute name="xsi:type">ControllingContest</xsl:attribute>
		</xsl:if>
		<xsl:call-template name="cdf:Contest">
			<xsl:with-param name="set_type" select="false()"/>
		</xsl:call-template>
		<xsl:if test="boolean(*[@key = 'ControlledContestIds'])">
			<ControlledContestIds>
				<xsl:variable name="idrefs">
					<xsl:for-each select="*[@key = 'ControlledContestIds']/string">
						<xsl:value-of select="concat(' ', .)"/>
					</xsl:for-each>
				</xsl:variable>
				<xsl:value-of select="normalize-space($idrefs)"/>
			</ControlledContestIds>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:Election" match="*[string = 'BallotDefinition.Election' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="boolean(*[@key = 'BallotStyle'])">
			<xsl:for-each select="*[@key = 'BallotStyle']/map">
				<BallotStyle>
					<xsl:apply-templates select="."/>
				</BallotStyle>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Candidate'])">
			<xsl:for-each select="*[@key = 'Candidate']/map">
				<Candidate>
					<xsl:apply-templates select="."/>
				</Candidate>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'ContactInformation'])">
			<ContactInformation>
				<xsl:apply-templates select="*[@key = 'ContactInformation']"/>
			</ContactInformation>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Contest'])">
			<xsl:for-each select="*[@key = 'Contest']/map">
				<Contest>
					<xsl:apply-templates select="."/>
				</Contest>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'ElectionScopeId'])">
			<ElectionScopeId>
				<xsl:value-of select="*[@key = 'ElectionScopeId']"/>
			</ElectionScopeId>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'ExternalIdentifier'])">
			<xsl:for-each select="*[@key = 'ExternalIdentifier']/map">
				<ExternalIdentifier>
					<xsl:apply-templates select="."/>
				</ExternalIdentifier>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Name'])">
			<Name>
				<xsl:apply-templates select="*[@key = 'Name']"/>
			</Name>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'StartDate'])">
			<StartDate>
				<xsl:value-of select="*[@key = 'StartDate']"/>
			</StartDate>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'EndDate'])">
			<EndDate>
				<xsl:value-of select="*[@key = 'EndDate']"/>
			</EndDate>
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
	</xsl:template>
	<xsl:template name="cdf:ElectionAdministration" match="*[string = 'BallotDefinition.ElectionAdministration' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="boolean(*[@key = 'ContactInformation'])">
			<ContactInformation>
				<xsl:apply-templates select="*[@key = 'ContactInformation']"/>
			</ContactInformation>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'ElectionOfficialPersonIds'])">
			<ElectionOfficialPersonIds>
				<xsl:variable name="idrefs">
					<xsl:for-each select="*[@key = 'ElectionOfficialPersonIds']/string">
						<xsl:value-of select="concat(' ', .)"/>
					</xsl:for-each>
				</xsl:variable>
				<xsl:value-of select="normalize-space($idrefs)"/>
			</ElectionOfficialPersonIds>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Name'])">
			<Name>
				<xsl:value-of select="*[@key = 'Name']"/>
			</Name>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:ExternalIdentifier" match="*[string = 'BallotDefinition.ExternalIdentifier' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="boolean(*[@key = 'Label'])">
			<xsl:attribute name="Label">
				<xsl:value-of select="*[@key = 'Label']"/>
			</xsl:attribute>
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
		<xsl:if test="boolean(*[@key = 'Value'])">
			<Value>
				<xsl:value-of select="*[@key = 'Value']"/>
			</Value>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:FiducialMark" match="*[string = 'BallotDefinition.FiducialMark' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="$set_type">
			<xsl:attribute name="xsi:type">FiducialMark</xsl:attribute>
		</xsl:if>
		<xsl:call-template name="cdf:BoundedObject">
			<xsl:with-param name="set_type" select="false()"/>
		</xsl:call-template>
		<xsl:if test="boolean(*[@key = 'ShapeId'])">
			<ShapeId>
				<xsl:value-of select="*[@key = 'ShapeId']"/>
			</ShapeId>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:GpUnit" match="*[string = 'BallotDefinition.GpUnit' and string/@key = '@type']" priority="-1">
		<xsl:param name="set_type" select="true()"/>
		<xsl:attribute name="ObjectId">
			<xsl:value-of select="string[@key = '@id']"/>
		</xsl:attribute>
		<xsl:if test="boolean(*[@key = 'ComposingGpUnitIds'])">
			<ComposingGpUnitIds>
				<xsl:variable name="idrefs">
					<xsl:for-each select="*[@key = 'ComposingGpUnitIds']/string">
						<xsl:value-of select="concat(' ', .)"/>
					</xsl:for-each>
				</xsl:variable>
				<xsl:value-of select="normalize-space($idrefs)"/>
			</ComposingGpUnitIds>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'ExternalIdentifier'])">
			<xsl:for-each select="*[@key = 'ExternalIdentifier']/map">
				<ExternalIdentifier>
					<xsl:apply-templates select="."/>
				</ExternalIdentifier>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Name'])">
			<Name>
				<xsl:apply-templates select="*[@key = 'Name']"/>
			</Name>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:Header" match="*[string = 'BallotDefinition.Header' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:attribute name="ObjectId">
			<xsl:value-of select="string[@key = '@id']"/>
		</xsl:attribute>
		<xsl:if test="boolean(*[@key = 'ExternalIdentifier'])">
			<xsl:for-each select="*[@key = 'ExternalIdentifier']/map">
				<ExternalIdentifier>
					<xsl:apply-templates select="."/>
				</ExternalIdentifier>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'HeaderedContent'])">
			<HeaderedContent>
				<xsl:apply-templates select="*[@key = 'HeaderedContent']"/>
			</HeaderedContent>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Name'])">
			<Name>
				<xsl:apply-templates select="*[@key = 'Name']"/>
			</Name>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:Hours" match="*[string = 'BallotDefinition.Hours' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="boolean(*[@key = 'Label'])">
			<xsl:attribute name="Label">
				<xsl:value-of select="*[@key = 'Label']"/>
			</xsl:attribute>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Day'])">
			<Day>
				<xsl:value-of select="*[@key = 'Day']"/>
			</Day>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'StartTime'])">
			<StartTime>
				<xsl:value-of select="*[@key = 'StartTime']"/>
			</StartTime>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'EndTime'])">
			<EndTime>
				<xsl:value-of select="*[@key = 'EndTime']"/>
			</EndTime>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:InternationalizedText" match="*[string = 'BallotDefinition.InternationalizedText' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="boolean(*[@key = 'Label'])">
			<xsl:attribute name="Label">
				<xsl:value-of select="*[@key = 'Label']"/>
			</xsl:attribute>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Text'])">
			<xsl:for-each select="*[@key = 'Text']/map">
				<Text>
					<xsl:apply-templates select="."/>
				</Text>
			</xsl:for-each>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:LanguageString" match="*[string = 'BallotDefinition.LanguageString' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="boolean(*[@key = 'Language'])">
			<xsl:attribute name="Language">
				<xsl:value-of select="*[@key = 'Language']"/>
			</xsl:attribute>
		</xsl:if>
		<xsl:value-of select="*[@key = 'Content']"/>
	</xsl:template>
	<xsl:template name="cdf:LatLng" match="*[string = 'BallotDefinition.LatLng' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="boolean(*[@key = 'Label'])">
			<xsl:attribute name="Label">
				<xsl:value-of select="*[@key = 'Label']"/>
			</xsl:attribute>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Latitude'])">
			<Latitude>
				<xsl:value-of select="*[@key = 'Latitude']"/>
			</Latitude>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Longitude'])">
			<Longitude>
				<xsl:value-of select="*[@key = 'Longitude']"/>
			</Longitude>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Source'])">
			<Source>
				<xsl:value-of select="*[@key = 'Source']"/>
			</Source>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:Office" match="*[string = 'BallotDefinition.Office' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:attribute name="ObjectId">
			<xsl:value-of select="string[@key = '@id']"/>
		</xsl:attribute>
		<xsl:if test="boolean(*[@key = 'ContactInformation'])">
			<ContactInformation>
				<xsl:apply-templates select="*[@key = 'ContactInformation']"/>
			</ContactInformation>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Description'])">
			<Description>
				<xsl:apply-templates select="*[@key = 'Description']"/>
			</Description>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'ElectionDistrictId'])">
			<ElectionDistrictId>
				<xsl:value-of select="*[@key = 'ElectionDistrictId']"/>
			</ElectionDistrictId>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'ExternalIdentifier'])">
			<xsl:for-each select="*[@key = 'ExternalIdentifier']/map">
				<ExternalIdentifier>
					<xsl:apply-templates select="."/>
				</ExternalIdentifier>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'FilingDeadline'])">
			<FilingDeadline>
				<xsl:value-of select="*[@key = 'FilingDeadline']"/>
			</FilingDeadline>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'IsPartisan'])">
			<IsPartisan>
				<xsl:value-of select="*[@key = 'IsPartisan']"/>
			</IsPartisan>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Name'])">
			<Name>
				<xsl:apply-templates select="*[@key = 'Name']"/>
			</Name>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'OfficeHolderPersonIds'])">
			<OfficeHolderPersonIds>
				<xsl:variable name="idrefs">
					<xsl:for-each select="*[@key = 'OfficeHolderPersonIds']/string">
						<xsl:value-of select="concat(' ', .)"/>
					</xsl:for-each>
				</xsl:variable>
				<xsl:value-of select="normalize-space($idrefs)"/>
			</OfficeHolderPersonIds>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Term'])">
			<Term>
				<xsl:apply-templates select="*[@key = 'Term']"/>
			</Term>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:OfficeGroup" match="*[string = 'BallotDefinition.OfficeGroup' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="boolean(*[@key = 'Label'])">
			<xsl:attribute name="Label">
				<xsl:value-of select="*[@key = 'Label']"/>
			</xsl:attribute>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Name'])">
			<Name>
				<xsl:value-of select="*[@key = 'Name']"/>
			</Name>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'OfficeIds'])">
			<OfficeIds>
				<xsl:variable name="idrefs">
					<xsl:for-each select="*[@key = 'OfficeIds']/string">
						<xsl:value-of select="concat(' ', .)"/>
					</xsl:for-each>
				</xsl:variable>
				<xsl:value-of select="normalize-space($idrefs)"/>
			</OfficeIds>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'SubOfficeGroup'])">
			<xsl:for-each select="*[@key = 'SubOfficeGroup']/map">
				<SubOfficeGroup>
					<xsl:apply-templates select="."/>
				</SubOfficeGroup>
			</xsl:for-each>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:OptionPosition" match="*[string = 'BallotDefinition.OptionPosition' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="$set_type">
			<xsl:attribute name="xsi:type">OptionPosition</xsl:attribute>
		</xsl:if>
		<xsl:call-template name="cdf:BoundedObject">
			<xsl:with-param name="set_type" select="false()"/>
		</xsl:call-template>
		<xsl:if test="boolean(*[@key = 'FractionalVotes'])">
			<FractionalVotes>
				<xsl:value-of select="*[@key = 'FractionalVotes']"/>
			</FractionalVotes>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'IndicatorId'])">
			<IndicatorId>
				<xsl:value-of select="*[@key = 'IndicatorId']"/>
			</IndicatorId>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'NumberVotes'])">
			<NumberVotes>
				<xsl:value-of select="*[@key = 'NumberVotes']"/>
			</NumberVotes>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Rank'])">
			<Rank>
				<xsl:value-of select="*[@key = 'Rank']"/>
			</Rank>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:OrderedContent" match="*[string = 'BallotDefinition.OrderedContent' and string/@key = '@type']" priority="-1">
		<xsl:param name="set_type" select="true()"/>
	</xsl:template>
	<xsl:template name="cdf:OrderedContest" match="*[string = 'BallotDefinition.OrderedContest' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="$set_type">
			<xsl:attribute name="xsi:type">OrderedContest</xsl:attribute>
		</xsl:if>
		<xsl:call-template name="cdf:OrderedContent">
			<xsl:with-param name="set_type" select="false()"/>
		</xsl:call-template>
		<xsl:if test="boolean(*[@key = 'ContestId'])">
			<ContestId>
				<xsl:value-of select="*[@key = 'ContestId']"/>
			</ContestId>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'OrderedContestOptionIds'])">
			<OrderedContestOptionIds>
				<xsl:variable name="idrefs">
					<xsl:for-each select="*[@key = 'OrderedContestOptionIds']/string">
						<xsl:value-of select="concat(' ', .)"/>
					</xsl:for-each>
				</xsl:variable>
				<xsl:value-of select="normalize-space($idrefs)"/>
			</OrderedContestOptionIds>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Physical'])">
			<xsl:for-each select="*[@key = 'Physical']/map">
				<Physical>
					<xsl:apply-templates select="."/>
				</Physical>
			</xsl:for-each>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:OrderedHeader" match="*[string = 'BallotDefinition.OrderedHeader' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="$set_type">
			<xsl:attribute name="xsi:type">OrderedHeader</xsl:attribute>
		</xsl:if>
		<xsl:call-template name="cdf:OrderedContent">
			<xsl:with-param name="set_type" select="false()"/>
		</xsl:call-template>
		<xsl:if test="boolean(*[@key = 'HeaderId'])">
			<HeaderId>
				<xsl:value-of select="*[@key = 'HeaderId']"/>
			</HeaderId>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'OrderedContent'])">
			<xsl:for-each select="*[@key = 'OrderedContent']/map">
				<OrderedContent>
					<xsl:apply-templates select="."/>
				</OrderedContent>
			</xsl:for-each>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:Party" match="*[string = 'BallotDefinition.Party' and string/@key = '@type']" priority="-1">
		<xsl:param name="set_type" select="true()"/>
		<xsl:attribute name="ObjectId">
			<xsl:value-of select="string[@key = '@id']"/>
		</xsl:attribute>
		<xsl:if test="boolean(*[@key = 'Abbreviation'])">
			<Abbreviation>
				<xsl:apply-templates select="*[@key = 'Abbreviation']"/>
			</Abbreviation>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Color'])">
			<Color>
				<xsl:value-of select="*[@key = 'Color']"/>
			</Color>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'ContactInformation'])">
			<ContactInformation>
				<xsl:apply-templates select="*[@key = 'ContactInformation']"/>
			</ContactInformation>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'ExternalIdentifier'])">
			<xsl:for-each select="*[@key = 'ExternalIdentifier']/map">
				<ExternalIdentifier>
					<xsl:apply-templates select="."/>
				</ExternalIdentifier>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'IsRecognizedParty'])">
			<IsRecognizedParty>
				<xsl:value-of select="*[@key = 'IsRecognizedParty']"/>
			</IsRecognizedParty>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'LeaderPersonIds'])">
			<LeaderPersonIds>
				<xsl:variable name="idrefs">
					<xsl:for-each select="*[@key = 'LeaderPersonIds']/string">
						<xsl:value-of select="concat(' ', .)"/>
					</xsl:for-each>
				</xsl:variable>
				<xsl:value-of select="normalize-space($idrefs)"/>
			</LeaderPersonIds>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'LogoUri'])">
			<xsl:for-each select="*[@key = 'LogoUri']/map">
				<LogoUri>
					<xsl:apply-templates select="."/>
				</LogoUri>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Name'])">
			<Name>
				<xsl:apply-templates select="*[@key = 'Name']"/>
			</Name>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'PartyScopeGpUnitIds'])">
			<PartyScopeGpUnitIds>
				<xsl:variable name="idrefs">
					<xsl:for-each select="*[@key = 'PartyScopeGpUnitIds']/string">
						<xsl:value-of select="concat(' ', .)"/>
					</xsl:for-each>
				</xsl:variable>
				<xsl:value-of select="normalize-space($idrefs)"/>
			</PartyScopeGpUnitIds>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Slogan'])">
			<Slogan>
				<xsl:apply-templates select="*[@key = 'Slogan']"/>
			</Slogan>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:PartyContest" match="*[string = 'BallotDefinition.PartyContest' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="$set_type">
			<xsl:attribute name="xsi:type">PartyContest</xsl:attribute>
		</xsl:if>
		<xsl:call-template name="cdf:Contest">
			<xsl:with-param name="set_type" select="false()"/>
		</xsl:call-template>
	</xsl:template>
	<xsl:template name="cdf:PartyOption" match="*[string = 'BallotDefinition.PartyOption' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="$set_type">
			<xsl:attribute name="xsi:type">PartyOption</xsl:attribute>
		</xsl:if>
		<xsl:call-template name="cdf:ContestOption">
			<xsl:with-param name="set_type" select="false()"/>
		</xsl:call-template>
		<xsl:if test="boolean(*[@key = 'PartyIds'])">
			<PartyIds>
				<xsl:variable name="idrefs">
					<xsl:for-each select="*[@key = 'PartyIds']/string">
						<xsl:value-of select="concat(' ', .)"/>
					</xsl:for-each>
				</xsl:variable>
				<xsl:value-of select="normalize-space($idrefs)"/>
			</PartyIds>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:PartyPreferenceContest" match="*[string = 'BallotDefinition.PartyPreferenceContest' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="$set_type">
			<xsl:attribute name="xsi:type">PartyPreferenceContest</xsl:attribute>
		</xsl:if>
		<xsl:call-template name="cdf:ControllingContest">
			<xsl:with-param name="set_type" select="false()"/>
		</xsl:call-template>
	</xsl:template>
	<xsl:template name="cdf:PartyRegistration" match="*[string = 'BallotDefinition.PartyRegistration' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="boolean(*[@key = 'Count'])">
			<Count>
				<xsl:value-of select="*[@key = 'Count']"/>
			</Count>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'PartyId'])">
			<PartyId>
				<xsl:value-of select="*[@key = 'PartyId']"/>
			</PartyId>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:Person" match="*[string = 'BallotDefinition.Person' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:attribute name="ObjectId">
			<xsl:value-of select="string[@key = '@id']"/>
		</xsl:attribute>
		<xsl:if test="boolean(*[@key = 'ContactInformation'])">
			<xsl:for-each select="*[@key = 'ContactInformation']/map">
				<ContactInformation>
					<xsl:apply-templates select="."/>
				</ContactInformation>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'DateOfBirth'])">
			<DateOfBirth>
				<xsl:value-of select="*[@key = 'DateOfBirth']"/>
			</DateOfBirth>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'ExternalIdentifier'])">
			<xsl:for-each select="*[@key = 'ExternalIdentifier']/map">
				<ExternalIdentifier>
					<xsl:apply-templates select="."/>
				</ExternalIdentifier>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'FirstName'])">
			<FirstName>
				<xsl:value-of select="*[@key = 'FirstName']"/>
			</FirstName>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'FullName'])">
			<FullName>
				<xsl:apply-templates select="*[@key = 'FullName']"/>
			</FullName>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Gender'])">
			<Gender>
				<xsl:value-of select="*[@key = 'Gender']"/>
			</Gender>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'LastName'])">
			<LastName>
				<xsl:value-of select="*[@key = 'LastName']"/>
			</LastName>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'MiddleName'])">
			<xsl:for-each select="*[@key = 'MiddleName']/string">
				<MiddleName>
					<xsl:value-of select="."/>
				</MiddleName>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Nickname'])">
			<Nickname>
				<xsl:value-of select="*[@key = 'Nickname']"/>
			</Nickname>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'PartyId'])">
			<PartyId>
				<xsl:value-of select="*[@key = 'PartyId']"/>
			</PartyId>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Prefix'])">
			<Prefix>
				<xsl:value-of select="*[@key = 'Prefix']"/>
			</Prefix>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Profession'])">
			<Profession>
				<xsl:apply-templates select="*[@key = 'Profession']"/>
			</Profession>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Suffix'])">
			<Suffix>
				<xsl:value-of select="*[@key = 'Suffix']"/>
			</Suffix>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Title'])">
			<Title>
				<xsl:apply-templates select="*[@key = 'Title']"/>
			</Title>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:PhysicalContest" match="*[string = 'BallotDefinition.PhysicalContest' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="boolean(*[@key = 'BallotFormatId'])">
			<BallotFormatId>
				<xsl:value-of select="*[@key = 'BallotFormatId']"/>
			</BallotFormatId>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Extent'])">
			<xsl:for-each select="*[@key = 'Extent']/map">
				<Extent>
					<xsl:apply-templates select="."/>
				</Extent>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'FiducialMark'])">
			<xsl:for-each select="*[@key = 'FiducialMark']/map">
				<FiducialMark>
					<xsl:apply-templates select="."/>
				</FiducialMark>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'PhysicalContestOption'])">
			<xsl:for-each select="*[@key = 'PhysicalContestOption']/map">
				<PhysicalContestOption>
					<xsl:apply-templates select="."/>
				</PhysicalContestOption>
			</xsl:for-each>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:PhysicalContestOption" match="*[string = 'BallotDefinition.PhysicalContestOption' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="boolean(*[@key = 'ContestOptionId'])">
			<ContestOptionId>
				<xsl:value-of select="*[@key = 'ContestOptionId']"/>
			</ContestOptionId>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'OptionPosition'])">
			<xsl:for-each select="*[@key = 'OptionPosition']/map">
				<OptionPosition>
					<xsl:apply-templates select="."/>
				</OptionPosition>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'WriteInPosition'])">
			<xsl:for-each select="*[@key = 'WriteInPosition']/map">
				<WriteInPosition>
					<xsl:apply-templates select="."/>
				</WriteInPosition>
			</xsl:for-each>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:ReportingUnit" match="*[string = 'BallotDefinition.ReportingUnit' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="$set_type">
			<xsl:attribute name="xsi:type">ReportingUnit</xsl:attribute>
		</xsl:if>
		<xsl:call-template name="cdf:GpUnit">
			<xsl:with-param name="set_type" select="false()"/>
		</xsl:call-template>
		<xsl:if test="boolean(*[@key = 'AuthorityIds'])">
			<AuthorityIds>
				<xsl:variable name="idrefs">
					<xsl:for-each select="*[@key = 'AuthorityIds']/string">
						<xsl:value-of select="concat(' ', .)"/>
					</xsl:for-each>
				</xsl:variable>
				<xsl:value-of select="normalize-space($idrefs)"/>
			</AuthorityIds>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'ContactInformation'])">
			<ContactInformation>
				<xsl:apply-templates select="*[@key = 'ContactInformation']"/>
			</ContactInformation>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'ElectionAdministration'])">
			<ElectionAdministration>
				<xsl:apply-templates select="*[@key = 'ElectionAdministration']"/>
			</ElectionAdministration>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'IsDistricted'])">
			<IsDistricted>
				<xsl:value-of select="*[@key = 'IsDistricted']"/>
			</IsDistricted>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'IsMailOnly'])">
			<IsMailOnly>
				<xsl:value-of select="*[@key = 'IsMailOnly']"/>
			</IsMailOnly>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Number'])">
			<Number>
				<xsl:value-of select="*[@key = 'Number']"/>
			</Number>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'PartyRegistration'])">
			<xsl:for-each select="*[@key = 'PartyRegistration']/map">
				<PartyRegistration>
					<xsl:apply-templates select="."/>
				</PartyRegistration>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'SpatialDimension'])">
			<SpatialDimension>
				<xsl:apply-templates select="*[@key = 'SpatialDimension']"/>
			</SpatialDimension>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'TotalSubUnits'])">
			<TotalSubUnits>
				<xsl:value-of select="*[@key = 'TotalSubUnits']"/>
			</TotalSubUnits>
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
		<xsl:if test="boolean(*[@key = 'VotersRegistered'])">
			<VotersRegistered>
				<xsl:value-of select="*[@key = 'VotersRegistered']"/>
			</VotersRegistered>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:RetentionContest" match="*[string = 'BallotDefinition.RetentionContest' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="$set_type">
			<xsl:attribute name="xsi:type">RetentionContest</xsl:attribute>
		</xsl:if>
		<xsl:call-template name="cdf:BallotMeasureContest">
			<xsl:with-param name="set_type" select="false()"/>
		</xsl:call-template>
		<xsl:if test="boolean(*[@key = 'CandidateId'])">
			<CandidateId>
				<xsl:value-of select="*[@key = 'CandidateId']"/>
			</CandidateId>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'OfficeId'])">
			<OfficeId>
				<xsl:value-of select="*[@key = 'OfficeId']"/>
			</OfficeId>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:Schedule" match="*[string = 'BallotDefinition.Schedule' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="boolean(*[@key = 'Label'])">
			<xsl:attribute name="Label">
				<xsl:value-of select="*[@key = 'Label']"/>
			</xsl:attribute>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Hours'])">
			<xsl:for-each select="*[@key = 'Hours']/map">
				<Hours>
					<xsl:apply-templates select="."/>
				</Hours>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'IsOnlyByAppointment'])">
			<IsOnlyByAppointment>
				<xsl:value-of select="*[@key = 'IsOnlyByAppointment']"/>
			</IsOnlyByAppointment>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'IsOrByAppointment'])">
			<IsOrByAppointment>
				<xsl:value-of select="*[@key = 'IsOrByAppointment']"/>
			</IsOrByAppointment>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'IsSubjectToChange'])">
			<IsSubjectToChange>
				<xsl:value-of select="*[@key = 'IsSubjectToChange']"/>
			</IsSubjectToChange>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'StartDate'])">
			<StartDate>
				<xsl:value-of select="*[@key = 'StartDate']"/>
			</StartDate>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'EndDate'])">
			<EndDate>
				<xsl:value-of select="*[@key = 'EndDate']"/>
			</EndDate>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:Shape" match="*[string = 'BallotDefinition.Shape' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:attribute name="ObjectId">
			<xsl:value-of select="string[@key = '@id']"/>
		</xsl:attribute>
		<xsl:if test="boolean(*[@key = 'FillColor'])">
			<FillColor>
				<xsl:value-of select="*[@key = 'FillColor']"/>
			</FillColor>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'ShapeType'])">
			<ShapeType>
				<xsl:value-of select="*[@key = 'ShapeType']"/>
			</ShapeType>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'StrokeColor'])">
			<StrokeColor>
				<xsl:value-of select="*[@key = 'StrokeColor']"/>
			</StrokeColor>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'StrokeWidth'])">
			<StrokeWidth>
				<xsl:value-of select="*[@key = 'StrokeWidth']"/>
			</StrokeWidth>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:SpatialDimension" match="*[string = 'BallotDefinition.SpatialDimension' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="boolean(*[@key = 'MapUri'])">
			<xsl:for-each select="*[@key = 'MapUri']/map">
				<MapUri>
					<xsl:apply-templates select="."/>
				</MapUri>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'SpatialExtent'])">
			<SpatialExtent>
				<xsl:apply-templates select="*[@key = 'SpatialExtent']"/>
			</SpatialExtent>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:SpatialExtent" match="*[string = 'BallotDefinition.SpatialExtent' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="boolean(*[@key = 'Coordinates'])">
			<Coordinates>
				<xsl:value-of select="*[@key = 'Coordinates']"/>
			</Coordinates>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Format'])">
			<Format>
				<xsl:value-of select="*[@key = 'Format']"/>
			</Format>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:StraightPartyContest" match="*[string = 'BallotDefinition.StraightPartyContest' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="$set_type">
			<xsl:attribute name="xsi:type">StraightPartyContest</xsl:attribute>
		</xsl:if>
		<xsl:call-template name="cdf:ControllingContest">
			<xsl:with-param name="set_type" select="false()"/>
		</xsl:call-template>
		<xsl:if test="boolean(*[@key = 'OtherStraightPartyRuleset'])">
			<OtherStraightPartyRuleset>
				<xsl:value-of select="*[@key = 'OtherStraightPartyRuleset']"/>
			</OtherStraightPartyRuleset>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'StraightPartyRuleset'])">
			<StraightPartyRuleset>
				<xsl:value-of select="*[@key = 'StraightPartyRuleset']"/>
			</StraightPartyRuleset>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:Term" match="*[string = 'BallotDefinition.Term' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="boolean(*[@key = 'Label'])">
			<xsl:attribute name="Label">
				<xsl:value-of select="*[@key = 'Label']"/>
			</xsl:attribute>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'StartDate'])">
			<StartDate>
				<xsl:value-of select="*[@key = 'StartDate']"/>
			</StartDate>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'EndDate'])">
			<EndDate>
				<xsl:value-of select="*[@key = 'EndDate']"/>
			</EndDate>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Type'])">
			<Type>
				<xsl:value-of select="*[@key = 'Type']"/>
			</Type>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:WriteInPosition" match="*[string = 'BallotDefinition.WriteInPosition' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="$set_type">
			<xsl:attribute name="xsi:type">WriteInPosition</xsl:attribute>
		</xsl:if>
		<xsl:call-template name="cdf:BoundedObject">
			<xsl:with-param name="set_type" select="false()"/>
		</xsl:call-template>
		<xsl:if test="boolean(*[@key = 'SelectionRequired'])">
			<SelectionRequired>
				<xsl:value-of select="*[@key = 'SelectionRequired']"/>
			</SelectionRequired>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:mCDFArea" match="*[string = 'BallotDefinition.mCDFArea' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="$set_type">
			<xsl:attribute name="xsi:type">mCDFArea</xsl:attribute>
		</xsl:if>
		<xsl:call-template name="cdf:BoundedObject">
			<xsl:with-param name="set_type" select="false()"/>
		</xsl:call-template>
		<xsl:if test="boolean(*[@key = 'Symbology'])">
			<Symbology>
				<xsl:value-of select="*[@key = 'Symbology']"/>
			</Symbology>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>