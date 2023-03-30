<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/2005/xpath-functions" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:cdf="http://itl.nist.gov/ns/voting/1500-100/v2" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:math="http://www.w3.org/2005/xpath-functions/math" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:xhtml="http://www.w3.org/1999/xhtml" xmlns:err="http://www.w3.org/2005/xqt-errors" exclude-result-prefixes="array cdf fn map math xhtml err xs xsi" version="3.0">
	<xsl:output method="text" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:import-schema namespace="http://itl.nist.gov/ns/voting/1500-100/v2" schema-location="https://raw.githubusercontent.com/usnistgov/ElectionResultsReporting/version2/NIST_V2_election_results_reporting.xsd"/>
	<xsl:template match="*|/" priority="-9">
		<!-- do nothing -->
	</xsl:template>
	<xsl:template match="/" name="xsl:initial-template">
		<xsl:variable name="json">
			<map>
				<xsl:apply-templates/>
			</map>
		</xsl:variable>
		<xsl:value-of select="xml-to-json($json)"/>
	</xsl:template>
	<xsl:template name="cdf:AnnotatedString" match="element(*, cdf:AnnotatedString)">
		<xsl:param name="set_type" select="false()"/>
		<xsl:where-populated>
			<string key="Annotation">
				<xsl:value-of select="@Annotation"/>
			</string>
		</xsl:where-populated>
		<string key="Content">
			<xsl:value-of select="."/>
		</string>
		<xsl:if test="not($set_type)">
			<string key="@type">ElectionResults.AnnotatedString</string>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:AnnotatedUri" match="element(*, cdf:AnnotatedUri)">
		<xsl:param name="set_type" select="false()"/>
		<xsl:where-populated>
			<string key="Annotation">
				<xsl:value-of select="@Annotation"/>
			</string>
		</xsl:where-populated>
		<string key="Content">
			<xsl:value-of select="."/>
		</string>
		<xsl:if test="not($set_type)">
			<string key="@type">ElectionResults.AnnotatedUri</string>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:BallotCounts" match="element(*, cdf:BallotCounts)">
		<xsl:param name="set_type" select="false()"/>
		<xsl:where-populated>
			<number key="BallotsCast">
				<xsl:value-of select="cdf:BallotsCast"/>
			</number>
		</xsl:where-populated>
		<xsl:where-populated>
			<number key="BallotsOutstanding">
				<xsl:value-of select="cdf:BallotsOutstanding"/>
			</number>
		</xsl:where-populated>
		<xsl:where-populated>
			<number key="BallotsRejected">
				<xsl:value-of select="cdf:BallotsRejected"/>
			</number>
		</xsl:where-populated>
		<xsl:if test="not($set_type)">
			<string key="@type">ElectionResults.BallotCounts</string>
		</xsl:if>
		<xsl:call-template name="cdf:Counts">
			<xsl:with-param name="set_type" select="true()"/>
		</xsl:call-template>
	</xsl:template>
	<xsl:template name="cdf:BallotMeasureContest" match="element(*, cdf:BallotMeasureContest)" priority="-1">
		<xsl:param name="set_type" select="false()"/>
		<xsl:where-populated>
			<map key="ConStatement">
				<xsl:apply-templates select="cdf:ConStatement"/>
			</map>
		</xsl:where-populated>
		<xsl:where-populated>
			<map key="EffectOfAbstain">
				<xsl:apply-templates select="cdf:EffectOfAbstain"/>
			</map>
		</xsl:where-populated>
		<xsl:where-populated>
			<map key="FullText">
				<xsl:apply-templates select="cdf:FullText"/>
			</map>
		</xsl:where-populated>
		<xsl:where-populated>
			<array key="InfoUri">
				<xsl:for-each select="cdf:InfoUri">
					<map>
						<xsl:apply-templates select="."/>
					</map>
				</xsl:for-each>
			</array>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="OtherType">
				<xsl:value-of select="cdf:OtherType"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<map key="PassageThreshold">
				<xsl:apply-templates select="cdf:PassageThreshold"/>
			</map>
		</xsl:where-populated>
		<xsl:where-populated>
			<map key="ProStatement">
				<xsl:apply-templates select="cdf:ProStatement"/>
			</map>
		</xsl:where-populated>
		<xsl:where-populated>
			<map key="SummaryText">
				<xsl:apply-templates select="cdf:SummaryText"/>
			</map>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="Type">
				<xsl:value-of select="cdf:Type"/>
			</string>
		</xsl:where-populated>
		<xsl:if test="not($set_type)">
			<string key="@type">ElectionResults.BallotMeasureContest</string>
		</xsl:if>
		<xsl:call-template name="cdf:Contest">
			<xsl:with-param name="set_type" select="true()"/>
		</xsl:call-template>
	</xsl:template>
	<xsl:template name="cdf:BallotMeasureSelection" match="element(*, cdf:BallotMeasureSelection)">
		<xsl:param name="set_type" select="false()"/>
		<xsl:where-populated>
			<array key="ExternalIdentifier">
				<xsl:for-each select="cdf:ExternalIdentifier">
					<map>
						<xsl:apply-templates select="."/>
					</map>
				</xsl:for-each>
			</array>
		</xsl:where-populated>
		<xsl:where-populated>
			<map key="Selection">
				<xsl:apply-templates select="cdf:Selection"/>
			</map>
		</xsl:where-populated>
		<xsl:if test="not($set_type)">
			<string key="@type">ElectionResults.BallotMeasureSelection</string>
		</xsl:if>
		<xsl:call-template name="cdf:ContestSelection">
			<xsl:with-param name="set_type" select="true()"/>
		</xsl:call-template>
	</xsl:template>
	<xsl:template name="cdf:BallotStyle" match="element(*, cdf:BallotStyle)">
		<xsl:param name="set_type" select="false()"/>
		<xsl:where-populated>
			<array key="ExternalIdentifier">
				<xsl:for-each select="cdf:ExternalIdentifier">
					<map>
						<xsl:apply-templates select="."/>
					</map>
				</xsl:for-each>
			</array>
		</xsl:where-populated>
		<xsl:where-populated>
			<array key="GpUnitIds">
				<xsl:for-each select="data(cdf:GpUnitIds)">
					<string>
						<xsl:value-of select="."/>
					</string>
				</xsl:for-each>
			</array>
		</xsl:where-populated>
		<xsl:where-populated>
			<array key="ImageUri">
				<xsl:for-each select="cdf:ImageUri">
					<map>
						<xsl:apply-templates select="."/>
					</map>
				</xsl:for-each>
			</array>
		</xsl:where-populated>
		<xsl:where-populated>
			<array key="OrderedContent">
				<xsl:for-each select="cdf:OrderedContent">
					<map>
						<xsl:apply-templates select="."/>
					</map>
				</xsl:for-each>
			</array>
		</xsl:where-populated>
		<xsl:where-populated>
			<array key="PartyIds">
				<xsl:for-each select="data(cdf:PartyIds)">
					<string>
						<xsl:value-of select="."/>
					</string>
				</xsl:for-each>
			</array>
		</xsl:where-populated>
		<xsl:if test="not($set_type)">
			<string key="@type">ElectionResults.BallotStyle</string>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:Candidate" match="element(*, cdf:Candidate)">
		<xsl:param name="set_type" select="false()"/>
		<string key="@id">
			<xsl:value-of select="@ObjectId"/>
		</string>
		<xsl:where-populated>
			<map key="BallotName">
				<xsl:apply-templates select="cdf:BallotName"/>
			</map>
		</xsl:where-populated>
		<xsl:where-populated>
			<map key="CampaignSlogan">
				<xsl:apply-templates select="cdf:CampaignSlogan"/>
			</map>
		</xsl:where-populated>
		<xsl:where-populated>
			<map key="ContactInformation">
				<xsl:apply-templates select="cdf:ContactInformation"/>
			</map>
		</xsl:where-populated>
		<xsl:where-populated>
			<array key="ExternalIdentifier">
				<xsl:for-each select="cdf:ExternalIdentifier">
					<map>
						<xsl:apply-templates select="."/>
					</map>
				</xsl:for-each>
			</array>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="FileDate">
				<xsl:value-of select="cdf:FileDate"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<boolean key="IsIncumbent">
				<xsl:value-of select="cdf:IsIncumbent"/>
			</boolean>
		</xsl:where-populated>
		<xsl:where-populated>
			<boolean key="IsTopTicket">
				<xsl:value-of select="cdf:IsTopTicket"/>
			</boolean>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="PartyId">
				<xsl:value-of select="cdf:PartyId"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="PersonId">
				<xsl:value-of select="cdf:PersonId"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="PostElectionStatus">
				<xsl:value-of select="cdf:PostElectionStatus"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="PreElectionStatus">
				<xsl:value-of select="cdf:PreElectionStatus"/>
			</string>
		</xsl:where-populated>
		<xsl:if test="not($set_type)">
			<string key="@type">ElectionResults.Candidate</string>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:CandidateContest" match="element(*, cdf:CandidateContest)">
		<xsl:param name="set_type" select="false()"/>
		<xsl:where-populated>
			<number key="NumberElected">
				<xsl:value-of select="cdf:NumberElected"/>
			</number>
		</xsl:where-populated>
		<xsl:where-populated>
			<number key="NumberRunoff">
				<xsl:value-of select="cdf:NumberRunoff"/>
			</number>
		</xsl:where-populated>
		<xsl:where-populated>
			<array key="OfficeIds">
				<xsl:for-each select="data(cdf:OfficeIds)">
					<string>
						<xsl:value-of select="."/>
					</string>
				</xsl:for-each>
			</array>
		</xsl:where-populated>
		<xsl:where-populated>
			<array key="PrimaryPartyIds">
				<xsl:for-each select="data(cdf:PrimaryPartyIds)">
					<string>
						<xsl:value-of select="."/>
					</string>
				</xsl:for-each>
			</array>
		</xsl:where-populated>
		<xsl:where-populated>
			<number key="VotesAllowed">
				<xsl:value-of select="cdf:VotesAllowed"/>
			</number>
		</xsl:where-populated>
		<xsl:if test="not($set_type)">
			<string key="@type">ElectionResults.CandidateContest</string>
		</xsl:if>
		<xsl:call-template name="cdf:Contest">
			<xsl:with-param name="set_type" select="true()"/>
		</xsl:call-template>
	</xsl:template>
	<xsl:template name="cdf:CandidateSelection" match="element(*, cdf:CandidateSelection)">
		<xsl:param name="set_type" select="false()"/>
		<xsl:where-populated>
			<array key="CandidateIds">
				<xsl:for-each select="data(cdf:CandidateIds)">
					<string>
						<xsl:value-of select="."/>
					</string>
				</xsl:for-each>
			</array>
		</xsl:where-populated>
		<xsl:where-populated>
			<array key="EndorsementPartyIds">
				<xsl:for-each select="data(cdf:EndorsementPartyIds)">
					<string>
						<xsl:value-of select="."/>
					</string>
				</xsl:for-each>
			</array>
		</xsl:where-populated>
		<xsl:where-populated>
			<boolean key="IsWriteIn">
				<xsl:value-of select="cdf:IsWriteIn"/>
			</boolean>
		</xsl:where-populated>
		<xsl:if test="not($set_type)">
			<string key="@type">ElectionResults.CandidateSelection</string>
		</xsl:if>
		<xsl:call-template name="cdf:ContestSelection">
			<xsl:with-param name="set_type" select="true()"/>
		</xsl:call-template>
	</xsl:template>
	<xsl:template name="cdf:Coalition" match="element(*, cdf:Coalition)">
		<xsl:param name="set_type" select="false()"/>
		<xsl:where-populated>
			<array key="ContestIds">
				<xsl:for-each select="data(cdf:ContestIds)">
					<string>
						<xsl:value-of select="."/>
					</string>
				</xsl:for-each>
			</array>
		</xsl:where-populated>
		<xsl:where-populated>
			<array key="PartyIds">
				<xsl:for-each select="data(cdf:PartyIds)">
					<string>
						<xsl:value-of select="."/>
					</string>
				</xsl:for-each>
			</array>
		</xsl:where-populated>
		<xsl:if test="not($set_type)">
			<string key="@type">ElectionResults.Coalition</string>
		</xsl:if>
		<xsl:call-template name="cdf:Party">
			<xsl:with-param name="set_type" select="true()"/>
		</xsl:call-template>
	</xsl:template>
	<xsl:template name="cdf:ContactInformation" match="element(*, cdf:ContactInformation)">
		<xsl:param name="set_type" select="false()"/>
		<xsl:where-populated>
			<array key="AddressLine">
				<xsl:for-each select="cdf:AddressLine">
					<string>
						<xsl:value-of select="."/>
					</string>
				</xsl:for-each>
			</array>
		</xsl:where-populated>
		<xsl:where-populated>
			<map key="Directions">
				<xsl:apply-templates select="cdf:Directions"/>
			</map>
		</xsl:where-populated>
		<xsl:where-populated>
			<array key="Email">
				<xsl:for-each select="cdf:Email">
					<map>
						<xsl:apply-templates select="."/>
					</map>
				</xsl:for-each>
			</array>
		</xsl:where-populated>
		<xsl:where-populated>
			<array key="Fax">
				<xsl:for-each select="cdf:Fax">
					<map>
						<xsl:apply-templates select="."/>
					</map>
				</xsl:for-each>
			</array>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="Label">
				<xsl:value-of select="@Label"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<map key="LatLng">
				<xsl:apply-templates select="cdf:LatLng"/>
			</map>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="Name">
				<xsl:value-of select="cdf:Name"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<array key="Phone">
				<xsl:for-each select="cdf:Phone">
					<map>
						<xsl:apply-templates select="."/>
					</map>
				</xsl:for-each>
			</array>
		</xsl:where-populated>
		<xsl:where-populated>
			<array key="Schedule">
				<xsl:for-each select="cdf:Schedule">
					<map>
						<xsl:apply-templates select="."/>
					</map>
				</xsl:for-each>
			</array>
		</xsl:where-populated>
		<xsl:where-populated>
			<array key="Uri">
				<xsl:for-each select="cdf:Uri">
					<map>
						<xsl:apply-templates select="."/>
					</map>
				</xsl:for-each>
			</array>
		</xsl:where-populated>
		<xsl:if test="not($set_type)">
			<string key="@type">ElectionResults.ContactInformation</string>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:Contest" match="element(*, cdf:Contest)" priority="-1">
		<xsl:param name="set_type" select="false()"/>
		<string key="@id">
			<xsl:value-of select="@ObjectId"/>
		</string>
		<xsl:where-populated>
			<string key="Abbreviation">
				<xsl:value-of select="cdf:Abbreviation"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<map key="BallotSubTitle">
				<xsl:apply-templates select="cdf:BallotSubTitle"/>
			</map>
		</xsl:where-populated>
		<xsl:where-populated>
			<map key="BallotTitle">
				<xsl:apply-templates select="cdf:BallotTitle"/>
			</map>
		</xsl:where-populated>
		<xsl:where-populated>
			<array key="ContestSelection">
				<xsl:for-each select="cdf:ContestSelection">
					<map>
						<xsl:apply-templates select="."/>
					</map>
				</xsl:for-each>
			</array>
		</xsl:where-populated>
		<xsl:where-populated>
			<array key="CountStatus">
				<xsl:for-each select="cdf:CountStatus">
					<map>
						<xsl:apply-templates select="."/>
					</map>
				</xsl:for-each>
			</array>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="ElectionDistrictId">
				<xsl:value-of select="cdf:ElectionDistrictId"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<array key="ExternalIdentifier">
				<xsl:for-each select="cdf:ExternalIdentifier">
					<map>
						<xsl:apply-templates select="."/>
					</map>
				</xsl:for-each>
			</array>
		</xsl:where-populated>
		<xsl:where-populated>
			<boolean key="HasRotation">
				<xsl:value-of select="cdf:HasRotation"/>
			</boolean>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="Name">
				<xsl:value-of select="cdf:Name"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<array key="OtherCounts">
				<xsl:for-each select="cdf:OtherCounts">
					<map>
						<xsl:apply-templates select="."/>
					</map>
				</xsl:for-each>
			</array>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="OtherVoteVariation">
				<xsl:value-of select="cdf:OtherVoteVariation"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<number key="SequenceOrder">
				<xsl:value-of select="cdf:SequenceOrder"/>
			</number>
		</xsl:where-populated>
		<xsl:where-populated>
			<number key="SubUnitsReported">
				<xsl:value-of select="cdf:SubUnitsReported"/>
			</number>
		</xsl:where-populated>
		<xsl:where-populated>
			<number key="TotalSubUnits">
				<xsl:value-of select="cdf:TotalSubUnits"/>
			</number>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="VoteVariation">
				<xsl:value-of select="cdf:VoteVariation"/>
			</string>
		</xsl:where-populated>
		<xsl:if test="not($set_type)">
			<string key="@type">ElectionResults.Contest</string>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:ContestSelection" match="element(*, cdf:ContestSelection)" priority="-1">
		<xsl:param name="set_type" select="false()"/>
		<string key="@id">
			<xsl:value-of select="@ObjectId"/>
		</string>
		<xsl:where-populated>
			<number key="SequenceOrder">
				<xsl:value-of select="cdf:SequenceOrder"/>
			</number>
		</xsl:where-populated>
		<xsl:where-populated>
			<array key="VoteCounts">
				<xsl:for-each select="cdf:VoteCounts">
					<map>
						<xsl:apply-templates select="."/>
					</map>
				</xsl:for-each>
			</array>
		</xsl:where-populated>
		<xsl:if test="not($set_type)">
			<string key="@type">ElectionResults.ContestSelection</string>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:CountStatus" match="element(*, cdf:CountStatus)">
		<xsl:param name="set_type" select="false()"/>
		<xsl:where-populated>
			<string key="OtherType">
				<xsl:value-of select="cdf:OtherType"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="Status">
				<xsl:value-of select="cdf:Status"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="Type">
				<xsl:value-of select="cdf:Type"/>
			</string>
		</xsl:where-populated>
		<xsl:if test="not($set_type)">
			<string key="@type">ElectionResults.CountStatus</string>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:Counts" match="element(*, cdf:Counts)" priority="-1">
		<xsl:param name="set_type" select="false()"/>
		<xsl:where-populated>
			<map key="DeviceClass">
				<xsl:apply-templates select="cdf:DeviceClass"/>
			</map>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="GpUnitId">
				<xsl:value-of select="cdf:GpUnitId"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<boolean key="IsSuppressedForPrivacy">
				<xsl:value-of select="cdf:IsSuppressedForPrivacy"/>
			</boolean>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="OtherType">
				<xsl:value-of select="cdf:OtherType"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<number key="Round">
				<xsl:value-of select="cdf:Round"/>
			</number>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="Type">
				<xsl:value-of select="cdf:Type"/>
			</string>
		</xsl:where-populated>
		<xsl:if test="not($set_type)">
			<string key="@type">ElectionResults.Counts</string>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:DeviceClass" match="element(*, cdf:DeviceClass)">
		<xsl:param name="set_type" select="false()"/>
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
			<string key="OtherType">
				<xsl:value-of select="cdf:OtherType"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="Type">
				<xsl:value-of select="cdf:Type"/>
			</string>
		</xsl:where-populated>
		<xsl:if test="not($set_type)">
			<string key="@type">ElectionResults.DeviceClass</string>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:Election" match="element(*, cdf:Election)">
		<xsl:param name="set_type" select="false()"/>
		<xsl:where-populated>
			<array key="BallotCounts">
				<xsl:for-each select="cdf:BallotCounts">
					<map>
						<xsl:apply-templates select="."/>
					</map>
				</xsl:for-each>
			</array>
		</xsl:where-populated>
		<xsl:where-populated>
			<array key="BallotStyle">
				<xsl:for-each select="cdf:BallotStyle">
					<map>
						<xsl:apply-templates select="."/>
					</map>
				</xsl:for-each>
			</array>
		</xsl:where-populated>
		<xsl:where-populated>
			<array key="Candidate">
				<xsl:for-each select="cdf:Candidate">
					<map>
						<xsl:apply-templates select="."/>
					</map>
				</xsl:for-each>
			</array>
		</xsl:where-populated>
		<xsl:where-populated>
			<map key="ContactInformation">
				<xsl:apply-templates select="cdf:ContactInformation"/>
			</map>
		</xsl:where-populated>
		<xsl:where-populated>
			<array key="Contest">
				<xsl:for-each select="cdf:Contest">
					<map>
						<xsl:apply-templates select="."/>
					</map>
				</xsl:for-each>
			</array>
		</xsl:where-populated>
		<xsl:where-populated>
			<array key="CountStatus">
				<xsl:for-each select="cdf:CountStatus">
					<map>
						<xsl:apply-templates select="."/>
					</map>
				</xsl:for-each>
			</array>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="ElectionScopeId">
				<xsl:value-of select="cdf:ElectionScopeId"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="EndDate">
				<xsl:value-of select="cdf:EndDate"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<array key="ExternalIdentifier">
				<xsl:for-each select="cdf:ExternalIdentifier">
					<map>
						<xsl:apply-templates select="."/>
					</map>
				</xsl:for-each>
			</array>
		</xsl:where-populated>
		<xsl:where-populated>
			<map key="Name">
				<xsl:apply-templates select="cdf:Name"/>
			</map>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="OtherType">
				<xsl:value-of select="cdf:OtherType"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="StartDate">
				<xsl:value-of select="cdf:StartDate"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="Type">
				<xsl:value-of select="cdf:Type"/>
			</string>
		</xsl:where-populated>
		<xsl:if test="not($set_type)">
			<string key="@type">ElectionResults.Election</string>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:ElectionAdministration" match="element(*, cdf:ElectionAdministration)">
		<xsl:param name="set_type" select="false()"/>
		<xsl:where-populated>
			<map key="ContactInformation">
				<xsl:apply-templates select="cdf:ContactInformation"/>
			</map>
		</xsl:where-populated>
		<xsl:where-populated>
			<array key="ElectionOfficialPersonIds">
				<xsl:for-each select="data(cdf:ElectionOfficialPersonIds)">
					<string>
						<xsl:value-of select="."/>
					</string>
				</xsl:for-each>
			</array>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="Name">
				<xsl:value-of select="cdf:Name"/>
			</string>
		</xsl:where-populated>
		<xsl:if test="not($set_type)">
			<string key="@type">ElectionResults.ElectionAdministration</string>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:ElectionReport" match="element(*, cdf:ElectionReport)">
		<xsl:param name="set_type" select="false()"/>
		<xsl:where-populated>
			<array key="Election">
				<xsl:for-each select="cdf:Election">
					<map>
						<xsl:apply-templates select="."/>
					</map>
				</xsl:for-each>
			</array>
		</xsl:where-populated>
		<xsl:where-populated>
			<array key="ExternalIdentifier">
				<xsl:for-each select="cdf:ExternalIdentifier">
					<map>
						<xsl:apply-templates select="."/>
					</map>
				</xsl:for-each>
			</array>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="Format">
				<xsl:value-of select="cdf:Format"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="GeneratedDate">
				<xsl:value-of select="cdf:GeneratedDate"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<array key="GpUnit">
				<xsl:for-each select="cdf:GpUnit">
					<map>
						<xsl:apply-templates select="."/>
					</map>
				</xsl:for-each>
			</array>
		</xsl:where-populated>
		<xsl:where-populated>
			<array key="Header">
				<xsl:for-each select="cdf:Header">
					<map>
						<xsl:apply-templates select="."/>
					</map>
				</xsl:for-each>
			</array>
		</xsl:where-populated>
		<xsl:where-populated>
			<boolean key="IsTest">
				<xsl:value-of select="cdf:IsTest"/>
			</boolean>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="Issuer">
				<xsl:value-of select="cdf:Issuer"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="IssuerAbbreviation">
				<xsl:value-of select="cdf:IssuerAbbreviation"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="Notes">
				<xsl:value-of select="cdf:Notes"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<array key="Office">
				<xsl:for-each select="cdf:Office">
					<map>
						<xsl:apply-templates select="."/>
					</map>
				</xsl:for-each>
			</array>
		</xsl:where-populated>
		<xsl:where-populated>
			<array key="OfficeGroup">
				<xsl:for-each select="cdf:OfficeGroup">
					<map>
						<xsl:apply-templates select="."/>
					</map>
				</xsl:for-each>
			</array>
		</xsl:where-populated>
		<xsl:where-populated>
			<array key="Party">
				<xsl:for-each select="cdf:Party">
					<map>
						<xsl:apply-templates select="."/>
					</map>
				</xsl:for-each>
			</array>
		</xsl:where-populated>
		<xsl:where-populated>
			<array key="Person">
				<xsl:for-each select="cdf:Person">
					<map>
						<xsl:apply-templates select="."/>
					</map>
				</xsl:for-each>
			</array>
		</xsl:where-populated>
		<xsl:where-populated>
			<number key="SequenceEnd">
				<xsl:value-of select="cdf:SequenceEnd"/>
			</number>
		</xsl:where-populated>
		<xsl:where-populated>
			<number key="SequenceStart">
				<xsl:value-of select="cdf:SequenceStart"/>
			</number>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="Status">
				<xsl:value-of select="cdf:Status"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="TestType">
				<xsl:value-of select="cdf:TestType"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="VendorApplicationId">
				<xsl:value-of select="cdf:VendorApplicationId"/>
			</string>
		</xsl:where-populated>
		<xsl:if test="not($set_type)">
			<string key="@type">ElectionResults.ElectionReport</string>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:ExternalIdentifier" match="element(*, cdf:ExternalIdentifier)">
		<xsl:param name="set_type" select="false()"/>
		<xsl:where-populated>
			<string key="Label">
				<xsl:value-of select="@Label"/>
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
			<string key="Value">
				<xsl:value-of select="cdf:Value"/>
			</string>
		</xsl:where-populated>
		<xsl:if test="not($set_type)">
			<string key="@type">ElectionResults.ExternalIdentifier</string>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:GpUnit" match="element(*, cdf:GpUnit)" priority="-1">
		<xsl:param name="set_type" select="false()"/>
		<string key="@id">
			<xsl:value-of select="@ObjectId"/>
		</string>
		<xsl:where-populated>
			<array key="ComposingGpUnitIds">
				<xsl:for-each select="data(cdf:ComposingGpUnitIds)">
					<string>
						<xsl:value-of select="."/>
					</string>
				</xsl:for-each>
			</array>
		</xsl:where-populated>
		<xsl:where-populated>
			<array key="ExternalIdentifier">
				<xsl:for-each select="cdf:ExternalIdentifier">
					<map>
						<xsl:apply-templates select="."/>
					</map>
				</xsl:for-each>
			</array>
		</xsl:where-populated>
		<xsl:where-populated>
			<map key="Name">
				<xsl:apply-templates select="cdf:Name"/>
			</map>
		</xsl:where-populated>
		<xsl:if test="not($set_type)">
			<string key="@type">ElectionResults.GpUnit</string>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:Header" match="element(*, cdf:Header)">
		<xsl:param name="set_type" select="false()"/>
		<string key="@id">
			<xsl:value-of select="@ObjectId"/>
		</string>
		<xsl:where-populated>
			<array key="ExternalIdentifier">
				<xsl:for-each select="cdf:ExternalIdentifier">
					<map>
						<xsl:apply-templates select="."/>
					</map>
				</xsl:for-each>
			</array>
		</xsl:where-populated>
		<xsl:where-populated>
			<map key="Name">
				<xsl:apply-templates select="cdf:Name"/>
			</map>
		</xsl:where-populated>
		<xsl:if test="not($set_type)">
			<string key="@type">ElectionResults.Header</string>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:Hours" match="element(*, cdf:Hours)">
		<xsl:param name="set_type" select="false()"/>
		<xsl:where-populated>
			<string key="Day">
				<xsl:value-of select="cdf:Day"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="EndTime">
				<xsl:value-of select="cdf:EndTime"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="Label">
				<xsl:value-of select="@Label"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="StartTime">
				<xsl:value-of select="cdf:StartTime"/>
			</string>
		</xsl:where-populated>
		<xsl:if test="not($set_type)">
			<string key="@type">ElectionResults.Hours</string>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:InternationalizedText" match="element(*, cdf:InternationalizedText)">
		<xsl:param name="set_type" select="false()"/>
		<xsl:where-populated>
			<string key="Label">
				<xsl:value-of select="@Label"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<array key="Text">
				<xsl:for-each select="cdf:Text">
					<map>
						<xsl:apply-templates select="."/>
					</map>
				</xsl:for-each>
			</array>
		</xsl:where-populated>
		<xsl:if test="not($set_type)">
			<string key="@type">ElectionResults.InternationalizedText</string>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:LanguageString" match="element(*, cdf:LanguageString)">
		<xsl:param name="set_type" select="false()"/>
		<string key="Content">
			<xsl:value-of select="."/>
		</string>
		<xsl:where-populated>
			<string key="Language">
				<xsl:value-of select="@Language"/>
			</string>
		</xsl:where-populated>
		<xsl:if test="not($set_type)">
			<string key="@type">ElectionResults.LanguageString</string>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:LatLng" match="element(*, cdf:LatLng)">
		<xsl:param name="set_type" select="false()"/>
		<xsl:where-populated>
			<string key="Label">
				<xsl:value-of select="@Label"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<number key="Latitude">
				<xsl:value-of select="cdf:Latitude"/>
			</number>
		</xsl:where-populated>
		<xsl:where-populated>
			<number key="Longitude">
				<xsl:value-of select="cdf:Longitude"/>
			</number>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="Source">
				<xsl:value-of select="cdf:Source"/>
			</string>
		</xsl:where-populated>
		<xsl:if test="not($set_type)">
			<string key="@type">ElectionResults.LatLng</string>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:Office" match="element(*, cdf:Office)">
		<xsl:param name="set_type" select="false()"/>
		<string key="@id">
			<xsl:value-of select="@ObjectId"/>
		</string>
		<xsl:where-populated>
			<map key="ContactInformation">
				<xsl:apply-templates select="cdf:ContactInformation"/>
			</map>
		</xsl:where-populated>
		<xsl:where-populated>
			<map key="Description">
				<xsl:apply-templates select="cdf:Description"/>
			</map>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="ElectionDistrictId">
				<xsl:value-of select="cdf:ElectionDistrictId"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<array key="ExternalIdentifier">
				<xsl:for-each select="cdf:ExternalIdentifier">
					<map>
						<xsl:apply-templates select="."/>
					</map>
				</xsl:for-each>
			</array>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="FilingDeadline">
				<xsl:value-of select="cdf:FilingDeadline"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<boolean key="IsPartisan">
				<xsl:value-of select="cdf:IsPartisan"/>
			</boolean>
		</xsl:where-populated>
		<xsl:where-populated>
			<map key="Name">
				<xsl:apply-templates select="cdf:Name"/>
			</map>
		</xsl:where-populated>
		<xsl:where-populated>
			<array key="OfficeHolderPersonIds">
				<xsl:for-each select="data(cdf:OfficeHolderPersonIds)">
					<string>
						<xsl:value-of select="."/>
					</string>
				</xsl:for-each>
			</array>
		</xsl:where-populated>
		<xsl:where-populated>
			<map key="Term">
				<xsl:apply-templates select="cdf:Term"/>
			</map>
		</xsl:where-populated>
		<xsl:if test="not($set_type)">
			<string key="@type">ElectionResults.Office</string>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:OfficeGroup" match="element(*, cdf:OfficeGroup)">
		<xsl:param name="set_type" select="false()"/>
		<xsl:where-populated>
			<string key="Label">
				<xsl:value-of select="@Label"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="Name">
				<xsl:value-of select="cdf:Name"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<array key="OfficeIds">
				<xsl:for-each select="data(cdf:OfficeIds)">
					<string>
						<xsl:value-of select="."/>
					</string>
				</xsl:for-each>
			</array>
		</xsl:where-populated>
		<xsl:where-populated>
			<array key="SubOfficeGroup">
				<xsl:for-each select="cdf:SubOfficeGroup">
					<map>
						<xsl:apply-templates select="."/>
					</map>
				</xsl:for-each>
			</array>
		</xsl:where-populated>
		<xsl:if test="not($set_type)">
			<string key="@type">ElectionResults.OfficeGroup</string>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:OrderedContent" match="element(*, cdf:OrderedContent)" priority="-1">
		<xsl:param name="set_type" select="false()"/>
		<xsl:if test="not($set_type)">
			<string key="@type">ElectionResults.OrderedContent</string>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:OrderedContest" match="element(*, cdf:OrderedContest)">
		<xsl:param name="set_type" select="false()"/>
		<xsl:where-populated>
			<string key="ContestId">
				<xsl:value-of select="cdf:ContestId"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<array key="OrderedContestSelectionIds">
				<xsl:for-each select="data(cdf:OrderedContestSelectionIds)">
					<string>
						<xsl:value-of select="."/>
					</string>
				</xsl:for-each>
			</array>
		</xsl:where-populated>
		<xsl:if test="not($set_type)">
			<string key="@type">ElectionResults.OrderedContest</string>
		</xsl:if>
		<xsl:call-template name="cdf:OrderedContent">
			<xsl:with-param name="set_type" select="true()"/>
		</xsl:call-template>
	</xsl:template>
	<xsl:template name="cdf:OrderedHeader" match="element(*, cdf:OrderedHeader)">
		<xsl:param name="set_type" select="false()"/>
		<xsl:where-populated>
			<string key="HeaderId">
				<xsl:value-of select="cdf:HeaderId"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<array key="OrderedContent">
				<xsl:for-each select="cdf:OrderedContent">
					<map>
						<xsl:apply-templates select="."/>
					</map>
				</xsl:for-each>
			</array>
		</xsl:where-populated>
		<xsl:if test="not($set_type)">
			<string key="@type">ElectionResults.OrderedHeader</string>
		</xsl:if>
		<xsl:call-template name="cdf:OrderedContent">
			<xsl:with-param name="set_type" select="true()"/>
		</xsl:call-template>
	</xsl:template>
	<xsl:template name="cdf:OtherCounts" match="element(*, cdf:OtherCounts)">
		<xsl:param name="set_type" select="false()"/>
		<xsl:where-populated>
			<map key="DeviceClass">
				<xsl:apply-templates select="cdf:DeviceClass"/>
			</map>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="GpUnitId">
				<xsl:value-of select="cdf:GpUnitId"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<number key="Overvotes">
				<xsl:value-of select="cdf:Overvotes"/>
			</number>
		</xsl:where-populated>
		<xsl:where-populated>
			<number key="Undervotes">
				<xsl:value-of select="cdf:Undervotes"/>
			</number>
		</xsl:where-populated>
		<xsl:where-populated>
			<number key="WriteIns">
				<xsl:value-of select="cdf:WriteIns"/>
			</number>
		</xsl:where-populated>
		<xsl:if test="not($set_type)">
			<string key="@type">ElectionResults.OtherCounts</string>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:Party" match="element(*, cdf:Party)" priority="-1">
		<xsl:param name="set_type" select="false()"/>
		<string key="@id">
			<xsl:value-of select="@ObjectId"/>
		</string>
		<xsl:where-populated>
			<map key="Abbreviation">
				<xsl:apply-templates select="cdf:Abbreviation"/>
			</map>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="Color">
				<xsl:value-of select="cdf:Color"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<map key="ContactInformation">
				<xsl:apply-templates select="cdf:ContactInformation"/>
			</map>
		</xsl:where-populated>
		<xsl:where-populated>
			<array key="ExternalIdentifier">
				<xsl:for-each select="cdf:ExternalIdentifier">
					<map>
						<xsl:apply-templates select="."/>
					</map>
				</xsl:for-each>
			</array>
		</xsl:where-populated>
		<xsl:where-populated>
			<boolean key="IsRecognizedParty">
				<xsl:value-of select="cdf:IsRecognizedParty"/>
			</boolean>
		</xsl:where-populated>
		<xsl:where-populated>
			<array key="LeaderPersonIds">
				<xsl:for-each select="data(cdf:LeaderPersonIds)">
					<string>
						<xsl:value-of select="."/>
					</string>
				</xsl:for-each>
			</array>
		</xsl:where-populated>
		<xsl:where-populated>
			<array key="LogoUri">
				<xsl:for-each select="cdf:LogoUri">
					<map>
						<xsl:apply-templates select="."/>
					</map>
				</xsl:for-each>
			</array>
		</xsl:where-populated>
		<xsl:where-populated>
			<map key="Name">
				<xsl:apply-templates select="cdf:Name"/>
			</map>
		</xsl:where-populated>
		<xsl:where-populated>
			<array key="PartyScopeGpUnitIds">
				<xsl:for-each select="data(cdf:PartyScopeGpUnitIds)">
					<string>
						<xsl:value-of select="."/>
					</string>
				</xsl:for-each>
			</array>
		</xsl:where-populated>
		<xsl:where-populated>
			<map key="Slogan">
				<xsl:apply-templates select="cdf:Slogan"/>
			</map>
		</xsl:where-populated>
		<xsl:if test="not($set_type)">
			<string key="@type">ElectionResults.Party</string>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:PartyContest" match="element(*, cdf:PartyContest)">
		<xsl:param name="set_type" select="false()"/>
		<xsl:if test="not($set_type)">
			<string key="@type">ElectionResults.PartyContest</string>
		</xsl:if>
		<xsl:call-template name="cdf:Contest">
			<xsl:with-param name="set_type" select="true()"/>
		</xsl:call-template>
	</xsl:template>
	<xsl:template name="cdf:PartyRegistration" match="element(*, cdf:PartyRegistration)">
		<xsl:param name="set_type" select="false()"/>
		<xsl:where-populated>
			<number key="Count">
				<xsl:value-of select="cdf:Count"/>
			</number>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="PartyId">
				<xsl:value-of select="cdf:PartyId"/>
			</string>
		</xsl:where-populated>
		<xsl:if test="not($set_type)">
			<string key="@type">ElectionResults.PartyRegistration</string>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:PartySelection" match="element(*, cdf:PartySelection)">
		<xsl:param name="set_type" select="false()"/>
		<xsl:where-populated>
			<array key="PartyIds">
				<xsl:for-each select="data(cdf:PartyIds)">
					<string>
						<xsl:value-of select="."/>
					</string>
				</xsl:for-each>
			</array>
		</xsl:where-populated>
		<xsl:if test="not($set_type)">
			<string key="@type">ElectionResults.PartySelection</string>
		</xsl:if>
		<xsl:call-template name="cdf:ContestSelection">
			<xsl:with-param name="set_type" select="true()"/>
		</xsl:call-template>
	</xsl:template>
	<xsl:template name="cdf:Person" match="element(*, cdf:Person)">
		<xsl:param name="set_type" select="false()"/>
		<string key="@id">
			<xsl:value-of select="@ObjectId"/>
		</string>
		<xsl:where-populated>
			<array key="ContactInformation">
				<xsl:for-each select="cdf:ContactInformation">
					<map>
						<xsl:apply-templates select="."/>
					</map>
				</xsl:for-each>
			</array>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="DateOfBirth">
				<xsl:value-of select="cdf:DateOfBirth"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<array key="ExternalIdentifier">
				<xsl:for-each select="cdf:ExternalIdentifier">
					<map>
						<xsl:apply-templates select="."/>
					</map>
				</xsl:for-each>
			</array>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="FirstName">
				<xsl:value-of select="cdf:FirstName"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<map key="FullName">
				<xsl:apply-templates select="cdf:FullName"/>
			</map>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="Gender">
				<xsl:value-of select="cdf:Gender"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="LastName">
				<xsl:value-of select="cdf:LastName"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<array key="MiddleName">
				<xsl:for-each select="cdf:MiddleName">
					<string>
						<xsl:value-of select="."/>
					</string>
				</xsl:for-each>
			</array>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="Nickname">
				<xsl:value-of select="cdf:Nickname"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="PartyId">
				<xsl:value-of select="cdf:PartyId"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="Prefix">
				<xsl:value-of select="cdf:Prefix"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<map key="Profession">
				<xsl:apply-templates select="cdf:Profession"/>
			</map>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="Suffix">
				<xsl:value-of select="cdf:Suffix"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<map key="Title">
				<xsl:apply-templates select="cdf:Title"/>
			</map>
		</xsl:where-populated>
		<xsl:if test="not($set_type)">
			<string key="@type">ElectionResults.Person</string>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:ReportingDevice" match="element(*, cdf:ReportingDevice)">
		<xsl:param name="set_type" select="false()"/>
		<xsl:where-populated>
			<map key="DeviceClass">
				<xsl:apply-templates select="cdf:DeviceClass"/>
			</map>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="SerialNumber">
				<xsl:value-of select="cdf:SerialNumber"/>
			</string>
		</xsl:where-populated>
		<xsl:if test="not($set_type)">
			<string key="@type">ElectionResults.ReportingDevice</string>
		</xsl:if>
		<xsl:call-template name="cdf:GpUnit">
			<xsl:with-param name="set_type" select="true()"/>
		</xsl:call-template>
	</xsl:template>
	<xsl:template name="cdf:ReportingUnit" match="element(*, cdf:ReportingUnit)">
		<xsl:param name="set_type" select="false()"/>
		<xsl:where-populated>
			<array key="AuthorityIds">
				<xsl:for-each select="data(cdf:AuthorityIds)">
					<string>
						<xsl:value-of select="."/>
					</string>
				</xsl:for-each>
			</array>
		</xsl:where-populated>
		<xsl:where-populated>
			<map key="ContactInformation">
				<xsl:apply-templates select="cdf:ContactInformation"/>
			</map>
		</xsl:where-populated>
		<xsl:where-populated>
			<array key="CountStatus">
				<xsl:for-each select="cdf:CountStatus">
					<map>
						<xsl:apply-templates select="."/>
					</map>
				</xsl:for-each>
			</array>
		</xsl:where-populated>
		<xsl:where-populated>
			<map key="ElectionAdministration">
				<xsl:apply-templates select="cdf:ElectionAdministration"/>
			</map>
		</xsl:where-populated>
		<xsl:where-populated>
			<boolean key="IsDistricted">
				<xsl:value-of select="cdf:IsDistricted"/>
			</boolean>
		</xsl:where-populated>
		<xsl:where-populated>
			<boolean key="IsMailOnly">
				<xsl:value-of select="cdf:IsMailOnly"/>
			</boolean>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="Number">
				<xsl:value-of select="cdf:Number"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="OtherType">
				<xsl:value-of select="cdf:OtherType"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<array key="PartyRegistration">
				<xsl:for-each select="cdf:PartyRegistration">
					<map>
						<xsl:apply-templates select="."/>
					</map>
				</xsl:for-each>
			</array>
		</xsl:where-populated>
		<xsl:where-populated>
			<map key="SpatialDimension">
				<xsl:apply-templates select="cdf:SpatialDimension"/>
			</map>
		</xsl:where-populated>
		<xsl:where-populated>
			<number key="SubUnitsReported">
				<xsl:value-of select="cdf:SubUnitsReported"/>
			</number>
		</xsl:where-populated>
		<xsl:where-populated>
			<number key="TotalSubUnits">
				<xsl:value-of select="cdf:TotalSubUnits"/>
			</number>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="Type">
				<xsl:value-of select="cdf:Type"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<number key="VotersParticipated">
				<xsl:value-of select="cdf:VotersParticipated"/>
			</number>
		</xsl:where-populated>
		<xsl:where-populated>
			<number key="VotersRegistered">
				<xsl:value-of select="cdf:VotersRegistered"/>
			</number>
		</xsl:where-populated>
		<xsl:if test="not($set_type)">
			<string key="@type">ElectionResults.ReportingUnit</string>
		</xsl:if>
		<xsl:call-template name="cdf:GpUnit">
			<xsl:with-param name="set_type" select="true()"/>
		</xsl:call-template>
	</xsl:template>
	<xsl:template name="cdf:RetentionContest" match="element(*, cdf:RetentionContest)">
		<xsl:param name="set_type" select="false()"/>
		<xsl:where-populated>
			<string key="CandidateId">
				<xsl:value-of select="cdf:CandidateId"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="OfficeId">
				<xsl:value-of select="cdf:OfficeId"/>
			</string>
		</xsl:where-populated>
		<xsl:if test="not($set_type)">
			<string key="@type">ElectionResults.RetentionContest</string>
		</xsl:if>
		<xsl:call-template name="cdf:BallotMeasureContest">
			<xsl:with-param name="set_type" select="true()"/>
		</xsl:call-template>
	</xsl:template>
	<xsl:template name="cdf:Schedule" match="element(*, cdf:Schedule)">
		<xsl:param name="set_type" select="false()"/>
		<xsl:where-populated>
			<string key="EndDate">
				<xsl:value-of select="cdf:EndDate"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<array key="Hours">
				<xsl:for-each select="cdf:Hours">
					<map>
						<xsl:apply-templates select="."/>
					</map>
				</xsl:for-each>
			</array>
		</xsl:where-populated>
		<xsl:where-populated>
			<boolean key="IsOnlyByAppointment">
				<xsl:value-of select="cdf:IsOnlyByAppointment"/>
			</boolean>
		</xsl:where-populated>
		<xsl:where-populated>
			<boolean key="IsOrByAppointment">
				<xsl:value-of select="cdf:IsOrByAppointment"/>
			</boolean>
		</xsl:where-populated>
		<xsl:where-populated>
			<boolean key="IsSubjectToChange">
				<xsl:value-of select="cdf:IsSubjectToChange"/>
			</boolean>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="Label">
				<xsl:value-of select="@Label"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="StartDate">
				<xsl:value-of select="cdf:StartDate"/>
			</string>
		</xsl:where-populated>
		<xsl:if test="not($set_type)">
			<string key="@type">ElectionResults.Schedule</string>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:SpatialDimension" match="element(*, cdf:SpatialDimension)">
		<xsl:param name="set_type" select="false()"/>
		<xsl:where-populated>
			<array key="MapUri">
				<xsl:for-each select="cdf:MapUri">
					<map>
						<xsl:apply-templates select="."/>
					</map>
				</xsl:for-each>
			</array>
		</xsl:where-populated>
		<xsl:where-populated>
			<map key="SpatialExtent">
				<xsl:apply-templates select="cdf:SpatialExtent"/>
			</map>
		</xsl:where-populated>
		<xsl:if test="not($set_type)">
			<string key="@type">ElectionResults.SpatialDimension</string>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:SpatialExtent" match="element(*, cdf:SpatialExtent)">
		<xsl:param name="set_type" select="false()"/>
		<xsl:where-populated>
			<string key="Coordinates">
				<xsl:value-of select="cdf:Coordinates"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="Format">
				<xsl:value-of select="cdf:Format"/>
			</string>
		</xsl:where-populated>
		<xsl:if test="not($set_type)">
			<string key="@type">ElectionResults.SpatialExtent</string>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:Term" match="element(*, cdf:Term)">
		<xsl:param name="set_type" select="false()"/>
		<xsl:where-populated>
			<string key="EndDate">
				<xsl:value-of select="cdf:EndDate"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="Label">
				<xsl:value-of select="@Label"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="StartDate">
				<xsl:value-of select="cdf:StartDate"/>
			</string>
		</xsl:where-populated>
		<xsl:where-populated>
			<string key="Type">
				<xsl:value-of select="cdf:Type"/>
			</string>
		</xsl:where-populated>
		<xsl:if test="not($set_type)">
			<string key="@type">ElectionResults.Term</string>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:VoteCounts" match="element(*, cdf:VoteCounts)">
		<xsl:param name="set_type" select="false()"/>
		<xsl:where-populated>
			<number key="Count">
				<xsl:value-of select="cdf:Count"/>
			</number>
		</xsl:where-populated>
		<xsl:if test="not($set_type)">
			<string key="@type">ElectionResults.VoteCounts</string>
		</xsl:if>
		<xsl:call-template name="cdf:Counts">
			<xsl:with-param name="set_type" select="true()"/>
		</xsl:call-template>
	</xsl:template>
</xsl:stylesheet>
