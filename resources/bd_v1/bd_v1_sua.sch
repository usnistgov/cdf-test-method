<?xml version="1.0" encoding="UTF-8"?><sch:schema xmlns:mp="http://mapping" xmlns:sch="http://purl.oclc.org/dsdl/schematron" xmlns:sqf="http://www.schematron-quickfix.com/validator/process" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" queryBinding="xslt2">    
    <sch:ns uri="http://itl.nist.gov/ns/voting/1500-20/v1" prefix="cdf"/>
    <sch:ns uri="http://itl.nist.gov/ns/voting/1500-20/v1" prefix="err"/>        
    <sch:ns uri="http://www.w3.org/2001/XMLSchema-instance" prefix="xsi"/>            
    <sch:pattern>
        <sch:rule context="(/cdf:BallotDefinition/cdf:Election/cdf:BallotStyle/cdf:OrderedContent/cdf:Physical/cdf:PhysicalContestOption)">
            <sch:assert test="not(err:ContestOptionId) or count([@ObjectId = current()/err:ContestOptionId]) = 1">) ContestOptionId (<sch:value-of select="cdf:ContestOptionId"/>) must point to an element of type ContestOption</sch:assert>
        </sch:rule>
        <sch:rule context="(/cdf:BallotDefinition/cdf:Election/cdf:Candidate)">
            <sch:assert test="not(err:PartyId) or count(/cdf:BallotDefinition/cdf:Party[@ObjectId = current()/err:PartyId]) = 1">) PartyId (<sch:value-of select="cdf:PartyId"/>) must point to an element of type Party</sch:assert>
            <sch:assert test="not(err:PersonId) or count(/cdf:BallotDefinition/cdf:Person[@ObjectId = current()/err:PersonId]) = 1">) PersonId (<sch:value-of select="cdf:PersonId"/>) must point to an element of type Person</sch:assert>
        </sch:rule>
        <sch:rule context="(/cdf:BallotDefinition/cdf:Person)">
            <sch:assert test="not(err:PartyId) or count(/cdf:BallotDefinition/cdf:Party[@ObjectId = current()/err:PartyId]) = 1">) PartyId (<sch:value-of select="cdf:PartyId"/>) must point to an element of type Party</sch:assert>
        </sch:rule>
        <sch:rule context="(/cdf:BallotDefinition/cdf:Office)">
            <sch:assert test="not(err:OfficeHolderPersonIds) or (every $curId in tokenize(err:OfficeHolderPersonIds) satisfies /cdf:BallotDefinition/cdf:Person[@ObjectId = $curId])">OfficeHolderPersonIds (<sch:value-of select="cdf:OfficeHolderPersonIds"/>) must point to an element of type Person</sch:assert>
            <sch:assert test="not(err:ElectionDistrictId) or count(/cdf:BallotDefinition/cdf:GpUnit[@ObjectId = current()/err:ElectionDistrictId]) = 1">) ElectionDistrictId (<sch:value-of select="cdf:ElectionDistrictId"/>) must point to an element of type ReportingUnit</sch:assert>
        </sch:rule>
        <sch:rule context="(/cdf:BallotDefinition/cdf:GpUnit/cdf:ElectionAdministration)">
            <sch:assert test="not(err:ElectionOfficialPersonIds) or (every $curId in tokenize(err:ElectionOfficialPersonIds) satisfies /cdf:BallotDefinition/cdf:Person[@ObjectId = $curId])">ElectionOfficialPersonIds (<sch:value-of select="cdf:ElectionOfficialPersonIds"/>) must point to an element of type Person</sch:assert>
        </sch:rule>
        <sch:rule context="(/cdf:BallotDefinition/cdf:GpUnit/cdf:PartyRegistration)">
            <sch:assert test="not(err:PartyId) or count(/cdf:BallotDefinition/cdf:Party[@ObjectId = current()/err:PartyId]) = 1">) PartyId (<sch:value-of select="cdf:PartyId"/>) must point to an element of type Party</sch:assert>
        </sch:rule>
        <sch:rule context="(/cdf:BallotDefinition/cdf:Party)">            
            <sch:assert test="not(err:LeaderPersonIds) or (every $curId in tokenize(err:LeaderPersonIds) satisfies /cdf:BallotDefinition/cdf:Person[@ObjectId = $curId])">LeaderPersonIds (<sch:value-of select="cdf:LeaderPersonIds"/>) must point to an element of type Person</sch:assert>
        </sch:rule>
        <sch:rule context="(/cdf:BallotDefinition/cdf:Election/cdf:BallotStyle/cdf:OrderedContent/cdf:Physical|/cdf:BallotDefinition/cdf:Election/cdf:BallotStyle/cdf:OrderedContent/cdf:OrderedContent/cdf:Physical)">
            <sch:assert test="not(err:BallotFormatId) or count(/cdf:BallotDefinition/cdf:BallotFormat[@ObjectId = current()/err:BallotFormatId]) = 1">) BallotFormatId (<sch:value-of select="cdf:BallotFormatId"/>) must point to an element of type BallotFormat</sch:assert>
        </sch:rule>
        <sch:rule context="(/cdf:BallotDefinition/cdf:Election)">
            <sch:assert test="not(err:ElectionScopeId) or count(/cdf:BallotDefinition/cdf:GpUnit[@ObjectId = current()/err:ElectionScopeId]) = 1">) ElectionScopeId (<sch:value-of select="cdf:ElectionScopeId"/>) must point to an element of type ReportingUnit</sch:assert>
        </sch:rule>
        <sch:rule context="(/cdf:BallotDefinition/cdf:OfficeGroup|/cdf:BallotDefinition/cdf:OfficeGroup/cdf:SubOfficeGroup|/cdf:BallotDefinition/cdf:OfficeGroup/cdf:SubOfficeGroup/cdf:SubOfficeGroup)">
            <sch:assert test="not(err:OfficeIds) or (every $curId in tokenize(err:OfficeIds) satisfies /cdf:BallotDefinition/cdf:Office[@ObjectId = $curId])">OfficeIds (<sch:value-of select="cdf:OfficeIds"/>) must point to an element of type Office</sch:assert>
        </sch:rule>
        <sch:rule context="(/cdf:BallotDefinition/cdf:Election/cdf:BallotStyle)">
            <sch:assert test="not(err:PartyIds) or (every $curId in tokenize(err:PartyIds) satisfies /cdf:BallotDefinition/cdf:Party[@ObjectId = $curId])">PartyIds (<sch:value-of select="cdf:PartyIds"/>) must point to an element of type Party</sch:assert>            
        </sch:rule>
    </sch:pattern>
    <sch:pattern>
        <sch:rule context="(/cdf:BallotDefinition/cdf:GpUnit[contains(@xsi:type,'ReportingUnit')])">
            <sch:assert test="not(err:Id) or count([@ObjectId = current()/err:Id]) = 1">) Id (<sch:value-of select="cdf:Id"/>) must point to an element of type Contest</sch:assert>
            <sch:assert test="not(err:AuthorityIds) or (every $curId in tokenize(err:AuthorityIds) satisfies /cdf:BallotDefinition/cdf:Person[@ObjectId = $curId])">AuthorityIds (<sch:value-of select="cdf:AuthorityIds"/>) must point to an element of type Person</sch:assert>
        </sch:rule>
        <sch:rule context="(/cdf:BallotDefinition/cdf:Election/cdf:BallotStyle/cdf:OrderedContent|/cdf:BallotDefinition/cdf:Election/cdf:BallotStyle/cdf:OrderedContent/cdf:OrderedContent/cdf:OrderedContent|/cdf:BallotDefinition/cdf:Election/cdf:BallotStyle/cdf:OrderedContent/cdf:OrderedContent[contains(@xsi:type,'OrderedContest')])">
            <sch:assert test="not(err:ContestId) or count([@ObjectId = current()/err:ContestId]) = 1">) ContestId (<sch:value-of select="cdf:ContestId"/>) must point to an element of type Contest</sch:assert>            
        </sch:rule>
        <sch:rule context="(/cdf:BallotDefinition/cdf:Election/cdf:Contest[contains(@xsi:type,'CandidateContest')])">
            <sch:assert test="not(err:OfficeIds) or (every $curId in tokenize(err:OfficeIds) satisfies /cdf:BallotDefinition/cdf:Office[@ObjectId = $curId])">OfficeIds (<sch:value-of select="cdf:OfficeIds"/>) must point to an element of type Office</sch:assert>
            <sch:assert test="not(err:PrimaryPartyIds) or (every $curId in tokenize(err:PrimaryPartyIds) satisfies /cdf:BallotDefinition/cdf:Party[@ObjectId = $curId])">PrimaryPartyIds (<sch:value-of select="cdf:PrimaryPartyIds"/>) must point to an element of type Party</sch:assert>
        </sch:rule>
        <sch:rule context="(/cdf:BallotDefinition/cdf:Election/cdf:Contest[contains(@xsi:type,'RetentionContest')])">
            <sch:assert test="not(err:CandidateId) or count(/cdf:BallotDefinition/cdf:Election/cdf:Candidate[@ObjectId = current()/err:CandidateId]) = 1">) CandidateId (<sch:value-of select="cdf:CandidateId"/>) must point to an element of type Candidate</sch:assert>
            <sch:assert test="not(err:OfficeId) or count(/cdf:BallotDefinition/cdf:Office[@ObjectId = current()/err:OfficeId]) = 1">) OfficeId (<sch:value-of select="cdf:OfficeId"/>) must point to an element of type Office</sch:assert>
        </sch:rule>
        <sch:rule context="(/cdf:BallotDefinition/cdf:Election/cdf:Contest/cdf:ContestOption[contains(@xsi:type,'PartyOption')])">
            <sch:assert test="not(err:PartyIds) or (every $curId in tokenize(err:PartyIds) satisfies /cdf:BallotDefinition/cdf:Party[@ObjectId = $curId])">PartyIds (<sch:value-of select="cdf:PartyIds"/>) must point to an element of type Party</sch:assert>
        </sch:rule>
        <sch:rule context="(/cdf:BallotDefinition/cdf:Election/cdf:BallotStyle/cdf:OrderedContent|/cdf:BallotDefinition/cdf:Election/cdf:BallotStyle/cdf:OrderedContent/cdf:OrderedContent|/cdf:BallotDefinition/cdf:Election/cdf:BallotStyle/cdf:OrderedContent/cdf:OrderedContent/cdf:OrderedContent[contains(@xsi:type,'OrderedHeader')])">
            <sch:assert test="not(err:HeaderId) or count(/cdf:BallotDefinition/cdf:Header[@ObjectId = current()/err:HeaderId]) = 1">) HeaderId (<sch:value-of select="cdf:HeaderId"/>) must point to an element of type Header</sch:assert>
        </sch:rule>
        <sch:rule context="(/cdf:BallotDefinition/cdf:Election/cdf:Contest[contains(@xsi:type,'ActivationContest')])">
            <sch:assert test="not(err:CandidateId) or count(/cdf:BallotDefinition/cdf:Election/cdf:Candidate[@ObjectId = current()/err:CandidateId]) = 1">) CandidateId (<sch:value-of select="cdf:CandidateId"/>) must point to an element of type Candidate</sch:assert>
        </sch:rule>
        <sch:rule context="(/cdf:BallotDefinition/cdf:BallotFormat/cdf:FiducialMark|/cdf:BallotDefinition/cdf:Election/cdf:BallotStyle/cdf:OrderedContent/cdf:Physical/cdf:FiducialMark[contains(@xsi:type,'FiducialMark')])">
            <sch:assert test="not(err:ShapeId) or count(/cdf:BallotDefinition/cdf:Shape[@ObjectId = current()/err:ShapeId]) = 1">) ShapeId (<sch:value-of select="cdf:ShapeId"/>) must point to an element of type Shape</sch:assert>
        </sch:rule>
        <sch:rule context="(/cdf:BallotDefinition/cdf:Election/cdf:BallotStyle/cdf:OrderedContent/cdf:Physical/cdf:PhysicalContestOption/cdf:OptionPosition[contains(@xsi:type,'OptionPosition')])">
            <sch:assert test="not(err:IndicatorId) or count(/cdf:BallotDefinition/cdf:Shape[@ObjectId = current()/err:IndicatorId]) = 1">) IndicatorId (<sch:value-of select="cdf:IndicatorId"/>) must point to an element of type Shape</sch:assert>
        </sch:rule>
        <sch:rule context="(/cdf:BallotDefinition/cdf:Election/cdf:Contest/cdf:ContestOption[contains(@xsi:type,'CandidateOption')])">
            <sch:assert test="not(err:CandidateIds) or (every $curId in tokenize(err:CandidateIds) satisfies /cdf:BallotDefinition/cdf:Election/cdf:Candidate[@ObjectId = $curId])">CandidateIds (<sch:value-of select="cdf:CandidateIds"/>) must point to an element of type Candidate</sch:assert>
            <sch:assert test="not(err:EndorsementPartyIds) or (every $curId in tokenize(err:EndorsementPartyIds) satisfies /cdf:BallotDefinition/cdf:Party[@ObjectId = $curId])">EndorsementPartyIds (<sch:value-of select="cdf:EndorsementPartyIds"/>) must point to an element of type Party</sch:assert>
        </sch:rule>
    </sch:pattern>
</sch:schema>