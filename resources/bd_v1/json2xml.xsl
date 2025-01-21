<?xml version="1.0" encoding="UTF-8"?>
<!-- This file was generated using the umm_template ruby_json2xml_binding.rb.erb (md5: bfe324002928f9b1121d08ff89b0f8c4)

Locals
  outer_module=BallotDefinition  target_schema=http://itl.nist.gov/ns/voting/1500-20/v1
Visible Packages
  BallotDefinition -->
<xsl:stylesheet xmlns:bd="http://itl.nist.gov/ns/voting/1500-20/v1" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xml:id="json2xml" xpath-default-namespace="http://www.w3.org/2005/xpath-functions" version="3.0">
  <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
  <xsl:template name="start" match=".[. instance of map(*)]" priority="1">
    <xsl:variable name="xml" select=". =&gt; serialize(map { 'method' : 'json' }) =&gt; json-to-xml()"/>
    <xsl:if test="$xml/*[string = 'BallotDefinition.BallotDefinition' and string/@key = '@type']">
      <bd:BallotDefinition>
        <xsl:apply-templates select="$xml"/>
      </bd:BallotDefinition>
    </xsl:if>
  </xsl:template>
  <!-- Begin classes for Package BallotDefinition -->
  <xsl:template name="bd:ActivationContest" match="*[string = 'BallotDefinition.ActivationContest' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="$set_type">
      <xsl:attribute name="xsi:type">bd:ActivationContest</xsl:attribute>
    </xsl:if>
    <xsl:call-template name="bd:ControllingContest">
      <xsl:with-param name="set_type" select="false()"/>
    </xsl:call-template>
    <xsl:if test="boolean(*[@key = 'CandidateId'])">
      <bd:CandidateId>
        <xsl:value-of select="*[@key = 'CandidateId']"/>
      </bd:CandidateId>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'SummaryText'])">
      <bd:SummaryText>
        <xsl:apply-templates select="*[@key = 'SummaryText']"/>
      </bd:SummaryText>
    </xsl:if>
  </xsl:template>
  <xsl:template name="bd:ActivationOption" match="*[string = 'BallotDefinition.ActivationOption' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="$set_type">
      <xsl:attribute name="xsi:type">bd:ActivationOption</xsl:attribute>
    </xsl:if>
    <xsl:call-template name="bd:ContestOption">
      <xsl:with-param name="set_type" select="false()"/>
    </xsl:call-template>
    <xsl:if test="boolean(*[@key = 'CausesActivation'])">
      <bd:CausesActivation>
        <xsl:value-of select="*[@key = 'CausesActivation']"/>
      </bd:CausesActivation>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Selection'])">
      <bd:Selection>
        <xsl:apply-templates select="*[@key = 'Selection']"/>
      </bd:Selection>
    </xsl:if>
  </xsl:template>
  <xsl:template name="bd:AnnotatedString" match="*[string = 'BallotDefinition.AnnotatedString' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="boolean(*[@key = 'Annotation'])">
      <xsl:attribute name="Annotation">
        <xsl:value-of select="*[@key = 'Annotation']"/>
      </xsl:attribute>
    </xsl:if>
    <xsl:value-of select="*[@key = 'Content']"/>
  </xsl:template>
  <xsl:template name="bd:AnnotatedUri" match="*[string = 'BallotDefinition.AnnotatedUri' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="boolean(*[@key = 'Annotation'])">
      <xsl:attribute name="Annotation">
        <xsl:value-of select="*[@key = 'Annotation']"/>
      </xsl:attribute>
    </xsl:if>
    <xsl:value-of select="*[@key = 'Content']"/>
  </xsl:template>
  <xsl:template name="bd:BallotDefinition" match="*[string = 'BallotDefinition.BallotDefinition' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="boolean(*[@key = 'BallotFormat'])">
      <xsl:for-each select="*[@key = 'BallotFormat']/map">
        <bd:BallotFormat>
          <xsl:apply-templates select="."/>
        </bd:BallotFormat>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Election'])">
      <xsl:for-each select="*[@key = 'Election']/map">
        <bd:Election>
          <xsl:apply-templates select="."/>
        </bd:Election>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'ExternalIdentifier'])">
      <xsl:for-each select="*[@key = 'ExternalIdentifier']/map">
        <bd:ExternalIdentifier>
          <xsl:apply-templates select="."/>
        </bd:ExternalIdentifier>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'GeneratedDate'])">
      <bd:GeneratedDate>
        <xsl:value-of select="*[@key = 'GeneratedDate']"/>
      </bd:GeneratedDate>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'GpUnit'])">
      <xsl:for-each select="*[@key = 'GpUnit']/map">
        <bd:GpUnit>
          <xsl:apply-templates select="."/>
        </bd:GpUnit>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Header'])">
      <xsl:for-each select="*[@key = 'Header']/map">
        <bd:Header>
          <xsl:apply-templates select="."/>
        </bd:Header>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Issuer'])">
      <bd:Issuer>
        <xsl:value-of select="*[@key = 'Issuer']"/>
      </bd:Issuer>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'IssuerAbbreviation'])">
      <bd:IssuerAbbreviation>
        <xsl:value-of select="*[@key = 'IssuerAbbreviation']"/>
      </bd:IssuerAbbreviation>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'IsTest'])">
      <bd:IsTest>
        <xsl:value-of select="*[@key = 'IsTest']"/>
      </bd:IsTest>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Notes'])">
      <bd:Notes>
        <xsl:value-of select="*[@key = 'Notes']"/>
      </bd:Notes>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Office'])">
      <xsl:for-each select="*[@key = 'Office']/map">
        <bd:Office>
          <xsl:apply-templates select="."/>
        </bd:Office>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'OfficeGroup'])">
      <xsl:for-each select="*[@key = 'OfficeGroup']/map">
        <bd:OfficeGroup>
          <xsl:apply-templates select="."/>
        </bd:OfficeGroup>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Party'])">
      <xsl:for-each select="*[@key = 'Party']/map">
        <bd:Party>
          <xsl:apply-templates select="."/>
        </bd:Party>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Person'])">
      <xsl:for-each select="*[@key = 'Person']/map">
        <bd:Person>
          <xsl:apply-templates select="."/>
        </bd:Person>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'SequenceStart'])">
      <bd:SequenceStart>
        <xsl:value-of select="*[@key = 'SequenceStart']"/>
      </bd:SequenceStart>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'SequenceEnd'])">
      <bd:SequenceEnd>
        <xsl:value-of select="*[@key = 'SequenceEnd']"/>
      </bd:SequenceEnd>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Shape'])">
      <xsl:for-each select="*[@key = 'Shape']/map">
        <bd:Shape>
          <xsl:apply-templates select="."/>
        </bd:Shape>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'TestType'])">
      <bd:TestType>
        <xsl:value-of select="*[@key = 'TestType']"/>
      </bd:TestType>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'VendorApplicationId'])">
      <bd:VendorApplicationId>
        <xsl:value-of select="*[@key = 'VendorApplicationId']"/>
      </bd:VendorApplicationId>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Version'])">
      <bd:Version>
        <xsl:value-of select="*[@key = 'Version']"/>
      </bd:Version>
    </xsl:if>
  </xsl:template>
  <xsl:template name="bd:BallotFormat" match="*[string = 'BallotDefinition.BallotFormat' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:attribute name="ObjectId">
      <xsl:value-of select="string[@key = '@id']"/>
    </xsl:attribute>
    <xsl:if test="boolean(*[@key = 'Application'])">
      <bd:Application>
        <xsl:value-of select="*[@key = 'Application']"/>
      </bd:Application>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'ExternalIdentifier'])">
      <xsl:for-each select="*[@key = 'ExternalIdentifier']/map">
        <bd:ExternalIdentifier>
          <xsl:apply-templates select="."/>
        </bd:ExternalIdentifier>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'FiducialMark'])">
      <xsl:for-each select="*[@key = 'FiducialMark']/map">
        <bd:FiducialMark>
          <xsl:apply-templates select="."/>
        </bd:FiducialMark>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'LongEdge'])">
      <bd:LongEdge>
        <xsl:value-of select="*[@key = 'LongEdge']"/>
      </bd:LongEdge>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Manufacturer'])">
      <bd:Manufacturer>
        <xsl:value-of select="*[@key = 'Manufacturer']"/>
      </bd:Manufacturer>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'mCDFArea'])">
      <xsl:for-each select="*[@key = 'mCDFArea']/map">
        <bd:mCDFArea>
          <xsl:apply-templates select="."/>
        </bd:mCDFArea>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'MeasurementUnit'])">
      <bd:MeasurementUnit>
        <xsl:value-of select="*[@key = 'MeasurementUnit']"/>
      </bd:MeasurementUnit>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Orientation'])">
      <bd:Orientation>
        <xsl:value-of select="*[@key = 'Orientation']"/>
      </bd:Orientation>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'SelectionCaptureMethod'])">
      <bd:SelectionCaptureMethod>
        <xsl:value-of select="*[@key = 'SelectionCaptureMethod']"/>
      </bd:SelectionCaptureMethod>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'ShortEdge'])">
      <bd:ShortEdge>
        <xsl:value-of select="*[@key = 'ShortEdge']"/>
      </bd:ShortEdge>
    </xsl:if>
  </xsl:template>
  <xsl:template name="bd:BallotMeasureContest" match="*[string = 'BallotDefinition.BallotMeasureContest' and string/@key = '@type']" priority="-1">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="$set_type">
      <xsl:attribute name="xsi:type">bd:BallotMeasureContest</xsl:attribute>
    </xsl:if>
    <xsl:call-template name="bd:Contest">
      <xsl:with-param name="set_type" select="false()"/>
    </xsl:call-template>
    <xsl:if test="boolean(*[@key = 'ConStatement'])">
      <bd:ConStatement>
        <xsl:apply-templates select="*[@key = 'ConStatement']"/>
      </bd:ConStatement>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'EffectOfAbstain'])">
      <bd:EffectOfAbstain>
        <xsl:apply-templates select="*[@key = 'EffectOfAbstain']"/>
      </bd:EffectOfAbstain>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'FullText'])">
      <bd:FullText>
        <xsl:apply-templates select="*[@key = 'FullText']"/>
      </bd:FullText>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'InfoUri'])">
      <xsl:for-each select="*[@key = 'InfoUri']/map">
        <bd:InfoUri>
          <xsl:apply-templates select="."/>
        </bd:InfoUri>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'PassageThreshold'])">
      <bd:PassageThreshold>
        <xsl:apply-templates select="*[@key = 'PassageThreshold']"/>
      </bd:PassageThreshold>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'ProStatement'])">
      <bd:ProStatement>
        <xsl:apply-templates select="*[@key = 'ProStatement']"/>
      </bd:ProStatement>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'SummaryText'])">
      <bd:SummaryText>
        <xsl:apply-templates select="*[@key = 'SummaryText']"/>
      </bd:SummaryText>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Type'])">
      <bd:Type>
        <xsl:value-of select="*[@key = 'Type']"/>
      </bd:Type>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'OtherType'])">
      <bd:OtherType>
        <xsl:value-of select="*[@key = 'OtherType']"/>
      </bd:OtherType>
    </xsl:if>
  </xsl:template>
  <xsl:template name="bd:BallotMeasureOption" match="*[string = 'BallotDefinition.BallotMeasureOption' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="$set_type">
      <xsl:attribute name="xsi:type">bd:BallotMeasureOption</xsl:attribute>
    </xsl:if>
    <xsl:call-template name="bd:ContestOption">
      <xsl:with-param name="set_type" select="false()"/>
    </xsl:call-template>
    <xsl:if test="boolean(*[@key = 'Selection'])">
      <bd:Selection>
        <xsl:apply-templates select="*[@key = 'Selection']"/>
      </bd:Selection>
    </xsl:if>
  </xsl:template>
  <xsl:template name="bd:BallotStyle" match="*[string = 'BallotDefinition.BallotStyle' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="boolean(*[@key = 'ExternalIdentifier'])">
      <xsl:for-each select="*[@key = 'ExternalIdentifier']/map">
        <bd:ExternalIdentifier>
          <xsl:apply-templates select="."/>
        </bd:ExternalIdentifier>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'GpUnitIds'])">
      <bd:GpUnitIds>
        <xsl:variable name="idrefs">
          <xsl:for-each select="*[@key = 'GpUnitIds']/string">
            <xsl:value-of select="concat(' ', .)"/>
          </xsl:for-each>
        </xsl:variable>
        <xsl:value-of select="normalize-space($idrefs)"/>
      </bd:GpUnitIds>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'ImageUri'])">
      <xsl:for-each select="*[@key = 'ImageUri']/map">
        <bd:ImageUri>
          <xsl:apply-templates select="."/>
        </bd:ImageUri>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Language'])">
      <xsl:for-each select="*[@key = 'Language']/string">
        <bd:Language>
          <xsl:value-of select="."/>
        </bd:Language>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'OrderedContent'])">
      <xsl:for-each select="*[@key = 'OrderedContent']/map">
        <bd:OrderedContent>
          <xsl:apply-templates select="."/>
        </bd:OrderedContent>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'PartyIds'])">
      <bd:PartyIds>
        <xsl:variable name="idrefs">
          <xsl:for-each select="*[@key = 'PartyIds']/string">
            <xsl:value-of select="concat(' ', .)"/>
          </xsl:for-each>
        </xsl:variable>
        <xsl:value-of select="normalize-space($idrefs)"/>
      </bd:PartyIds>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Purpose'])">
      <bd:Purpose>
        <xsl:value-of select="*[@key = 'Purpose']"/>
      </bd:Purpose>
    </xsl:if>
  </xsl:template>
  <xsl:template name="bd:BoundedObject" match="*[string = 'BallotDefinition.BoundedObject' and string/@key = '@type']" priority="-1">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="boolean(*[@key = 'H'])">
      <bd:H>
        <xsl:value-of select="*[@key = 'H']"/>
      </bd:H>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Sheet'])">
      <bd:Sheet>
        <xsl:value-of select="*[@key = 'Sheet']"/>
      </bd:Sheet>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Side'])">
      <bd:Side>
        <xsl:value-of select="*[@key = 'Side']"/>
      </bd:Side>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'W'])">
      <bd:W>
        <xsl:value-of select="*[@key = 'W']"/>
      </bd:W>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'X'])">
      <bd:X>
        <xsl:value-of select="*[@key = 'X']"/>
      </bd:X>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Y'])">
      <bd:Y>
        <xsl:value-of select="*[@key = 'Y']"/>
      </bd:Y>
    </xsl:if>
  </xsl:template>
  <xsl:template name="bd:Candidate" match="*[string = 'BallotDefinition.Candidate' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:attribute name="ObjectId">
      <xsl:value-of select="string[@key = '@id']"/>
    </xsl:attribute>
    <xsl:if test="boolean(*[@key = 'BallotName'])">
      <bd:BallotName>
        <xsl:apply-templates select="*[@key = 'BallotName']"/>
      </bd:BallotName>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'CampaignSlogan'])">
      <bd:CampaignSlogan>
        <xsl:apply-templates select="*[@key = 'CampaignSlogan']"/>
      </bd:CampaignSlogan>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'ContactInformation'])">
      <bd:ContactInformation>
        <xsl:apply-templates select="*[@key = 'ContactInformation']"/>
      </bd:ContactInformation>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'ExternalIdentifier'])">
      <xsl:for-each select="*[@key = 'ExternalIdentifier']/map">
        <bd:ExternalIdentifier>
          <xsl:apply-templates select="."/>
        </bd:ExternalIdentifier>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'FileDate'])">
      <bd:FileDate>
        <xsl:value-of select="*[@key = 'FileDate']"/>
      </bd:FileDate>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'IsIncumbent'])">
      <bd:IsIncumbent>
        <xsl:value-of select="*[@key = 'IsIncumbent']"/>
      </bd:IsIncumbent>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'IsTopTicket'])">
      <bd:IsTopTicket>
        <xsl:value-of select="*[@key = 'IsTopTicket']"/>
      </bd:IsTopTicket>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'PartyId'])">
      <bd:PartyId>
        <xsl:value-of select="*[@key = 'PartyId']"/>
      </bd:PartyId>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'PersonId'])">
      <bd:PersonId>
        <xsl:value-of select="*[@key = 'PersonId']"/>
      </bd:PersonId>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'PreElectionStatus'])">
      <bd:PreElectionStatus>
        <xsl:value-of select="*[@key = 'PreElectionStatus']"/>
      </bd:PreElectionStatus>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'ReadName'])">
      <bd:ReadName>
        <xsl:value-of select="*[@key = 'ReadName']"/>
      </bd:ReadName>
    </xsl:if>
  </xsl:template>
  <xsl:template name="bd:CandidateContest" match="*[string = 'BallotDefinition.CandidateContest' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="$set_type">
      <xsl:attribute name="xsi:type">bd:CandidateContest</xsl:attribute>
    </xsl:if>
    <xsl:call-template name="bd:Contest">
      <xsl:with-param name="set_type" select="false()"/>
    </xsl:call-template>
    <xsl:if test="boolean(*[@key = 'NumberElected'])">
      <bd:NumberElected>
        <xsl:value-of select="*[@key = 'NumberElected']"/>
      </bd:NumberElected>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'NumberRunoff'])">
      <bd:NumberRunoff>
        <xsl:value-of select="*[@key = 'NumberRunoff']"/>
      </bd:NumberRunoff>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'OfficeIds'])">
      <bd:OfficeIds>
        <xsl:variable name="idrefs">
          <xsl:for-each select="*[@key = 'OfficeIds']/string">
            <xsl:value-of select="concat(' ', .)"/>
          </xsl:for-each>
        </xsl:variable>
        <xsl:value-of select="normalize-space($idrefs)"/>
      </bd:OfficeIds>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'PrimaryPartyIds'])">
      <bd:PrimaryPartyIds>
        <xsl:variable name="idrefs">
          <xsl:for-each select="*[@key = 'PrimaryPartyIds']/string">
            <xsl:value-of select="concat(' ', .)"/>
          </xsl:for-each>
        </xsl:variable>
        <xsl:value-of select="normalize-space($idrefs)"/>
      </bd:PrimaryPartyIds>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'RanksAllowed'])">
      <bd:RanksAllowed>
        <xsl:value-of select="*[@key = 'RanksAllowed']"/>
      </bd:RanksAllowed>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'VotesAllowed'])">
      <bd:VotesAllowed>
        <xsl:value-of select="*[@key = 'VotesAllowed']"/>
      </bd:VotesAllowed>
    </xsl:if>
  </xsl:template>
  <xsl:template name="bd:CandidateOption" match="*[string = 'BallotDefinition.CandidateOption' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="$set_type">
      <xsl:attribute name="xsi:type">bd:CandidateOption</xsl:attribute>
    </xsl:if>
    <xsl:call-template name="bd:ContestOption">
      <xsl:with-param name="set_type" select="false()"/>
    </xsl:call-template>
    <xsl:if test="boolean(*[@key = 'CandidateIds'])">
      <bd:CandidateIds>
        <xsl:variable name="idrefs">
          <xsl:for-each select="*[@key = 'CandidateIds']/string">
            <xsl:value-of select="concat(' ', .)"/>
          </xsl:for-each>
        </xsl:variable>
        <xsl:value-of select="normalize-space($idrefs)"/>
      </bd:CandidateIds>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'EndorsementPartyIds'])">
      <bd:EndorsementPartyIds>
        <xsl:variable name="idrefs">
          <xsl:for-each select="*[@key = 'EndorsementPartyIds']/string">
            <xsl:value-of select="concat(' ', .)"/>
          </xsl:for-each>
        </xsl:variable>
        <xsl:value-of select="normalize-space($idrefs)"/>
      </bd:EndorsementPartyIds>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'IsWriteIn'])">
      <bd:IsWriteIn>
        <xsl:value-of select="*[@key = 'IsWriteIn']"/>
      </bd:IsWriteIn>
    </xsl:if>
  </xsl:template>
  <xsl:template name="bd:Coalition" match="*[string = 'BallotDefinition.Coalition' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="$set_type">
      <xsl:attribute name="xsi:type">bd:Coalition</xsl:attribute>
    </xsl:if>
    <xsl:call-template name="bd:Party">
      <xsl:with-param name="set_type" select="false()"/>
    </xsl:call-template>
    <xsl:if test="boolean(*[@key = 'ContestIds'])">
      <bd:ContestIds>
        <xsl:variable name="idrefs">
          <xsl:for-each select="*[@key = 'ContestIds']/string">
            <xsl:value-of select="concat(' ', .)"/>
          </xsl:for-each>
        </xsl:variable>
        <xsl:value-of select="normalize-space($idrefs)"/>
      </bd:ContestIds>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'PartyIds'])">
      <bd:PartyIds>
        <xsl:variable name="idrefs">
          <xsl:for-each select="*[@key = 'PartyIds']/string">
            <xsl:value-of select="concat(' ', .)"/>
          </xsl:for-each>
        </xsl:variable>
        <xsl:value-of select="normalize-space($idrefs)"/>
      </bd:PartyIds>
    </xsl:if>
  </xsl:template>
  <xsl:template name="bd:ContactInformation" match="*[string = 'BallotDefinition.ContactInformation' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="boolean(*[@key = 'Label'])">
      <xsl:attribute name="Label">
        <xsl:value-of select="*[@key = 'Label']"/>
      </xsl:attribute>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'AddressLine'])">
      <xsl:for-each select="*[@key = 'AddressLine']/string">
        <bd:AddressLine>
          <xsl:value-of select="."/>
        </bd:AddressLine>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Directions'])">
      <bd:Directions>
        <xsl:apply-templates select="*[@key = 'Directions']"/>
      </bd:Directions>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Email'])">
      <xsl:for-each select="*[@key = 'Email']/map">
        <bd:Email>
          <xsl:apply-templates select="."/>
        </bd:Email>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Fax'])">
      <xsl:for-each select="*[@key = 'Fax']/map">
        <bd:Fax>
          <xsl:apply-templates select="."/>
        </bd:Fax>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'LatLng'])">
      <bd:LatLng>
        <xsl:apply-templates select="*[@key = 'LatLng']"/>
      </bd:LatLng>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Name'])">
      <bd:Name>
        <xsl:value-of select="*[@key = 'Name']"/>
      </bd:Name>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Phone'])">
      <xsl:for-each select="*[@key = 'Phone']/map">
        <bd:Phone>
          <xsl:apply-templates select="."/>
        </bd:Phone>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Schedule'])">
      <xsl:for-each select="*[@key = 'Schedule']/map">
        <bd:Schedule>
          <xsl:apply-templates select="."/>
        </bd:Schedule>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Uri'])">
      <xsl:for-each select="*[@key = 'Uri']/map">
        <bd:Uri>
          <xsl:apply-templates select="."/>
        </bd:Uri>
      </xsl:for-each>
    </xsl:if>
  </xsl:template>
  <xsl:template name="bd:Contest" match="*[string = 'BallotDefinition.Contest' and string/@key = '@type']" priority="-2">
    <xsl:param name="set_type" select="true()"/>
    <xsl:attribute name="ObjectId">
      <xsl:value-of select="string[@key = '@id']"/>
    </xsl:attribute>
    <xsl:if test="boolean(*[@key = 'Abbreviation'])">
      <bd:Abbreviation>
        <xsl:value-of select="*[@key = 'Abbreviation']"/>
      </bd:Abbreviation>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'BallotSubTitle'])">
      <bd:BallotSubTitle>
        <xsl:apply-templates select="*[@key = 'BallotSubTitle']"/>
      </bd:BallotSubTitle>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'BallotTitle'])">
      <bd:BallotTitle>
        <xsl:apply-templates select="*[@key = 'BallotTitle']"/>
      </bd:BallotTitle>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'ContestOption'])">
      <xsl:for-each select="*[@key = 'ContestOption']/map">
        <bd:ContestOption>
          <xsl:apply-templates select="."/>
        </bd:ContestOption>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'ElectionDistrictId'])">
      <bd:ElectionDistrictId>
        <xsl:value-of select="*[@key = 'ElectionDistrictId']"/>
      </bd:ElectionDistrictId>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'ExternalIdentifier'])">
      <xsl:for-each select="*[@key = 'ExternalIdentifier']/map">
        <bd:ExternalIdentifier>
          <xsl:apply-templates select="."/>
        </bd:ExternalIdentifier>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'HasRotation'])">
      <bd:HasRotation>
        <xsl:value-of select="*[@key = 'HasRotation']"/>
      </bd:HasRotation>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Name'])">
      <bd:Name>
        <xsl:value-of select="*[@key = 'Name']"/>
      </bd:Name>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'SequenceOrder'])">
      <bd:SequenceOrder>
        <xsl:value-of select="*[@key = 'SequenceOrder']"/>
      </bd:SequenceOrder>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'TotalSubUnits'])">
      <bd:TotalSubUnits>
        <xsl:value-of select="*[@key = 'TotalSubUnits']"/>
      </bd:TotalSubUnits>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'VoteVariation'])">
      <bd:VoteVariation>
        <xsl:value-of select="*[@key = 'VoteVariation']"/>
      </bd:VoteVariation>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'OtherVoteVariation'])">
      <bd:OtherVoteVariation>
        <xsl:value-of select="*[@key = 'OtherVoteVariation']"/>
      </bd:OtherVoteVariation>
    </xsl:if>
  </xsl:template>
  <xsl:template name="bd:ContestOption" match="*[string = 'BallotDefinition.ContestOption' and string/@key = '@type']" priority="-1">
    <xsl:param name="set_type" select="true()"/>
    <xsl:attribute name="ObjectId">
      <xsl:value-of select="string[@key = '@id']"/>
    </xsl:attribute>
    <xsl:if test="boolean(*[@key = 'ExternalIdentifier'])">
      <xsl:for-each select="*[@key = 'ExternalIdentifier']/map">
        <bd:ExternalIdentifier>
          <xsl:apply-templates select="."/>
        </bd:ExternalIdentifier>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'SequenceOrder'])">
      <bd:SequenceOrder>
        <xsl:value-of select="*[@key = 'SequenceOrder']"/>
      </bd:SequenceOrder>
    </xsl:if>
  </xsl:template>
  <xsl:template name="bd:ControllingContest" match="*[string = 'BallotDefinition.ControllingContest' and string/@key = '@type']" priority="-1">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="$set_type">
      <xsl:attribute name="xsi:type">bd:ControllingContest</xsl:attribute>
    </xsl:if>
    <xsl:call-template name="bd:Contest">
      <xsl:with-param name="set_type" select="false()"/>
    </xsl:call-template>
    <xsl:if test="boolean(*[@key = 'ControlledContestIds'])">
      <bd:ControlledContestIds>
        <xsl:variable name="idrefs">
          <xsl:for-each select="*[@key = 'ControlledContestIds']/string">
            <xsl:value-of select="concat(' ', .)"/>
          </xsl:for-each>
        </xsl:variable>
        <xsl:value-of select="normalize-space($idrefs)"/>
      </bd:ControlledContestIds>
    </xsl:if>
  </xsl:template>
  <xsl:template name="bd:Election" match="*[string = 'BallotDefinition.Election' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="boolean(*[@key = 'BallotStyle'])">
      <xsl:for-each select="*[@key = 'BallotStyle']/map">
        <bd:BallotStyle>
          <xsl:apply-templates select="."/>
        </bd:BallotStyle>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Candidate'])">
      <xsl:for-each select="*[@key = 'Candidate']/map">
        <bd:Candidate>
          <xsl:apply-templates select="."/>
        </bd:Candidate>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'ContactInformation'])">
      <bd:ContactInformation>
        <xsl:apply-templates select="*[@key = 'ContactInformation']"/>
      </bd:ContactInformation>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Contest'])">
      <xsl:for-each select="*[@key = 'Contest']/map">
        <bd:Contest>
          <xsl:apply-templates select="."/>
        </bd:Contest>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'ElectionScopeId'])">
      <bd:ElectionScopeId>
        <xsl:value-of select="*[@key = 'ElectionScopeId']"/>
      </bd:ElectionScopeId>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'ExternalIdentifier'])">
      <xsl:for-each select="*[@key = 'ExternalIdentifier']/map">
        <bd:ExternalIdentifier>
          <xsl:apply-templates select="."/>
        </bd:ExternalIdentifier>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Name'])">
      <bd:Name>
        <xsl:apply-templates select="*[@key = 'Name']"/>
      </bd:Name>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'StartDate'])">
      <bd:StartDate>
        <xsl:value-of select="*[@key = 'StartDate']"/>
      </bd:StartDate>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'EndDate'])">
      <bd:EndDate>
        <xsl:value-of select="*[@key = 'EndDate']"/>
      </bd:EndDate>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Type'])">
      <bd:Type>
        <xsl:value-of select="*[@key = 'Type']"/>
      </bd:Type>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'OtherType'])">
      <bd:OtherType>
        <xsl:value-of select="*[@key = 'OtherType']"/>
      </bd:OtherType>
    </xsl:if>
  </xsl:template>
  <xsl:template name="bd:ElectionAdministration" match="*[string = 'BallotDefinition.ElectionAdministration' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="boolean(*[@key = 'ContactInformation'])">
      <bd:ContactInformation>
        <xsl:apply-templates select="*[@key = 'ContactInformation']"/>
      </bd:ContactInformation>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'ElectionOfficialPersonIds'])">
      <bd:ElectionOfficialPersonIds>
        <xsl:variable name="idrefs">
          <xsl:for-each select="*[@key = 'ElectionOfficialPersonIds']/string">
            <xsl:value-of select="concat(' ', .)"/>
          </xsl:for-each>
        </xsl:variable>
        <xsl:value-of select="normalize-space($idrefs)"/>
      </bd:ElectionOfficialPersonIds>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Name'])">
      <bd:Name>
        <xsl:value-of select="*[@key = 'Name']"/>
      </bd:Name>
    </xsl:if>
  </xsl:template>
  <xsl:template name="bd:ExternalIdentifier" match="*[string = 'BallotDefinition.ExternalIdentifier' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="boolean(*[@key = 'Label'])">
      <xsl:attribute name="Label">
        <xsl:value-of select="*[@key = 'Label']"/>
      </xsl:attribute>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Type'])">
      <bd:Type>
        <xsl:value-of select="*[@key = 'Type']"/>
      </bd:Type>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'OtherType'])">
      <bd:OtherType>
        <xsl:value-of select="*[@key = 'OtherType']"/>
      </bd:OtherType>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Value'])">
      <bd:Value>
        <xsl:value-of select="*[@key = 'Value']"/>
      </bd:Value>
    </xsl:if>
  </xsl:template>
  <xsl:template name="bd:FiducialMark" match="*[string = 'BallotDefinition.FiducialMark' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="$set_type">
      <xsl:attribute name="xsi:type">bd:FiducialMark</xsl:attribute>
    </xsl:if>
    <xsl:call-template name="bd:BoundedObject">
      <xsl:with-param name="set_type" select="false()"/>
    </xsl:call-template>
    <xsl:if test="boolean(*[@key = 'ShapeId'])">
      <bd:ShapeId>
        <xsl:value-of select="*[@key = 'ShapeId']"/>
      </bd:ShapeId>
    </xsl:if>
  </xsl:template>
  <xsl:template name="bd:GpUnit" match="*[string = 'BallotDefinition.GpUnit' and string/@key = '@type']" priority="-1">
    <xsl:param name="set_type" select="true()"/>
    <xsl:attribute name="ObjectId">
      <xsl:value-of select="string[@key = '@id']"/>
    </xsl:attribute>
    <xsl:if test="boolean(*[@key = 'ComposingGpUnitIds'])">
      <bd:ComposingGpUnitIds>
        <xsl:variable name="idrefs">
          <xsl:for-each select="*[@key = 'ComposingGpUnitIds']/string">
            <xsl:value-of select="concat(' ', .)"/>
          </xsl:for-each>
        </xsl:variable>
        <xsl:value-of select="normalize-space($idrefs)"/>
      </bd:ComposingGpUnitIds>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'ExternalIdentifier'])">
      <xsl:for-each select="*[@key = 'ExternalIdentifier']/map">
        <bd:ExternalIdentifier>
          <xsl:apply-templates select="."/>
        </bd:ExternalIdentifier>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Name'])">
      <bd:Name>
        <xsl:apply-templates select="*[@key = 'Name']"/>
      </bd:Name>
    </xsl:if>
  </xsl:template>
  <xsl:template name="bd:Header" match="*[string = 'BallotDefinition.Header' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:attribute name="ObjectId">
      <xsl:value-of select="string[@key = '@id']"/>
    </xsl:attribute>
    <xsl:if test="boolean(*[@key = 'ExternalIdentifier'])">
      <xsl:for-each select="*[@key = 'ExternalIdentifier']/map">
        <bd:ExternalIdentifier>
          <xsl:apply-templates select="."/>
        </bd:ExternalIdentifier>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'HeaderedContent'])">
      <bd:HeaderedContent>
        <xsl:apply-templates select="*[@key = 'HeaderedContent']"/>
      </bd:HeaderedContent>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Name'])">
      <bd:Name>
        <xsl:apply-templates select="*[@key = 'Name']"/>
      </bd:Name>
    </xsl:if>
  </xsl:template>
  <xsl:template name="bd:Hours" match="*[string = 'BallotDefinition.Hours' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="boolean(*[@key = 'Label'])">
      <xsl:attribute name="Label">
        <xsl:value-of select="*[@key = 'Label']"/>
      </xsl:attribute>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Day'])">
      <bd:Day>
        <xsl:value-of select="*[@key = 'Day']"/>
      </bd:Day>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'StartTime'])">
      <bd:StartTime>
        <xsl:value-of select="*[@key = 'StartTime']"/>
      </bd:StartTime>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'EndTime'])">
      <bd:EndTime>
        <xsl:value-of select="*[@key = 'EndTime']"/>
      </bd:EndTime>
    </xsl:if>
  </xsl:template>
  <xsl:template name="bd:InternationalizedText" match="*[string = 'BallotDefinition.InternationalizedText' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="boolean(*[@key = 'Label'])">
      <xsl:attribute name="Label">
        <xsl:value-of select="*[@key = 'Label']"/>
      </xsl:attribute>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Text'])">
      <xsl:for-each select="*[@key = 'Text']/map">
        <bd:Text>
          <xsl:apply-templates select="."/>
        </bd:Text>
      </xsl:for-each>
    </xsl:if>
  </xsl:template>
  <xsl:template name="bd:LanguageString" match="*[string = 'BallotDefinition.LanguageString' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="boolean(*[@key = 'Language'])">
      <xsl:attribute name="Language">
        <xsl:value-of select="*[@key = 'Language']"/>
      </xsl:attribute>
    </xsl:if>
    <xsl:value-of select="*[@key = 'Content']"/>
  </xsl:template>
  <xsl:template name="bd:LatLng" match="*[string = 'BallotDefinition.LatLng' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="boolean(*[@key = 'Label'])">
      <xsl:attribute name="Label">
        <xsl:value-of select="*[@key = 'Label']"/>
      </xsl:attribute>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Latitude'])">
      <bd:Latitude>
        <xsl:value-of select="*[@key = 'Latitude']"/>
      </bd:Latitude>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Longitude'])">
      <bd:Longitude>
        <xsl:value-of select="*[@key = 'Longitude']"/>
      </bd:Longitude>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Source'])">
      <bd:Source>
        <xsl:value-of select="*[@key = 'Source']"/>
      </bd:Source>
    </xsl:if>
  </xsl:template>
  <xsl:template name="bd:Office" match="*[string = 'BallotDefinition.Office' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:attribute name="ObjectId">
      <xsl:value-of select="string[@key = '@id']"/>
    </xsl:attribute>
    <xsl:if test="boolean(*[@key = 'ContactInformation'])">
      <bd:ContactInformation>
        <xsl:apply-templates select="*[@key = 'ContactInformation']"/>
      </bd:ContactInformation>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Description'])">
      <bd:Description>
        <xsl:apply-templates select="*[@key = 'Description']"/>
      </bd:Description>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'ElectionDistrictId'])">
      <bd:ElectionDistrictId>
        <xsl:value-of select="*[@key = 'ElectionDistrictId']"/>
      </bd:ElectionDistrictId>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'ExternalIdentifier'])">
      <xsl:for-each select="*[@key = 'ExternalIdentifier']/map">
        <bd:ExternalIdentifier>
          <xsl:apply-templates select="."/>
        </bd:ExternalIdentifier>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'FilingDeadline'])">
      <bd:FilingDeadline>
        <xsl:value-of select="*[@key = 'FilingDeadline']"/>
      </bd:FilingDeadline>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'IsPartisan'])">
      <bd:IsPartisan>
        <xsl:value-of select="*[@key = 'IsPartisan']"/>
      </bd:IsPartisan>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Name'])">
      <bd:Name>
        <xsl:apply-templates select="*[@key = 'Name']"/>
      </bd:Name>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'OfficeHolderPersonIds'])">
      <bd:OfficeHolderPersonIds>
        <xsl:variable name="idrefs">
          <xsl:for-each select="*[@key = 'OfficeHolderPersonIds']/string">
            <xsl:value-of select="concat(' ', .)"/>
          </xsl:for-each>
        </xsl:variable>
        <xsl:value-of select="normalize-space($idrefs)"/>
      </bd:OfficeHolderPersonIds>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Term'])">
      <bd:Term>
        <xsl:apply-templates select="*[@key = 'Term']"/>
      </bd:Term>
    </xsl:if>
  </xsl:template>
  <xsl:template name="bd:OfficeGroup" match="*[string = 'BallotDefinition.OfficeGroup' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="boolean(*[@key = 'Label'])">
      <xsl:attribute name="Label">
        <xsl:value-of select="*[@key = 'Label']"/>
      </xsl:attribute>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Name'])">
      <bd:Name>
        <xsl:value-of select="*[@key = 'Name']"/>
      </bd:Name>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'OfficeIds'])">
      <bd:OfficeIds>
        <xsl:variable name="idrefs">
          <xsl:for-each select="*[@key = 'OfficeIds']/string">
            <xsl:value-of select="concat(' ', .)"/>
          </xsl:for-each>
        </xsl:variable>
        <xsl:value-of select="normalize-space($idrefs)"/>
      </bd:OfficeIds>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'SubOfficeGroup'])">
      <xsl:for-each select="*[@key = 'SubOfficeGroup']/map">
        <bd:SubOfficeGroup>
          <xsl:apply-templates select="."/>
        </bd:SubOfficeGroup>
      </xsl:for-each>
    </xsl:if>
  </xsl:template>
  <xsl:template name="bd:OptionPosition" match="*[string = 'BallotDefinition.OptionPosition' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="$set_type">
      <xsl:attribute name="xsi:type">bd:OptionPosition</xsl:attribute>
    </xsl:if>
    <xsl:call-template name="bd:BoundedObject">
      <xsl:with-param name="set_type" select="false()"/>
    </xsl:call-template>
    <xsl:if test="boolean(*[@key = 'FractionalVotes'])">
      <bd:FractionalVotes>
        <xsl:value-of select="*[@key = 'FractionalVotes']"/>
      </bd:FractionalVotes>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'IndicatorId'])">
      <bd:IndicatorId>
        <xsl:value-of select="*[@key = 'IndicatorId']"/>
      </bd:IndicatorId>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'NumberVotes'])">
      <bd:NumberVotes>
        <xsl:value-of select="*[@key = 'NumberVotes']"/>
      </bd:NumberVotes>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Rank'])">
      <bd:Rank>
        <xsl:value-of select="*[@key = 'Rank']"/>
      </bd:Rank>
    </xsl:if>
  </xsl:template>
  <xsl:template name="bd:OrderedContent" match="*[string = 'BallotDefinition.OrderedContent' and string/@key = '@type']" priority="-1">
    <xsl:param name="set_type" select="true()"/>
  </xsl:template>
  <xsl:template name="bd:OrderedContest" match="*[string = 'BallotDefinition.OrderedContest' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="$set_type">
      <xsl:attribute name="xsi:type">bd:OrderedContest</xsl:attribute>
    </xsl:if>
    <xsl:call-template name="bd:OrderedContent">
      <xsl:with-param name="set_type" select="false()"/>
    </xsl:call-template>
    <xsl:if test="boolean(*[@key = 'ContestId'])">
      <bd:ContestId>
        <xsl:value-of select="*[@key = 'ContestId']"/>
      </bd:ContestId>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'OrderedContestOptionIds'])">
      <bd:OrderedContestOptionIds>
        <xsl:variable name="idrefs">
          <xsl:for-each select="*[@key = 'OrderedContestOptionIds']/string">
            <xsl:value-of select="concat(' ', .)"/>
          </xsl:for-each>
        </xsl:variable>
        <xsl:value-of select="normalize-space($idrefs)"/>
      </bd:OrderedContestOptionIds>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Physical'])">
      <xsl:for-each select="*[@key = 'Physical']/map">
        <bd:Physical>
          <xsl:apply-templates select="."/>
        </bd:Physical>
      </xsl:for-each>
    </xsl:if>
  </xsl:template>
  <xsl:template name="bd:OrderedHeader" match="*[string = 'BallotDefinition.OrderedHeader' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="$set_type">
      <xsl:attribute name="xsi:type">bd:OrderedHeader</xsl:attribute>
    </xsl:if>
    <xsl:call-template name="bd:OrderedContent">
      <xsl:with-param name="set_type" select="false()"/>
    </xsl:call-template>
    <xsl:if test="boolean(*[@key = 'HeaderId'])">
      <bd:HeaderId>
        <xsl:value-of select="*[@key = 'HeaderId']"/>
      </bd:HeaderId>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'OrderedContent'])">
      <xsl:for-each select="*[@key = 'OrderedContent']/map">
        <bd:OrderedContent>
          <xsl:apply-templates select="."/>
        </bd:OrderedContent>
      </xsl:for-each>
    </xsl:if>
  </xsl:template>
  <xsl:template name="bd:Party" match="*[string = 'BallotDefinition.Party' and string/@key = '@type']" priority="-1">
    <xsl:param name="set_type" select="true()"/>
    <xsl:attribute name="ObjectId">
      <xsl:value-of select="string[@key = '@id']"/>
    </xsl:attribute>
    <xsl:if test="boolean(*[@key = 'Abbreviation'])">
      <bd:Abbreviation>
        <xsl:apply-templates select="*[@key = 'Abbreviation']"/>
      </bd:Abbreviation>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Color'])">
      <bd:Color>
        <xsl:value-of select="*[@key = 'Color']"/>
      </bd:Color>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'ContactInformation'])">
      <bd:ContactInformation>
        <xsl:apply-templates select="*[@key = 'ContactInformation']"/>
      </bd:ContactInformation>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'ExternalIdentifier'])">
      <xsl:for-each select="*[@key = 'ExternalIdentifier']/map">
        <bd:ExternalIdentifier>
          <xsl:apply-templates select="."/>
        </bd:ExternalIdentifier>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'IsRecognizedParty'])">
      <bd:IsRecognizedParty>
        <xsl:value-of select="*[@key = 'IsRecognizedParty']"/>
      </bd:IsRecognizedParty>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'LeaderPersonIds'])">
      <bd:LeaderPersonIds>
        <xsl:variable name="idrefs">
          <xsl:for-each select="*[@key = 'LeaderPersonIds']/string">
            <xsl:value-of select="concat(' ', .)"/>
          </xsl:for-each>
        </xsl:variable>
        <xsl:value-of select="normalize-space($idrefs)"/>
      </bd:LeaderPersonIds>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'LogoUri'])">
      <xsl:for-each select="*[@key = 'LogoUri']/map">
        <bd:LogoUri>
          <xsl:apply-templates select="."/>
        </bd:LogoUri>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Name'])">
      <bd:Name>
        <xsl:apply-templates select="*[@key = 'Name']"/>
      </bd:Name>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'PartyScopeGpUnitIds'])">
      <bd:PartyScopeGpUnitIds>
        <xsl:variable name="idrefs">
          <xsl:for-each select="*[@key = 'PartyScopeGpUnitIds']/string">
            <xsl:value-of select="concat(' ', .)"/>
          </xsl:for-each>
        </xsl:variable>
        <xsl:value-of select="normalize-space($idrefs)"/>
      </bd:PartyScopeGpUnitIds>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Slogan'])">
      <bd:Slogan>
        <xsl:apply-templates select="*[@key = 'Slogan']"/>
      </bd:Slogan>
    </xsl:if>
  </xsl:template>
  <xsl:template name="bd:PartyContest" match="*[string = 'BallotDefinition.PartyContest' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="$set_type">
      <xsl:attribute name="xsi:type">bd:PartyContest</xsl:attribute>
    </xsl:if>
    <xsl:call-template name="bd:Contest">
      <xsl:with-param name="set_type" select="false()"/>
    </xsl:call-template>
  </xsl:template>
  <xsl:template name="bd:PartyOption" match="*[string = 'BallotDefinition.PartyOption' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="$set_type">
      <xsl:attribute name="xsi:type">bd:PartyOption</xsl:attribute>
    </xsl:if>
    <xsl:call-template name="bd:ContestOption">
      <xsl:with-param name="set_type" select="false()"/>
    </xsl:call-template>
    <xsl:if test="boolean(*[@key = 'PartyIds'])">
      <bd:PartyIds>
        <xsl:variable name="idrefs">
          <xsl:for-each select="*[@key = 'PartyIds']/string">
            <xsl:value-of select="concat(' ', .)"/>
          </xsl:for-each>
        </xsl:variable>
        <xsl:value-of select="normalize-space($idrefs)"/>
      </bd:PartyIds>
    </xsl:if>
  </xsl:template>
  <xsl:template name="bd:PartyPreferenceContest" match="*[string = 'BallotDefinition.PartyPreferenceContest' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="$set_type">
      <xsl:attribute name="xsi:type">bd:PartyPreferenceContest</xsl:attribute>
    </xsl:if>
    <xsl:call-template name="bd:ControllingContest">
      <xsl:with-param name="set_type" select="false()"/>
    </xsl:call-template>
  </xsl:template>
  <xsl:template name="bd:PartyRegistration" match="*[string = 'BallotDefinition.PartyRegistration' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="boolean(*[@key = 'Count'])">
      <bd:Count>
        <xsl:value-of select="*[@key = 'Count']"/>
      </bd:Count>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'PartyId'])">
      <bd:PartyId>
        <xsl:value-of select="*[@key = 'PartyId']"/>
      </bd:PartyId>
    </xsl:if>
  </xsl:template>
  <xsl:template name="bd:Person" match="*[string = 'BallotDefinition.Person' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:attribute name="ObjectId">
      <xsl:value-of select="string[@key = '@id']"/>
    </xsl:attribute>
    <xsl:if test="boolean(*[@key = 'ContactInformation'])">
      <xsl:for-each select="*[@key = 'ContactInformation']/map">
        <bd:ContactInformation>
          <xsl:apply-templates select="."/>
        </bd:ContactInformation>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'DateOfBirth'])">
      <bd:DateOfBirth>
        <xsl:value-of select="*[@key = 'DateOfBirth']"/>
      </bd:DateOfBirth>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'ExternalIdentifier'])">
      <xsl:for-each select="*[@key = 'ExternalIdentifier']/map">
        <bd:ExternalIdentifier>
          <xsl:apply-templates select="."/>
        </bd:ExternalIdentifier>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'FirstName'])">
      <bd:FirstName>
        <xsl:value-of select="*[@key = 'FirstName']"/>
      </bd:FirstName>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'FullName'])">
      <bd:FullName>
        <xsl:apply-templates select="*[@key = 'FullName']"/>
      </bd:FullName>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Gender'])">
      <bd:Gender>
        <xsl:value-of select="*[@key = 'Gender']"/>
      </bd:Gender>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'LastName'])">
      <bd:LastName>
        <xsl:value-of select="*[@key = 'LastName']"/>
      </bd:LastName>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'MiddleName'])">
      <xsl:for-each select="*[@key = 'MiddleName']/string">
        <bd:MiddleName>
          <xsl:value-of select="."/>
        </bd:MiddleName>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Nickname'])">
      <bd:Nickname>
        <xsl:value-of select="*[@key = 'Nickname']"/>
      </bd:Nickname>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'PartyId'])">
      <bd:PartyId>
        <xsl:value-of select="*[@key = 'PartyId']"/>
      </bd:PartyId>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Prefix'])">
      <bd:Prefix>
        <xsl:value-of select="*[@key = 'Prefix']"/>
      </bd:Prefix>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Profession'])">
      <bd:Profession>
        <xsl:apply-templates select="*[@key = 'Profession']"/>
      </bd:Profession>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Suffix'])">
      <bd:Suffix>
        <xsl:value-of select="*[@key = 'Suffix']"/>
      </bd:Suffix>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Title'])">
      <bd:Title>
        <xsl:apply-templates select="*[@key = 'Title']"/>
      </bd:Title>
    </xsl:if>
  </xsl:template>
  <xsl:template name="bd:PhysicalContest" match="*[string = 'BallotDefinition.PhysicalContest' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="boolean(*[@key = 'BallotFormatId'])">
      <bd:BallotFormatId>
        <xsl:value-of select="*[@key = 'BallotFormatId']"/>
      </bd:BallotFormatId>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Extent'])">
      <xsl:for-each select="*[@key = 'Extent']/map">
        <bd:Extent>
          <xsl:apply-templates select="."/>
        </bd:Extent>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'FiducialMark'])">
      <xsl:for-each select="*[@key = 'FiducialMark']/map">
        <bd:FiducialMark>
          <xsl:apply-templates select="."/>
        </bd:FiducialMark>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'PhysicalContestOption'])">
      <xsl:for-each select="*[@key = 'PhysicalContestOption']/map">
        <bd:PhysicalContestOption>
          <xsl:apply-templates select="."/>
        </bd:PhysicalContestOption>
      </xsl:for-each>
    </xsl:if>
  </xsl:template>
  <xsl:template name="bd:PhysicalContestOption" match="*[string = 'BallotDefinition.PhysicalContestOption' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="boolean(*[@key = 'ContestOptionId'])">
      <bd:ContestOptionId>
        <xsl:value-of select="*[@key = 'ContestOptionId']"/>
      </bd:ContestOptionId>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'OptionPosition'])">
      <xsl:for-each select="*[@key = 'OptionPosition']/map">
        <bd:OptionPosition>
          <xsl:apply-templates select="."/>
        </bd:OptionPosition>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'WriteInPosition'])">
      <xsl:for-each select="*[@key = 'WriteInPosition']/map">
        <bd:WriteInPosition>
          <xsl:apply-templates select="."/>
        </bd:WriteInPosition>
      </xsl:for-each>
    </xsl:if>
  </xsl:template>
  <xsl:template name="bd:ReportingUnit" match="*[string = 'BallotDefinition.ReportingUnit' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="$set_type">
      <xsl:attribute name="xsi:type">bd:ReportingUnit</xsl:attribute>
    </xsl:if>
    <xsl:call-template name="bd:GpUnit">
      <xsl:with-param name="set_type" select="false()"/>
    </xsl:call-template>
    <xsl:if test="boolean(*[@key = 'AuthorityIds'])">
      <bd:AuthorityIds>
        <xsl:variable name="idrefs">
          <xsl:for-each select="*[@key = 'AuthorityIds']/string">
            <xsl:value-of select="concat(' ', .)"/>
          </xsl:for-each>
        </xsl:variable>
        <xsl:value-of select="normalize-space($idrefs)"/>
      </bd:AuthorityIds>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'ContactInformation'])">
      <bd:ContactInformation>
        <xsl:apply-templates select="*[@key = 'ContactInformation']"/>
      </bd:ContactInformation>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'ElectionAdministration'])">
      <bd:ElectionAdministration>
        <xsl:apply-templates select="*[@key = 'ElectionAdministration']"/>
      </bd:ElectionAdministration>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'IsDistricted'])">
      <bd:IsDistricted>
        <xsl:value-of select="*[@key = 'IsDistricted']"/>
      </bd:IsDistricted>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'IsMailOnly'])">
      <bd:IsMailOnly>
        <xsl:value-of select="*[@key = 'IsMailOnly']"/>
      </bd:IsMailOnly>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Number'])">
      <bd:Number>
        <xsl:value-of select="*[@key = 'Number']"/>
      </bd:Number>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'PartyRegistration'])">
      <xsl:for-each select="*[@key = 'PartyRegistration']/map">
        <bd:PartyRegistration>
          <xsl:apply-templates select="."/>
        </bd:PartyRegistration>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'SpatialDimension'])">
      <bd:SpatialDimension>
        <xsl:apply-templates select="*[@key = 'SpatialDimension']"/>
      </bd:SpatialDimension>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'TotalSubUnits'])">
      <bd:TotalSubUnits>
        <xsl:value-of select="*[@key = 'TotalSubUnits']"/>
      </bd:TotalSubUnits>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Type'])">
      <bd:Type>
        <xsl:value-of select="*[@key = 'Type']"/>
      </bd:Type>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'OtherType'])">
      <bd:OtherType>
        <xsl:value-of select="*[@key = 'OtherType']"/>
      </bd:OtherType>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'VotersRegistered'])">
      <bd:VotersRegistered>
        <xsl:value-of select="*[@key = 'VotersRegistered']"/>
      </bd:VotersRegistered>
    </xsl:if>
  </xsl:template>
  <xsl:template name="bd:RetentionContest" match="*[string = 'BallotDefinition.RetentionContest' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="$set_type">
      <xsl:attribute name="xsi:type">bd:RetentionContest</xsl:attribute>
    </xsl:if>
    <xsl:call-template name="bd:BallotMeasureContest">
      <xsl:with-param name="set_type" select="false()"/>
    </xsl:call-template>
    <xsl:if test="boolean(*[@key = 'CandidateId'])">
      <bd:CandidateId>
        <xsl:value-of select="*[@key = 'CandidateId']"/>
      </bd:CandidateId>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'OfficeId'])">
      <bd:OfficeId>
        <xsl:value-of select="*[@key = 'OfficeId']"/>
      </bd:OfficeId>
    </xsl:if>
  </xsl:template>
  <xsl:template name="bd:Schedule" match="*[string = 'BallotDefinition.Schedule' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="boolean(*[@key = 'Label'])">
      <xsl:attribute name="Label">
        <xsl:value-of select="*[@key = 'Label']"/>
      </xsl:attribute>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Hours'])">
      <xsl:for-each select="*[@key = 'Hours']/map">
        <bd:Hours>
          <xsl:apply-templates select="."/>
        </bd:Hours>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'IsOnlyByAppointment'])">
      <bd:IsOnlyByAppointment>
        <xsl:value-of select="*[@key = 'IsOnlyByAppointment']"/>
      </bd:IsOnlyByAppointment>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'IsOrByAppointment'])">
      <bd:IsOrByAppointment>
        <xsl:value-of select="*[@key = 'IsOrByAppointment']"/>
      </bd:IsOrByAppointment>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'IsSubjectToChange'])">
      <bd:IsSubjectToChange>
        <xsl:value-of select="*[@key = 'IsSubjectToChange']"/>
      </bd:IsSubjectToChange>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'StartDate'])">
      <bd:StartDate>
        <xsl:value-of select="*[@key = 'StartDate']"/>
      </bd:StartDate>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'EndDate'])">
      <bd:EndDate>
        <xsl:value-of select="*[@key = 'EndDate']"/>
      </bd:EndDate>
    </xsl:if>
  </xsl:template>
  <xsl:template name="bd:Shape" match="*[string = 'BallotDefinition.Shape' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:attribute name="ObjectId">
      <xsl:value-of select="string[@key = '@id']"/>
    </xsl:attribute>
    <xsl:if test="boolean(*[@key = 'FillColor'])">
      <bd:FillColor>
        <xsl:value-of select="*[@key = 'FillColor']"/>
      </bd:FillColor>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'ShapeType'])">
      <bd:ShapeType>
        <xsl:value-of select="*[@key = 'ShapeType']"/>
      </bd:ShapeType>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'StrokeColor'])">
      <bd:StrokeColor>
        <xsl:value-of select="*[@key = 'StrokeColor']"/>
      </bd:StrokeColor>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'StrokeWidth'])">
      <bd:StrokeWidth>
        <xsl:value-of select="*[@key = 'StrokeWidth']"/>
      </bd:StrokeWidth>
    </xsl:if>
  </xsl:template>
  <xsl:template name="bd:SpatialDimension" match="*[string = 'BallotDefinition.SpatialDimension' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="boolean(*[@key = 'MapUri'])">
      <xsl:for-each select="*[@key = 'MapUri']/map">
        <bd:MapUri>
          <xsl:apply-templates select="."/>
        </bd:MapUri>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'SpatialExtent'])">
      <bd:SpatialExtent>
        <xsl:apply-templates select="*[@key = 'SpatialExtent']"/>
      </bd:SpatialExtent>
    </xsl:if>
  </xsl:template>
  <xsl:template name="bd:SpatialExtent" match="*[string = 'BallotDefinition.SpatialExtent' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="boolean(*[@key = 'Coordinates'])">
      <bd:Coordinates>
        <xsl:value-of select="*[@key = 'Coordinates']"/>
      </bd:Coordinates>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Format'])">
      <bd:Format>
        <xsl:value-of select="*[@key = 'Format']"/>
      </bd:Format>
    </xsl:if>
  </xsl:template>
  <xsl:template name="bd:StraightPartyContest" match="*[string = 'BallotDefinition.StraightPartyContest' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="$set_type">
      <xsl:attribute name="xsi:type">bd:StraightPartyContest</xsl:attribute>
    </xsl:if>
    <xsl:call-template name="bd:ControllingContest">
      <xsl:with-param name="set_type" select="false()"/>
    </xsl:call-template>
    <xsl:if test="boolean(*[@key = 'OtherStraightPartyRuleset'])">
      <bd:OtherStraightPartyRuleset>
        <xsl:value-of select="*[@key = 'OtherStraightPartyRuleset']"/>
      </bd:OtherStraightPartyRuleset>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'StraightPartyRuleset'])">
      <bd:StraightPartyRuleset>
        <xsl:value-of select="*[@key = 'StraightPartyRuleset']"/>
      </bd:StraightPartyRuleset>
    </xsl:if>
  </xsl:template>
  <xsl:template name="bd:Term" match="*[string = 'BallotDefinition.Term' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="boolean(*[@key = 'Label'])">
      <xsl:attribute name="Label">
        <xsl:value-of select="*[@key = 'Label']"/>
      </xsl:attribute>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'StartDate'])">
      <bd:StartDate>
        <xsl:value-of select="*[@key = 'StartDate']"/>
      </bd:StartDate>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'EndDate'])">
      <bd:EndDate>
        <xsl:value-of select="*[@key = 'EndDate']"/>
      </bd:EndDate>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Type'])">
      <bd:Type>
        <xsl:value-of select="*[@key = 'Type']"/>
      </bd:Type>
    </xsl:if>
  </xsl:template>
  <xsl:template name="bd:WriteInPosition" match="*[string = 'BallotDefinition.WriteInPosition' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="$set_type">
      <xsl:attribute name="xsi:type">bd:WriteInPosition</xsl:attribute>
    </xsl:if>
    <xsl:call-template name="bd:BoundedObject">
      <xsl:with-param name="set_type" select="false()"/>
    </xsl:call-template>
    <xsl:if test="boolean(*[@key = 'SelectionRequired'])">
      <bd:SelectionRequired>
        <xsl:value-of select="*[@key = 'SelectionRequired']"/>
      </bd:SelectionRequired>
    </xsl:if>
  </xsl:template>
  <xsl:template name="bd:mCDFArea" match="*[string = 'BallotDefinition.mCDFArea' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="$set_type">
      <xsl:attribute name="xsi:type">bd:mCDFArea</xsl:attribute>
    </xsl:if>
    <xsl:call-template name="bd:BoundedObject">
      <xsl:with-param name="set_type" select="false()"/>
    </xsl:call-template>
    <xsl:if test="boolean(*[@key = 'Symbology'])">
      <bd:Symbology>
        <xsl:value-of select="*[@key = 'Symbology']"/>
      </bd:Symbology>
    </xsl:if>
  </xsl:template>
</xsl:stylesheet>
