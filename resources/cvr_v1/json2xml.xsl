<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xml:id="json2xml" xpath-default-namespace="http://www.w3.org/2005/xpath-functions" xmlns="http://itl.nist.gov/ns/voting/1500-103/v1" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:cdf="http://itl.nist.gov/ns/voting/1500-103/v1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:math="http://www.w3.org/2005/xpath-functions/math" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:xhtml="http://www.w3.org/1999/xhtml" xmlns:err="http://www.w3.org/2005/xqt-errors" exclude-result-prefixes="array cdf fn map math xhtml err xs" version="3.0">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<!-- the root node must be XML, meaning the JSON must be nested in XML (not ideal) -->
	<xsl:template name="start" match="root" priority="1">
		<xsl:variable name="xml">
			<CastVoteRecordReport>
				<xsl:apply-templates select="json-to-xml(.)"/>
			</CastVoteRecordReport>
		</xsl:variable>
		<xsl:copy-of select="$xml"/>
	</xsl:template>
	<xsl:template name="cdf:Annotation" match="*[string = 'CVR.Annotation' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="boolean(*[@key = 'AdjudicatorName'])">
			<xsl:for-each select="*[@key = 'AdjudicatorName']/string">
				<AdjudicatorName>
					<xsl:value-of select="."/>
				</AdjudicatorName>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Message'])">
			<xsl:for-each select="*[@key = 'Message']/string">
				<Message>
					<xsl:value-of select="."/>
				</Message>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'TimeStamp'])">
			<TimeStamp>
				<xsl:value-of select="*[@key = 'TimeStamp']"/>
			</TimeStamp>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:BallotMeasureContest" match="*[string = 'CVR.BallotMeasureContest' and string/@key = '@type']" priority="-1">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="$set_type">
			<xsl:attribute name="xsi:type">BallotMeasureContest</xsl:attribute>
		</xsl:if>
		<xsl:call-template name="cdf:Contest">
			<xsl:with-param name="set_type" select="false()"/>
		</xsl:call-template>
	</xsl:template>
	<xsl:template name="cdf:BallotMeasureSelection" match="*[string = 'CVR.BallotMeasureSelection' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="$set_type">
			<xsl:attribute name="xsi:type">BallotMeasureSelection</xsl:attribute>
		</xsl:if>
		<xsl:call-template name="cdf:ContestSelection">
			<xsl:with-param name="set_type" select="false()"/>
		</xsl:call-template>
		<xsl:if test="boolean(*[@key = 'Selection'])">
			<Selection>
				<xsl:value-of select="*[@key = 'Selection']"/>
			</Selection>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:CVR" match="*[string = 'CVR.CVR' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="boolean(*[@key = 'BallotAuditId'])">
			<BallotAuditId>
				<xsl:value-of select="*[@key = 'BallotAuditId']"/>
			</BallotAuditId>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'BallotImage'])">
			<xsl:for-each select="*[@key = 'BallotImage']/map">
				<BallotImage>
					<xsl:apply-templates select="."/>
				</BallotImage>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'BallotPrePrintedId'])">
			<BallotPrePrintedId>
				<xsl:value-of select="*[@key = 'BallotPrePrintedId']"/>
			</BallotPrePrintedId>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'BallotSheetId'])">
			<BallotSheetId>
				<xsl:value-of select="*[@key = 'BallotSheetId']"/>
			</BallotSheetId>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'BallotStyleId'])">
			<BallotStyleId>
				<xsl:value-of select="*[@key = 'BallotStyleId']"/>
			</BallotStyleId>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'BallotStyleUnitId'])">
			<BallotStyleUnitId>
				<xsl:value-of select="*[@key = 'BallotStyleUnitId']"/>
			</BallotStyleUnitId>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'BatchId'])">
			<BatchId>
				<xsl:value-of select="*[@key = 'BatchId']"/>
			</BatchId>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'BatchSequenceId'])">
			<BatchSequenceId>
				<xsl:value-of select="*[@key = 'BatchSequenceId']"/>
			</BatchSequenceId>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'CreatingDeviceId'])">
			<CreatingDeviceId>
				<xsl:value-of select="*[@key = 'CreatingDeviceId']"/>
			</CreatingDeviceId>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'CurrentSnapshotId'])">
			<CurrentSnapshotId>
				<xsl:value-of select="*[@key = 'CurrentSnapshotId']"/>
			</CurrentSnapshotId>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'CVRSnapshot'])">
			<xsl:for-each select="*[@key = 'CVRSnapshot']/map">
				<CVRSnapshot>
					<xsl:apply-templates select="."/>
				</CVRSnapshot>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'ElectionId'])">
			<ElectionId>
				<xsl:value-of select="*[@key = 'ElectionId']"/>
			</ElectionId>
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
		<xsl:if test="boolean(*[@key = 'UniqueId'])">
			<UniqueId>
				<xsl:value-of select="*[@key = 'UniqueId']"/>
			</UniqueId>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:CVRContest" match="*[string = 'CVR.CVRContest' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="boolean(*[@key = 'ContestId'])">
			<ContestId>
				<xsl:value-of select="*[@key = 'ContestId']"/>
			</ContestId>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'CVRContestSelection'])">
			<xsl:for-each select="*[@key = 'CVRContestSelection']/map">
				<CVRContestSelection>
					<xsl:apply-templates select="."/>
				</CVRContestSelection>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Overvotes'])">
			<Overvotes>
				<xsl:value-of select="*[@key = 'Overvotes']"/>
			</Overvotes>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Selections'])">
			<Selections>
				<xsl:value-of select="*[@key = 'Selections']"/>
			</Selections>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Status'])">
			<xsl:for-each select="*[@key = 'Status']/string">
				<Status>
					<xsl:value-of select="."/>
				</Status>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'OtherStatus'])">
			<OtherStatus>
				<xsl:value-of select="*[@key = 'OtherStatus']"/>
			</OtherStatus>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Undervotes'])">
			<Undervotes>
				<xsl:value-of select="*[@key = 'Undervotes']"/>
			</Undervotes>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'WriteIns'])">
			<WriteIns>
				<xsl:value-of select="*[@key = 'WriteIns']"/>
			</WriteIns>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:CVRContestSelection" match="*[string = 'CVR.CVRContestSelection' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="boolean(*[@key = 'ContestSelectionId'])">
			<ContestSelectionId>
				<xsl:value-of select="*[@key = 'ContestSelectionId']"/>
			</ContestSelectionId>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'OptionPosition'])">
			<OptionPosition>
				<xsl:value-of select="*[@key = 'OptionPosition']"/>
			</OptionPosition>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Rank'])">
			<Rank>
				<xsl:value-of select="*[@key = 'Rank']"/>
			</Rank>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'SelectionPosition'])">
			<xsl:for-each select="*[@key = 'SelectionPosition']/map">
				<SelectionPosition>
					<xsl:apply-templates select="."/>
				</SelectionPosition>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Status'])">
			<xsl:for-each select="*[@key = 'Status']/string">
				<Status>
					<xsl:value-of select="."/>
				</Status>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'OtherStatus'])">
			<OtherStatus>
				<xsl:value-of select="*[@key = 'OtherStatus']"/>
			</OtherStatus>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'TotalFractionalVotes'])">
			<TotalFractionalVotes>
				<xsl:value-of select="*[@key = 'TotalFractionalVotes']"/>
			</TotalFractionalVotes>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'TotalNumberVotes'])">
			<TotalNumberVotes>
				<xsl:value-of select="*[@key = 'TotalNumberVotes']"/>
			</TotalNumberVotes>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:CVRSnapshot" match="*[string = 'CVR.CVRSnapshot' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:attribute name="ObjectId">
			<xsl:value-of select="string[@key = '@id']"/>
		</xsl:attribute>
		<xsl:if test="boolean(*[@key = 'Annotation'])">
			<xsl:for-each select="*[@key = 'Annotation']/map">
				<Annotation>
					<xsl:apply-templates select="."/>
				</Annotation>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'CVRContest'])">
			<xsl:for-each select="*[@key = 'CVRContest']/map">
				<CVRContest>
					<xsl:apply-templates select="."/>
				</CVRContest>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Status'])">
			<xsl:for-each select="*[@key = 'Status']/string">
				<Status>
					<xsl:value-of select="."/>
				</Status>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'OtherStatus'])">
			<OtherStatus>
				<xsl:value-of select="*[@key = 'OtherStatus']"/>
			</OtherStatus>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Type'])">
			<Type>
				<xsl:value-of select="*[@key = 'Type']"/>
			</Type>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:CVRWriteIn" match="*[string = 'CVR.CVRWriteIn' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="boolean(*[@key = 'Text'])">
			<Text>
				<xsl:value-of select="*[@key = 'Text']"/>
			</Text>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'WriteInImage'])">
			<WriteInImage>
				<xsl:apply-templates select="*[@key = 'WriteInImage']"/>
			</WriteInImage>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:Candidate" match="*[string = 'CVR.Candidate' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:attribute name="ObjectId">
			<xsl:value-of select="string[@key = '@id']"/>
		</xsl:attribute>
		<xsl:if test="boolean(*[@key = 'Code'])">
			<xsl:for-each select="*[@key = 'Code']/map">
				<Code>
					<xsl:apply-templates select="."/>
				</Code>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Name'])">
			<Name>
				<xsl:value-of select="*[@key = 'Name']"/>
			</Name>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'PartyId'])">
			<PartyId>
				<xsl:value-of select="*[@key = 'PartyId']"/>
			</PartyId>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:CandidateContest" match="*[string = 'CVR.CandidateContest' and string/@key = '@type']">
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
		<xsl:if test="boolean(*[@key = 'PrimaryPartyId'])">
			<PrimaryPartyId>
				<xsl:value-of select="*[@key = 'PrimaryPartyId']"/>
			</PrimaryPartyId>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'VotesAllowed'])">
			<VotesAllowed>
				<xsl:value-of select="*[@key = 'VotesAllowed']"/>
			</VotesAllowed>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:CandidateSelection" match="*[string = 'CVR.CandidateSelection' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="$set_type">
			<xsl:attribute name="xsi:type">CandidateSelection</xsl:attribute>
		</xsl:if>
		<xsl:call-template name="cdf:ContestSelection">
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
		<xsl:if test="boolean(*[@key = 'IsWriteIn'])">
			<IsWriteIn>
				<xsl:value-of select="*[@key = 'IsWriteIn']"/>
			</IsWriteIn>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:CastVoteRecordReport" match="*[string = 'CVR.CastVoteRecordReport' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="boolean(*[@key = 'CVR'])">
			<xsl:for-each select="*[@key = 'CVR']/map">
				<CVR>
					<xsl:apply-templates select="."/>
				</CVR>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Election'])">
			<xsl:for-each select="*[@key = 'Election']/map">
				<Election>
					<xsl:apply-templates select="."/>
				</Election>
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
		<xsl:if test="boolean(*[@key = 'Notes'])">
			<Notes>
				<xsl:value-of select="*[@key = 'Notes']"/>
			</Notes>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Party'])">
			<xsl:for-each select="*[@key = 'Party']/map">
				<Party>
					<xsl:apply-templates select="."/>
				</Party>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'ReportGeneratingDeviceIds'])">
			<ReportGeneratingDeviceIds>
				<xsl:variable name="idrefs">
					<xsl:for-each select="*[@key = 'ReportGeneratingDeviceIds']/string">
						<xsl:value-of select="concat(' ', .)"/>
					</xsl:for-each>
				</xsl:variable>
				<xsl:value-of select="normalize-space($idrefs)"/>
			</ReportGeneratingDeviceIds>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'ReportingDevice'])">
			<xsl:for-each select="*[@key = 'ReportingDevice']/map">
				<ReportingDevice>
					<xsl:apply-templates select="."/>
				</ReportingDevice>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'ReportType'])">
			<xsl:for-each select="*[@key = 'ReportType']/string">
				<ReportType>
					<xsl:value-of select="."/>
				</ReportType>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'OtherReportType'])">
			<OtherReportType>
				<xsl:value-of select="*[@key = 'OtherReportType']"/>
			</OtherReportType>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Version'])">
			<Version>
				<xsl:value-of select="*[@key = 'Version']"/>
			</Version>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:Code" match="*[string = 'CVR.Code' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="boolean(*[@key = 'Label'])">
			<Label>
				<xsl:value-of select="*[@key = 'Label']"/>
			</Label>
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
	<xsl:template name="cdf:Contest" match="*[string = 'CVR.Contest' and string/@key = '@type']" priority="-1">
		<xsl:param name="set_type" select="true()"/>
		<xsl:attribute name="ObjectId">
			<xsl:value-of select="string[@key = '@id']"/>
		</xsl:attribute>
		<xsl:if test="boolean(*[@key = 'Abbreviation'])">
			<Abbreviation>
				<xsl:value-of select="*[@key = 'Abbreviation']"/>
			</Abbreviation>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Code'])">
			<xsl:for-each select="*[@key = 'Code']/map">
				<Code>
					<xsl:apply-templates select="."/>
				</Code>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'ContestSelection'])">
			<xsl:for-each select="*[@key = 'ContestSelection']/map">
				<ContestSelection>
					<xsl:apply-templates select="."/>
				</ContestSelection>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Name'])">
			<Name>
				<xsl:value-of select="*[@key = 'Name']"/>
			</Name>
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
	<xsl:template name="cdf:ContestSelection" match="*[string = 'CVR.ContestSelection' and string/@key = '@type']" priority="-1">
		<xsl:param name="set_type" select="true()"/>
		<xsl:attribute name="ObjectId">
			<xsl:value-of select="string[@key = '@id']"/>
		</xsl:attribute>
		<xsl:if test="boolean(*[@key = 'Code'])">
			<xsl:for-each select="*[@key = 'Code']/map">
				<Code>
					<xsl:apply-templates select="."/>
				</Code>
			</xsl:for-each>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:Election" match="*[string = 'CVR.Election' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:attribute name="ObjectId">
			<xsl:value-of select="string[@key = '@id']"/>
		</xsl:attribute>
		<xsl:if test="boolean(*[@key = 'Candidate'])">
			<xsl:for-each select="*[@key = 'Candidate']/map">
				<Candidate>
					<xsl:apply-templates select="."/>
				</Candidate>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Code'])">
			<xsl:for-each select="*[@key = 'Code']/map">
				<Code>
					<xsl:apply-templates select="."/>
				</Code>
			</xsl:for-each>
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
		<xsl:if test="boolean(*[@key = 'Name'])">
			<Name>
				<xsl:value-of select="*[@key = 'Name']"/>
			</Name>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:File" match="*[string = 'CVR.File' and string/@key = '@type']" priority="-1">
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
	<xsl:template name="cdf:GpUnit" match="*[string = 'CVR.GpUnit' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:attribute name="ObjectId">
			<xsl:value-of select="string[@key = '@id']"/>
		</xsl:attribute>
		<xsl:if test="boolean(*[@key = 'Code'])">
			<xsl:for-each select="*[@key = 'Code']/map">
				<Code>
					<xsl:apply-templates select="."/>
				</Code>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Name'])">
			<Name>
				<xsl:value-of select="*[@key = 'Name']"/>
			</Name>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'ReportingDeviceIds'])">
			<ReportingDeviceIds>
				<xsl:variable name="idrefs">
					<xsl:for-each select="*[@key = 'ReportingDeviceIds']/string">
						<xsl:value-of select="concat(' ', .)"/>
					</xsl:for-each>
				</xsl:variable>
				<xsl:value-of select="normalize-space($idrefs)"/>
			</ReportingDeviceIds>
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
	<xsl:template name="cdf:Hash" match="*[string = 'CVR.Hash' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
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
	<xsl:template name="cdf:Image" match="*[string = 'CVR.Image' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="$set_type">
			<xsl:attribute name="xsi:type">Image</xsl:attribute>
		</xsl:if>
		<xsl:call-template name="cdf:File">
			<xsl:with-param name="set_type" select="false()"/>
		</xsl:call-template>
	</xsl:template>
	<xsl:template name="cdf:ImageData" match="*[string = 'CVR.ImageData' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="boolean(*[@key = 'Hash'])">
			<Hash>
				<xsl:apply-templates select="*[@key = 'Hash']"/>
			</Hash>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Image'])">
			<Image>
				<xsl:apply-templates select="*[@key = 'Image']"/>
			</Image>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Location'])">
			<Location>
				<xsl:value-of select="*[@key = 'Location']"/>
			</Location>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:Party" match="*[string = 'CVR.Party' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:attribute name="ObjectId">
			<xsl:value-of select="string[@key = '@id']"/>
		</xsl:attribute>
		<xsl:if test="boolean(*[@key = 'Abbreviation'])">
			<Abbreviation>
				<xsl:value-of select="*[@key = 'Abbreviation']"/>
			</Abbreviation>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Code'])">
			<xsl:for-each select="*[@key = 'Code']/map">
				<Code>
					<xsl:apply-templates select="."/>
				</Code>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Name'])">
			<Name>
				<xsl:value-of select="*[@key = 'Name']"/>
			</Name>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:PartyContest" match="*[string = 'CVR.PartyContest' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="$set_type">
			<xsl:attribute name="xsi:type">PartyContest</xsl:attribute>
		</xsl:if>
		<xsl:call-template name="cdf:Contest">
			<xsl:with-param name="set_type" select="false()"/>
		</xsl:call-template>
	</xsl:template>
	<xsl:template name="cdf:PartySelection" match="*[string = 'CVR.PartySelection' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="$set_type">
			<xsl:attribute name="xsi:type">PartySelection</xsl:attribute>
		</xsl:if>
		<xsl:call-template name="cdf:ContestSelection">
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
	<xsl:template name="cdf:ReportingDevice" match="*[string = 'CVR.ReportingDevice' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:attribute name="ObjectId">
			<xsl:value-of select="string[@key = '@id']"/>
		</xsl:attribute>
		<xsl:if test="boolean(*[@key = 'Application'])">
			<Application>
				<xsl:value-of select="*[@key = 'Application']"/>
			</Application>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Code'])">
			<xsl:for-each select="*[@key = 'Code']/map">
				<Code>
					<xsl:apply-templates select="."/>
				</Code>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Manufacturer'])">
			<Manufacturer>
				<xsl:value-of select="*[@key = 'Manufacturer']"/>
			</Manufacturer>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'MarkMetricType'])">
			<MarkMetricType>
				<xsl:value-of select="*[@key = 'MarkMetricType']"/>
			</MarkMetricType>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Model'])">
			<Model>
				<xsl:value-of select="*[@key = 'Model']"/>
			</Model>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Notes'])">
			<xsl:for-each select="*[@key = 'Notes']/string">
				<Notes>
					<xsl:value-of select="."/>
				</Notes>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'SerialNumber'])">
			<SerialNumber>
				<xsl:value-of select="*[@key = 'SerialNumber']"/>
			</SerialNumber>
		</xsl:if>
	</xsl:template>
	<xsl:template name="cdf:RetentionContest" match="*[string = 'CVR.RetentionContest' and string/@key = '@type']">
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
	</xsl:template>
	<xsl:template name="cdf:SelectionPosition" match="*[string = 'CVR.SelectionPosition' and string/@key = '@type']">
		<xsl:param name="set_type" select="true()"/>
		<xsl:if test="boolean(*[@key = 'Code'])">
			<xsl:for-each select="*[@key = 'Code']/map">
				<Code>
					<xsl:apply-templates select="."/>
				</Code>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'CVRWriteIn'])">
			<CVRWriteIn>
				<xsl:apply-templates select="*[@key = 'CVRWriteIn']"/>
			</CVRWriteIn>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'FractionalVotes'])">
			<FractionalVotes>
				<xsl:value-of select="*[@key = 'FractionalVotes']"/>
			</FractionalVotes>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'HasIndication'])">
			<HasIndication>
				<xsl:value-of select="*[@key = 'HasIndication']"/>
			</HasIndication>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'IsAllocable'])">
			<IsAllocable>
				<xsl:value-of select="*[@key = 'IsAllocable']"/>
			</IsAllocable>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'IsGenerated'])">
			<IsGenerated>
				<xsl:value-of select="*[@key = 'IsGenerated']"/>
			</IsGenerated>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'MarkMetricValue'])">
			<xsl:for-each select="*[@key = 'MarkMetricValue']/string">
				<MarkMetricValue>
					<xsl:value-of select="."/>
				</MarkMetricValue>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'NumberVotes'])">
			<NumberVotes>
				<xsl:value-of select="*[@key = 'NumberVotes']"/>
			</NumberVotes>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Position'])">
			<Position>
				<xsl:value-of select="*[@key = 'Position']"/>
			</Position>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Rank'])">
			<Rank>
				<xsl:value-of select="*[@key = 'Rank']"/>
			</Rank>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'Status'])">
			<xsl:for-each select="*[@key = 'Status']/string">
				<Status>
					<xsl:value-of select="."/>
				</Status>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="boolean(*[@key = 'OtherStatus'])">
			<OtherStatus>
				<xsl:value-of select="*[@key = 'OtherStatus']"/>
			</OtherStatus>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>