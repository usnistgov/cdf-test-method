<?xml version="1.0" encoding="UTF-8"?><sch:schema xmlns:mp="http://mapping" xmlns:sch="http://purl.oclc.org/dsdl/schematron" xmlns:sqf="http://www.schematron-quickfix.com/validator/process" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" queryBinding="xslt2">    
    <xsl:key name="Contest" match="/cdf:CastVoteRecordReport/cdf:Election/cdf:Contest"
        use="@ObjectId"/>
    <xsl:key name="ReportingDevice"
        match="/cdf:CastVoteRecordReport/cdf:ReportingDevice"
        use="@ObjectId"/>
    <xsl:key name="Party" match="/cdf:CastVoteRecordReport/cdf:Party" use="@ObjectId"/>
    <xsl:key name="GpUnit"
        match="/cdf:CastVoteRecordReport/cdf:GpUnit | /cdf:CastVoteRecordReport/cdf:ReportingDevice"
        use="@ObjectId"/>
    <xsl:key name="SelectionPosition"
        match="/cdf:CastVoteRecordReport/cdf:CVR/cdf:CVRSnapshot/cdf:CVRContest/cdf:CVRContestSelection/cdf:SelectionPosition"
        use="@ObjectId"/>
    <xsl:key name="ContestSelection"
        match="/cdf:CastVoteRecordReport/cdf:Election/cdf:Contest/cdf:ContestSelection"
        use="@ObjectId"/>
    <xsl:key name="Election" match="/cdf:CastVoteRecordReport/cdf:Election" use="@ObjectId"/>
    <xsl:key name="CVRSnapshot" match="/cdf:CastVoteRecordReport/cdf:CVR/cdf:CVRSnapshot"
        use="@ObjectId"/>
    <xsl:key name="Candidate" match="/cdf:CastVoteRecordReport/cdf:Election/cdf:Candidate"
        use="@ObjectId"/>
    <sch:ns uri="http://itl.nist.gov/ns/voting/1500-103/v1" prefix="cdf"/>    
    <sch:ns uri="http://www.w3.org/2001/XMLSchema-instance" prefix="xsi"/>            
    <sch:pattern>
        <sch:rule context="(/cdf:CastVoteRecordReport/cdf:CVR/cdf:CVRSnapshot/cdf:CVRContest)">
            <sch:assert test="not(cdf:ContestId) or key('Contest',current()/cdf:ContestId)">) ContestId (<sch:value-of select="cdf:ContestId"/>) must point to an element of type Contest</sch:assert>
        </sch:rule>
        <sch:rule context="(/cdf:CastVoteRecordReport/cdf:GpUnit|/cdf:CastVoteRecordReport/cdf:ReportingDevice)">
            <sch:assert test="not(cdf:ReportingDeviceIds) or (every $curId in tokenize(cdf:ReportingDeviceIds) satisfies key('ReportingDevice',$curId))">ReportingDeviceIds (<sch:value-of select="cdf:ReportingDeviceIds"/>) must point to an element of type ReportingDevice</sch:assert>
        </sch:rule>
        <sch:rule context="(/cdf:CastVoteRecordReport/cdf:Election/cdf:Candidate)">
            <sch:assert test="not(cdf:PartyId) or key('Party',current()/cdf:PartyId)">) PartyId (<sch:value-of select="cdf:PartyId"/>) must point to an element of type Party</sch:assert>
        </sch:rule>
        <sch:rule context="(/cdf:CastVoteRecordReport/cdf:Election)">
            <sch:assert test="not(cdf:ElectionScopeId) or key('GpUnit',current()/cdf:ElectionScopeId)">) ElectionScopeId (<sch:value-of select="cdf:ElectionScopeId"/>) must point to an element of type GpUnit</sch:assert>
        </sch:rule>
        <sch:rule context="(/cdf:CastVoteRecordReport/cdf:Election/cdf:Candidate/cdf:Code|/cdf:CastVoteRecordReport/cdf:Election/cdf:Code|/cdf:CastVoteRecordReport/cdf:Election/cdf:Contest/cdf:Code|/cdf:CastVoteRecordReport/cdf:Election/cdf:Contest/cdf:ContestSelection/cdf:Code|/cdf:CastVoteRecordReport/cdf:GpUnit/cdf:Code|/cdf:CastVoteRecordReport/cdf:Party/cdf:Code|/cdf:CastVoteRecordReport/cdf:ReportingDevice/cdf:Code)">
            <sch:assert test="not(cdf:Id) or key('SelectionPosition',current()/cdf:Id)">) Id (<sch:value-of select="cdf:Id"/>) must point to an element of type SelectionPosition</sch:assert>
        </sch:rule>
        <sch:rule context="(/cdf:CastVoteRecordReport)">
            <sch:assert test="not(cdf:ReportGeneratingDeviceIds) or (every $curId in tokenize(cdf:ReportGeneratingDeviceIds) satisfies key('ReportingDevice',$curId))">ReportGeneratingDeviceIds (<sch:value-of select="cdf:ReportGeneratingDeviceIds"/>) must point to an element of type ReportingDevice</sch:assert>
        </sch:rule>
        <sch:rule context="(/cdf:CastVoteRecordReport/cdf:CVR/cdf:CVRSnapshot/cdf:CVRContest/cdf:CVRContestSelection)">
            <sch:assert test="not(cdf:ContestSelectionId) or key('ContestSelection',current()/cdf:ContestSelectionId)">) ContestSelectionId (<sch:value-of select="cdf:ContestSelectionId"/>) must point to an element of type ContestSelection</sch:assert>
        </sch:rule>
        <sch:rule context="(/cdf:CastVoteRecordReport/cdf:CVR)">
            <sch:assert test="not(cdf:CreatingDeviceId) or key('ReportingDevice',current()/cdf:CreatingDeviceId)">) CreatingDeviceId (<sch:value-of select="cdf:CreatingDeviceId"/>) must point to an element of type ReportingDevice</sch:assert>
            <sch:assert test="not(cdf:ElectionId) or key('Election',current()/cdf:ElectionId)">) ElectionId (<sch:value-of select="cdf:ElectionId"/>) must point to an element of type Election</sch:assert>
            <sch:assert test="not(cdf:CurrentSnapshotId) or key('CVRSnapshot',current()/cdf:CurrentSnapshotId)">) CurrentSnapshotId (<sch:value-of select="cdf:CurrentSnapshotId"/>) must point to an element of type CVRSnapshot</sch:assert>
            <sch:assert test="not(cdf:PartyIds) or (every $curId in tokenize(cdf:PartyIds) satisfies key('Party',$curId))">PartyIds (<sch:value-of select="cdf:PartyIds"/>) must point to an element of type Party</sch:assert>
            <sch:assert test="not(cdf:BallotStyleUnitId) or key('GpUnit',current()/cdf:BallotStyleUnitId)">) BallotStyleUnitId (<sch:value-of select="cdf:BallotStyleUnitId"/>) must point to an element of type GpUnit</sch:assert>
        </sch:rule>
    </sch:pattern>
    <sch:pattern>
        <sch:rule context="(/cdf:CastVoteRecordReport/cdf:Election/cdf:Contest/cdf:ContestSelection[contains(@xsi:type,'CandidateSelection')])">
            <sch:assert test="not(cdf:CandidateIds) or (every $curId in tokenize(cdf:CandidateIds) satisfies key('Candidate',$curId))">CandidateIds (<sch:value-of select="cdf:CandidateIds"/>) must point to an element of type Candidate</sch:assert>
        </sch:rule>
        <sch:rule context="(/cdf:CastVoteRecordReport/cdf:Election/cdf:Contest[contains(@xsi:type,'CandidateContest')])">
            <sch:assert test="not(cdf:PrimaryPartyId) or key('Party',current()/cdf:PrimaryPartyId)">) PrimaryPartyId (<sch:value-of select="cdf:PrimaryPartyId"/>) must point to an element of type Party</sch:assert>
        </sch:rule>
        <sch:rule context="(/cdf:CastVoteRecordReport/cdf:Election/cdf:Contest/cdf:ContestSelection[contains(@xsi:type,'PartySelection')])">
            <sch:assert test="not(cdf:PartyIds) or (every $curId in tokenize(cdf:PartyIds) satisfies key('Party',$curId))">PartyIds (<sch:value-of select="cdf:PartyIds"/>) must point to an element of type Party</sch:assert>
        </sch:rule>
        <sch:rule context="(/cdf:CastVoteRecordReport/cdf:Election/cdf:Contest[contains(@xsi:type,'RetentionContest')])">
            <sch:assert test="not(cdf:CandidateId) or key('Candidate',current()/cdf:CandidateId)">) CandidateId (<sch:value-of select="cdf:CandidateId"/>) must point to an element of type Candidate</sch:assert>
        </sch:rule>
    </sch:pattern>
</sch:schema>