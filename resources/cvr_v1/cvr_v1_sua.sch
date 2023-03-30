<?xml version="1.0" encoding="UTF-8"?><sch:schema xmlns:mp="http://mapping" xmlns:sch="http://purl.oclc.org/dsdl/schematron" xmlns:sqf="http://www.schematron-quickfix.com/validator/process" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" queryBinding="xslt2">    
    <sch:ns uri="http://itl.nist.gov/ns/voting/1500-103/v1" prefix="cdf"/>    
    <sch:ns uri="http://itl.nist.gov/ns/voting/1500-103/v1" prefix="err"/>   
    <sch:ns uri="http://www.w3.org/2001/XMLSchema-instance" prefix="xsi"/>            
    <sch:pattern>
        <sch:rule context="(/cdf:CastVoteRecordReport/cdf:CVR/cdf:CVRSnapshot/cdf:CVRContest)">
            <sch:assert test="not(err:ContestId) or count([@ObjectId = current()/err:ContestId]) = 1">) ContestId (<sch:value-of select="cdf:ContestId"/>) must point to an element of type Contest</sch:assert>
        </sch:rule>


        <sch:rule context="(/cdf:CastVoteRecordReport/cdf:GpUnit)">
            <sch:assert test="not(err:ReportingDeviceIds) or (every $curId in tokenize(err:ReportingDeviceIds) satisfies /cdf:CastVoteRecordReport/cdf:ReportingDevice[@ObjectId = $curId])">ReportingDeviceIds (<sch:value-of select="cdf:ReportingDeviceIds"/>) must point to an element of type ReportingDevice</sch:assert>
        </sch:rule>


        <sch:rule context="(/cdf:CastVoteRecordReport/cdf:Election/cdf:Candidate)">
            <sch:assert test="not(err:PartyId) or count(/cdf:CastVoteRecordReport/cdf:Party[@ObjectId = current()/err:PartyId]) = 1">) PartyId (<sch:value-of select="cdf:PartyId"/>) must point to an element of type Party</sch:assert>
        </sch:rule>



        <sch:rule context="(/cdf:CastVoteRecordReport/cdf:Election)">
            <sch:assert test="not(err:ElectionScopeId) or count(/cdf:CastVoteRecordReport/cdf:GpUnit[@ObjectId = current()/err:ElectionScopeId]) = 1">) ElectionScopeId (<sch:value-of select="cdf:ElectionScopeId"/>) must point to an element of type GpUnit</sch:assert>
        </sch:rule>

        <sch:rule context="(/cdf:CastVoteRecordReport/cdf:Election/cdf:Candidate/cdf:Code|/cdf:CastVoteRecordReport/cdf:Election/cdf:Code|/cdf:CastVoteRecordReport/cdf:Election/cdf:Contest/cdf:Code|/cdf:CastVoteRecordReport/cdf:Election/cdf:Contest/cdf:ContestSelection/cdf:Code|/cdf:CastVoteRecordReport/cdf:GpUnit/cdf:Code|/cdf:CastVoteRecordReport/cdf:Party/cdf:Code|/cdf:CastVoteRecordReport/cdf:ReportingDevice/cdf:Code)">
            <sch:assert test="not(err:Id) or count(/cdf:CastVoteRecordReport/cdf:CVR/cdf:CVRSnapshot/cdf:CVRContest/cdf:CVRContestSelection/cdf:SelectionPosition[@ObjectId = current()/err:Id]) = 1">) Id (<sch:value-of select="cdf:Id"/>) must point to an element of type SelectionPosition</sch:assert>
        </sch:rule>


        <sch:rule context="(/cdf:CastVoteRecordReport)">
            <sch:assert test="not(err:ReportGeneratingDeviceIds) or (every $curId in tokenize(err:ReportGeneratingDeviceIds) satisfies /cdf:CastVoteRecordReport/cdf:ReportingDevice[@ObjectId = $curId])">ReportGeneratingDeviceIds (<sch:value-of select="cdf:ReportGeneratingDeviceIds"/>) must point to an element of type ReportingDevice</sch:assert>
        </sch:rule>

        <sch:rule context="(/cdf:CastVoteRecordReport/cdf:CVR/cdf:CVRSnapshot/cdf:CVRContest/cdf:CVRContestSelection)">
            <sch:assert test="not(err:ContestSelectionId) or count(/cdf:CastVoteRecordReport/cdf:Election/cdf:Contest/cdf:ContestSelection[@ObjectId = current()/err:ContestSelectionId]) = 1">) ContestSelectionId (<sch:value-of select="cdf:ContestSelectionId"/>) must point to an element of type ContestSelection</sch:assert>
        </sch:rule>



        <sch:rule context="(/cdf:CastVoteRecordReport/cdf:CVR)">
            <sch:assert test="not(err:CreatingDeviceId) or count(/cdf:CastVoteRecordReport/cdf:ReportingDevice[@ObjectId = current()/err:CreatingDeviceId]) = 1">) CreatingDeviceId (<sch:value-of select="cdf:CreatingDeviceId"/>) must point to an element of type ReportingDevice</sch:assert>
            <sch:assert test="not(err:ElectionId) or count(/cdf:CastVoteRecordReport/cdf:Election[@ObjectId = current()/err:ElectionId]) = 1">) ElectionId (<sch:value-of select="cdf:ElectionId"/>) must point to an element of type Election</sch:assert>
            <sch:assert test="not(err:CurrentSnapshotId) or count(/cdf:CastVoteRecordReport/cdf:CVR/cdf:CVRSnapshot[@ObjectId = current()/err:CurrentSnapshotId]) = 1">) CurrentSnapshotId (<sch:value-of select="cdf:CurrentSnapshotId"/>) must point to an element of type CVRSnapshot</sch:assert>
            <sch:assert test="not(err:PartyIds) or (every $curId in tokenize(err:PartyIds) satisfies /cdf:CastVoteRecordReport/cdf:Party[@ObjectId = $curId])">PartyIds (<sch:value-of select="cdf:PartyIds"/>) must point to an element of type Party</sch:assert>
            <sch:assert test="not(err:BallotStyleUnitId) or count(/cdf:CastVoteRecordReport/cdf:GpUnit[@ObjectId = current()/err:BallotStyleUnitId]) = 1">) BallotStyleUnitId (<sch:value-of select="cdf:BallotStyleUnitId"/>) must point to an element of type GpUnit</sch:assert>
        </sch:rule>

    </sch:pattern>
    <sch:pattern>

        



        <sch:rule context="(/cdf:CastVoteRecordReport/cdf:Election/cdf:Contest[contains(@xsi:type,'CandidateContest')])">
            <sch:assert test="not(err:PrimaryPartyId) or count(/cdf:CastVoteRecordReport/cdf:Party[@ObjectId = current()/err:PrimaryPartyId]) = 1">) PrimaryPartyId (<sch:value-of select="cdf:PrimaryPartyId"/>) must point to an element of type Party</sch:assert>
        </sch:rule>

        

        <sch:rule context="(/cdf:CastVoteRecordReport/cdf:Election/cdf:Contest[contains(@xsi:type,'RetentionContest')])">
            <sch:assert test="not(err:CandidateId) or count(/cdf:CastVoteRecordReport/cdf:Election/cdf:Candidate[@ObjectId = current()/err:CandidateId]) = 1">) CandidateId (<sch:value-of select="cdf:CandidateId"/>) must point to an element of type Candidate</sch:assert>
        </sch:rule>



    </sch:pattern>
</sch:schema>