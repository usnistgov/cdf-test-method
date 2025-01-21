<?xml version="1.0" encoding="UTF-8"?>
<!-- This file was generated using the umm_template ruby_json2xml_binding.rb.erb (md5: f3067e91cd39ac363fc2271577f6a600)
  outer_module=NIST  target_schema=http://itl.nist.gov/ns/voting/1500-103/v1 -->
<xsl:stylesheet xmlns:cvr="http://itl.nist.gov/ns/voting/1500-103/v1" xmlns:addr_type="http://www.fgdc.gov/schemas/address/addr_type" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xml:id="json2xml" xpath-default-namespace="http://www.w3.org/2005/xpath-functions" version="3.0">
  <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
  <!-- Begin classes for Package CDFValidation -->
  <xsl:template name="start" match=".[. instance of map(*)]" priority="1">
    <xsl:variable name="xml" select=". =&gt; serialize(map { 'method' : 'json' }) =&gt; json-to-xml()"/>
    <xsl:if test="$xml/*[string = 'CVR.CastVoteRecordReport' and string/@key = '@type']">
      <cvr:CastVoteRecordReport>
        <xsl:apply-templates select="$xml"/>
      </cvr:CastVoteRecordReport>
    </xsl:if>
  </xsl:template>
  <!-- Begin classes for Package CVR -->
  <xsl:template name="cvr:Annotation" match="*[string = 'CVR.Annotation' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="boolean(*[@key = 'AdjudicatorName'])">
      <xsl:for-each select="*[@key = 'AdjudicatorName']/string">
        <cvr:AdjudicatorName>
          <xsl:value-of select="."/>
        </cvr:AdjudicatorName>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Message'])">
      <xsl:for-each select="*[@key = 'Message']/string">
        <cvr:Message>
          <xsl:value-of select="."/>
        </cvr:Message>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'TimeStamp'])">
      <cvr:TimeStamp>
        <xsl:value-of select="*[@key = 'TimeStamp']"/>
      </cvr:TimeStamp>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cvr:BallotMeasureContest" match="*[string = 'CVR.BallotMeasureContest' and string/@key = '@type']" priority="-1">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="$set_type">
      <xsl:attribute name="xsi:type">cvr:BallotMeasureContest</xsl:attribute>
    </xsl:if>
    <xsl:call-template name="cvr:Contest">
      <xsl:with-param name="set_type" select="false()"/>
    </xsl:call-template>
  </xsl:template>
  <xsl:template name="cvr:BallotMeasureSelection" match="*[string = 'CVR.BallotMeasureSelection' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="$set_type">
      <xsl:attribute name="xsi:type">cvr:BallotMeasureSelection</xsl:attribute>
    </xsl:if>
    <xsl:call-template name="cvr:ContestSelection">
      <xsl:with-param name="set_type" select="false()"/>
    </xsl:call-template>
    <xsl:if test="boolean(*[@key = 'Selection'])">
      <cvr:Selection>
        <xsl:value-of select="*[@key = 'Selection']"/>
      </cvr:Selection>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cvr:CVR" match="*[string = 'CVR.CVR' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="boolean(*[@key = 'BallotAuditId'])">
      <cvr:BallotAuditId>
        <xsl:value-of select="*[@key = 'BallotAuditId']"/>
      </cvr:BallotAuditId>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'BallotImage'])">
      <xsl:for-each select="*[@key = 'BallotImage']/map">
        <cvr:BallotImage>
          <xsl:apply-templates select="."/>
        </cvr:BallotImage>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'BallotPrePrintedId'])">
      <cvr:BallotPrePrintedId>
        <xsl:value-of select="*[@key = 'BallotPrePrintedId']"/>
      </cvr:BallotPrePrintedId>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'BallotSheetId'])">
      <cvr:BallotSheetId>
        <xsl:value-of select="*[@key = 'BallotSheetId']"/>
      </cvr:BallotSheetId>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'BallotStyleId'])">
      <cvr:BallotStyleId>
        <xsl:value-of select="*[@key = 'BallotStyleId']"/>
      </cvr:BallotStyleId>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'BallotStyleUnitId'])">
      <cvr:BallotStyleUnitId>
        <xsl:value-of select="*[@key = 'BallotStyleUnitId']"/>
      </cvr:BallotStyleUnitId>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'BatchId'])">
      <cvr:BatchId>
        <xsl:value-of select="*[@key = 'BatchId']"/>
      </cvr:BatchId>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'BatchSequenceId'])">
      <cvr:BatchSequenceId>
        <xsl:value-of select="*[@key = 'BatchSequenceId']"/>
      </cvr:BatchSequenceId>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'CreatingDeviceId'])">
      <cvr:CreatingDeviceId>
        <xsl:value-of select="*[@key = 'CreatingDeviceId']"/>
      </cvr:CreatingDeviceId>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'CurrentSnapshotId'])">
      <cvr:CurrentSnapshotId>
        <xsl:value-of select="*[@key = 'CurrentSnapshotId']"/>
      </cvr:CurrentSnapshotId>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'CVRSnapshot'])">
      <xsl:for-each select="*[@key = 'CVRSnapshot']/map">
        <cvr:CVRSnapshot>
          <xsl:apply-templates select="."/>
        </cvr:CVRSnapshot>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'ElectionId'])">
      <cvr:ElectionId>
        <xsl:value-of select="*[@key = 'ElectionId']"/>
      </cvr:ElectionId>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'PartyIds'])">
      <cvr:PartyIds>
        <xsl:variable name="idrefs">
          <xsl:for-each select="*[@key = 'PartyIds']/string">
            <xsl:value-of select="concat(' ', .)"/>
          </xsl:for-each>
        </xsl:variable>
        <xsl:value-of select="normalize-space($idrefs)"/>
      </cvr:PartyIds>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'UniqueId'])">
      <cvr:UniqueId>
        <xsl:value-of select="*[@key = 'UniqueId']"/>
      </cvr:UniqueId>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cvr:CVRContest" match="*[string = 'CVR.CVRContest' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="boolean(*[@key = 'ContestId'])">
      <cvr:ContestId>
        <xsl:value-of select="*[@key = 'ContestId']"/>
      </cvr:ContestId>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'CVRContestSelection'])">
      <xsl:for-each select="*[@key = 'CVRContestSelection']/map">
        <cvr:CVRContestSelection>
          <xsl:apply-templates select="."/>
        </cvr:CVRContestSelection>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Overvotes'])">
      <cvr:Overvotes>
        <xsl:value-of select="*[@key = 'Overvotes']"/>
      </cvr:Overvotes>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Selections'])">
      <cvr:Selections>
        <xsl:value-of select="*[@key = 'Selections']"/>
      </cvr:Selections>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Status'])">
      <xsl:for-each select="*[@key = 'Status']/string">
        <cvr:Status>
          <xsl:value-of select="."/>
        </cvr:Status>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'OtherStatus'])">
      <cvr:OtherStatus>
        <xsl:value-of select="*[@key = 'OtherStatus']"/>
      </cvr:OtherStatus>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Undervotes'])">
      <cvr:Undervotes>
        <xsl:value-of select="*[@key = 'Undervotes']"/>
      </cvr:Undervotes>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'WriteIns'])">
      <cvr:WriteIns>
        <xsl:value-of select="*[@key = 'WriteIns']"/>
      </cvr:WriteIns>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cvr:CVRContestSelection" match="*[string = 'CVR.CVRContestSelection' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="boolean(*[@key = 'ContestSelectionId'])">
      <cvr:ContestSelectionId>
        <xsl:value-of select="*[@key = 'ContestSelectionId']"/>
      </cvr:ContestSelectionId>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'OptionPosition'])">
      <cvr:OptionPosition>
        <xsl:value-of select="*[@key = 'OptionPosition']"/>
      </cvr:OptionPosition>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Rank'])">
      <cvr:Rank>
        <xsl:value-of select="*[@key = 'Rank']"/>
      </cvr:Rank>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'SelectionPosition'])">
      <xsl:for-each select="*[@key = 'SelectionPosition']/map">
        <cvr:SelectionPosition>
          <xsl:apply-templates select="."/>
        </cvr:SelectionPosition>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Status'])">
      <xsl:for-each select="*[@key = 'Status']/string">
        <cvr:Status>
          <xsl:value-of select="."/>
        </cvr:Status>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'OtherStatus'])">
      <cvr:OtherStatus>
        <xsl:value-of select="*[@key = 'OtherStatus']"/>
      </cvr:OtherStatus>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'TotalFractionalVotes'])">
      <cvr:TotalFractionalVotes>
        <xsl:value-of select="*[@key = 'TotalFractionalVotes']"/>
      </cvr:TotalFractionalVotes>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'TotalNumberVotes'])">
      <cvr:TotalNumberVotes>
        <xsl:value-of select="*[@key = 'TotalNumberVotes']"/>
      </cvr:TotalNumberVotes>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cvr:CVRSnapshot" match="*[string = 'CVR.CVRSnapshot' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:attribute name="ObjectId">
      <xsl:value-of select="string[@key = '@id']"/>
    </xsl:attribute>
    <xsl:if test="boolean(*[@key = 'Annotation'])">
      <xsl:for-each select="*[@key = 'Annotation']/map">
        <cvr:Annotation>
          <xsl:apply-templates select="."/>
        </cvr:Annotation>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'CVRContest'])">
      <xsl:for-each select="*[@key = 'CVRContest']/map">
        <cvr:CVRContest>
          <xsl:apply-templates select="."/>
        </cvr:CVRContest>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Status'])">
      <xsl:for-each select="*[@key = 'Status']/string">
        <cvr:Status>
          <xsl:value-of select="."/>
        </cvr:Status>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'OtherStatus'])">
      <cvr:OtherStatus>
        <xsl:value-of select="*[@key = 'OtherStatus']"/>
      </cvr:OtherStatus>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Type'])">
      <cvr:Type>
        <xsl:value-of select="*[@key = 'Type']"/>
      </cvr:Type>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cvr:CVRWriteIn" match="*[string = 'CVR.CVRWriteIn' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="boolean(*[@key = 'Text'])">
      <cvr:Text>
        <xsl:value-of select="*[@key = 'Text']"/>
      </cvr:Text>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'WriteInImage'])">
      <cvr:WriteInImage>
        <xsl:apply-templates select="*[@key = 'WriteInImage']"/>
      </cvr:WriteInImage>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cvr:Candidate" match="*[string = 'CVR.Candidate' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:attribute name="ObjectId">
      <xsl:value-of select="string[@key = '@id']"/>
    </xsl:attribute>
    <xsl:if test="boolean(*[@key = 'Code'])">
      <xsl:for-each select="*[@key = 'Code']/map">
        <cvr:Code>
          <xsl:apply-templates select="."/>
        </cvr:Code>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Name'])">
      <cvr:Name>
        <xsl:value-of select="*[@key = 'Name']"/>
      </cvr:Name>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'PartyId'])">
      <cvr:PartyId>
        <xsl:value-of select="*[@key = 'PartyId']"/>
      </cvr:PartyId>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cvr:CandidateContest" match="*[string = 'CVR.CandidateContest' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="$set_type">
      <xsl:attribute name="xsi:type">cvr:CandidateContest</xsl:attribute>
    </xsl:if>
    <xsl:call-template name="cvr:Contest">
      <xsl:with-param name="set_type" select="false()"/>
    </xsl:call-template>
    <xsl:if test="boolean(*[@key = 'NumberElected'])">
      <cvr:NumberElected>
        <xsl:value-of select="*[@key = 'NumberElected']"/>
      </cvr:NumberElected>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'PrimaryPartyId'])">
      <cvr:PrimaryPartyId>
        <xsl:value-of select="*[@key = 'PrimaryPartyId']"/>
      </cvr:PrimaryPartyId>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'VotesAllowed'])">
      <cvr:VotesAllowed>
        <xsl:value-of select="*[@key = 'VotesAllowed']"/>
      </cvr:VotesAllowed>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cvr:CandidateSelection" match="*[string = 'CVR.CandidateSelection' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="$set_type">
      <xsl:attribute name="xsi:type">cvr:CandidateSelection</xsl:attribute>
    </xsl:if>
    <xsl:call-template name="cvr:ContestSelection">
      <xsl:with-param name="set_type" select="false()"/>
    </xsl:call-template>
    <xsl:if test="boolean(*[@key = 'CandidateIds'])">
      <cvr:CandidateIds>
        <xsl:variable name="idrefs">
          <xsl:for-each select="*[@key = 'CandidateIds']/string">
            <xsl:value-of select="concat(' ', .)"/>
          </xsl:for-each>
        </xsl:variable>
        <xsl:value-of select="normalize-space($idrefs)"/>
      </cvr:CandidateIds>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'IsWriteIn'])">
      <cvr:IsWriteIn>
        <xsl:value-of select="*[@key = 'IsWriteIn']"/>
      </cvr:IsWriteIn>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cvr:CastVoteRecordReport" match="*[string = 'CVR.CastVoteRecordReport' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="boolean(*[@key = 'CVR'])">
      <xsl:for-each select="*[@key = 'CVR']/map">
        <cvr:CVR>
          <xsl:apply-templates select="."/>
        </cvr:CVR>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Election'])">
      <xsl:for-each select="*[@key = 'Election']/map">
        <cvr:Election>
          <xsl:apply-templates select="."/>
        </cvr:Election>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'GeneratedDate'])">
      <cvr:GeneratedDate>
        <xsl:value-of select="*[@key = 'GeneratedDate']"/>
      </cvr:GeneratedDate>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'GpUnit'])">
      <xsl:for-each select="*[@key = 'GpUnit']/map">
        <cvr:GpUnit>
          <xsl:apply-templates select="."/>
        </cvr:GpUnit>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Notes'])">
      <cvr:Notes>
        <xsl:value-of select="*[@key = 'Notes']"/>
      </cvr:Notes>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Party'])">
      <xsl:for-each select="*[@key = 'Party']/map">
        <cvr:Party>
          <xsl:apply-templates select="."/>
        </cvr:Party>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'ReportGeneratingDeviceIds'])">
      <cvr:ReportGeneratingDeviceIds>
        <xsl:variable name="idrefs">
          <xsl:for-each select="*[@key = 'ReportGeneratingDeviceIds']/string">
            <xsl:value-of select="concat(' ', .)"/>
          </xsl:for-each>
        </xsl:variable>
        <xsl:value-of select="normalize-space($idrefs)"/>
      </cvr:ReportGeneratingDeviceIds>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'ReportingDevice'])">
      <xsl:for-each select="*[@key = 'ReportingDevice']/map">
        <cvr:ReportingDevice>
          <xsl:apply-templates select="."/>
        </cvr:ReportingDevice>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'ReportType'])">
      <xsl:for-each select="*[@key = 'ReportType']/string">
        <cvr:ReportType>
          <xsl:value-of select="."/>
        </cvr:ReportType>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'OtherReportType'])">
      <cvr:OtherReportType>
        <xsl:value-of select="*[@key = 'OtherReportType']"/>
      </cvr:OtherReportType>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Version'])">
      <cvr:Version>
        <xsl:value-of select="*[@key = 'Version']"/>
      </cvr:Version>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cvr:Code" match="*[string = 'CVR.Code' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="boolean(*[@key = 'Label'])">
      <cvr:Label>
        <xsl:value-of select="*[@key = 'Label']"/>
      </cvr:Label>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Type'])">
      <cvr:Type>
        <xsl:value-of select="*[@key = 'Type']"/>
      </cvr:Type>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'OtherType'])">
      <cvr:OtherType>
        <xsl:value-of select="*[@key = 'OtherType']"/>
      </cvr:OtherType>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Value'])">
      <cvr:Value>
        <xsl:value-of select="*[@key = 'Value']"/>
      </cvr:Value>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cvr:Contest" match="*[string = 'CVR.Contest' and string/@key = '@type']" priority="-2">
    <xsl:param name="set_type" select="true()"/>
    <xsl:attribute name="ObjectId">
      <xsl:value-of select="string[@key = '@id']"/>
    </xsl:attribute>
    <xsl:if test="boolean(*[@key = 'Abbreviation'])">
      <cvr:Abbreviation>
        <xsl:value-of select="*[@key = 'Abbreviation']"/>
      </cvr:Abbreviation>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Code'])">
      <xsl:for-each select="*[@key = 'Code']/map">
        <cvr:Code>
          <xsl:apply-templates select="."/>
        </cvr:Code>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'ContestSelection'])">
      <xsl:for-each select="*[@key = 'ContestSelection']/map">
        <cvr:ContestSelection>
          <xsl:apply-templates select="."/>
        </cvr:ContestSelection>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Name'])">
      <cvr:Name>
        <xsl:value-of select="*[@key = 'Name']"/>
      </cvr:Name>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'VoteVariation'])">
      <cvr:VoteVariation>
        <xsl:value-of select="*[@key = 'VoteVariation']"/>
      </cvr:VoteVariation>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'OtherVoteVariation'])">
      <cvr:OtherVoteVariation>
        <xsl:value-of select="*[@key = 'OtherVoteVariation']"/>
      </cvr:OtherVoteVariation>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cvr:ContestSelection" match="*[string = 'CVR.ContestSelection' and string/@key = '@type']" priority="-1">
    <xsl:param name="set_type" select="true()"/>
    <xsl:attribute name="ObjectId">
      <xsl:value-of select="string[@key = '@id']"/>
    </xsl:attribute>
    <xsl:if test="boolean(*[@key = 'Code'])">
      <xsl:for-each select="*[@key = 'Code']/map">
        <cvr:Code>
          <xsl:apply-templates select="."/>
        </cvr:Code>
      </xsl:for-each>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cvr:Election" match="*[string = 'CVR.Election' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:attribute name="ObjectId">
      <xsl:value-of select="string[@key = '@id']"/>
    </xsl:attribute>
    <xsl:if test="boolean(*[@key = 'Candidate'])">
      <xsl:for-each select="*[@key = 'Candidate']/map">
        <cvr:Candidate>
          <xsl:apply-templates select="."/>
        </cvr:Candidate>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Code'])">
      <xsl:for-each select="*[@key = 'Code']/map">
        <cvr:Code>
          <xsl:apply-templates select="."/>
        </cvr:Code>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Contest'])">
      <xsl:for-each select="*[@key = 'Contest']/map">
        <cvr:Contest>
          <xsl:apply-templates select="."/>
        </cvr:Contest>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'ElectionScopeId'])">
      <cvr:ElectionScopeId>
        <xsl:value-of select="*[@key = 'ElectionScopeId']"/>
      </cvr:ElectionScopeId>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Name'])">
      <cvr:Name>
        <xsl:value-of select="*[@key = 'Name']"/>
      </cvr:Name>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cvr:File" match="*[string = 'CVR.File' and string/@key = '@type']" priority="-1">
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
  <xsl:template name="cvr:GpUnit" match="*[string = 'CVR.GpUnit' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:attribute name="ObjectId">
      <xsl:value-of select="string[@key = '@id']"/>
    </xsl:attribute>
    <xsl:if test="boolean(*[@key = 'Code'])">
      <xsl:for-each select="*[@key = 'Code']/map">
        <cvr:Code>
          <xsl:apply-templates select="."/>
        </cvr:Code>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Name'])">
      <cvr:Name>
        <xsl:value-of select="*[@key = 'Name']"/>
      </cvr:Name>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'ReportingDeviceIds'])">
      <cvr:ReportingDeviceIds>
        <xsl:variable name="idrefs">
          <xsl:for-each select="*[@key = 'ReportingDeviceIds']/string">
            <xsl:value-of select="concat(' ', .)"/>
          </xsl:for-each>
        </xsl:variable>
        <xsl:value-of select="normalize-space($idrefs)"/>
      </cvr:ReportingDeviceIds>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Type'])">
      <cvr:Type>
        <xsl:value-of select="*[@key = 'Type']"/>
      </cvr:Type>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'OtherType'])">
      <cvr:OtherType>
        <xsl:value-of select="*[@key = 'OtherType']"/>
      </cvr:OtherType>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cvr:Hash" match="*[string = 'CVR.Hash' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="boolean(*[@key = 'Type'])">
      <cvr:Type>
        <xsl:value-of select="*[@key = 'Type']"/>
      </cvr:Type>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'OtherType'])">
      <cvr:OtherType>
        <xsl:value-of select="*[@key = 'OtherType']"/>
      </cvr:OtherType>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Value'])">
      <cvr:Value>
        <xsl:value-of select="*[@key = 'Value']"/>
      </cvr:Value>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cvr:Image" match="*[string = 'CVR.Image' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="$set_type">
      <xsl:attribute name="xsi:type">cvr:Image</xsl:attribute>
    </xsl:if>
    <xsl:call-template name="cvr:File">
      <xsl:with-param name="set_type" select="false()"/>
    </xsl:call-template>
  </xsl:template>
  <xsl:template name="cvr:ImageData" match="*[string = 'CVR.ImageData' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="boolean(*[@key = 'Hash'])">
      <cvr:Hash>
        <xsl:apply-templates select="*[@key = 'Hash']"/>
      </cvr:Hash>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Image'])">
      <cvr:Image>
        <xsl:apply-templates select="*[@key = 'Image']"/>
      </cvr:Image>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Location'])">
      <cvr:Location>
        <xsl:value-of select="*[@key = 'Location']"/>
      </cvr:Location>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cvr:Party" match="*[string = 'CVR.Party' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:attribute name="ObjectId">
      <xsl:value-of select="string[@key = '@id']"/>
    </xsl:attribute>
    <xsl:if test="boolean(*[@key = 'Abbreviation'])">
      <cvr:Abbreviation>
        <xsl:value-of select="*[@key = 'Abbreviation']"/>
      </cvr:Abbreviation>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Code'])">
      <xsl:for-each select="*[@key = 'Code']/map">
        <cvr:Code>
          <xsl:apply-templates select="."/>
        </cvr:Code>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Name'])">
      <cvr:Name>
        <xsl:value-of select="*[@key = 'Name']"/>
      </cvr:Name>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cvr:PartyContest" match="*[string = 'CVR.PartyContest' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="$set_type">
      <xsl:attribute name="xsi:type">cvr:PartyContest</xsl:attribute>
    </xsl:if>
    <xsl:call-template name="cvr:Contest">
      <xsl:with-param name="set_type" select="false()"/>
    </xsl:call-template>
  </xsl:template>
  <xsl:template name="cvr:PartySelection" match="*[string = 'CVR.PartySelection' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="$set_type">
      <xsl:attribute name="xsi:type">cvr:PartySelection</xsl:attribute>
    </xsl:if>
    <xsl:call-template name="cvr:ContestSelection">
      <xsl:with-param name="set_type" select="false()"/>
    </xsl:call-template>
    <xsl:if test="boolean(*[@key = 'PartyIds'])">
      <cvr:PartyIds>
        <xsl:variable name="idrefs">
          <xsl:for-each select="*[@key = 'PartyIds']/string">
            <xsl:value-of select="concat(' ', .)"/>
          </xsl:for-each>
        </xsl:variable>
        <xsl:value-of select="normalize-space($idrefs)"/>
      </cvr:PartyIds>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cvr:ReportingDevice" match="*[string = 'CVR.ReportingDevice' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:attribute name="ObjectId">
      <xsl:value-of select="string[@key = '@id']"/>
    </xsl:attribute>
    <xsl:if test="boolean(*[@key = 'Application'])">
      <cvr:Application>
        <xsl:value-of select="*[@key = 'Application']"/>
      </cvr:Application>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Code'])">
      <xsl:for-each select="*[@key = 'Code']/map">
        <cvr:Code>
          <xsl:apply-templates select="."/>
        </cvr:Code>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Manufacturer'])">
      <cvr:Manufacturer>
        <xsl:value-of select="*[@key = 'Manufacturer']"/>
      </cvr:Manufacturer>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'MarkMetricType'])">
      <cvr:MarkMetricType>
        <xsl:value-of select="*[@key = 'MarkMetricType']"/>
      </cvr:MarkMetricType>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Model'])">
      <cvr:Model>
        <xsl:value-of select="*[@key = 'Model']"/>
      </cvr:Model>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Notes'])">
      <xsl:for-each select="*[@key = 'Notes']/string">
        <cvr:Notes>
          <xsl:value-of select="."/>
        </cvr:Notes>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'SerialNumber'])">
      <cvr:SerialNumber>
        <xsl:value-of select="*[@key = 'SerialNumber']"/>
      </cvr:SerialNumber>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cvr:RetentionContest" match="*[string = 'CVR.RetentionContest' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="$set_type">
      <xsl:attribute name="xsi:type">cvr:RetentionContest</xsl:attribute>
    </xsl:if>
    <xsl:call-template name="cvr:BallotMeasureContest">
      <xsl:with-param name="set_type" select="false()"/>
    </xsl:call-template>
    <xsl:if test="boolean(*[@key = 'CandidateId'])">
      <cvr:CandidateId>
        <xsl:value-of select="*[@key = 'CandidateId']"/>
      </cvr:CandidateId>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cvr:SelectionPosition" match="*[string = 'CVR.SelectionPosition' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="boolean(*[@key = 'Code'])">
      <xsl:for-each select="*[@key = 'Code']/map">
        <cvr:Code>
          <xsl:apply-templates select="."/>
        </cvr:Code>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'CVRWriteIn'])">
      <cvr:CVRWriteIn>
        <xsl:apply-templates select="*[@key = 'CVRWriteIn']"/>
      </cvr:CVRWriteIn>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'FractionalVotes'])">
      <cvr:FractionalVotes>
        <xsl:value-of select="*[@key = 'FractionalVotes']"/>
      </cvr:FractionalVotes>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'HasIndication'])">
      <cvr:HasIndication>
        <xsl:value-of select="*[@key = 'HasIndication']"/>
      </cvr:HasIndication>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'IsAllocable'])">
      <cvr:IsAllocable>
        <xsl:value-of select="*[@key = 'IsAllocable']"/>
      </cvr:IsAllocable>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'IsGenerated'])">
      <cvr:IsGenerated>
        <xsl:value-of select="*[@key = 'IsGenerated']"/>
      </cvr:IsGenerated>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'MarkMetricValue'])">
      <xsl:for-each select="*[@key = 'MarkMetricValue']/string">
        <cvr:MarkMetricValue>
          <xsl:value-of select="."/>
        </cvr:MarkMetricValue>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'NumberVotes'])">
      <cvr:NumberVotes>
        <xsl:value-of select="*[@key = 'NumberVotes']"/>
      </cvr:NumberVotes>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Position'])">
      <cvr:Position>
        <xsl:value-of select="*[@key = 'Position']"/>
      </cvr:Position>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Rank'])">
      <cvr:Rank>
        <xsl:value-of select="*[@key = 'Rank']"/>
      </cvr:Rank>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Status'])">
      <xsl:for-each select="*[@key = 'Status']/string">
        <cvr:Status>
          <xsl:value-of select="."/>
        </cvr:Status>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'OtherStatus'])">
      <cvr:OtherStatus>
        <xsl:value-of select="*[@key = 'OtherStatus']"/>
      </cvr:OtherStatus>
    </xsl:if>
  </xsl:template>
  <!-- Begin classes for Package CVRConstraints -->
  <!-- Begin classes for Package ArtifactGeneration -->
  <!-- Begin classes for Package Patterns -->
  <!-- Begin classes for Package XML Schema -->
  <!-- Begin classes for Package mCDF Profile -->
</xsl:stylesheet>
