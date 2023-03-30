<?xml version="1.0" encoding="UTF-8"?><sch:schema xmlns:mp="http://mapping" xmlns:sch="http://purl.oclc.org/dsdl/schematron" xmlns:sqf="http://www.schematron-quickfix.com/validator/process" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" queryBinding="xslt2">    
    <sch:ns uri="http://itl.nist.gov/ns/voting/1500-100/v2" prefix="cdf"/>    
    <sch:ns uri="http://itl.nist.gov/ns/voting/1500-100/v2" prefix="err"/>
    <sch:ns uri="http://www.w3.org/2001/XMLSchema-instance" prefix="xsi"/>            
    <sch:pattern>        
        <sch:rule context="(/err:ElectionReport/err:Election/err:Candidate)">
            <sch:assert test="not(err:PartyId) or count(/err:ElectionReport/err:Party[@ObjectId = current()/err:PartyId]) = 1"> PartyId (<sch:value-of select="cdf:PartyId"/>) must point to an element of type Party</sch:assert>
            <sch:assert test="not(err:PersonId) or count(/err:ElectionReport/err:Person[@ObjectId = current()/err:PersonId]) = 1"> PersonId (<sch:value-of select="cdf:PersonId"/>) must point to an element of type Person</sch:assert>
        </sch:rule>
        <sch:rule context="(/err:ElectionReport/err:Person)">
            <sch:assert test="not(err:PartyId) or count(/err:ElectionReport/err:Party[@ObjectId = current()/err:PartyId]) = 1"> PartyId (<sch:value-of select="cdf:PartyId"/>) must point to an element of type Party</sch:assert>
        </sch:rule>
        <sch:rule context="(/err:ElectionReport/err:Office)">
            <sch:assert test="not(err:OfficeHolderPersonIds) or (every $curId in tokenize(err:OfficeHolderPersonIds) satisfies /err:ElectionReport/err:Person[@ObjectId = $curId])">OfficeHolderPersonIds (<sch:value-of select="cdf:OfficeHolderPersonIds"/>) must point to an element of type Person</sch:assert>
            <sch:assert test="not(err:ElectionDistrictId) or count(/err:ElectionReport/err:GpUnit[@ObjectId = current()/err:ElectionDistrictId]) = 1"> ElectionDistrictId (<sch:value-of select="cdf:ElectionDistrictId"/>) must point to an element of type ReportingUnit</sch:assert>
        </sch:rule>
        
        <sch:rule context="(/err:ElectionReport/err:GpUnit/err:ElectionAdministration)">
            <sch:assert test="not(err:ElectionOfficialPersonIds) or (every $curId in tokenize(err:ElectionOfficialPersonIds) satisfies /err:ElectionReport/err:Person[@ObjectId = $curId])">ElectionOfficialPersonIds (<sch:value-of select="cdf:ElectionOfficialPersonIds"/>) must point to an element of type Person</sch:assert>
        </sch:rule>
        <sch:rule context="(/err:ElectionReport/err:GpUnit/err:PartyRegistration)">
            <sch:assert test="not(err:PartyId) or count(/err:ElectionReport/err:Party[@ObjectId = current()/err:PartyId]) = 1"> PartyId (<sch:value-of select="cdf:PartyId"/>) must point to an element of type Party</sch:assert>
        </sch:rule>
        <sch:rule context="(/err:ElectionReport/err:Party)">
            <sch:assert test="not(err:PartyScopeGpUnitIds) or (every $curId in tokenize(err:PartyScopeGpUnitIds) satisfies /err:ElectionReport/err:GpUnit[@ObjectId = $curId])">PartyScopeGpUnitIds (<sch:value-of select="cdf:PartyScopeGpUnitIds"/>) must point to an element of type GpUnit</sch:assert>
            <sch:assert test="not(err:LeaderPersonIds) or (every $curId in tokenize(err:LeaderPersonIds) satisfies /err:ElectionReport/err:Person[@ObjectId = $curId])">LeaderPersonIds (<sch:value-of select="cdf:LeaderPersonIds"/>) must point to an element of type Person</sch:assert>
        </sch:rule>
        <sch:rule context="(/err:ElectionReport/err:GpUnit)">
            <sch:assert test="not(err:ComposingGpUnitIds) or (every $curId in tokenize(err:ComposingGpUnitIds) satisfies /err:ElectionReport/err:GpUnit[@ObjectId = $curId])">ComposingGpUnitIds (<sch:value-of select="cdf:ComposingGpUnitIds"/>) must point to an element of type GpUnit</sch:assert>
        </sch:rule>
        <sch:rule context="(/err:ElectionReport/err:Election)">
            <sch:assert test="not(err:ElectionScopeId) or count(/err:ElectionReport/err:GpUnit[@ObjectId = current()/err:ElectionScopeId]) = 1"> ElectionScopeId (<sch:value-of select="cdf:ElectionScopeId"/>) must point to an element of type ReportingUnit</sch:assert>
        </sch:rule>
        <sch:rule context="(/err:ElectionReport/err:OfficeGroup|/err:ElectionReport/err:OfficeGroup/err:SubOfficeGroup|/err:ElectionReport/err:OfficeGroup/err:SubOfficeGroup/err:SubOfficeGroup)">
            <sch:assert test="not(err:OfficeIds) or (every $curId in tokenize(err:OfficeIds) satisfies /err:ElectionReport/err:Office[@ObjectId = $curId])">OfficeIds (<sch:value-of select="cdf:OfficeIds"/>) must point to an element of type Office</sch:assert>
        </sch:rule>
        <sch:rule context="(/err:ElectionReport/err:Election/err:Contest/err:OtherCounts)">
            <sch:assert test="not(err:GpUnitId) or count(/err:ElectionReport/err:GpUnit[@ObjectId = current()/err:GpUnitId]) = 1"> GpUnitId (<sch:value-of select="cdf:GpUnitId"/>) must point to an element of type GpUnit</sch:assert>
        </sch:rule>
        <sch:rule context="(/err:ElectionReport/err:Election/err:BallotStyle)">
            <sch:assert test="not(err:GpUnitIds) or (every $curId in tokenize(err:GpUnitIds) satisfies /err:ElectionReport/err:GpUnit[@ObjectId = $curId])">GpUnitIds (<sch:value-of select="cdf:GpUnitIds"/>) must point to an element of type GpUnit</sch:assert>
            <sch:assert test="not(err:PartyIds) or (every $curId in tokenize(err:PartyIds) satisfies /err:ElectionReport/err:Party[@ObjectId = $curId])">PartyIds (<sch:value-of select="cdf:PartyIds"/>) must point to an element of type Party</sch:assert>
        </sch:rule>
    </sch:pattern>
    <sch:pattern>
        <sch:rule context="(/err:ElectionReport/err:GpUnit[contains(@xsi:type,'ReportingUnit')])">
            <sch:assert test="not(err:Id) or count([@ObjectId = current()/err:Id]) = 1"> Id (<sch:value-of select="cdf:Id"/>) must point to an element of type Contest</sch:assert>
            <sch:assert test="not(err:AuthorityIds) or (every $curId in tokenize(err:AuthorityIds) satisfies /err:ElectionReport/err:Person[@ObjectId = $curId])">AuthorityIds (<sch:value-of select="cdf:AuthorityIds"/>) must point to an element of type Person</sch:assert>
        </sch:rule>
        <sch:rule context="(/err:ElectionReport/err:Election/err:Contest/err:ContestSelection[contains(@xsi:type,'CandidateSelection')])">
            <sch:assert test="not(err:EndorsementPartyIds) or (every $curId in tokenize(err:EndorsementPartyIds) satisfies /err:ElectionReport/err:Party[@ObjectId = $curId])">EndorsementPartyIds (<sch:value-of select="cdf:EndorsementPartyIds"/>) must point to an element of type Party</sch:assert>
            <sch:assert test="not(err:CandidateIds) or (every $curId in tokenize(err:CandidateIds) satisfies /err:ElectionReport/err:Election/err:Candidate[@ObjectId = $curId])">CandidateIds (<sch:value-of select="cdf:CandidateIds"/>) must point to an element of type Candidate</sch:assert>
        </sch:rule>
        <sch:rule context="(/err:ElectionReport/err:Election/err:BallotStyle/err:OrderedContent/err:OrderedContent|/err:ElectionReport/err:Election/err:BallotStyle/err:OrderedContent/err:OrderedContent/err:OrderedContent|/err:ElectionReport/err:Election/err:BallotStyle/err:OrderedContent[contains(@xsi:type,'OrderedContest')])">
            <sch:assert test="not(err:OrderedContestSelectionIds) or (every $curId in tokenize(err:OrderedContestSelectionIds) satisfies /err:ElectionReport/err:Election/err:Contest/err:ContestSelection[@ObjectId = $curId])">OrderedContestSelectionIds (<sch:value-of select="cdf:OrderedContestSelectionIds"/>) must point to an element of type ContestSelection</sch:assert>
            <sch:assert test="not(err:ContestId) or count([@ObjectId = current()/err:ContestId]) = 1"> ContestId (<sch:value-of select="cdf:ContestId"/>) must point to an element of type Contest</sch:assert>
        </sch:rule>
        <sch:rule context="(/err:ElectionReport/err:Election/err:Contest[contains(@xsi:type,'CandidateContest')])">
            <sch:assert test="not(err:PrimaryPartyIds) or (every $curId in tokenize(err:PrimaryPartyIds) satisfies /err:ElectionReport/err:Party[@ObjectId = $curId])">PrimaryPartyIds (<sch:value-of select="cdf:PrimaryPartyIds"/>) must point to an element of type Party</sch:assert>
            <sch:assert test="not(err:OfficeIds) or (every $curId in tokenize(err:OfficeIds) satisfies /err:ElectionReport/err:Office[@ObjectId = $curId])">OfficeIds (<sch:value-of select="cdf:OfficeIds"/>) must point to an element of type Office</sch:assert>
        </sch:rule>
        
        <sch:rule context="(/err:ElectionReport/err:Election/err:Contest/err:ContestSelection[contains(@xsi:type,'PartySelection')])">
            <sch:assert test="not(err:PartyIds) or (every $curId in tokenize(err:PartyIds) satisfies /err:ElectionReport/err:Party[@ObjectId = $curId])">PartyIds (<sch:value-of select="cdf:PartyIds"/>) must point to an element of type Party</sch:assert>
        </sch:rule>
        <sch:rule context="(/err:ElectionReport/err:Election/err:Contest[contains(@xsi:type,'RetentionContest')])">
            <sch:assert test="not(err:CandidateId) or count(/err:ElectionReport/err:Election/err:Candidate[@ObjectId = current()/err:CandidateId]) = 1"> CandidateId (<sch:value-of select="cdf:CandidateId"/>) must point to an element of type Candidate</sch:assert>
            <sch:assert test="not(err:OfficeId) or count(/err:ElectionReport/err:Office[@ObjectId = current()/err:OfficeId]) = 1"> OfficeId (<sch:value-of select="cdf:OfficeId"/>) must point to an element of type Office</sch:assert>
        </sch:rule>
        <sch:rule context="(/err:ElectionReport/err:Election/err:Contest/err:ContestSelection/err:VoteCounts[contains(@xsi:type,'VoteCounts')])">
            <sch:assert test="not(err:Id) or count(/err:ElectionReport/err:Election/err:Contest/err:ContestSelection[@ObjectId = current()/err:Id]) = 1"> Id (<sch:value-of select="cdf:Id"/>) must point to an element of type ContestSelection</sch:assert>
        </sch:rule>
        <sch:rule context="(/err:ElectionReport/err:Election/err:BallotStyle/err:OrderedContent|/err:ElectionReport/err:Election/err:BallotStyle/err:OrderedContent/err:OrderedContent|/err:ElectionReport/err:Election/err:BallotStyle/err:OrderedContent/err:OrderedContent/err:OrderedContent[contains(@xsi:type,'OrderedHeader')])">
            <sch:assert test="not(err:HeaderId) or count(/err:ElectionReport/err:Header[@ObjectId = current()/err:HeaderId]) = 1"> HeaderId (<sch:value-of select="cdf:HeaderId"/>) must point to an element of type Header</sch:assert>
        </sch:rule>
    </sch:pattern>
</sch:schema>