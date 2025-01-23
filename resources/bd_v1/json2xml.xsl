<?xml version="1.0" encoding="UTF-8"?>
<!-- This file was generated using the umm_template ruby_json2xml_binding.rb.erb (md5: bfe324002928f9b1121d08ff89b0f8c4)

Locals
  outer_module=BallotDefinition  target_schema=http://itl.nist.gov/ns/voting/1500-20/v1
Visible Packages
  BallotDefinition -->
<xsl:stylesheet xmlns:cdf="http://itl.nist.gov/ns/voting/1500-20/v1" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xml:id="json2xml" xpath-default-namespace="http://www.w3.org/2005/xpath-functions" version="3.0">
  <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
  <xsl:template name="start" match=".[. instance of map(*)]" priority="1">
    <xsl:variable name="xml" select=". =&gt; serialize(map { 'method' : 'json' }) =&gt; json-to-xml()"/>
    <xsl:if test="$xml/*[string = 'BallotDefinition.BallotDefinition' and string/@key = '@type']">
      <cdf:BallotDefinition>
        <xsl:apply-templates select="$xml"/>
      </cdf:BallotDefinition>
    </xsl:if>
  </xsl:template>
  <!-- Begin classes for Package BallotDefinition -->
  <xsl:template name="cdf:ActivationContest" match="*[string = 'BallotDefinition.ActivationContest' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="$set_type">
      <xsl:attribute name="xsi:type">cdf:ActivationContest</xsl:attribute>
    </xsl:if>
    <xsl:call-template name="cdf:ControllingContest">
      <xsl:with-param name="set_type" select="false()"/>
    </xsl:call-template>
    <xsl:if test="boolean(*[@key = 'CandidateId'])">
      <cdf:CandidateId>
        <xsl:value-of select="*[@key = 'CandidateId']"/>
      </cdf:CandidateId>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'SummaryText'])">
      <cdf:SummaryText>
        <xsl:apply-templates select="*[@key = 'SummaryText']"/>
      </cdf:SummaryText>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cdf:ActivationOption" match="*[string = 'BallotDefinition.ActivationOption' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="$set_type">
      <xsl:attribute name="xsi:type">cdf:ActivationOption</xsl:attribute>
    </xsl:if>
    <xsl:call-template name="cdf:ContestOption">
      <xsl:with-param name="set_type" select="false()"/>
    </xsl:call-template>
    <xsl:if test="boolean(*[@key = 'CausesActivation'])">
      <cdf:CausesActivation>
        <xsl:value-of select="*[@key = 'CausesActivation']"/>
      </cdf:CausesActivation>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Selection'])">
      <cdf:Selection>
        <xsl:apply-templates select="*[@key = 'Selection']"/>
      </cdf:Selection>
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
        <cdf:BallotFormat>
          <xsl:apply-templates select="."/>
        </cdf:BallotFormat>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Election'])">
      <xsl:for-each select="*[@key = 'Election']/map">
        <cdf:Election>
          <xsl:apply-templates select="."/>
        </cdf:Election>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'ExternalIdentifier'])">
      <xsl:for-each select="*[@key = 'ExternalIdentifier']/map">
        <cdf:ExternalIdentifier>
          <xsl:apply-templates select="."/>
        </cdf:ExternalIdentifier>
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
    <xsl:if test="boolean(*[@key = 'Header'])">
      <xsl:for-each select="*[@key = 'Header']/map">
        <cdf:Header>
          <xsl:apply-templates select="."/>
        </cdf:Header>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Issuer'])">
      <cdf:Issuer>
        <xsl:value-of select="*[@key = 'Issuer']"/>
      </cdf:Issuer>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'IssuerAbbreviation'])">
      <cdf:IssuerAbbreviation>
        <xsl:value-of select="*[@key = 'IssuerAbbreviation']"/>
      </cdf:IssuerAbbreviation>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'IsTest'])">
      <cdf:IsTest>
        <xsl:value-of select="*[@key = 'IsTest']"/>
      </cdf:IsTest>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Notes'])">
      <cdf:Notes>
        <xsl:value-of select="*[@key = 'Notes']"/>
      </cdf:Notes>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Office'])">
      <xsl:for-each select="*[@key = 'Office']/map">
        <cdf:Office>
          <xsl:apply-templates select="."/>
        </cdf:Office>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'OfficeGroup'])">
      <xsl:for-each select="*[@key = 'OfficeGroup']/map">
        <cdf:OfficeGroup>
          <xsl:apply-templates select="."/>
        </cdf:OfficeGroup>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Party'])">
      <xsl:for-each select="*[@key = 'Party']/map">
        <cdf:Party>
          <xsl:apply-templates select="."/>
        </cdf:Party>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Person'])">
      <xsl:for-each select="*[@key = 'Person']/map">
        <cdf:Person>
          <xsl:apply-templates select="."/>
        </cdf:Person>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'SequenceStart'])">
      <cdf:SequenceStart>
        <xsl:value-of select="*[@key = 'SequenceStart']"/>
      </cdf:SequenceStart>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'SequenceEnd'])">
      <cdf:SequenceEnd>
        <xsl:value-of select="*[@key = 'SequenceEnd']"/>
      </cdf:SequenceEnd>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Shape'])">
      <xsl:for-each select="*[@key = 'Shape']/map">
        <cdf:Shape>
          <xsl:apply-templates select="."/>
        </cdf:Shape>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'TestType'])">
      <cdf:TestType>
        <xsl:value-of select="*[@key = 'TestType']"/>
      </cdf:TestType>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'VendorApplicationId'])">
      <cdf:VendorApplicationId>
        <xsl:value-of select="*[@key = 'VendorApplicationId']"/>
      </cdf:VendorApplicationId>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Version'])">
      <cdf:Version>
        <xsl:value-of select="*[@key = 'Version']"/>
      </cdf:Version>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cdf:BallotFormat" match="*[string = 'BallotDefinition.BallotFormat' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:attribute name="ObjectId">
      <xsl:value-of select="string[@key = '@id']"/>
    </xsl:attribute>
    <xsl:if test="boolean(*[@key = 'Application'])">
      <cdf:Application>
        <xsl:value-of select="*[@key = 'Application']"/>
      </cdf:Application>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'ExternalIdentifier'])">
      <xsl:for-each select="*[@key = 'ExternalIdentifier']/map">
        <cdf:ExternalIdentifier>
          <xsl:apply-templates select="."/>
        </cdf:ExternalIdentifier>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'FiducialMark'])">
      <xsl:for-each select="*[@key = 'FiducialMark']/map">
        <cdf:FiducialMark>
          <xsl:apply-templates select="."/>
        </cdf:FiducialMark>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'LongEdge'])">
      <cdf:LongEdge>
        <xsl:value-of select="*[@key = 'LongEdge']"/>
      </cdf:LongEdge>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Manufacturer'])">
      <cdf:Manufacturer>
        <xsl:value-of select="*[@key = 'Manufacturer']"/>
      </cdf:Manufacturer>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'mCDFArea'])">
      <xsl:for-each select="*[@key = 'mCDFArea']/map">
        <cdf:mCDFArea>
          <xsl:apply-templates select="."/>
        </cdf:mCDFArea>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'MeasurementUnit'])">
      <cdf:MeasurementUnit>
        <xsl:value-of select="*[@key = 'MeasurementUnit']"/>
      </cdf:MeasurementUnit>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Orientation'])">
      <cdf:Orientation>
        <xsl:value-of select="*[@key = 'Orientation']"/>
      </cdf:Orientation>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'SelectionCaptureMethod'])">
      <cdf:SelectionCaptureMethod>
        <xsl:value-of select="*[@key = 'SelectionCaptureMethod']"/>
      </cdf:SelectionCaptureMethod>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'ShortEdge'])">
      <cdf:ShortEdge>
        <xsl:value-of select="*[@key = 'ShortEdge']"/>
      </cdf:ShortEdge>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cdf:BallotMeasureContest" match="*[string = 'BallotDefinition.BallotMeasureContest' and string/@key = '@type']" priority="-1">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="$set_type">
      <xsl:attribute name="xsi:type">cdf:BallotMeasureContest</xsl:attribute>
    </xsl:if>
    <xsl:call-template name="cdf:Contest">
      <xsl:with-param name="set_type" select="false()"/>
    </xsl:call-template>
    <xsl:if test="boolean(*[@key = 'ConStatement'])">
      <cdf:ConStatement>
        <xsl:apply-templates select="*[@key = 'ConStatement']"/>
      </cdf:ConStatement>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'EffectOfAbstain'])">
      <cdf:EffectOfAbstain>
        <xsl:apply-templates select="*[@key = 'EffectOfAbstain']"/>
      </cdf:EffectOfAbstain>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'FullText'])">
      <cdf:FullText>
        <xsl:apply-templates select="*[@key = 'FullText']"/>
      </cdf:FullText>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'InfoUri'])">
      <xsl:for-each select="*[@key = 'InfoUri']/map">
        <cdf:InfoUri>
          <xsl:apply-templates select="."/>
        </cdf:InfoUri>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'PassageThreshold'])">
      <cdf:PassageThreshold>
        <xsl:apply-templates select="*[@key = 'PassageThreshold']"/>
      </cdf:PassageThreshold>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'ProStatement'])">
      <cdf:ProStatement>
        <xsl:apply-templates select="*[@key = 'ProStatement']"/>
      </cdf:ProStatement>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'SummaryText'])">
      <cdf:SummaryText>
        <xsl:apply-templates select="*[@key = 'SummaryText']"/>
      </cdf:SummaryText>
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
  <xsl:template name="cdf:BallotMeasureOption" match="*[string = 'BallotDefinition.BallotMeasureOption' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="$set_type">
      <xsl:attribute name="xsi:type">cdf:BallotMeasureOption</xsl:attribute>
    </xsl:if>
    <xsl:call-template name="cdf:ContestOption">
      <xsl:with-param name="set_type" select="false()"/>
    </xsl:call-template>
    <xsl:if test="boolean(*[@key = 'Selection'])">
      <cdf:Selection>
        <xsl:apply-templates select="*[@key = 'Selection']"/>
      </cdf:Selection>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cdf:BallotStyle" match="*[string = 'BallotDefinition.BallotStyle' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="boolean(*[@key = 'ExternalIdentifier'])">
      <xsl:for-each select="*[@key = 'ExternalIdentifier']/map">
        <cdf:ExternalIdentifier>
          <xsl:apply-templates select="."/>
        </cdf:ExternalIdentifier>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'GpUnitIds'])">
      <cdf:GpUnitIds>
        <xsl:variable name="idrefs">
          <xsl:for-each select="*[@key = 'GpUnitIds']/string">
            <xsl:value-of select="concat(' ', .)"/>
          </xsl:for-each>
        </xsl:variable>
        <xsl:value-of select="normalize-space($idrefs)"/>
      </cdf:GpUnitIds>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'ImageUri'])">
      <xsl:for-each select="*[@key = 'ImageUri']/map">
        <cdf:ImageUri>
          <xsl:apply-templates select="."/>
        </cdf:ImageUri>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Language'])">
      <xsl:for-each select="*[@key = 'Language']/string">
        <cdf:Language>
          <xsl:value-of select="."/>
        </cdf:Language>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'OrderedContent'])">
      <xsl:for-each select="*[@key = 'OrderedContent']/map">
        <cdf:OrderedContent>
          <xsl:apply-templates select="."/>
        </cdf:OrderedContent>
      </xsl:for-each>
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
    <xsl:if test="boolean(*[@key = 'Purpose'])">
      <cdf:Purpose>
        <xsl:value-of select="*[@key = 'Purpose']"/>
      </cdf:Purpose>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cdf:BoundedObject" match="*[string = 'BallotDefinition.BoundedObject' and string/@key = '@type']" priority="-1">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="boolean(*[@key = 'H'])">
      <cdf:H>
        <xsl:value-of select="*[@key = 'H']"/>
      </cdf:H>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Sheet'])">
      <cdf:Sheet>
        <xsl:value-of select="*[@key = 'Sheet']"/>
      </cdf:Sheet>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Side'])">
      <cdf:Side>
        <xsl:value-of select="*[@key = 'Side']"/>
      </cdf:Side>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'W'])">
      <cdf:W>
        <xsl:value-of select="*[@key = 'W']"/>
      </cdf:W>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'X'])">
      <cdf:X>
        <xsl:value-of select="*[@key = 'X']"/>
      </cdf:X>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Y'])">
      <cdf:Y>
        <xsl:value-of select="*[@key = 'Y']"/>
      </cdf:Y>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cdf:Candidate" match="*[string = 'BallotDefinition.Candidate' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:attribute name="ObjectId">
      <xsl:value-of select="string[@key = '@id']"/>
    </xsl:attribute>
    <xsl:if test="boolean(*[@key = 'BallotName'])">
      <cdf:BallotName>
        <xsl:apply-templates select="*[@key = 'BallotName']"/>
      </cdf:BallotName>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'CampaignSlogan'])">
      <cdf:CampaignSlogan>
        <xsl:apply-templates select="*[@key = 'CampaignSlogan']"/>
      </cdf:CampaignSlogan>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'ContactInformation'])">
      <cdf:ContactInformation>
        <xsl:apply-templates select="*[@key = 'ContactInformation']"/>
      </cdf:ContactInformation>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'ExternalIdentifier'])">
      <xsl:for-each select="*[@key = 'ExternalIdentifier']/map">
        <cdf:ExternalIdentifier>
          <xsl:apply-templates select="."/>
        </cdf:ExternalIdentifier>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'FileDate'])">
      <cdf:FileDate>
        <xsl:value-of select="*[@key = 'FileDate']"/>
      </cdf:FileDate>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'IsIncumbent'])">
      <cdf:IsIncumbent>
        <xsl:value-of select="*[@key = 'IsIncumbent']"/>
      </cdf:IsIncumbent>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'IsTopTicket'])">
      <cdf:IsTopTicket>
        <xsl:value-of select="*[@key = 'IsTopTicket']"/>
      </cdf:IsTopTicket>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'PartyId'])">
      <cdf:PartyId>
        <xsl:value-of select="*[@key = 'PartyId']"/>
      </cdf:PartyId>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'PersonId'])">
      <cdf:PersonId>
        <xsl:value-of select="*[@key = 'PersonId']"/>
      </cdf:PersonId>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'PreElectionStatus'])">
      <cdf:PreElectionStatus>
        <xsl:value-of select="*[@key = 'PreElectionStatus']"/>
      </cdf:PreElectionStatus>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'ReadName'])">
      <cdf:ReadName>
        <xsl:value-of select="*[@key = 'ReadName']"/>
      </cdf:ReadName>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cdf:CandidateContest" match="*[string = 'BallotDefinition.CandidateContest' and string/@key = '@type']">
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
    <xsl:if test="boolean(*[@key = 'NumberRunoff'])">
      <cdf:NumberRunoff>
        <xsl:value-of select="*[@key = 'NumberRunoff']"/>
      </cdf:NumberRunoff>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'OfficeIds'])">
      <cdf:OfficeIds>
        <xsl:variable name="idrefs">
          <xsl:for-each select="*[@key = 'OfficeIds']/string">
            <xsl:value-of select="concat(' ', .)"/>
          </xsl:for-each>
        </xsl:variable>
        <xsl:value-of select="normalize-space($idrefs)"/>
      </cdf:OfficeIds>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'PrimaryPartyIds'])">
      <cdf:PrimaryPartyIds>
        <xsl:variable name="idrefs">
          <xsl:for-each select="*[@key = 'PrimaryPartyIds']/string">
            <xsl:value-of select="concat(' ', .)"/>
          </xsl:for-each>
        </xsl:variable>
        <xsl:value-of select="normalize-space($idrefs)"/>
      </cdf:PrimaryPartyIds>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'RanksAllowed'])">
      <cdf:RanksAllowed>
        <xsl:value-of select="*[@key = 'RanksAllowed']"/>
      </cdf:RanksAllowed>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'VotesAllowed'])">
      <cdf:VotesAllowed>
        <xsl:value-of select="*[@key = 'VotesAllowed']"/>
      </cdf:VotesAllowed>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cdf:CandidateOption" match="*[string = 'BallotDefinition.CandidateOption' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="$set_type">
      <xsl:attribute name="xsi:type">cdf:CandidateOption</xsl:attribute>
    </xsl:if>
    <xsl:call-template name="cdf:ContestOption">
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
    <xsl:if test="boolean(*[@key = 'EndorsementPartyIds'])">
      <cdf:EndorsementPartyIds>
        <xsl:variable name="idrefs">
          <xsl:for-each select="*[@key = 'EndorsementPartyIds']/string">
            <xsl:value-of select="concat(' ', .)"/>
          </xsl:for-each>
        </xsl:variable>
        <xsl:value-of select="normalize-space($idrefs)"/>
      </cdf:EndorsementPartyIds>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'IsWriteIn'])">
      <cdf:IsWriteIn>
        <xsl:value-of select="*[@key = 'IsWriteIn']"/>
      </cdf:IsWriteIn>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cdf:Coalition" match="*[string = 'BallotDefinition.Coalition' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="$set_type">
      <xsl:attribute name="xsi:type">cdf:Coalition</xsl:attribute>
    </xsl:if>
    <xsl:call-template name="cdf:Party">
      <xsl:with-param name="set_type" select="false()"/>
    </xsl:call-template>
    <xsl:if test="boolean(*[@key = 'ContestIds'])">
      <cdf:ContestIds>
        <xsl:variable name="idrefs">
          <xsl:for-each select="*[@key = 'ContestIds']/string">
            <xsl:value-of select="concat(' ', .)"/>
          </xsl:for-each>
        </xsl:variable>
        <xsl:value-of select="normalize-space($idrefs)"/>
      </cdf:ContestIds>
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
        <cdf:AddressLine>
          <xsl:value-of select="."/>
        </cdf:AddressLine>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Directions'])">
      <cdf:Directions>
        <xsl:apply-templates select="*[@key = 'Directions']"/>
      </cdf:Directions>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Email'])">
      <xsl:for-each select="*[@key = 'Email']/map">
        <cdf:Email>
          <xsl:apply-templates select="."/>
        </cdf:Email>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Fax'])">
      <xsl:for-each select="*[@key = 'Fax']/map">
        <cdf:Fax>
          <xsl:apply-templates select="."/>
        </cdf:Fax>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'LatLng'])">
      <cdf:LatLng>
        <xsl:apply-templates select="*[@key = 'LatLng']"/>
      </cdf:LatLng>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Name'])">
      <cdf:Name>
        <xsl:value-of select="*[@key = 'Name']"/>
      </cdf:Name>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Phone'])">
      <xsl:for-each select="*[@key = 'Phone']/map">
        <cdf:Phone>
          <xsl:apply-templates select="."/>
        </cdf:Phone>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Schedule'])">
      <xsl:for-each select="*[@key = 'Schedule']/map">
        <cdf:Schedule>
          <xsl:apply-templates select="."/>
        </cdf:Schedule>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Uri'])">
      <xsl:for-each select="*[@key = 'Uri']/map">
        <cdf:Uri>
          <xsl:apply-templates select="."/>
        </cdf:Uri>
      </xsl:for-each>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cdf:Contest" match="*[string = 'BallotDefinition.Contest' and string/@key = '@type']" priority="-2">
    <xsl:param name="set_type" select="true()"/>
    <xsl:attribute name="ObjectId">
      <xsl:value-of select="string[@key = '@id']"/>
    </xsl:attribute>
    <xsl:if test="boolean(*[@key = 'Abbreviation'])">
      <cdf:Abbreviation>
        <xsl:value-of select="*[@key = 'Abbreviation']"/>
      </cdf:Abbreviation>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'BallotSubTitle'])">
      <cdf:BallotSubTitle>
        <xsl:apply-templates select="*[@key = 'BallotSubTitle']"/>
      </cdf:BallotSubTitle>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'BallotTitle'])">
      <cdf:BallotTitle>
        <xsl:apply-templates select="*[@key = 'BallotTitle']"/>
      </cdf:BallotTitle>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'ContestOption'])">
      <xsl:for-each select="*[@key = 'ContestOption']/map">
        <cdf:ContestOption>
          <xsl:apply-templates select="."/>
        </cdf:ContestOption>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'ElectionDistrictId'])">
      <cdf:ElectionDistrictId>
        <xsl:value-of select="*[@key = 'ElectionDistrictId']"/>
      </cdf:ElectionDistrictId>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'ExternalIdentifier'])">
      <xsl:for-each select="*[@key = 'ExternalIdentifier']/map">
        <cdf:ExternalIdentifier>
          <xsl:apply-templates select="."/>
        </cdf:ExternalIdentifier>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'HasRotation'])">
      <cdf:HasRotation>
        <xsl:value-of select="*[@key = 'HasRotation']"/>
      </cdf:HasRotation>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Name'])">
      <cdf:Name>
        <xsl:value-of select="*[@key = 'Name']"/>
      </cdf:Name>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'SequenceOrder'])">
      <cdf:SequenceOrder>
        <xsl:value-of select="*[@key = 'SequenceOrder']"/>
      </cdf:SequenceOrder>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'TotalSubUnits'])">
      <cdf:TotalSubUnits>
        <xsl:value-of select="*[@key = 'TotalSubUnits']"/>
      </cdf:TotalSubUnits>
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
  <xsl:template name="cdf:ContestOption" match="*[string = 'BallotDefinition.ContestOption' and string/@key = '@type']" priority="-1">
    <xsl:param name="set_type" select="true()"/>
    <xsl:attribute name="ObjectId">
      <xsl:value-of select="string[@key = '@id']"/>
    </xsl:attribute>
    <xsl:if test="boolean(*[@key = 'ExternalIdentifier'])">
      <xsl:for-each select="*[@key = 'ExternalIdentifier']/map">
        <cdf:ExternalIdentifier>
          <xsl:apply-templates select="."/>
        </cdf:ExternalIdentifier>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'SequenceOrder'])">
      <cdf:SequenceOrder>
        <xsl:value-of select="*[@key = 'SequenceOrder']"/>
      </cdf:SequenceOrder>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cdf:ControllingContest" match="*[string = 'BallotDefinition.ControllingContest' and string/@key = '@type']" priority="-1">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="$set_type">
      <xsl:attribute name="xsi:type">cdf:ControllingContest</xsl:attribute>
    </xsl:if>
    <xsl:call-template name="cdf:Contest">
      <xsl:with-param name="set_type" select="false()"/>
    </xsl:call-template>
    <xsl:if test="boolean(*[@key = 'ControlledContestIds'])">
      <cdf:ControlledContestIds>
        <xsl:variable name="idrefs">
          <xsl:for-each select="*[@key = 'ControlledContestIds']/string">
            <xsl:value-of select="concat(' ', .)"/>
          </xsl:for-each>
        </xsl:variable>
        <xsl:value-of select="normalize-space($idrefs)"/>
      </cdf:ControlledContestIds>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cdf:Election" match="*[string = 'BallotDefinition.Election' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="boolean(*[@key = 'BallotStyle'])">
      <xsl:for-each select="*[@key = 'BallotStyle']/map">
        <cdf:BallotStyle>
          <xsl:apply-templates select="."/>
        </cdf:BallotStyle>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Candidate'])">
      <xsl:for-each select="*[@key = 'Candidate']/map">
        <cdf:Candidate>
          <xsl:apply-templates select="."/>
        </cdf:Candidate>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'ContactInformation'])">
      <cdf:ContactInformation>
        <xsl:apply-templates select="*[@key = 'ContactInformation']"/>
      </cdf:ContactInformation>
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
    <xsl:if test="boolean(*[@key = 'ExternalIdentifier'])">
      <xsl:for-each select="*[@key = 'ExternalIdentifier']/map">
        <cdf:ExternalIdentifier>
          <xsl:apply-templates select="."/>
        </cdf:ExternalIdentifier>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Name'])">
      <cdf:Name>
        <xsl:apply-templates select="*[@key = 'Name']"/>
      </cdf:Name>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'StartDate'])">
      <cdf:StartDate>
        <xsl:value-of select="*[@key = 'StartDate']"/>
      </cdf:StartDate>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'EndDate'])">
      <cdf:EndDate>
        <xsl:value-of select="*[@key = 'EndDate']"/>
      </cdf:EndDate>
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
  <xsl:template name="cdf:ElectionAdministration" match="*[string = 'BallotDefinition.ElectionAdministration' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="boolean(*[@key = 'ContactInformation'])">
      <cdf:ContactInformation>
        <xsl:apply-templates select="*[@key = 'ContactInformation']"/>
      </cdf:ContactInformation>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'ElectionOfficialPersonIds'])">
      <cdf:ElectionOfficialPersonIds>
        <xsl:variable name="idrefs">
          <xsl:for-each select="*[@key = 'ElectionOfficialPersonIds']/string">
            <xsl:value-of select="concat(' ', .)"/>
          </xsl:for-each>
        </xsl:variable>
        <xsl:value-of select="normalize-space($idrefs)"/>
      </cdf:ElectionOfficialPersonIds>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Name'])">
      <cdf:Name>
        <xsl:value-of select="*[@key = 'Name']"/>
      </cdf:Name>
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
  <xsl:template name="cdf:FiducialMark" match="*[string = 'BallotDefinition.FiducialMark' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="$set_type">
      <xsl:attribute name="xsi:type">cdf:FiducialMark</xsl:attribute>
    </xsl:if>
    <xsl:call-template name="cdf:BoundedObject">
      <xsl:with-param name="set_type" select="false()"/>
    </xsl:call-template>
    <xsl:if test="boolean(*[@key = 'ShapeId'])">
      <cdf:ShapeId>
        <xsl:value-of select="*[@key = 'ShapeId']"/>
      </cdf:ShapeId>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cdf:GpUnit" match="*[string = 'BallotDefinition.GpUnit' and string/@key = '@type']" priority="-1">
    <xsl:param name="set_type" select="true()"/>
    <xsl:attribute name="ObjectId">
      <xsl:value-of select="string[@key = '@id']"/>
    </xsl:attribute>
    <xsl:if test="boolean(*[@key = 'ComposingGpUnitIds'])">
      <cdf:ComposingGpUnitIds>
        <xsl:variable name="idrefs">
          <xsl:for-each select="*[@key = 'ComposingGpUnitIds']/string">
            <xsl:value-of select="concat(' ', .)"/>
          </xsl:for-each>
        </xsl:variable>
        <xsl:value-of select="normalize-space($idrefs)"/>
      </cdf:ComposingGpUnitIds>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'ExternalIdentifier'])">
      <xsl:for-each select="*[@key = 'ExternalIdentifier']/map">
        <cdf:ExternalIdentifier>
          <xsl:apply-templates select="."/>
        </cdf:ExternalIdentifier>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Name'])">
      <cdf:Name>
        <xsl:apply-templates select="*[@key = 'Name']"/>
      </cdf:Name>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cdf:Header" match="*[string = 'BallotDefinition.Header' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:attribute name="ObjectId">
      <xsl:value-of select="string[@key = '@id']"/>
    </xsl:attribute>
    <xsl:if test="boolean(*[@key = 'ExternalIdentifier'])">
      <xsl:for-each select="*[@key = 'ExternalIdentifier']/map">
        <cdf:ExternalIdentifier>
          <xsl:apply-templates select="."/>
        </cdf:ExternalIdentifier>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'HeaderedContent'])">
      <cdf:HeaderedContent>
        <xsl:apply-templates select="*[@key = 'HeaderedContent']"/>
      </cdf:HeaderedContent>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Name'])">
      <cdf:Name>
        <xsl:apply-templates select="*[@key = 'Name']"/>
      </cdf:Name>
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
      <cdf:Day>
        <xsl:value-of select="*[@key = 'Day']"/>
      </cdf:Day>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'StartTime'])">
      <cdf:StartTime>
        <xsl:value-of select="*[@key = 'StartTime']"/>
      </cdf:StartTime>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'EndTime'])">
      <cdf:EndTime>
        <xsl:value-of select="*[@key = 'EndTime']"/>
      </cdf:EndTime>
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
        <cdf:Text>
          <xsl:apply-templates select="."/>
        </cdf:Text>
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
      <cdf:Latitude>
        <xsl:value-of select="*[@key = 'Latitude']"/>
      </cdf:Latitude>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Longitude'])">
      <cdf:Longitude>
        <xsl:value-of select="*[@key = 'Longitude']"/>
      </cdf:Longitude>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Source'])">
      <cdf:Source>
        <xsl:value-of select="*[@key = 'Source']"/>
      </cdf:Source>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cdf:Office" match="*[string = 'BallotDefinition.Office' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:attribute name="ObjectId">
      <xsl:value-of select="string[@key = '@id']"/>
    </xsl:attribute>
    <xsl:if test="boolean(*[@key = 'ContactInformation'])">
      <cdf:ContactInformation>
        <xsl:apply-templates select="*[@key = 'ContactInformation']"/>
      </cdf:ContactInformation>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Description'])">
      <cdf:Description>
        <xsl:apply-templates select="*[@key = 'Description']"/>
      </cdf:Description>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'ElectionDistrictId'])">
      <cdf:ElectionDistrictId>
        <xsl:value-of select="*[@key = 'ElectionDistrictId']"/>
      </cdf:ElectionDistrictId>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'ExternalIdentifier'])">
      <xsl:for-each select="*[@key = 'ExternalIdentifier']/map">
        <cdf:ExternalIdentifier>
          <xsl:apply-templates select="."/>
        </cdf:ExternalIdentifier>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'FilingDeadline'])">
      <cdf:FilingDeadline>
        <xsl:value-of select="*[@key = 'FilingDeadline']"/>
      </cdf:FilingDeadline>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'IsPartisan'])">
      <cdf:IsPartisan>
        <xsl:value-of select="*[@key = 'IsPartisan']"/>
      </cdf:IsPartisan>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Name'])">
      <cdf:Name>
        <xsl:apply-templates select="*[@key = 'Name']"/>
      </cdf:Name>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'OfficeHolderPersonIds'])">
      <cdf:OfficeHolderPersonIds>
        <xsl:variable name="idrefs">
          <xsl:for-each select="*[@key = 'OfficeHolderPersonIds']/string">
            <xsl:value-of select="concat(' ', .)"/>
          </xsl:for-each>
        </xsl:variable>
        <xsl:value-of select="normalize-space($idrefs)"/>
      </cdf:OfficeHolderPersonIds>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Term'])">
      <cdf:Term>
        <xsl:apply-templates select="*[@key = 'Term']"/>
      </cdf:Term>
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
      <cdf:Name>
        <xsl:value-of select="*[@key = 'Name']"/>
      </cdf:Name>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'OfficeIds'])">
      <cdf:OfficeIds>
        <xsl:variable name="idrefs">
          <xsl:for-each select="*[@key = 'OfficeIds']/string">
            <xsl:value-of select="concat(' ', .)"/>
          </xsl:for-each>
        </xsl:variable>
        <xsl:value-of select="normalize-space($idrefs)"/>
      </cdf:OfficeIds>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'SubOfficeGroup'])">
      <xsl:for-each select="*[@key = 'SubOfficeGroup']/map">
        <cdf:SubOfficeGroup>
          <xsl:apply-templates select="."/>
        </cdf:SubOfficeGroup>
      </xsl:for-each>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cdf:OptionPosition" match="*[string = 'BallotDefinition.OptionPosition' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="$set_type">
      <xsl:attribute name="xsi:type">cdf:OptionPosition</xsl:attribute>
    </xsl:if>
    <xsl:call-template name="cdf:BoundedObject">
      <xsl:with-param name="set_type" select="false()"/>
    </xsl:call-template>
    <xsl:if test="boolean(*[@key = 'FractionalVotes'])">
      <cdf:FractionalVotes>
        <xsl:value-of select="*[@key = 'FractionalVotes']"/>
      </cdf:FractionalVotes>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'IndicatorId'])">
      <cdf:IndicatorId>
        <xsl:value-of select="*[@key = 'IndicatorId']"/>
      </cdf:IndicatorId>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'NumberVotes'])">
      <cdf:NumberVotes>
        <xsl:value-of select="*[@key = 'NumberVotes']"/>
      </cdf:NumberVotes>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Rank'])">
      <cdf:Rank>
        <xsl:value-of select="*[@key = 'Rank']"/>
      </cdf:Rank>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cdf:OrderedContent" match="*[string = 'BallotDefinition.OrderedContent' and string/@key = '@type']" priority="-1">
    <xsl:param name="set_type" select="true()"/>
  </xsl:template>
  <xsl:template name="cdf:OrderedContest" match="*[string = 'BallotDefinition.OrderedContest' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="$set_type">
      <xsl:attribute name="xsi:type">cdf:OrderedContest</xsl:attribute>
    </xsl:if>
    <xsl:call-template name="cdf:OrderedContent">
      <xsl:with-param name="set_type" select="false()"/>
    </xsl:call-template>
    <xsl:if test="boolean(*[@key = 'ContestId'])">
      <cdf:ContestId>
        <xsl:value-of select="*[@key = 'ContestId']"/>
      </cdf:ContestId>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'OrderedContestOptionIds'])">
      <cdf:OrderedContestOptionIds>
        <xsl:variable name="idrefs">
          <xsl:for-each select="*[@key = 'OrderedContestOptionIds']/string">
            <xsl:value-of select="concat(' ', .)"/>
          </xsl:for-each>
        </xsl:variable>
        <xsl:value-of select="normalize-space($idrefs)"/>
      </cdf:OrderedContestOptionIds>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Physical'])">
      <xsl:for-each select="*[@key = 'Physical']/map">
        <cdf:Physical>
          <xsl:apply-templates select="."/>
        </cdf:Physical>
      </xsl:for-each>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cdf:OrderedHeader" match="*[string = 'BallotDefinition.OrderedHeader' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="$set_type">
      <xsl:attribute name="xsi:type">cdf:OrderedHeader</xsl:attribute>
    </xsl:if>
    <xsl:call-template name="cdf:OrderedContent">
      <xsl:with-param name="set_type" select="false()"/>
    </xsl:call-template>
    <xsl:if test="boolean(*[@key = 'HeaderId'])">
      <cdf:HeaderId>
        <xsl:value-of select="*[@key = 'HeaderId']"/>
      </cdf:HeaderId>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'OrderedContent'])">
      <xsl:for-each select="*[@key = 'OrderedContent']/map">
        <cdf:OrderedContent>
          <xsl:apply-templates select="."/>
        </cdf:OrderedContent>
      </xsl:for-each>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cdf:Party" match="*[string = 'BallotDefinition.Party' and string/@key = '@type']" priority="-1">
    <xsl:param name="set_type" select="true()"/>
    <xsl:attribute name="ObjectId">
      <xsl:value-of select="string[@key = '@id']"/>
    </xsl:attribute>
    <xsl:if test="boolean(*[@key = 'Abbreviation'])">
      <cdf:Abbreviation>
        <xsl:apply-templates select="*[@key = 'Abbreviation']"/>
      </cdf:Abbreviation>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Color'])">
      <cdf:Color>
        <xsl:value-of select="*[@key = 'Color']"/>
      </cdf:Color>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'ContactInformation'])">
      <cdf:ContactInformation>
        <xsl:apply-templates select="*[@key = 'ContactInformation']"/>
      </cdf:ContactInformation>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'ExternalIdentifier'])">
      <xsl:for-each select="*[@key = 'ExternalIdentifier']/map">
        <cdf:ExternalIdentifier>
          <xsl:apply-templates select="."/>
        </cdf:ExternalIdentifier>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'IsRecognizedParty'])">
      <cdf:IsRecognizedParty>
        <xsl:value-of select="*[@key = 'IsRecognizedParty']"/>
      </cdf:IsRecognizedParty>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'LeaderPersonIds'])">
      <cdf:LeaderPersonIds>
        <xsl:variable name="idrefs">
          <xsl:for-each select="*[@key = 'LeaderPersonIds']/string">
            <xsl:value-of select="concat(' ', .)"/>
          </xsl:for-each>
        </xsl:variable>
        <xsl:value-of select="normalize-space($idrefs)"/>
      </cdf:LeaderPersonIds>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'LogoUri'])">
      <xsl:for-each select="*[@key = 'LogoUri']/map">
        <cdf:LogoUri>
          <xsl:apply-templates select="."/>
        </cdf:LogoUri>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Name'])">
      <cdf:Name>
        <xsl:apply-templates select="*[@key = 'Name']"/>
      </cdf:Name>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'PartyScopeGpUnitIds'])">
      <cdf:PartyScopeGpUnitIds>
        <xsl:variable name="idrefs">
          <xsl:for-each select="*[@key = 'PartyScopeGpUnitIds']/string">
            <xsl:value-of select="concat(' ', .)"/>
          </xsl:for-each>
        </xsl:variable>
        <xsl:value-of select="normalize-space($idrefs)"/>
      </cdf:PartyScopeGpUnitIds>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Slogan'])">
      <cdf:Slogan>
        <xsl:apply-templates select="*[@key = 'Slogan']"/>
      </cdf:Slogan>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cdf:PartyContest" match="*[string = 'BallotDefinition.PartyContest' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="$set_type">
      <xsl:attribute name="xsi:type">cdf:PartyContest</xsl:attribute>
    </xsl:if>
    <xsl:call-template name="cdf:Contest">
      <xsl:with-param name="set_type" select="false()"/>
    </xsl:call-template>
  </xsl:template>
  <xsl:template name="cdf:PartyOption" match="*[string = 'BallotDefinition.PartyOption' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="$set_type">
      <xsl:attribute name="xsi:type">cdf:PartyOption</xsl:attribute>
    </xsl:if>
    <xsl:call-template name="cdf:ContestOption">
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
  <xsl:template name="cdf:PartyPreferenceContest" match="*[string = 'BallotDefinition.PartyPreferenceContest' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="$set_type">
      <xsl:attribute name="xsi:type">cdf:PartyPreferenceContest</xsl:attribute>
    </xsl:if>
    <xsl:call-template name="cdf:ControllingContest">
      <xsl:with-param name="set_type" select="false()"/>
    </xsl:call-template>
  </xsl:template>
  <xsl:template name="cdf:PartyRegistration" match="*[string = 'BallotDefinition.PartyRegistration' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="boolean(*[@key = 'Count'])">
      <cdf:Count>
        <xsl:value-of select="*[@key = 'Count']"/>
      </cdf:Count>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'PartyId'])">
      <cdf:PartyId>
        <xsl:value-of select="*[@key = 'PartyId']"/>
      </cdf:PartyId>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cdf:Person" match="*[string = 'BallotDefinition.Person' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:attribute name="ObjectId">
      <xsl:value-of select="string[@key = '@id']"/>
    </xsl:attribute>
    <xsl:if test="boolean(*[@key = 'ContactInformation'])">
      <xsl:for-each select="*[@key = 'ContactInformation']/map">
        <cdf:ContactInformation>
          <xsl:apply-templates select="."/>
        </cdf:ContactInformation>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'DateOfBirth'])">
      <cdf:DateOfBirth>
        <xsl:value-of select="*[@key = 'DateOfBirth']"/>
      </cdf:DateOfBirth>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'ExternalIdentifier'])">
      <xsl:for-each select="*[@key = 'ExternalIdentifier']/map">
        <cdf:ExternalIdentifier>
          <xsl:apply-templates select="."/>
        </cdf:ExternalIdentifier>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'FirstName'])">
      <cdf:FirstName>
        <xsl:value-of select="*[@key = 'FirstName']"/>
      </cdf:FirstName>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'FullName'])">
      <cdf:FullName>
        <xsl:apply-templates select="*[@key = 'FullName']"/>
      </cdf:FullName>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Gender'])">
      <cdf:Gender>
        <xsl:value-of select="*[@key = 'Gender']"/>
      </cdf:Gender>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'LastName'])">
      <cdf:LastName>
        <xsl:value-of select="*[@key = 'LastName']"/>
      </cdf:LastName>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'MiddleName'])">
      <xsl:for-each select="*[@key = 'MiddleName']/string">
        <cdf:MiddleName>
          <xsl:value-of select="."/>
        </cdf:MiddleName>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Nickname'])">
      <cdf:Nickname>
        <xsl:value-of select="*[@key = 'Nickname']"/>
      </cdf:Nickname>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'PartyId'])">
      <cdf:PartyId>
        <xsl:value-of select="*[@key = 'PartyId']"/>
      </cdf:PartyId>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Prefix'])">
      <cdf:Prefix>
        <xsl:value-of select="*[@key = 'Prefix']"/>
      </cdf:Prefix>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Profession'])">
      <cdf:Profession>
        <xsl:apply-templates select="*[@key = 'Profession']"/>
      </cdf:Profession>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Suffix'])">
      <cdf:Suffix>
        <xsl:value-of select="*[@key = 'Suffix']"/>
      </cdf:Suffix>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Title'])">
      <cdf:Title>
        <xsl:apply-templates select="*[@key = 'Title']"/>
      </cdf:Title>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cdf:PhysicalContest" match="*[string = 'BallotDefinition.PhysicalContest' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="boolean(*[@key = 'BallotFormatId'])">
      <cdf:BallotFormatId>
        <xsl:value-of select="*[@key = 'BallotFormatId']"/>
      </cdf:BallotFormatId>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Extent'])">
      <xsl:for-each select="*[@key = 'Extent']/map">
        <cdf:Extent>
          <xsl:apply-templates select="."/>
        </cdf:Extent>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'FiducialMark'])">
      <xsl:for-each select="*[@key = 'FiducialMark']/map">
        <cdf:FiducialMark>
          <xsl:apply-templates select="."/>
        </cdf:FiducialMark>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'PhysicalContestOption'])">
      <xsl:for-each select="*[@key = 'PhysicalContestOption']/map">
        <cdf:PhysicalContestOption>
          <xsl:apply-templates select="."/>
        </cdf:PhysicalContestOption>
      </xsl:for-each>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cdf:PhysicalContestOption" match="*[string = 'BallotDefinition.PhysicalContestOption' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="boolean(*[@key = 'ContestOptionId'])">
      <cdf:ContestOptionId>
        <xsl:value-of select="*[@key = 'ContestOptionId']"/>
      </cdf:ContestOptionId>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'OptionPosition'])">
      <xsl:for-each select="*[@key = 'OptionPosition']/map">
        <cdf:OptionPosition>
          <xsl:apply-templates select="."/>
        </cdf:OptionPosition>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'WriteInPosition'])">
      <xsl:for-each select="*[@key = 'WriteInPosition']/map">
        <cdf:WriteInPosition>
          <xsl:apply-templates select="."/>
        </cdf:WriteInPosition>
      </xsl:for-each>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cdf:ReportingUnit" match="*[string = 'BallotDefinition.ReportingUnit' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="$set_type">
      <xsl:attribute name="xsi:type">cdf:ReportingUnit</xsl:attribute>
    </xsl:if>
    <xsl:call-template name="cdf:GpUnit">
      <xsl:with-param name="set_type" select="false()"/>
    </xsl:call-template>
    <xsl:if test="boolean(*[@key = 'AuthorityIds'])">
      <cdf:AuthorityIds>
        <xsl:variable name="idrefs">
          <xsl:for-each select="*[@key = 'AuthorityIds']/string">
            <xsl:value-of select="concat(' ', .)"/>
          </xsl:for-each>
        </xsl:variable>
        <xsl:value-of select="normalize-space($idrefs)"/>
      </cdf:AuthorityIds>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'ContactInformation'])">
      <cdf:ContactInformation>
        <xsl:apply-templates select="*[@key = 'ContactInformation']"/>
      </cdf:ContactInformation>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'ElectionAdministration'])">
      <cdf:ElectionAdministration>
        <xsl:apply-templates select="*[@key = 'ElectionAdministration']"/>
      </cdf:ElectionAdministration>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'IsDistricted'])">
      <cdf:IsDistricted>
        <xsl:value-of select="*[@key = 'IsDistricted']"/>
      </cdf:IsDistricted>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'IsMailOnly'])">
      <cdf:IsMailOnly>
        <xsl:value-of select="*[@key = 'IsMailOnly']"/>
      </cdf:IsMailOnly>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Number'])">
      <cdf:Number>
        <xsl:value-of select="*[@key = 'Number']"/>
      </cdf:Number>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'PartyRegistration'])">
      <xsl:for-each select="*[@key = 'PartyRegistration']/map">
        <cdf:PartyRegistration>
          <xsl:apply-templates select="."/>
        </cdf:PartyRegistration>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'SpatialDimension'])">
      <cdf:SpatialDimension>
        <xsl:apply-templates select="*[@key = 'SpatialDimension']"/>
      </cdf:SpatialDimension>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'TotalSubUnits'])">
      <cdf:TotalSubUnits>
        <xsl:value-of select="*[@key = 'TotalSubUnits']"/>
      </cdf:TotalSubUnits>
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
    <xsl:if test="boolean(*[@key = 'VotersRegistered'])">
      <cdf:VotersRegistered>
        <xsl:value-of select="*[@key = 'VotersRegistered']"/>
      </cdf:VotersRegistered>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cdf:RetentionContest" match="*[string = 'BallotDefinition.RetentionContest' and string/@key = '@type']">
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
    <xsl:if test="boolean(*[@key = 'OfficeId'])">
      <cdf:OfficeId>
        <xsl:value-of select="*[@key = 'OfficeId']"/>
      </cdf:OfficeId>
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
        <cdf:Hours>
          <xsl:apply-templates select="."/>
        </cdf:Hours>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'IsOnlyByAppointment'])">
      <cdf:IsOnlyByAppointment>
        <xsl:value-of select="*[@key = 'IsOnlyByAppointment']"/>
      </cdf:IsOnlyByAppointment>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'IsOrByAppointment'])">
      <cdf:IsOrByAppointment>
        <xsl:value-of select="*[@key = 'IsOrByAppointment']"/>
      </cdf:IsOrByAppointment>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'IsSubjectToChange'])">
      <cdf:IsSubjectToChange>
        <xsl:value-of select="*[@key = 'IsSubjectToChange']"/>
      </cdf:IsSubjectToChange>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'StartDate'])">
      <cdf:StartDate>
        <xsl:value-of select="*[@key = 'StartDate']"/>
      </cdf:StartDate>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'EndDate'])">
      <cdf:EndDate>
        <xsl:value-of select="*[@key = 'EndDate']"/>
      </cdf:EndDate>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cdf:Shape" match="*[string = 'BallotDefinition.Shape' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:attribute name="ObjectId">
      <xsl:value-of select="string[@key = '@id']"/>
    </xsl:attribute>
    <xsl:if test="boolean(*[@key = 'FillColor'])">
      <cdf:FillColor>
        <xsl:value-of select="*[@key = 'FillColor']"/>
      </cdf:FillColor>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'ShapeType'])">
      <cdf:ShapeType>
        <xsl:value-of select="*[@key = 'ShapeType']"/>
      </cdf:ShapeType>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'StrokeColor'])">
      <cdf:StrokeColor>
        <xsl:value-of select="*[@key = 'StrokeColor']"/>
      </cdf:StrokeColor>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'StrokeWidth'])">
      <cdf:StrokeWidth>
        <xsl:value-of select="*[@key = 'StrokeWidth']"/>
      </cdf:StrokeWidth>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cdf:SpatialDimension" match="*[string = 'BallotDefinition.SpatialDimension' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="boolean(*[@key = 'MapUri'])">
      <xsl:for-each select="*[@key = 'MapUri']/map">
        <cdf:MapUri>
          <xsl:apply-templates select="."/>
        </cdf:MapUri>
      </xsl:for-each>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'SpatialExtent'])">
      <cdf:SpatialExtent>
        <xsl:apply-templates select="*[@key = 'SpatialExtent']"/>
      </cdf:SpatialExtent>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cdf:SpatialExtent" match="*[string = 'BallotDefinition.SpatialExtent' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="boolean(*[@key = 'Coordinates'])">
      <cdf:Coordinates>
        <xsl:value-of select="*[@key = 'Coordinates']"/>
      </cdf:Coordinates>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Format'])">
      <cdf:Format>
        <xsl:value-of select="*[@key = 'Format']"/>
      </cdf:Format>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cdf:StraightPartyContest" match="*[string = 'BallotDefinition.StraightPartyContest' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="$set_type">
      <xsl:attribute name="xsi:type">cdf:StraightPartyContest</xsl:attribute>
    </xsl:if>
    <xsl:call-template name="cdf:ControllingContest">
      <xsl:with-param name="set_type" select="false()"/>
    </xsl:call-template>
    <xsl:if test="boolean(*[@key = 'OtherStraightPartyRuleset'])">
      <cdf:OtherStraightPartyRuleset>
        <xsl:value-of select="*[@key = 'OtherStraightPartyRuleset']"/>
      </cdf:OtherStraightPartyRuleset>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'StraightPartyRuleset'])">
      <cdf:StraightPartyRuleset>
        <xsl:value-of select="*[@key = 'StraightPartyRuleset']"/>
      </cdf:StraightPartyRuleset>
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
      <cdf:StartDate>
        <xsl:value-of select="*[@key = 'StartDate']"/>
      </cdf:StartDate>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'EndDate'])">
      <cdf:EndDate>
        <xsl:value-of select="*[@key = 'EndDate']"/>
      </cdf:EndDate>
    </xsl:if>
    <xsl:if test="boolean(*[@key = 'Type'])">
      <cdf:Type>
        <xsl:value-of select="*[@key = 'Type']"/>
      </cdf:Type>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cdf:WriteInPosition" match="*[string = 'BallotDefinition.WriteInPosition' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="$set_type">
      <xsl:attribute name="xsi:type">cdf:WriteInPosition</xsl:attribute>
    </xsl:if>
    <xsl:call-template name="cdf:BoundedObject">
      <xsl:with-param name="set_type" select="false()"/>
    </xsl:call-template>
    <xsl:if test="boolean(*[@key = 'SelectionRequired'])">
      <cdf:SelectionRequired>
        <xsl:value-of select="*[@key = 'SelectionRequired']"/>
      </cdf:SelectionRequired>
    </xsl:if>
  </xsl:template>
  <xsl:template name="cdf:mCDFArea" match="*[string = 'BallotDefinition.mCDFArea' and string/@key = '@type']">
    <xsl:param name="set_type" select="true()"/>
    <xsl:if test="$set_type">
      <xsl:attribute name="xsi:type">cdf:mCDFArea</xsl:attribute>
    </xsl:if>
    <xsl:call-template name="cdf:BoundedObject">
      <xsl:with-param name="set_type" select="false()"/>
    </xsl:call-template>
    <xsl:if test="boolean(*[@key = 'Symbology'])">
      <cdf:Symbology>
        <xsl:value-of select="*[@key = 'Symbology']"/>
      </cdf:Symbology>
    </xsl:if>
  </xsl:template>
</xsl:stylesheet>
