<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:mp="http://mapping" xmlns:sch="http://purl.oclc.org/dsdl/schematron" xmlns:sqf="http://www.schematron-quickfix.com/validator/process" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" queryBinding="xslt2">
    <xsl:key name="ContestOption" match="/cdf:BallotDefinition/cdf:Election/cdf:Contest/cdf:ContestOption" use="@ObjectId"/>
    <xsl:key name="Party" match="/cdf:BallotDefinition/cdf:Party" use="@ObjectId"/>
    <xsl:key name="Person" match="/cdf:BallotDefinition/cdf:Person" use="@ObjectId"/>
    <xsl:key name="Election" match="/cdf:BallotDefinition/cdf:Election" use="@ObjectId"/>
    <xsl:key name="ReportingUnit" match="/cdf:BallotDefinition/cdf:GpUnit[contains(@xsi:type, 'ReportingUnit')]" use="@ObjectId"/>
    <xsl:key name="GpUnit" match="/cdf:BallotDefinition/cdf:GpUnit" use="@ObjectId"/>
    <xsl:key name="BallotFormat" match="/cdf:BallotDefinition/cdf:BallotFormat" use="@ObjectId"/>
    <xsl:key name="Office" match="/cdf:BallotDefinition/cdf:Office" use="@ObjectId"/>
    <xsl:key name="Contest" match="/cdf:BallotDefinition/cdf:Election/cdf:Contest" use="@ObjectId"/>
    <xsl:key name="Candidate" match="/cdf:BallotDefinition/cdf:Election/cdf:Candidate" use="@ObjectId"/>
    <xsl:key name="Header" match="/cdf:BallotDefinition/cdf:Header" use="@ObjectId"/>
    <xsl:key name="Shape" match="/cdf:BallotDefinition/cdf:Shape" use="@ObjectId"/>    
    <sch:ns uri="http://itl.nist.gov/ns/voting/1500-20/v1" prefix="cdf"/>    
    <sch:ns uri="http://www.w3.org/2001/XMLSchema-instance" prefix="xsi"/>
    <sch:pattern>        
        <sch:rule context="(/cdf:BallotDefinition/cdf:Election/cdf:BallotStyle/cdf:OrderedContent/cdf:Physical/cdf:PhysicalContestOption)">
            <sch:assert test="not(cdf:ContestOptionId) or key('ContestOption',current()/cdf:ContestOptionId)"> ContestOptionId (<sch:value-of select="cdf:ContestOptionId"/> must point to an element of type ContestOption</sch:assert>
        </sch:rule>        
        <sch:rule context="(/cdf:BallotDefinition/cdf:Election/cdf:Candidate)">
            <sch:assert test="not(cdf:PartyId) or key('Party',current()/cdf:PartyId)"> PartyId (<sch:value-of select="cdf:PartyId"/> must point to an element of type Party</sch:assert>
            <sch:assert test="not(cdf:PersonId) or key('Person',current()/cdf:PersonId)"> PersonId (<sch:value-of select="cdf:PersonId"/> must point to an element of type Person</sch:assert>
        </sch:rule>
        <sch:rule context="(/cdf:BallotDefinition/cdf:Person)">
            <sch:assert test="not(cdf:PartyId) or key('Party',current()/cdf:PartyId)"> PartyId (<sch:value-of select="cdf:PartyId"/> must point to an element of type Party</sch:assert>
        </sch:rule>
        <sch:rule context="(/cdf:BallotDefinition/cdf:Office)">
            <sch:assert test="not(cdf:OfficeHolderPersonIds) or (every $curId in tokenize(cdf:OfficeHolderPersonIds) satisfies key('Person',$curId))">OfficeHolderPersonIds (<sch:value-of select="cdf:OfficeHolderPersonIds"/> must point to an element of type Person</sch:assert>
            <sch:assert test="not(cdf:ElectionDistrictId) or key('ReportingUnit',current()/cdf:ElectionDistrictId)"> ElectionDistrictId (<sch:value-of select="cdf:ElectionDistrictId"/> must point to an element of type ReportingUnit</sch:assert>
        </sch:rule>
        <sch:rule context="(/cdf:BallotDefinition/cdf:GpUnit/cdf:ElectionAdministration)">
            <sch:assert test="not(cdf:ElectionOfficialPersonIds) or (every $curId in tokenize(cdf:ElectionOfficialPersonIds) satisfies key('Person',$curId))">ElectionOfficialPersonIds (<sch:value-of select="cdf:ElectionOfficialPersonIds"/> must point to an element of type Person</sch:assert>
        </sch:rule>
        <sch:rule context="(/cdf:BallotDefinition/cdf:GpUnit/cdf:PartyRegistration)">
            <sch:assert test="not(cdf:PartyId) or key('Party',current()/cdf:PartyId)"> PartyId (<sch:value-of select="cdf:PartyId"/> must point to an element of type Party</sch:assert>
        </sch:rule>
        <sch:rule context="(/cdf:BallotDefinition/cdf:Party)">
            <sch:assert test="not(cdf:PartyScopeGpUnitIds) or (every $curId in tokenize(cdf:PartyScopeGpUnitIds) satisfies key('GpUnit',$curId))">PartyScopeGpUnitIds (<sch:value-of select="cdf:PartyScopeGpUnitIds"/> must point to an element of type GpUnit</sch:assert>
            <sch:assert test="not(cdf:LeaderPersonIds) or (every $curId in tokenize(cdf:LeaderPersonIds) satisfies key('Person',$curId))">LeaderPersonIds (<sch:value-of select="cdf:LeaderPersonIds"/> must point to an element of type Person</sch:assert>
        </sch:rule>
        <sch:rule context="(/cdf:BallotDefinition/cdf:GpUnit)">
            <sch:assert test="not(cdf:ComposingGpUnitIds) or (every $curId in tokenize(cdf:ComposingGpUnitIds) satisfies key('GpUnit',$curId))">ComposingGpUnitIds (<sch:value-of select="cdf:ComposingGpUnitIds"/> must point to an element of type GpUnit</sch:assert>
        </sch:rule>
        <sch:rule context="(/cdf:BallotDefinition/cdf:Election/cdf:BallotStyle/cdf:OrderedContent/cdf:Physical|/cdf:BallotDefinition/cdf:Election/cdf:BallotStyle/cdf:OrderedContent/cdf:OrderedContent/cdf:Physical)">
            <sch:assert test="not(cdf:BallotFormatId) or key('BallotFormat',current()/cdf:BallotFormatId)"> BallotFormatId (<sch:value-of select="cdf:BallotFormatId"/> must point to an element of type BallotFormat</sch:assert>
        </sch:rule>
        <sch:rule context="(/cdf:BallotDefinition/cdf:Election)">
            <sch:assert test="not(cdf:ElectionScopeId) or key('ReportingUnit',current()/cdf:ElectionScopeId)"> ElectionScopeId (<sch:value-of select="cdf:ElectionScopeId"/> must point to an element of type ReportingUnit</sch:assert>
        </sch:rule>
        <sch:rule context="(/cdf:BallotDefinition/cdf:OfficeGroup|/cdf:BallotDefinition/cdf:OfficeGroup/cdf:SubOfficeGroup|/cdf:BallotDefinition/cdf:OfficeGroup/cdf:SubOfficeGroup/cdf:SubOfficeGroup)">
            <sch:assert test="not(cdf:OfficeIds) or (every $curId in tokenize(cdf:OfficeIds) satisfies key('Office',$curId))">OfficeIds (<sch:value-of select="cdf:OfficeIds"/> must point to an element of type Office</sch:assert>
        </sch:rule>
        <sch:rule context="(/cdf:BallotDefinition/cdf:Election/cdf:BallotStyle)">
            <sch:assert test="not(cdf:PartyIds) or (every $curId in tokenize(cdf:PartyIds) satisfies key('Party',$curId))">PartyIds (<sch:value-of select="cdf:PartyIds"/> must point to an element of type Party</sch:assert>
            <sch:assert test="not(cdf:GpUnitIds) or (every $curId in tokenize(cdf:GpUnitIds) satisfies key('GpUnit',$curId))">GpUnitIds (<sch:value-of select="cdf:GpUnitIds"/> must point to an element of type GpUnit</sch:assert>
        </sch:rule>        
    </sch:pattern>
    <sch:pattern>        
        <sch:rule context="(/cdf:BallotDefinition/cdf:GpUnit[@xsi:type = 'cdf:ReportingUnit'][contains(@xsi:type,'ReportingUnit')])">
            <sch:assert test="not(cdf:Id) or key('Contest',current()/cdf:Id)"> Id (<sch:value-of select="cdf:Id"/> must point to an element of type Contest</sch:assert>
            <sch:assert test="not(cdf:AuthorityIds) or (every $curId in tokenize(cdf:AuthorityIds) satisfies key('Person',$curId))">AuthorityIds (<sch:value-of select="cdf:AuthorityIds"/> must point to an element of type Person</sch:assert>
        </sch:rule>
        <sch:rule context="(/cdf:BallotDefinition/cdf:Election/cdf:BallotStyle/cdf:OrderedContent[@xsi:type = 'cdf:OrderedContest']|/cdf:BallotDefinition/cdf:Election/cdf:BallotStyle/cdf:OrderedContent/cdf:OrderedContent/cdf:OrderedContent[@xsi:type = 'cdf:OrderedContest']|/cdf:BallotDefinition/cdf:Election/cdf:BallotStyle/cdf:OrderedContent/cdf:OrderedContent[@xsi:type = 'cdf:OrderedContest'][contains(@xsi:type,'OrderedContest')])">
            <sch:assert test="not(cdf:ContestId) or key('Contest',current()/cdf:ContestId)"> ContestId (<sch:value-of select="cdf:ContestId"/> must point to an element of type Contest</sch:assert>
            <sch:assert test="not(cdf:OrderedContestOptionIds) or (every $curId in tokenize(cdf:OrderedContestOptionIds) satisfies key('ContestOption',$curId))">OrderedContestOptionIds (<sch:value-of select="cdf:OrderedContestOptionIds"/> must point to an element of type ContestOption</sch:assert>
        </sch:rule>
        <sch:rule context="(/cdf:BallotDefinition/cdf:Election/cdf:Contest[@xsi:type = 'cdf:CandidateContest'][contains(@xsi:type,'CandidateContest')])">
            <sch:assert test="not(cdf:OfficeIds) or (every $curId in tokenize(cdf:OfficeIds) satisfies key('Office',$curId))">OfficeIds (<sch:value-of select="cdf:OfficeIds"/> must point to an element of type Office</sch:assert>
            <sch:assert test="not(cdf:PrimaryPartyIds) or (every $curId in tokenize(cdf:PrimaryPartyIds) satisfies key('Party',$curId))">PrimaryPartyIds (<sch:value-of select="cdf:PrimaryPartyIds"/> must point to an element of type Party</sch:assert>
        </sch:rule>
        <sch:rule context="(/cdf:BallotDefinition/cdf:Election/cdf:Contest[@xsi:type = 'cdf:RetentionContest'][contains(@xsi:type,'RetentionContest')])">
            <sch:assert test="not(cdf:CandidateId) or key('Candidate',current()/cdf:CandidateId)"> CandidateId (<sch:value-of select="cdf:CandidateId"/> must point to an element of type Candidate</sch:assert>
            <sch:assert test="not(cdf:OfficeId) or key('Office',current()/cdf:OfficeId)"> OfficeId (<sch:value-of select="cdf:OfficeId"/> must point to an element of type Office</sch:assert>
        </sch:rule>
        <sch:rule context="(/cdf:BallotDefinition/cdf:Election/cdf:Contest/cdf:ContestOption[@xsi:type = 'cdf:PartyOption'][contains(@xsi:type,'PartyOption')])">
            <sch:assert test="not(cdf:PartyIds) or (every $curId in tokenize(cdf:PartyIds) satisfies key('Party',$curId))">PartyIds (<sch:value-of select="cdf:PartyIds"/> must point to an element of type Party</sch:assert>
        </sch:rule>
        <sch:rule context="(/cdf:BallotDefinition/cdf:Election/cdf:BallotStyle/cdf:OrderedContent[@xsi:type = 'cdf:OrderedHeader']|/cdf:BallotDefinition/cdf:Election/cdf:BallotStyle/cdf:OrderedContent/cdf:OrderedContent[@xsi:type = 'cdf:OrderedHeader']|/cdf:BallotDefinition/cdf:Election/cdf:BallotStyle/cdf:OrderedContent/cdf:OrderedContent/cdf:OrderedContent[@xsi:type = 'cdf:OrderedHeader'][contains(@xsi:type,'OrderedHeader')])">
            <sch:assert test="not(cdf:HeaderId) or key('Header',current()/cdf:HeaderId)"> HeaderId (<sch:value-of select="cdf:HeaderId"/> must point to an element of type Header</sch:assert>
        </sch:rule>
        <sch:rule context="(/cdf:BallotDefinition/cdf:Election/cdf:Contest[@xsi:type = 'cdf:ActivationContest'][contains(@xsi:type,'ActivationContest')])">
            <sch:assert test="not(cdf:CandidateId) or key('Candidate',current()/cdf:CandidateId)"> CandidateId (<sch:value-of select="cdf:CandidateId"/> must point to an element of type Candidate</sch:assert>
        </sch:rule>
        <sch:rule context="(/cdf:BallotDefinition/cdf:Election/cdf:Contest[contains(@xsi:type,'ControllingContest')])">
            <sch:assert test="not(cdf:ControlledContestIds) or (every $curId in tokenize(cdf:ControlledContestIds) satisfies key('Contest',$curId))">ControlledContestIds (<sch:value-of select="cdf:ControlledContestIds"/> must point to an element of type Contest</sch:assert>
        </sch:rule>
        <sch:rule context="(/cdf:BallotDefinition/cdf:BallotFormat/cdf:FiducialMark[@xsi:type = 'cdf:FiducialMark']|/cdf:BallotDefinition/cdf:Election/cdf:BallotStyle/cdf:OrderedContent/cdf:Physical/cdf:FiducialMark[@xsi:type = 'cdf:FiducialMark'][contains(@xsi:type,'FiducialMark')])">
            <sch:assert test="not(cdf:ShapeId) or key('Shape',current()/cdf:ShapeId)"> ShapeId (<sch:value-of select="cdf:ShapeId"/> must point to an element of type Shape</sch:assert>
        </sch:rule>
        <sch:rule context="(/cdf:BallotDefinition/cdf:Election/cdf:BallotStyle/cdf:OrderedContent/cdf:Physical/cdf:PhysicalContestOption/cdf:OptionPosition[@xsi:type = 'cdf:OptionPosition'][contains(@xsi:type,'OptionPosition')])">
            <sch:assert test="not(cdf:IndicatorId) or key('Shape',current()/cdf:IndicatorId)"> IndicatorId (<sch:value-of select="cdf:IndicatorId"/> must point to an element of type Shape</sch:assert>
        </sch:rule>
        <sch:rule context="(/cdf:BallotDefinition/cdf:Election/cdf:Contest/cdf:ContestOption[@xsi:type = 'cdf:CandidateOption'][contains(@xsi:type,'CandidateOption')])">
            <sch:assert test="not(cdf:CandidateIds) or (every $curId in tokenize(cdf:CandidateIds) satisfies key('Candidate',$curId))">CandidateIds (<sch:value-of select="cdf:CandidateIds"/> must point to an element of type Candidate</sch:assert>
            <sch:assert test="not(cdf:EndorsementPartyIds) or (every $curId in tokenize(cdf:EndorsementPartyIds) satisfies key('Party',$curId))">EndorsementPartyIds (<sch:value-of select="cdf:EndorsementPartyIds"/> must point to an element of type Party</sch:assert>
        </sch:rule>
    </sch:pattern>
</sch:schema>