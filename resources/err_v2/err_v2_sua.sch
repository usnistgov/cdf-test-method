<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:mp="http://mapping" xmlns:sch="http://purl.oclc.org/dsdl/schematron" xmlns:sqf="http://www.schematron-quickfix.com/validator/process" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" queryBinding="xslt2">    
    <xsl:key name="Party" match="/cdf:ElectionReport/cdf:Party" use="@ObjectId"/>
    <xsl:key name="Person" match="/cdf:ElectionReport/cdf:Person" use="@ObjectId"/>
    <xsl:key name="ReportingUnit"
        match="/cdf:ElectionReport/cdf:GpUnit[contains(@xsi:type, 'ReportingUnit')]" use="@ObjectId"/>
    <xsl:key name="GpUnit" match="/cdf:ElectionReport/cdf:GpUnit" use="@ObjectId"/>
    <xsl:key name="Office" match="/cdf:ElectionReport/cdf:Office" use="@ObjectId"/>
    <xsl:key name="Contest" match="/cdf:ElectionReport/cdf:Election/cdf:Contest" use="@ObjectId"/>
    <xsl:key name="Candidate" match="/cdf:ElectionReport/cdf:Election/cdf:Candidate" use="@ObjectId"/>
    <xsl:key name="ContestSelection"
        match="/cdf:ElectionReport/cdf:Election/cdf:Contest/cdf:ContestSelection" use="@ObjectId"/>
    <xsl:key name="Header" match="/cdf:ElectionReport/cdf:Header" use="@ObjectId"/>
    <sch:ns uri="http://itl.nist.gov/ns/voting/1500-100/v2" prefix="cdf"/>    
    <sch:ns uri="http://www.w3.org/2001/XMLSchema-instance" prefix="xsi"/>            
    <sch:pattern>
        <sch:rule context="(/cdf:ElectionReport/cdf:Election/cdf:Candidate)">
            <sch:assert test="not(cdf:PartyId) or key('Party',current()/cdf:PartyId)">) PartyId (<sch:value-of select="cdf:PartyId"/>) must point to an element of type Party</sch:assert>
            <sch:assert test="not(cdf:PersonId) or key('Person',current()/cdf:PersonId)">) PersonId (<sch:value-of select="cdf:PersonId"/>) must point to an element of type Person</sch:assert>
        </sch:rule>
        <sch:rule context="(/cdf:ElectionReport/cdf:Person)">
            <sch:assert test="not(cdf:PartyId) or key('Party',current()/cdf:PartyId)">) PartyId (<sch:value-of select="cdf:PartyId"/>) must point to an element of type Party</sch:assert>
        </sch:rule>
        <sch:rule context="(/cdf:ElectionReport/cdf:Office)">
            <sch:assert test="not(cdf:ElectionDistrictId) or key('ReportingUnit',current()/cdf:ElectionDistrictId)">) ElectionDistrictId (<sch:value-of select="cdf:ElectionDistrictId"/>) must point to an element of type ReportingUnit</sch:assert>
            <sch:assert test="not(cdf:OfficeHolderPersonIds) or (every $curId in tokenize(cdf:OfficeHolderPersonIds) satisfies key('Person',$curId))">OfficeHolderPersonIds (<sch:value-of select="cdf:OfficeHolderPersonIds"/>) must point to an element of type Person</sch:assert>
        </sch:rule>
        <sch:rule context="(/cdf:ElectionReport/cdf:Election/cdf:BallotCounts|/cdf:ElectionReport/cdf:Election/cdf:Contest/cdf:ContestSelection/cdf:VoteCounts)">
            <sch:assert test="not(cdf:GpUnitId) or key('GpUnit',current()/cdf:GpUnitId)">) GpUnitId (<sch:value-of select="cdf:GpUnitId"/>) must point to an element of type GpUnit</sch:assert>
        </sch:rule>
        <sch:rule context="(/cdf:ElectionReport/cdf:GpUnit/cdf:ElectionAdministration)">
            <sch:assert test="not(cdf:ElectionOfficialPersonIds) or (every $curId in tokenize(cdf:ElectionOfficialPersonIds) satisfies key('Person',$curId))">ElectionOfficialPersonIds (<sch:value-of select="cdf:ElectionOfficialPersonIds"/>) must point to an element of type Person</sch:assert>
        </sch:rule>
        <sch:rule context="(/cdf:ElectionReport/cdf:GpUnit/cdf:PartyRegistration)">
            <sch:assert test="not(cdf:PartyId) or key('Party',current()/cdf:PartyId)">) PartyId (<sch:value-of select="cdf:PartyId"/>) must point to an element of type Party</sch:assert>
        </sch:rule>
        <sch:rule context="(/cdf:ElectionReport/cdf:Party)">
            <sch:assert test="not(cdf:LeaderPersonIds) or (every $curId in tokenize(cdf:LeaderPersonIds) satisfies key('Person',$curId))">LeaderPersonIds (<sch:value-of select="cdf:LeaderPersonIds"/>) must point to an element of type Person</sch:assert>
            <sch:assert test="not(cdf:PartyScopeGpUnitIds) or (every $curId in tokenize(cdf:PartyScopeGpUnitIds) satisfies key('GpUnit',$curId))">PartyScopeGpUnitIds (<sch:value-of select="cdf:PartyScopeGpUnitIds"/>) must point to an element of type GpUnit</sch:assert>
        </sch:rule>
        <sch:rule context="(/cdf:ElectionReport/cdf:GpUnit)">
            <sch:assert test="not(cdf:ComposingGpUnitIds) or (every $curId in tokenize(cdf:ComposingGpUnitIds) satisfies key('GpUnit',$curId))">ComposingGpUnitIds (<sch:value-of select="cdf:ComposingGpUnitIds"/>) must point to an element of type GpUnit</sch:assert>
        </sch:rule>
        <sch:rule context="(/cdf:ElectionReport/cdf:Election)">
            <sch:assert test="not(cdf:ElectionScopeId) or key('ReportingUnit',current()/cdf:ElectionScopeId)">) ElectionScopeId (<sch:value-of select="cdf:ElectionScopeId"/>) must point to an element of type ReportingUnit</sch:assert>
        </sch:rule>
        <sch:rule context="(/cdf:ElectionReport/cdf:OfficeGroup|/cdf:ElectionReport/cdf:OfficeGroup/cdf:SubOfficeGroup|/cdf:ElectionReport/cdf:OfficeGroup/cdf:SubOfficeGroup/cdf:SubOfficeGroup|/cdf:ElectionReport/cdf:OfficeGroup/cdf:SubOfficeGroup/cdf:SubOfficeGroup/cdf:SubOfficeGroup)">
            <sch:assert test="not(cdf:OfficeIds) or (every $curId in tokenize(cdf:OfficeIds) satisfies key('Office',$curId))">OfficeIds (<sch:value-of select="cdf:OfficeIds"/>) must point to an element of type Office</sch:assert>
        </sch:rule>
        <sch:rule context="(/cdf:ElectionReport/cdf:Election/cdf:BallotStyle)">
            <sch:assert test="not(cdf:GpUnitIds) or (every $curId in tokenize(cdf:GpUnitIds) satisfies key('GpUnit',$curId))">GpUnitIds (<sch:value-of select="cdf:GpUnitIds"/>) must point to an element of type GpUnit</sch:assert>
            <sch:assert test="not(cdf:PartyIds) or (every $curId in tokenize(cdf:PartyIds) satisfies key('Party',$curId))">PartyIds (<sch:value-of select="cdf:PartyIds"/>) must point to an element of type Party</sch:assert>
        </sch:rule>
        <sch:rule context="(/cdf:ElectionReport/cdf:Election/cdf:Contest/cdf:OtherCounts)">
            <sch:assert test="not(cdf:GpUnitId) or key('GpUnit',current()/cdf:GpUnitId)">) GpUnitId (<sch:value-of select="cdf:GpUnitId"/>) must point to an element of type GpUnit</sch:assert>
        </sch:rule>
    </sch:pattern>
    <sch:pattern>
        <sch:rule context="(/cdf:ElectionReport/cdf:GpUnit[contains(@xsi:type,'ReportingUnit')])">
            <sch:assert test="not(cdf:AuthorityIds) or (every $curId in tokenize(cdf:AuthorityIds) satisfies key('Person',$curId))">AuthorityIds (<sch:value-of select="cdf:AuthorityIds"/>) must point to an element of type Person</sch:assert>
            <sch:assert test="not(cdf:Id) or key('Contest',current()/cdf:Id)">) Id (<sch:value-of select="cdf:Id"/>) must point to an element of type Contest</sch:assert>
        </sch:rule>
        <sch:rule context="(/cdf:ElectionReport/cdf:Election/cdf:Contest/cdf:ContestSelection[contains(@xsi:type,'CandidateSelection')])">
            <sch:assert test="not(cdf:CandidateIds) or (every $curId in tokenize(cdf:CandidateIds) satisfies key('Candidate',$curId))">CandidateIds (<sch:value-of select="cdf:CandidateIds"/>) must point to an element of type Candidate</sch:assert>
            <sch:assert test="not(cdf:EndorsementPartyIds) or (every $curId in tokenize(cdf:EndorsementPartyIds) satisfies key('Party',$curId))">EndorsementPartyIds (<sch:value-of select="cdf:EndorsementPartyIds"/>) must point to an element of type Party</sch:assert>
        </sch:rule>
        <sch:rule context="(/cdf:ElectionReport/cdf:Election/cdf:BallotStyle/cdf:OrderedContent/cdf:OrderedContent[contains(@xsi:type,'OrderedContest')]|/cdf:ElectionReport/cdf:Election/cdf:BallotStyle/cdf:OrderedContent/cdf:OrderedContent/cdf:OrderedContent[contains(@xsi:type,'OrderedContest')]|/cdf:ElectionReport/cdf:Election/cdf:BallotStyle/cdf:OrderedContent[contains(@xsi:type,'OrderedContest')])">
            <sch:assert test="not(cdf:ContestId) or key('Contest',current()/cdf:ContestId)">) ContestId (<sch:value-of select="cdf:ContestId"/>) must point to an element of type Contest</sch:assert>
            <sch:assert test="not(cdf:OrderedContestSelectionIds) or (every $curId in tokenize(cdf:OrderedContestSelectionIds) satisfies key('ContestSelection',$curId))">OrderedContestSelectionIds (<sch:value-of select="cdf:OrderedContestSelectionIds"/>) must point to an element of type ContestSelection</sch:assert>
        </sch:rule>
        <sch:rule context="(/cdf:ElectionReport/cdf:Election/cdf:Contest[contains(@xsi:type,'CandidateContest')])">
            <sch:assert test="not(cdf:OfficeIds) or (every $curId in tokenize(cdf:OfficeIds) satisfies key('Office',$curId))">OfficeIds (<sch:value-of select="cdf:OfficeIds"/>) must point to an element of type Office</sch:assert>
            <sch:assert test="not(cdf:PrimaryPartyIds) or (every $curId in tokenize(cdf:PrimaryPartyIds) satisfies key('Party',$curId))">PrimaryPartyIds (<sch:value-of select="cdf:PrimaryPartyIds"/>) must point to an element of type Party</sch:assert>
        </sch:rule>
        <sch:rule context="(/cdf:ElectionReport/cdf:Election/cdf:Contest/cdf:ContestSelection[contains(@xsi:type,'PartySelection')])">
            <sch:assert test="not(cdf:PartyIds) or (every $curId in tokenize(cdf:PartyIds) satisfies key('Party',$curId))">PartyIds (<sch:value-of select="cdf:PartyIds"/>) must point to an element of type Party</sch:assert>
        </sch:rule>
        <sch:rule context="(/cdf:ElectionReport/cdf:Election/cdf:Contest[contains(@xsi:type,'RetentionContest')])">
            <sch:assert test="not(cdf:CandidateId) or key('Candidate',current()/cdf:CandidateId)">) CandidateId (<sch:value-of select="cdf:CandidateId"/>) must point to an element of type Candidate</sch:assert>
            <sch:assert test="not(cdf:OfficeId) or key('Office',current()/cdf:OfficeId)">) OfficeId (<sch:value-of select="cdf:OfficeId"/>) must point to an element of type Office</sch:assert>
        </sch:rule>
        <sch:rule context="(/cdf:ElectionReport/cdf:Election/cdf:Contest/cdf:ContestSelection/cdf:VoteCounts[contains(@xsi:type,'VoteCounts')])">
            <sch:assert test="not(cdf:Id) or key('ContestSelection',current()/cdf:Id)">) Id (<sch:value-of select="cdf:Id"/>) must point to an element of type ContestSelection</sch:assert>
        </sch:rule>
        <sch:rule context="(/cdf:ElectionReport/cdf:Election/cdf:BallotStyle/cdf:OrderedContent[contains(@xsi:type,'OrderedHeader')]|/cdf:ElectionReport/cdf:Election/cdf:BallotStyle/cdf:OrderedContent/cdf:OrderedContent[contains(@xsi:type,'OrderedHeader')]|/cdf:ElectionReport/cdf:Election/cdf:BallotStyle/cdf:OrderedContent/cdf:OrderedContent/cdf:OrderedContent[contains(@xsi:type,'OrderedHeader')])">
            <sch:assert test="not(cdf:HeaderId) or key('Header',current()/cdf:HeaderId)">) HeaderId (<sch:value-of select="cdf:HeaderId"/>) must point to an element of type Header</sch:assert>
        </sch:rule>
    </sch:pattern>
</sch:schema>