<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/2005/xpath-functions"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xmlns:cdf="http://itl.nist.gov/ns/voting/1500-103/v1"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:fn="http://www.w3.org/2005/xpath-functions"
  xmlns:math="http://www.w3.org/2005/xpath-functions/math"
  xmlns:array="http://www.w3.org/2005/xpath-functions/array"
  xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:xhtml="http://www.w3.org/1999/xhtml"
  xmlns:err="http://www.w3.org/2005/xqt-errors"
  exclude-result-prefixes="array cdf fn map math xhtml err xs xsi" version="3.0">
  <xsl:output method="text" version="1.0" encoding="UTF-8" indent="yes"/>
  <xsl:import-schema namespace="http://itl.nist.gov/ns/voting/1500-103/v1" schema-location="../../catalog_documents/NIST_V0_cast_vote_records.xsd"/>
  <xsl:template match="* | /" priority="-9">
    <!-- do nothing -->
  </xsl:template>
  <xsl:template match="/" name="xsl:initial-template">
    <xsl:variable name="json">
      <map>
        <xsl:apply-templates/>
      </map>
    </xsl:variable>
    <xsl:value-of select="
        xml-to-json($json, map {
          'indent': true(),
          'number-formatter': function ($n) {
            $n
          }
        })"/>
  </xsl:template>

  <xsl:template name="cdf:Annotation" match="element(*, cdf:Annotation)">
    <xsl:param name="set_type" select="false()"/>
    <xsl:where-populated>

      <array key="AdjudicatorName">
        <xsl:for-each select="cdf:AdjudicatorName">
          <string>
            <xsl:value-of select="."/>
          </string>

        </xsl:for-each>
      </array>
    </xsl:where-populated>
    <xsl:where-populated>

      <array key="Message">
        <xsl:for-each select="cdf:Message">
          <string>
            <xsl:value-of select="."/>
          </string>

        </xsl:for-each>
      </array>
    </xsl:where-populated>
    <xsl:where-populated>

      <string key="TimeStamp">
        <xsl:value-of select="cdf:TimeStamp"/>
      </string>
    </xsl:where-populated>
    <xsl:if test="not($set_type)">
      <string key="@type">CVR.Annotation</string>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cdf:BallotMeasureContest" match="element(*, cdf:BallotMeasureContest)"
    priority="-1">
    <xsl:param name="set_type" select="false()"/>
    <xsl:if test="not($set_type)">
      <string key="@type">CVR.BallotMeasureContest</string>
    </xsl:if>
    <xsl:call-template name="cdf:Contest">
      <xsl:with-param name="set_type" select="true()"/>
    </xsl:call-template>
  </xsl:template>
  <xsl:template name="cdf:BallotMeasureSelection" match="element(*, cdf:BallotMeasureSelection)">
    <xsl:param name="set_type" select="false()"/>
    <xsl:where-populated>

      <string key="Selection">
        <xsl:value-of select="cdf:Selection"/>
      </string>
    </xsl:where-populated>
    <xsl:if test="not($set_type)">
      <string key="@type">CVR.BallotMeasureSelection</string>
    </xsl:if>
    <xsl:call-template name="cdf:ContestSelection">
      <xsl:with-param name="set_type" select="true()"/>
    </xsl:call-template>
  </xsl:template>
  <xsl:template name="cdf:CVR" match="element(*, cdf:CVR)">
    <xsl:param name="set_type" select="false()"/>
    <xsl:where-populated>

      <string key="BallotAuditId">
        <xsl:value-of select="cdf:BallotAuditId"/>
      </string>
    </xsl:where-populated>
    <xsl:where-populated>

      <array key="BallotImage">
        <xsl:for-each select="cdf:BallotImage">
          <map>
            <xsl:apply-templates select="."/>
          </map>

        </xsl:for-each>
      </array>
    </xsl:where-populated>
    <xsl:where-populated>

      <string key="BallotPrePrintedId">
        <xsl:value-of select="cdf:BallotPrePrintedId"/>
      </string>
    </xsl:where-populated>
    <xsl:where-populated>

      <string key="BallotSheetId">
        <xsl:value-of select="cdf:BallotSheetId"/>
      </string>
    </xsl:where-populated>
    <xsl:where-populated>

      <string key="BallotStyleId">
        <xsl:value-of select="cdf:BallotStyleId"/>
      </string>
    </xsl:where-populated>
    <xsl:where-populated>

      <string key="BallotStyleUnitId">
        <xsl:value-of select="cdf:BallotStyleUnitId"/>
      </string>
    </xsl:where-populated>
    <xsl:where-populated>

      <string key="BatchId">
        <xsl:value-of select="cdf:BatchId"/>
      </string>
    </xsl:where-populated>
    <xsl:where-populated>

      <number key="BatchSequenceId">
        <xsl:value-of select="cdf:BatchSequenceId"/>
      </number>
    </xsl:where-populated>
    <xsl:where-populated>

      <string key="CreatingDeviceId">
        <xsl:value-of select="cdf:CreatingDeviceId"/>
      </string>
    </xsl:where-populated>
    <xsl:where-populated>

      <string key="CurrentSnapshotId">
        <xsl:value-of select="cdf:CurrentSnapshotId"/>
      </string>
    </xsl:where-populated>
    <xsl:where-populated>

      <array key="CVRSnapshot">
        <xsl:for-each select="cdf:CVRSnapshot">
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

      <array key="PartyIds">
        <xsl:for-each select="data(cdf:PartyIds)">
          <string>
            <xsl:value-of select="."/>
          </string>

        </xsl:for-each>
      </array>
    </xsl:where-populated>
    <xsl:where-populated>

      <string key="UniqueId">
        <xsl:value-of select="cdf:UniqueId"/>
      </string>
    </xsl:where-populated>
    <xsl:if test="not($set_type)">
      <string key="@type">CVR.CVR</string>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cdf:CVRContest" match="element(*, cdf:CVRContest)">
    <xsl:param name="set_type" select="false()"/>
    <xsl:where-populated>

      <string key="ContestId">
        <xsl:value-of select="cdf:ContestId"/>
      </string>
    </xsl:where-populated>
    <xsl:where-populated>

      <array key="CVRContestSelection">
        <xsl:for-each select="cdf:CVRContestSelection">
          <map>
            <xsl:apply-templates select="."/>
          </map>

        </xsl:for-each>
      </array>
    </xsl:where-populated>
    <xsl:where-populated>

      <string key="OtherStatus">
        <xsl:value-of select="cdf:OtherStatus"/>
      </string>
    </xsl:where-populated>
    <xsl:where-populated>

      <number key="Overvotes">
        <xsl:value-of select="cdf:Overvotes"/>
      </number>
    </xsl:where-populated>
    <xsl:where-populated>

      <number key="Selections">
        <xsl:value-of select="cdf:Selections"/>
      </number>
    </xsl:where-populated>
    <xsl:where-populated>

      <array key="Status">
        <xsl:for-each select="cdf:Status">
          <string>
            <xsl:value-of select="."/>
          </string>

        </xsl:for-each>
      </array>
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
      <string key="@type">CVR.CVRContest</string>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cdf:CVRContestSelection" match="element(*, cdf:CVRContestSelection)">
    <xsl:param name="set_type" select="false()"/>
    <xsl:where-populated>

      <string key="ContestSelectionId">
        <xsl:value-of select="cdf:ContestSelectionId"/>
      </string>
    </xsl:where-populated>
    <xsl:where-populated>

      <number key="OptionPosition">
        <xsl:value-of select="cdf:OptionPosition"/>
      </number>
    </xsl:where-populated>
    <xsl:where-populated>

      <string key="OtherStatus">
        <xsl:value-of select="cdf:OtherStatus"/>
      </string>
    </xsl:where-populated>
    <xsl:where-populated>

      <number key="Rank">
        <xsl:value-of select="cdf:Rank"/>
      </number>
    </xsl:where-populated>
    <xsl:where-populated>

      <array key="SelectionPosition">
        <xsl:for-each select="cdf:SelectionPosition">
          <map>
            <xsl:apply-templates select="."/>
          </map>

        </xsl:for-each>
      </array>
    </xsl:where-populated>
    <xsl:where-populated>

      <array key="Status">
        <xsl:for-each select="cdf:Status">
          <string>
            <xsl:value-of select="."/>
          </string>

        </xsl:for-each>
      </array>
    </xsl:where-populated>
    <xsl:where-populated>

      <string key="TotalFractionalVotes">
        <xsl:value-of select="cdf:TotalFractionalVotes"/>
      </string>
    </xsl:where-populated>
    <xsl:where-populated>

      <number key="TotalNumberVotes">
        <xsl:value-of select="cdf:TotalNumberVotes"/>
      </number>
    </xsl:where-populated>
    <xsl:if test="not($set_type)">
      <string key="@type">CVR.CVRContestSelection</string>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cdf:CVRSnapshot" match="element(*, cdf:CVRSnapshot)">
    <xsl:param name="set_type" select="false()"/>
    <string key="@id">
      <xsl:value-of select="@ObjectId"/>
    </string>
    <xsl:where-populated>

      <array key="Annotation">
        <xsl:for-each select="cdf:Annotation">
          <map>
            <xsl:apply-templates select="."/>
          </map>

        </xsl:for-each>
      </array>
    </xsl:where-populated>
    <xsl:where-populated>

      <array key="CVRContest">
        <xsl:for-each select="cdf:CVRContest">
          <map>
            <xsl:apply-templates select="."/>
          </map>

        </xsl:for-each>
      </array>
    </xsl:where-populated>
    <xsl:where-populated>

      <string key="OtherStatus">
        <xsl:value-of select="cdf:OtherStatus"/>
      </string>
    </xsl:where-populated>
    <xsl:where-populated>

      <array key="Status">
        <xsl:for-each select="cdf:Status">
          <string>
            <xsl:value-of select="."/>
          </string>

        </xsl:for-each>
      </array>
    </xsl:where-populated>
    <xsl:where-populated>

      <string key="Type">
        <xsl:value-of select="cdf:Type"/>
      </string>
    </xsl:where-populated>
    <xsl:if test="not($set_type)">
      <string key="@type">CVR.CVRSnapshot</string>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cdf:CVRWriteIn" match="element(*, cdf:CVRWriteIn)">
    <xsl:param name="set_type" select="false()"/>
    <xsl:where-populated>

      <string key="Text">
        <xsl:value-of select="cdf:Text"/>
      </string>
    </xsl:where-populated>
    <xsl:where-populated>

      <map key="WriteInImage">
        <xsl:apply-templates select="cdf:WriteInImage"/>
      </map>
    </xsl:where-populated>
    <xsl:if test="not($set_type)">
      <string key="@type">CVR.CVRWriteIn</string>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cdf:Candidate" match="element(*, cdf:Candidate)">
    <xsl:param name="set_type" select="false()"/>
    <string key="@id">
      <xsl:value-of select="@ObjectId"/>
    </string>
    <xsl:where-populated>

      <array key="Code">
        <xsl:for-each select="cdf:Code">
          <map>
            <xsl:apply-templates select="."/>
          </map>

        </xsl:for-each>
      </array>
    </xsl:where-populated>
    <xsl:where-populated>

      <string key="Name">
        <xsl:value-of select="cdf:Name"/>
      </string>
    </xsl:where-populated>
    <xsl:where-populated>

      <string key="PartyId">
        <xsl:value-of select="cdf:PartyId"/>
      </string>
    </xsl:where-populated>
    <xsl:if test="not($set_type)">
      <string key="@type">CVR.Candidate</string>
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

      <string key="PrimaryPartyId">
        <xsl:value-of select="cdf:PrimaryPartyId"/>
      </string>
    </xsl:where-populated>
    <xsl:where-populated>

      <number key="VotesAllowed">
        <xsl:value-of select="cdf:VotesAllowed"/>
      </number>
    </xsl:where-populated>
    <xsl:if test="not($set_type)">
      <string key="@type">CVR.CandidateContest</string>
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

      <boolean key="IsWriteIn">
        <xsl:value-of select="cdf:IsWriteIn"/>
      </boolean>
    </xsl:where-populated>
    <xsl:if test="not($set_type)">
      <string key="@type">CVR.CandidateSelection</string>
    </xsl:if>
    <xsl:call-template name="cdf:ContestSelection">
      <xsl:with-param name="set_type" select="true()"/>
    </xsl:call-template>
  </xsl:template>
  <xsl:template name="cdf:CastVoteRecordReport" match="element(*, cdf:CastVoteRecordReport)">
    <xsl:param name="set_type" select="false()"/>
    <xsl:where-populated>

      <array key="CVR">
        <xsl:for-each select="cdf:CVR">
          <map>
            <xsl:apply-templates select="."/>
          </map>

        </xsl:for-each>
      </array>
    </xsl:where-populated>
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

      <string key="Notes">
        <xsl:value-of select="cdf:Notes"/>
      </string>
    </xsl:where-populated>
    <xsl:where-populated>

      <string key="OtherReportType">
        <xsl:value-of select="cdf:OtherReportType"/>
      </string>
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

      <array key="ReportGeneratingDeviceIds">
        <xsl:for-each select="data(cdf:ReportGeneratingDeviceIds)">
          <string>
            <xsl:value-of select="."/>
          </string>

        </xsl:for-each>
      </array>
    </xsl:where-populated>
    <xsl:where-populated>

      <array key="ReportType">
        <xsl:for-each select="cdf:ReportType">
          <string>
            <xsl:value-of select="."/>
          </string>

        </xsl:for-each>
      </array>
    </xsl:where-populated>
    <xsl:where-populated>

      <array key="ReportingDevice">
        <xsl:for-each select="cdf:ReportingDevice">
          <map>
            <xsl:apply-templates select="."/>
          </map>

        </xsl:for-each>
      </array>
    </xsl:where-populated>
    <xsl:where-populated>

      <string key="Version">
        <xsl:value-of select="cdf:Version"/>
      </string>
    </xsl:where-populated>
    <xsl:if test="not($set_type)">
      <string key="@type">CVR.CastVoteRecordReport</string>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cdf:Code" match="element(*, cdf:Code)">
    <xsl:param name="set_type" select="false()"/>

    <xsl:where-populated>

      <string key="Label">
        <xsl:value-of select="cdf:Label"/>
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
      <string key="@type">CVR.Code</string>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cdf:Contest" match="element(*, cdf:Contest)" priority="-2">
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

      <array key="Code">
        <xsl:for-each select="cdf:Code">
          <map>
            <xsl:apply-templates select="."/>
          </map>

        </xsl:for-each>
      </array>
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

      <string key="Name">
        <xsl:value-of select="cdf:Name"/>
      </string>
    </xsl:where-populated>
    <xsl:where-populated>

      <string key="OtherVoteVariation">
        <xsl:value-of select="cdf:OtherVoteVariation"/>
      </string>
    </xsl:where-populated>
    <xsl:where-populated>

      <string key="VoteVariation">
        <xsl:value-of select="cdf:VoteVariation"/>
      </string>
    </xsl:where-populated>
    <xsl:if test="not($set_type)">
      <string key="@type">CVR.Contest</string>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cdf:ContestSelection" match="element(*, cdf:ContestSelection)" priority="-1">
    <xsl:param name="set_type" select="false()"/>
    <string key="@id">
      <xsl:value-of select="@ObjectId"/>
    </string>
    <xsl:where-populated>

      <array key="Code">
        <xsl:for-each select="cdf:Code">
          <map>
            <xsl:apply-templates select="."/>
          </map>

        </xsl:for-each>
      </array>
    </xsl:where-populated>
    <xsl:if test="not($set_type)">
      <string key="@type">CVR.ContestSelection</string>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cdf:Election" match="element(*, cdf:Election)">
    <xsl:param name="set_type" select="false()"/>
    <string key="@id">
      <xsl:value-of select="@ObjectId"/>
    </string>
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

      <array key="Code">
        <xsl:for-each select="cdf:Code">
          <map>
            <xsl:apply-templates select="."/>
          </map>

        </xsl:for-each>
      </array>
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

      <string key="ElectionScopeId">
        <xsl:value-of select="cdf:ElectionScopeId"/>
      </string>
    </xsl:where-populated>
    <xsl:where-populated>

      <string key="Name">
        <xsl:value-of select="cdf:Name"/>
      </string>
    </xsl:where-populated>
    <xsl:if test="not($set_type)">
      <string key="@type">CVR.Election</string>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cdf:File" match="element(*, cdf:File)" priority="-1">
    <xsl:param name="set_type" select="false()"/>
    <string key="Data">
      <xsl:value-of select="."/>
    </string>
    <xsl:where-populated>

      <string key="FileName">
        <xsl:value-of select="@FileName"/>
      </string>
    </xsl:where-populated>
    <xsl:where-populated>

      <string key="MimeType">
        <xsl:value-of select="@MimeType"/>
      </string>
    </xsl:where-populated>
    <xsl:if test="not($set_type)">
      <string key="@type">CVR.File</string>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cdf:GpUnit" match="element(*, cdf:GpUnit)">
    <xsl:param name="set_type" select="false()"/>
    <string key="@id">
      <xsl:value-of select="@ObjectId"/>
    </string>
    <xsl:where-populated>

      <array key="Code">
        <xsl:for-each select="cdf:Code">
          <map>
            <xsl:apply-templates select="."/>
          </map>

        </xsl:for-each>
      </array>
    </xsl:where-populated>
    <xsl:where-populated>

      <string key="Name">
        <xsl:value-of select="cdf:Name"/>
      </string>
    </xsl:where-populated>
    <xsl:where-populated>

      <string key="OtherType">
        <xsl:value-of select="cdf:OtherType"/>
      </string>
    </xsl:where-populated>
    <xsl:where-populated>

      <array key="ReportingDeviceIds">
        <xsl:for-each select="data(cdf:ReportingDeviceIds)">
          <string>
            <xsl:value-of select="."/>
          </string>

        </xsl:for-each>
      </array>
    </xsl:where-populated>
    <xsl:where-populated>

      <string key="Type">
        <xsl:value-of select="cdf:Type"/>
      </string>
    </xsl:where-populated>
    <xsl:if test="not($set_type)">
      <string key="@type">CVR.GpUnit</string>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cdf:Hash" match="element(*, cdf:Hash)">
    <xsl:param name="set_type" select="false()"/>
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
      <string key="@type">CVR.Hash</string>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cdf:Image" match="element(*, cdf:Image)">
    <xsl:param name="set_type" select="false()"/>
    <xsl:if test="not($set_type)">
      <string key="@type">CVR.Image</string>
    </xsl:if>
    <xsl:call-template name="cdf:File">
      <xsl:with-param name="set_type" select="true()"/>
    </xsl:call-template>
  </xsl:template>
  <xsl:template name="cdf:ImageData" match="element(*, cdf:ImageData)">
    <xsl:param name="set_type" select="false()"/>
    <xsl:where-populated>

      <map key="Hash">
        <xsl:apply-templates select="cdf:Hash"/>
      </map>
    </xsl:where-populated>
    <xsl:where-populated>

      <map key="Image">
        <xsl:apply-templates select="cdf:Image"/>
      </map>
    </xsl:where-populated>
    <xsl:where-populated>

      <string key="Location">
        <xsl:value-of select="cdf:Location"/>
      </string>
    </xsl:where-populated>
    <xsl:if test="not($set_type)">
      <string key="@type">CVR.ImageData</string>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cdf:Party" match="element(*, cdf:Party)">
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

      <array key="Code">
        <xsl:for-each select="cdf:Code">
          <map>
            <xsl:apply-templates select="."/>
          </map>

        </xsl:for-each>
      </array>
    </xsl:where-populated>
    <xsl:where-populated>

      <string key="Name">
        <xsl:value-of select="cdf:Name"/>
      </string>
    </xsl:where-populated>
    <xsl:if test="not($set_type)">
      <string key="@type">CVR.Party</string>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cdf:PartyContest" match="element(*, cdf:PartyContest)">
    <xsl:param name="set_type" select="false()"/>
    <xsl:if test="not($set_type)">
      <string key="@type">CVR.PartyContest</string>
    </xsl:if>
    <xsl:call-template name="cdf:Contest">
      <xsl:with-param name="set_type" select="true()"/>
    </xsl:call-template>
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
      <string key="@type">CVR.PartySelection</string>
    </xsl:if>
    <xsl:call-template name="cdf:ContestSelection">
      <xsl:with-param name="set_type" select="true()"/>
    </xsl:call-template>
  </xsl:template>
  <xsl:template name="cdf:ReportingDevice" match="element(*, cdf:ReportingDevice)">
    <xsl:param name="set_type" select="false()"/>
    <string key="@id">
      <xsl:value-of select="@ObjectId"/>
    </string>
    <xsl:where-populated>

      <string key="Application">
        <xsl:value-of select="cdf:Application"/>
      </string>
    </xsl:where-populated>
    <xsl:where-populated>

      <array key="Code">
        <xsl:for-each select="cdf:Code">
          <map>
            <xsl:apply-templates select="."/>
          </map>

        </xsl:for-each>
      </array>
    </xsl:where-populated>
    <xsl:where-populated>

      <string key="Manufacturer">
        <xsl:value-of select="cdf:Manufacturer"/>
      </string>
    </xsl:where-populated>
    <xsl:where-populated>

      <string key="MarkMetricType">
        <xsl:value-of select="cdf:MarkMetricType"/>
      </string>
    </xsl:where-populated>
    <xsl:where-populated>

      <string key="Model">
        <xsl:value-of select="cdf:Model"/>
      </string>
    </xsl:where-populated>
    <xsl:where-populated>

      <array key="Notes">
        <xsl:for-each select="cdf:Notes">
          <string>
            <xsl:value-of select="."/>
          </string>

        </xsl:for-each>
      </array>
    </xsl:where-populated>
    <xsl:where-populated>

      <string key="SerialNumber">
        <xsl:value-of select="cdf:SerialNumber"/>
      </string>
    </xsl:where-populated>
    <xsl:if test="not($set_type)">
      <string key="@type">CVR.ReportingDevice</string>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cdf:RetentionContest" match="element(*, cdf:RetentionContest)">
    <xsl:param name="set_type" select="false()"/>
    <xsl:where-populated>

      <string key="CandidateId">
        <xsl:value-of select="cdf:CandidateId"/>
      </string>
    </xsl:where-populated>
    <xsl:if test="not($set_type)">
      <string key="@type">CVR.RetentionContest</string>
    </xsl:if>
    <xsl:call-template name="cdf:BallotMeasureContest">
      <xsl:with-param name="set_type" select="true()"/>
    </xsl:call-template>
  </xsl:template>
  <xsl:template name="cdf:SelectionPosition" match="element(*, cdf:SelectionPosition)">
    <xsl:param name="set_type" select="false()"/>

    <xsl:where-populated>

      <map key="CVRWriteIn">
        <xsl:apply-templates select="cdf:CVRWriteIn"/>
      </map>
    </xsl:where-populated>
    <xsl:where-populated>

      <string key="FractionalVotes">
        <xsl:value-of select="cdf:FractionalVotes"/>
      </string>
    </xsl:where-populated>
    <xsl:where-populated>

      <string key="HasIndication">
        <xsl:value-of select="cdf:HasIndication"/>
      </string>
    </xsl:where-populated>
    <xsl:where-populated>

      <string key="IsAllocable">
        <xsl:value-of select="cdf:IsAllocable"/>
      </string>
    </xsl:where-populated>
    <xsl:where-populated>

      <boolean key="IsGenerated">
        <xsl:value-of select="cdf:IsGenerated"/>
      </boolean>
    </xsl:where-populated>
    <xsl:where-populated>

      <array key="MarkMetricValue">
        <xsl:for-each select="cdf:MarkMetricValue">
          <string>
            <xsl:value-of select="."/>
          </string>

        </xsl:for-each>
      </array>
    </xsl:where-populated>
    <xsl:where-populated>

      <number key="NumberVotes">
        <xsl:value-of select="cdf:NumberVotes"/>
      </number>
    </xsl:where-populated>
    <xsl:where-populated>

      <string key="OtherStatus">
        <xsl:value-of select="cdf:OtherStatus"/>
      </string>
    </xsl:where-populated>
    <xsl:where-populated>

      <number key="Position">
        <xsl:value-of select="cdf:Position"/>
      </number>
    </xsl:where-populated>
    <xsl:where-populated>

      <number key="Rank">
        <xsl:value-of select="cdf:Rank"/>
      </number>
    </xsl:where-populated>
    <xsl:where-populated>

      <array key="Status">
        <xsl:for-each select="cdf:Status">
          <string>
            <xsl:value-of select="."/>
          </string>

        </xsl:for-each>
      </array>
    </xsl:where-populated>
    <xsl:if test="not($set_type)">
      <string key="@type">CVR.SelectionPosition</string>
    </xsl:if>
  </xsl:template>
</xsl:stylesheet>
