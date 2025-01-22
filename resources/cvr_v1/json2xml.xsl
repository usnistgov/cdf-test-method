<?xml version="1.0" encoding="UTF-8"?>
<!-- This file was generated using the umm_template ruby_json2xml_binding.rb.erb (md5: bfe324002928f9b1121d08ff89b0f8c4)

Locals
  outer_module=CVR  target_schema=http://itl.nist.gov/ns/voting/1500-103/v1
Visible Packages
  CVR -->
<xsl:stylesheet xmlns:cdf="http://itl.nist.gov/ns/voting/1500-103/v1" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xml:id="json2xml" xpath-default-namespace="http://www.w3.org/2005/xpath-functions" version="3.0">
  <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
  <xsl:template name="start" match=".[. instance of map(*)]" priority="1">
    <xsl:variable name="xml" select=". =&gt; serialize(map { 'method' : 'json' }) =&gt; json-to-xml()"/>
    <xsl:if test="$xml/*[string = 'CVR.CastVoteRecordReport' and string/@key = '@type']">
      <cdf:CastVoteRecordReport>
        <xsl:apply-templates select="$xml"/>
      </cdf:CastVoteRecordReport>
    </xsl:if>
  </xsl:template>
  <!-- Begin classes for Package CVR -->
  <xsl:template name="cdf:Annotation" match="*[string = 'CVR.Annotation' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="boolean(*[@key = 'AdjudicatorName'])">
      <xsl:for-each select="*[@key = 'AdjudicatorName']/string">
        <cdf:AdjudicatorName>
          <xsl:value-of select="."/>
        </cdf:AdjudicatorName>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Message'])">
      <xsl:for-each select="*[@key = 'Message']/string">
        <cdf:Message>
          <xsl:value-of select="."/>
        </cdf:Message>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'TimeStamp'])">
      <cdf:TimeStamp>
        <xsl:value-of select="*[@key = 'TimeStamp']"/>
      </cdf:TimeStamp>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cdf:BallotMeasureContest" match="*[string = 'CVR.BallotMeasureContest' and string/@key = '@type']" priority="-1">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="$set_type">
      <xsl:attribute name="xsi:type">cdf:BallotMeasureContest</xsl:attribute>
    </xsl:if>
    <xsl:call-template name="cdf:Contest">
      <xsl:with-param name="set_type" select="false()"/>
    </xsl:call-template>
  </xsl:template>
  <xsl:template name="cdf:BallotMeasureSelection" match="*[string = 'CVR.BallotMeasureSelection' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="$set_type">
      <xsl:attribute name="xsi:type">cdf:BallotMeasureSelection</xsl:attribute>
    </xsl:if>
    <xsl:call-template name="cdf:ContestSelection">
      <xsl:with-param name="set_type" select="false()"/>
    </xsl:call-template>
    <xsl:if test="boolean(*[@key = 'Selection'])">
      <cdf:Selection>
        <xsl:value-of select="*[@key = 'Selection']"/>
      </cdf:Selection>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cdf:CVR" match="*[string = 'CVR.CVR' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="boolean(*[@key = 'BallotAuditId'])">
      <cdf:BallotAuditId>
        <xsl:value-of select="*[@key = 'BallotAuditId']"/>
      </cdf:BallotAuditId>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'BallotImage'])">
      <xsl:for-each select="*[@key = 'BallotImage']/map">
        <cdf:BallotImage>
          <xsl:apply-templates select="."/>
        </cdf:BallotImage>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'BallotPrePrintedId'])">
      <cdf:BallotPrePrintedId>
        <xsl:value-of select="*[@key = 'BallotPrePrintedId']"/>
      </cdf:BallotPrePrintedId>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'BallotSheetId'])">
      <cdf:BallotSheetId>
        <xsl:value-of select="*[@key = 'BallotSheetId']"/>
      </cdf:BallotSheetId>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'BallotStyleId'])">
      <cdf:BallotStyleId>
        <xsl:value-of select="*[@key = 'BallotStyleId']"/>
      </cdf:BallotStyleId>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'BallotStyleUnitId'])">
      <cdf:BallotStyleUnitId>
        <xsl:value-of select="*[@key = 'BallotStyleUnitId']"/>
      </cdf:BallotStyleUnitId>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'BatchId'])">
      <cdf:BatchId>
        <xsl:value-of select="*[@key = 'BatchId']"/>
      </cdf:BatchId>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'BatchSequenceId'])">
      <cdf:BatchSequenceId>
        <xsl:value-of select="*[@key = 'BatchSequenceId']"/>
      </cdf:BatchSequenceId>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'CreatingDeviceId'])">
      <cdf:CreatingDeviceId>
        <xsl:value-of select="*[@key = 'CreatingDeviceId']"/>
      </cdf:CreatingDeviceId>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'CurrentSnapshotId'])">
      <cdf:CurrentSnapshotId>
        <xsl:value-of select="*[@key = 'CurrentSnapshotId']"/>
      </cdf:CurrentSnapshotId>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'CVRSnapshot'])">
      <xsl:for-each select="*[@key = 'CVRSnapshot']/map">
        <cdf:CVRSnapshot>
          <xsl:apply-templates select="."/>
        </cdf:CVRSnapshot>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'ElectionId'])">
      <cdf:ElectionId>
        <xsl:value-of select="*[@key = 'ElectionId']"/>
      </cdf:ElectionId>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'PartyIds'])">
      <cdf:PartyIds>
        <xsl:variable name="idrefs">
          <xsl:for-each select="*[@key = 'PartyIds']/string">
            <xsl:value-of select="concat(' ', .)"/>
          </xsl:for-each>
        </xsl:variable>
        <xsl:value-of select="normalize-space($idrefs)"/>
      </cdf:PartyIds>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'UniqueId'])">
      <cdf:UniqueId>
        <xsl:value-of select="*[@key = 'UniqueId']"/>
      </cdf:UniqueId>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cdf:CVRContest" match="*[string = 'CVR.CVRContest' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="boolean(*[@key = 'ContestId'])">
      <cdf:ContestId>
        <xsl:value-of select="*[@key = 'ContestId']"/>
      </cdf:ContestId>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'CVRContestSelection'])">
      <xsl:for-each select="*[@key = 'CVRContestSelection']/map">
        <cdf:CVRContestSelection>
          <xsl:apply-templates select="."/>
        </cdf:CVRContestSelection>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Overvotes'])">
      <cdf:Overvotes>
        <xsl:value-of select="*[@key = 'Overvotes']"/>
      </cdf:Overvotes>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Selections'])">
      <cdf:Selections>
        <xsl:value-of select="*[@key = 'Selections']"/>
      </cdf:Selections>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Status'])">
      <xsl:for-each select="*[@key = 'Status']/string">
        <cdf:Status>
          <xsl:value-of select="."/>
        </cdf:Status>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'OtherStatus'])">
      <cdf:OtherStatus>
        <xsl:value-of select="*[@key = 'OtherStatus']"/>
      </cdf:OtherStatus>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Undervotes'])">
      <cdf:Undervotes>
        <xsl:value-of select="*[@key = 'Undervotes']"/>
      </cdf:Undervotes>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'WriteIns'])">
      <cdf:WriteIns>
        <xsl:value-of select="*[@key = 'WriteIns']"/>
      </cdf:WriteIns>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cdf:CVRContestSelection" match="*[string = 'CVR.CVRContestSelection' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="boolean(*[@key = 'ContestSelectionId'])">
      <cdf:ContestSelectionId>
        <xsl:value-of select="*[@key = 'ContestSelectionId']"/>
      </cdf:ContestSelectionId>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'OptionPosition'])">
      <cdf:OptionPosition>
        <xsl:value-of select="*[@key = 'OptionPosition']"/>
      </cdf:OptionPosition>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Rank'])">
      <cdf:Rank>
        <xsl:value-of select="*[@key = 'Rank']"/>
      </cdf:Rank>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'SelectionPosition'])">
      <xsl:for-each select="*[@key = 'SelectionPosition']/map">
        <cdf:SelectionPosition>
          <xsl:apply-templates select="."/>
        </cdf:SelectionPosition>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Status'])">
      <xsl:for-each select="*[@key = 'Status']/string">
        <cdf:Status>
          <xsl:value-of select="."/>
        </cdf:Status>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'OtherStatus'])">
      <cdf:OtherStatus>
        <xsl:value-of select="*[@key = 'OtherStatus']"/>
      </cdf:OtherStatus>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'TotalFractionalVotes'])">
      <cdf:TotalFractionalVotes>
        <xsl:value-of select="*[@key = 'TotalFractionalVotes']"/>
      </cdf:TotalFractionalVotes>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'TotalNumberVotes'])">
      <cdf:TotalNumberVotes>
        <xsl:value-of select="*[@key = 'TotalNumberVotes']"/>
      </cdf:TotalNumberVotes>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cdf:CVRSnapshot" match="*[string = 'CVR.CVRSnapshot' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:attribute name="ObjectId">
      <xsl:value-of select="string[@key = '@id']"/>
    </xsl:attribute>
    <xsl:if test="boolean(*[@key = 'Annotation'])">
      <xsl:for-each select="*[@key = 'Annotation']/map">
        <cdf:Annotation>
          <xsl:apply-templates select="."/>
        </cdf:Annotation>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'CVRContest'])">
      <xsl:for-each select="*[@key = 'CVRContest']/map">
        <cdf:CVRContest>
          <xsl:apply-templates select="."/>
        </cdf:CVRContest>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Status'])">
      <xsl:for-each select="*[@key = 'Status']/string">
        <cdf:Status>
          <xsl:value-of select="."/>
        </cdf:Status>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'OtherStatus'])">
      <cdf:OtherStatus>
        <xsl:value-of select="*[@key = 'OtherStatus']"/>
      </cdf:OtherStatus>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Type'])">
      <cdf:Type>
        <xsl:value-of select="*[@key = 'Type']"/>
      </cdf:Type>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cdf:CVRWriteIn" match="*[string = 'CVR.CVRWriteIn' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="boolean(*[@key = 'Text'])">
      <cdf:Text>
        <xsl:value-of select="*[@key = 'Text']"/>
      </cdf:Text>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'WriteInImage'])">
      <cdf:WriteInImage>
        <xsl:apply-templates select="*[@key = 'WriteInImage']"/>
      </cdf:WriteInImage>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cdf:Candidate" match="*[string = 'CVR.Candidate' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:attribute name="ObjectId">
      <xsl:value-of select="string[@key = '@id']"/>
    </xsl:attribute>
    <xsl:if test="boolean(*[@key = 'Code'])">
      <xsl:for-each select="*[@key = 'Code']/map">
        <cdf:Code>
          <xsl:apply-templates select="."/>
        </cdf:Code>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Name'])">
      <cdf:Name>
        <xsl:value-of select="*[@key = 'Name']"/>
      </cdf:Name>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'PartyId'])">
      <cdf:PartyId>
        <xsl:value-of select="*[@key = 'PartyId']"/>
      </cdf:PartyId>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cdf:CandidateContest" match="*[string = 'CVR.CandidateContest' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="$set_type">
      <xsl:attribute name="xsi:type">cdf:CandidateContest</xsl:attribute>
    </xsl:if>
    <xsl:call-template name="cdf:Contest">
      <xsl:with-param name="set_type" select="false()"/>
    </xsl:call-template>
    <xsl:if test="boolean(*[@key = 'NumberElected'])">
      <cdf:NumberElected>
        <xsl:value-of select="*[@key = 'NumberElected']"/>
      </cdf:NumberElected>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'PrimaryPartyId'])">
      <cdf:PrimaryPartyId>
        <xsl:value-of select="*[@key = 'PrimaryPartyId']"/>
      </cdf:PrimaryPartyId>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'VotesAllowed'])">
      <cdf:VotesAllowed>
        <xsl:value-of select="*[@key = 'VotesAllowed']"/>
      </cdf:VotesAllowed>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cdf:CandidateSelection" match="*[string = 'CVR.CandidateSelection' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="$set_type">
      <xsl:attribute name="xsi:type">cdf:CandidateSelection</xsl:attribute>
    </xsl:if>
    <xsl:call-template name="cdf:ContestSelection">
      <xsl:with-param name="set_type" select="false()"/>
    </xsl:call-template>
    <xsl:if test="boolean(*[@key = 'CandidateIds'])">
      <cdf:CandidateIds>
        <xsl:variable name="idrefs">
          <xsl:for-each select="*[@key = 'CandidateIds']/string">
            <xsl:value-of select="concat(' ', .)"/>
          </xsl:for-each>
        </xsl:variable>
        <xsl:value-of select="normalize-space($idrefs)"/>
      </cdf:CandidateIds>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'IsWriteIn'])">
      <cdf:IsWriteIn>
        <xsl:value-of select="*[@key = 'IsWriteIn']"/>
      </cdf:IsWriteIn>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cdf:CastVoteRecordReport" match="*[string = 'CVR.CastVoteRecordReport' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="boolean(*[@key = 'CVR'])">
      <xsl:for-each select="*[@key = 'CVR']/map">
        <cdf:CVR>
          <xsl:apply-templates select="."/>
        </cdf:CVR>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Election'])">
      <xsl:for-each select="*[@key = 'Election']/map">
        <cdf:Election>
          <xsl:apply-templates select="."/>
        </cdf:Election>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'GeneratedDate'])">
      <cdf:GeneratedDate>
        <xsl:value-of select="*[@key = 'GeneratedDate']"/>
      </cdf:GeneratedDate>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'GpUnit'])">
      <xsl:for-each select="*[@key = 'GpUnit']/map">
        <cdf:GpUnit>
          <xsl:apply-templates select="."/>
        </cdf:GpUnit>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Notes'])">
      <cdf:Notes>
        <xsl:value-of select="*[@key = 'Notes']"/>
      </cdf:Notes>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Party'])">
      <xsl:for-each select="*[@key = 'Party']/map">
        <cdf:Party>
          <xsl:apply-templates select="."/>
        </cdf:Party>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'ReportGeneratingDeviceIds'])">
      <cdf:ReportGeneratingDeviceIds>
        <xsl:variable name="idrefs">
          <xsl:for-each select="*[@key = 'ReportGeneratingDeviceIds']/string">
            <xsl:value-of select="concat(' ', .)"/>
          </xsl:for-each>
        </xsl:variable>
        <xsl:value-of select="normalize-space($idrefs)"/>
      </cdf:ReportGeneratingDeviceIds>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'ReportingDevice'])">
      <xsl:for-each select="*[@key = 'ReportingDevice']/map">
        <cdf:ReportingDevice>
          <xsl:apply-templates select="."/>
        </cdf:ReportingDevice>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'ReportType'])">
      <xsl:for-each select="*[@key = 'ReportType']/string">
        <cdf:ReportType>
          <xsl:value-of select="."/>
        </cdf:ReportType>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'OtherReportType'])">
      <cdf:OtherReportType>
        <xsl:value-of select="*[@key = 'OtherReportType']"/>
      </cdf:OtherReportType>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Version'])">
      <cdf:Version>
        <xsl:value-of select="*[@key = 'Version']"/>
      </cdf:Version>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cdf:Code" match="*[string = 'CVR.Code' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="boolean(*[@key = 'Label'])">
      <cdf:Label>
        <xsl:value-of select="*[@key = 'Label']"/>
      </cdf:Label>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Type'])">
      <cdf:Type>
        <xsl:value-of select="*[@key = 'Type']"/>
      </cdf:Type>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'OtherType'])">
      <cdf:OtherType>
        <xsl:value-of select="*[@key = 'OtherType']"/>
      </cdf:OtherType>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Value'])">
      <cdf:Value>
        <xsl:value-of select="*[@key = 'Value']"/>
      </cdf:Value>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cdf:Contest" match="*[string = 'CVR.Contest' and string/@key = '@type']" priority="-2">
    <xsl:param name="set_type" select="true()"/>
    <xsl:attribute name="ObjectId">
      <xsl:value-of select="string[@key = '@id']"/>
    </xsl:attribute>
    <xsl:if test="boolean(*[@key = 'Abbreviation'])">
      <cdf:Abbreviation>
        <xsl:value-of select="*[@key = 'Abbreviation']"/>
      </cdf:Abbreviation>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Code'])">
      <xsl:for-each select="*[@key = 'Code']/map">
        <cdf:Code>
          <xsl:apply-templates select="."/>
        </cdf:Code>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'ContestSelection'])">
      <xsl:for-each select="*[@key = 'ContestSelection']/map">
        <cdf:ContestSelection>
          <xsl:apply-templates select="."/>
        </cdf:ContestSelection>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Name'])">
      <cdf:Name>
        <xsl:value-of select="*[@key = 'Name']"/>
      </cdf:Name>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'VoteVariation'])">
      <cdf:VoteVariation>
        <xsl:value-of select="*[@key = 'VoteVariation']"/>
      </cdf:VoteVariation>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'OtherVoteVariation'])">
      <cdf:OtherVoteVariation>
        <xsl:value-of select="*[@key = 'OtherVoteVariation']"/>
      </cdf:OtherVoteVariation>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cdf:ContestSelection" match="*[string = 'CVR.ContestSelection' and string/@key = '@type']" priority="-1">
    <xsl:param name="set_type" select="true()"/>
    <xsl:attribute name="ObjectId">
      <xsl:value-of select="string[@key = '@id']"/>
    </xsl:attribute>
    <xsl:if test="boolean(*[@key = 'Code'])">
      <xsl:for-each select="*[@key = 'Code']/map">
        <cdf:Code>
          <xsl:apply-templates select="."/>
        </cdf:Code>
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
        <cdf:Candidate>
          <xsl:apply-templates select="."/>
        </cdf:Candidate>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Code'])">
      <xsl:for-each select="*[@key = 'Code']/map">
        <cdf:Code>
          <xsl:apply-templates select="."/>
        </cdf:Code>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Contest'])">
      <xsl:for-each select="*[@key = 'Contest']/map">
        <cdf:Contest>
          <xsl:apply-templates select="."/>
        </cdf:Contest>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'ElectionScopeId'])">
      <cdf:ElectionScopeId>
        <xsl:value-of select="*[@key = 'ElectionScopeId']"/>
      </cdf:ElectionScopeId>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Name'])">
      <cdf:Name>
        <xsl:value-of select="*[@key = 'Name']"/>
      </cdf:Name>
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
        <cdf:Code>
          <xsl:apply-templates select="."/>
        </cdf:Code>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Name'])">
      <cdf:Name>
        <xsl:value-of select="*[@key = 'Name']"/>
      </cdf:Name>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'ReportingDeviceIds'])">
      <cdf:ReportingDeviceIds>
        <xsl:variable name="idrefs">
          <xsl:for-each select="*[@key = 'ReportingDeviceIds']/string">
            <xsl:value-of select="concat(' ', .)"/>
          </xsl:for-each>
        </xsl:variable>
        <xsl:value-of select="normalize-space($idrefs)"/>
      </cdf:ReportingDeviceIds>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Type'])">
      <cdf:Type>
        <xsl:value-of select="*[@key = 'Type']"/>
      </cdf:Type>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'OtherType'])">
      <cdf:OtherType>
        <xsl:value-of select="*[@key = 'OtherType']"/>
      </cdf:OtherType>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cdf:Hash" match="*[string = 'CVR.Hash' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="boolean(*[@key = 'Type'])">
      <cdf:Type>
        <xsl:value-of select="*[@key = 'Type']"/>
      </cdf:Type>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'OtherType'])">
      <cdf:OtherType>
        <xsl:value-of select="*[@key = 'OtherType']"/>
      </cdf:OtherType>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Value'])">
      <cdf:Value>
        <xsl:value-of select="*[@key = 'Value']"/>
      </cdf:Value>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cdf:Image" match="*[string = 'CVR.Image' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="$set_type">
      <xsl:attribute name="xsi:type">cdf:Image</xsl:attribute>
    </xsl:if>
    <xsl:call-template name="cdf:File">
      <xsl:with-param name="set_type" select="false()"/>
    </xsl:call-template>
  </xsl:template>
  <xsl:template name="cdf:ImageData" match="*[string = 'CVR.ImageData' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="boolean(*[@key = 'Hash'])">
      <cdf:Hash>
        <xsl:apply-templates select="*[@key = 'Hash']"/>
      </cdf:Hash>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Image'])">
      <cdf:Image>
        <xsl:apply-templates select="*[@key = 'Image']"/>
      </cdf:Image>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Location'])">
      <cdf:Location>
        <xsl:value-of select="*[@key = 'Location']"/>
      </cdf:Location>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cdf:Party" match="*[string = 'CVR.Party' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:attribute name="ObjectId">
      <xsl:value-of select="string[@key = '@id']"/>
    </xsl:attribute>
    <xsl:if test="boolean(*[@key = 'Abbreviation'])">
      <cdf:Abbreviation>
        <xsl:value-of select="*[@key = 'Abbreviation']"/>
      </cdf:Abbreviation>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Code'])">
      <xsl:for-each select="*[@key = 'Code']/map">
        <cdf:Code>
          <xsl:apply-templates select="."/>
        </cdf:Code>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Name'])">
      <cdf:Name>
        <xsl:value-of select="*[@key = 'Name']"/>
      </cdf:Name>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cdf:PartyContest" match="*[string = 'CVR.PartyContest' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="$set_type">
      <xsl:attribute name="xsi:type">cdf:PartyContest</xsl:attribute>
    </xsl:if>
    <xsl:call-template name="cdf:Contest">
      <xsl:with-param name="set_type" select="false()"/>
    </xsl:call-template>
  </xsl:template>
  <xsl:template name="cdf:PartySelection" match="*[string = 'CVR.PartySelection' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="$set_type">
      <xsl:attribute name="xsi:type">cdf:PartySelection</xsl:attribute>
    </xsl:if>
    <xsl:call-template name="cdf:ContestSelection">
      <xsl:with-param name="set_type" select="false()"/>
    </xsl:call-template>
    <xsl:if test="boolean(*[@key = 'PartyIds'])">
      <cdf:PartyIds>
        <xsl:variable name="idrefs">
          <xsl:for-each select="*[@key = 'PartyIds']/string">
            <xsl:value-of select="concat(' ', .)"/>
          </xsl:for-each>
        </xsl:variable>
        <xsl:value-of select="normalize-space($idrefs)"/>
      </cdf:PartyIds>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cdf:ReportingDevice" match="*[string = 'CVR.ReportingDevice' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:attribute name="ObjectId">
      <xsl:value-of select="string[@key = '@id']"/>
    </xsl:attribute>
    <xsl:if test="boolean(*[@key = 'Application'])">
      <cdf:Application>
        <xsl:value-of select="*[@key = 'Application']"/>
      </cdf:Application>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Code'])">
      <xsl:for-each select="*[@key = 'Code']/map">
        <cdf:Code>
          <xsl:apply-templates select="."/>
        </cdf:Code>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Manufacturer'])">
      <cdf:Manufacturer>
        <xsl:value-of select="*[@key = 'Manufacturer']"/>
      </cdf:Manufacturer>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'MarkMetricType'])">
      <cdf:MarkMetricType>
        <xsl:value-of select="*[@key = 'MarkMetricType']"/>
      </cdf:MarkMetricType>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Model'])">
      <cdf:Model>
        <xsl:value-of select="*[@key = 'Model']"/>
      </cdf:Model>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Notes'])">
      <xsl:for-each select="*[@key = 'Notes']/string">
        <cdf:Notes>
          <xsl:value-of select="."/>
        </cdf:Notes>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'SerialNumber'])">
      <cdf:SerialNumber>
        <xsl:value-of select="*[@key = 'SerialNumber']"/>
      </cdf:SerialNumber>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cdf:RetentionContest" match="*[string = 'CVR.RetentionContest' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="$set_type">
      <xsl:attribute name="xsi:type">cdf:RetentionContest</xsl:attribute>
    </xsl:if>
    <xsl:call-template name="cdf:BallotMeasureContest">
      <xsl:with-param name="set_type" select="false()"/>
    </xsl:call-template>
    <xsl:if test="boolean(*[@key = 'CandidateId'])">
      <cdf:CandidateId>
        <xsl:value-of select="*[@key = 'CandidateId']"/>
      </cdf:CandidateId>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cdf:SelectionPosition" match="*[string = 'CVR.SelectionPosition' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="boolean(*[@key = 'Code'])">
      <xsl:for-each select="*[@key = 'Code']/map">
        <cdf:Code>
          <xsl:apply-templates select="."/>
        </cdf:Code>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'CVRWriteIn'])">
      <cdf:CVRWriteIn>
        <xsl:apply-templates select="*[@key = 'CVRWriteIn']"/>
      </cdf:CVRWriteIn>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'FractionalVotes'])">
      <cdf:FractionalVotes>
        <xsl:value-of select="*[@key = 'FractionalVotes']"/>
      </cdf:FractionalVotes>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'HasIndication'])">
      <cdf:HasIndication>
        <xsl:value-of select="*[@key = 'HasIndication']"/>
      </cdf:HasIndication>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'IsAllocable'])">
      <cdf:IsAllocable>
        <xsl:value-of select="*[@key = 'IsAllocable']"/>
      </cdf:IsAllocable>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'IsGenerated'])">
      <cdf:IsGenerated>
        <xsl:value-of select="*[@key = 'IsGenerated']"/>
      </cdf:IsGenerated>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'MarkMetricValue'])">
      <xsl:for-each select="*[@key = 'MarkMetricValue']/string">
        <cdf:MarkMetricValue>
          <xsl:value-of select="."/>
        </cdf:MarkMetricValue>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'NumberVotes'])">
      <cdf:NumberVotes>
        <xsl:value-of select="*[@key = 'NumberVotes']"/>
      </cdf:NumberVotes>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Position'])">
      <cdf:Position>
        <xsl:value-of select="*[@key = 'Position']"/>
      </cdf:Position>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Rank'])">
      <cdf:Rank>
        <xsl:value-of select="*[@key = 'Rank']"/>
      </cdf:Rank>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Status'])">
      <xsl:for-each select="*[@key = 'Status']/string">
        <cdf:Status>
          <xsl:value-of select="."/>
        </cdf:Status>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'OtherStatus'])">
      <cdf:OtherStatus>
        <xsl:value-of select="*[@key = 'OtherStatus']"/>
      </cdf:OtherStatus>
    </xsl:if>
  </xsl:template>
</xsl:stylesheet>
