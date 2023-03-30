<?xml version="1.0" encoding="UTF-8"?>
<!-- 
Generated via
MagicDraw Template for Schematron (SchematronMD)
-->
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <sch:ns uri="http://itl.nist.gov/ns/voting/1500-100/v2" prefix="cdf"/>
    <sch:ns uri="http://www.w3.org/2001/XMLSchema-instance" prefix="xsi"/>
    <xsl:import-schema namespace="http://itl.nist.gov/ns/voting/1500-100/v2"
        schema-location="https://raw.githubusercontent.com/usnistgov/ElectionResultsReporting/version2/NIST_V2_election_results_reporting.xsd"/>
    <sch:pattern>
        <sch:rule context="element(*, cdf:BallotStyle)">
            <sch:assert test="not(id(cdf:GpUnitIds)[not(. instance of element(*, cdf:GpUnit))])"
                >GpUnitIds (<xsl:value-of select="cdf:GpUnitIds"/>) must point to an element of type
                GpUnit</sch:assert>
            <sch:assert test="not(id(cdf:PartyIds)[not(. instance of element(*, cdf:Party))])"
                >PartyIds (<xsl:value-of select="cdf:PartyIds"/>) must point to an element of type
                Party</sch:assert>
        </sch:rule>
        <sch:rule context="element(*, cdf:Candidate)">
            <sch:assert
                test="count(idref(current()/@ObjectId)[(local-name() = 'CandidateIds' and .. instance of element(*, cdf:CandidateSelection)) or (local-name() = 'CandidateId' and .. instance of element(*, cdf:RetentionContest))]) > 0"
                >Candidate (<xsl:value-of select="current()/@ObjectId"/>) must have refereant from
                CandidateSelection, RetentionContest</sch:assert>
            <sch:assert test="not(id(cdf:PersonId)[not(. instance of element(*, cdf:Person))])"
                >PersonId (<xsl:value-of select="cdf:PersonId"/>) must point to an element of type
                Person</sch:assert>
            <sch:assert test="not(id(cdf:PartyId)[not(. instance of element(*, cdf:Party))])"
                >PartyId (<xsl:value-of select="cdf:PartyId"/>) must point to an element of type
                Party</sch:assert>
        </sch:rule>
        <sch:rule context="element(*, cdf:CandidateContest)">
            <sch:assert test="not(id(cdf:OfficeIds)[not(. instance of element(*, cdf:Office))])"
                >OfficeIds (<xsl:value-of select="cdf:OfficeIds"/>) must point to an element of type
                Office</sch:assert>
            <sch:assert
                test="not(id(cdf:PrimaryPartyIds)[not(. instance of element(*, cdf:Party))])"
                >PrimaryPartyIds (<xsl:value-of select="cdf:PrimaryPartyIds"/>) must point to an
                element of type Party</sch:assert>
        </sch:rule>
        <sch:rule context="element(*, cdf:CandidateSelection)">
            <sch:assert
                test="not(id(cdf:EndorsementPartyIds)[not(. instance of element(*, cdf:Party))])"
                >EndorsementPartyIds (<xsl:value-of select="cdf:EndorsementPartyIds"/>) must point
                to an element of type Party</sch:assert>
            <sch:assert
                test="not(id(cdf:CandidateIds)[not(. instance of element(*, cdf:Candidate))])"
                >CandidateIds (<xsl:value-of select="cdf:CandidateIds"/>) must point to an element
                of type Candidate</sch:assert>
        </sch:rule>
        <sch:rule context="element(*, cdf:Coalition)">
            <sch:assert test="not(id(cdf:ContestIds)[not(. instance of element(*, cdf:Contest))])"
                >ContestIds (<xsl:value-of select="cdf:ContestIds"/>) must point to an element of
                type Contest</sch:assert>
            <sch:assert test="not(id(cdf:PartyIds)[not(. instance of element(*, cdf:Party))])"
                >PartyIds (<xsl:value-of select="cdf:PartyIds"/>) must point to an element of type
                Party</sch:assert>
        </sch:rule>
        <sch:rule context="element(*, cdf:Contest)">
            <sch:assert
                test="count(idref(current()/@ObjectId)[(local-name() = 'ContestIds' and .. instance of element(*, cdf:Coalition)) or (local-name() = 'Id' and .. instance of element(*, cdf:ReportingUnit)) or (local-name() = 'ContestId' and .. instance of element(*, cdf:OrderedContest))]) > 0"
                >Contest (<xsl:value-of select="current()/@ObjectId"/>) must have refereant from
                Coalition, ReportingUnit, OrderedContest</sch:assert>
        </sch:rule>
        <sch:rule context="element(*, cdf:ContestSelection)">
            <sch:assert
                test="count(idref(current()/@ObjectId)[(local-name() = 'OrderedContestSelectionIds' and .. instance of element(*, cdf:OrderedContest)) or (local-name() = 'Id' and .. instance of element(*, cdf:VoteCounts))]) > 0"
                >ContestSelection (<xsl:value-of select="current()/@ObjectId"/>) must have refereant
                from OrderedContest, VoteCounts</sch:assert>
        </sch:rule>
        <sch:rule context="element(*, cdf:Counts)">
            <sch:assert test="not(id(cdf:GpUnitId)[not(. instance of element(*, cdf:GpUnit))])"
                >GpUnitId (<xsl:value-of select="cdf:GpUnitId"/>) must point to an element of type
                GpUnit</sch:assert>
        </sch:rule>
        <sch:rule context="element(*, cdf:Election)">
            <sch:assert
                test="not(id(cdf:ElectionScopeId)[not(. instance of element(*, cdf:ReportingUnit))])"
                >ElectionScopeId (<xsl:value-of select="cdf:ElectionScopeId"/>) must point to an
                element of type ReportingUnit</sch:assert>
        </sch:rule>
        <sch:rule context="element(*, cdf:ElectionAdministration)">
            <sch:assert
                test="not(id(cdf:ElectionOfficialPersonIds)[not(. instance of element(*, cdf:Person))])"
                >ElectionOfficialPersonIds (<xsl:value-of select="cdf:ElectionOfficialPersonIds"/>)
                must point to an element of type Person</sch:assert>
        </sch:rule>
        <sch:rule context="element(*, cdf:GpUnit)">
            <sch:assert
                test="count(idref(current()/@ObjectId)[(local-name() = 'GpUnitIds' and .. instance of element(*, cdf:BallotStyle)) or (local-name() = 'GpUnitId' and .. instance of element(*, cdf:OtherCounts)) or (local-name() = 'GpUnitId' and .. instance of element(*, cdf:Counts)) or (local-name() = 'ComposingGpUnitIds' and .. instance of element(*, cdf:GpUnit))]) > 0"
                >GpUnit (<xsl:value-of select="current()/@ObjectId"/>) must have refereant from
                BallotStyle, OtherCounts, Counts, GpUnit</sch:assert>
            <sch:assert
                test="not(id(cdf:ComposingGpUnitIds)[not(. instance of element(*, cdf:GpUnit))])"
                >ComposingGpUnitIds (<xsl:value-of select="cdf:ComposingGpUnitIds"/>) must point to
                an element of type GpUnit</sch:assert>
        </sch:rule>
        <sch:rule context="element(*, cdf:Header)">
            <sch:assert
                test="count(idref(current()/@ObjectId)[(local-name() = 'HeaderId' and .. instance of element(*, cdf:OrderedHeader))]) > 0"
                >Header (<xsl:value-of select="current()/@ObjectId"/>) must have refereant from
                OrderedHeader</sch:assert>
        </sch:rule>
        <sch:rule context="element(*, cdf:Office)">
            <sch:assert
                test="count(idref(current()/@ObjectId)[(local-name() = 'OfficeId' and .. instance of element(*, cdf:RetentionContest)) or (local-name() = 'OfficeIds' and .. instance of element(*, cdf:CandidateContest)) or (local-name() = 'OfficeIds' and .. instance of element(*, cdf:OfficeGroup))]) > 0"
                >Office (<xsl:value-of select="current()/@ObjectId"/>) must have refereant from
                RetentionContest, CandidateContest, OfficeGroup</sch:assert>
            <sch:assert
                test="not(id(cdf:ElectionDistrictId)[not(. instance of element(*, cdf:ReportingUnit))])"
                >ElectionDistrictId (<xsl:value-of select="cdf:ElectionDistrictId"/>) must point to
                an element of type ReportingUnit</sch:assert>
            <sch:assert
                test="not(id(cdf:OfficeHolderPersonIds)[not(. instance of element(*, cdf:Person))])"
                >OfficeHolderPersonIds (<xsl:value-of select="cdf:OfficeHolderPersonIds"/>) must
                point to an element of type Person</sch:assert>
        </sch:rule>
        <sch:rule context="element(*, cdf:OfficeGroup)">
            <sch:assert test="not(id(cdf:OfficeIds)[not(. instance of element(*, cdf:Office))])"
                >OfficeIds (<xsl:value-of select="cdf:OfficeIds"/>) must point to an element of type
                Office</sch:assert>
        </sch:rule>
        <sch:rule context="element(*, cdf:OrderedContest)">
            <sch:assert
                test="not(id(cdf:OrderedContestSelectionIds)[not(. instance of element(*, cdf:ContestSelection))])"
                >OrderedContestSelectionIds (<xsl:value-of select="cdf:OrderedContestSelectionIds"
                />) must point to an element of type ContestSelection</sch:assert>
            <sch:assert test="not(id(cdf:ContestId)[not(. instance of element(*, cdf:Contest))])"
                >ContestId (<xsl:value-of select="cdf:ContestId"/>) must point to an element of type
                Contest</sch:assert>
        </sch:rule>
        <sch:rule context="element(*, cdf:OrderedHeader)">
            <sch:assert test="not(id(cdf:HeaderId)[not(. instance of element(*, cdf:Header))])"
                >HeaderId (<xsl:value-of select="cdf:HeaderId"/>) must point to an element of type
                Header</sch:assert>
        </sch:rule>
        <sch:rule context="element(*, cdf:OtherCounts)">
            <sch:assert test="not(id(cdf:GpUnitId)[not(. instance of element(*, cdf:GpUnit))])"
                >GpUnitId (<xsl:value-of select="cdf:GpUnitId"/>) must point to an element of type
                GpUnit</sch:assert>
        </sch:rule>
        <sch:rule context="element(*, cdf:Party)">
            <sch:assert
                test="count(idref(current()/@ObjectId)[(local-name() = 'EndorsementPartyIds' and .. instance of element(*, cdf:CandidateSelection)) or (local-name() = 'PartyIds' and .. instance of element(*, cdf:PartySelection)) or (local-name() = 'PrimaryPartyIds' and .. instance of element(*, cdf:CandidateContest)) or (local-name() = 'PartyIds' and .. instance of element(*, cdf:BallotStyle)) or (local-name() = 'PartyIds' and .. instance of element(*, cdf:Coalition)) or (local-name() = 'PartyId' and .. instance of element(*, cdf:Candidate)) or (local-name() = 'PartyId' and .. instance of element(*, cdf:Person)) or (local-name() = 'PartyId' and .. instance of element(*, cdf:PartyRegistration))]) > 0"
                >Party (<xsl:value-of select="current()/@ObjectId"/>) must have refereant from
                CandidateSelection, PartySelection, CandidateContest, BallotStyle, Coalition,
                Candidate, Person, PartyRegistration</sch:assert>
            <sch:assert
                test="not(id(cdf:LeaderPersonIds)[not(. instance of element(*, cdf:Person))])"
                >LeaderPersonIds (<xsl:value-of select="cdf:LeaderPersonIds"/>) must point to an
                element of type Person</sch:assert>
        </sch:rule>
        <sch:rule context="element(*, cdf:PartyRegistration)">
            <sch:assert test="not(id(cdf:PartyId)[not(. instance of element(*, cdf:Party))])"
                >PartyId (<xsl:value-of select="cdf:PartyId"/>) must point to an element of type
                Party</sch:assert>
        </sch:rule>
        <sch:rule context="element(*, cdf:PartySelection)">
            <sch:assert test="not(id(cdf:PartyIds)[not(. instance of element(*, cdf:Party))])"
                >PartyIds (<xsl:value-of select="cdf:PartyIds"/>) must point to an element of type
                Party</sch:assert>
        </sch:rule>
        <sch:rule context="element(*, cdf:Person)">
            <sch:assert
                test="count(idref(current()/@ObjectId)[(local-name() = 'PersonId' and .. instance of element(*, cdf:Candidate)) or (local-name() = 'LeaderPersonIds' and .. instance of element(*, cdf:Party)) or (local-name() = 'ElectionOfficialPersonIds' and .. instance of element(*, cdf:ElectionAdministration)) or (local-name() = 'AuthorityIds' and .. instance of element(*, cdf:ReportingUnit)) or (local-name() = 'OfficeHolderPersonIds' and .. instance of element(*, cdf:Office))]) > 0"
                >Person (<xsl:value-of select="current()/@ObjectId"/>) must have refereant from
                Candidate, Party, ElectionAdministration, ReportingUnit, Office</sch:assert>
            <sch:assert test="not(id(cdf:PartyId)[not(. instance of element(*, cdf:Party))])"
                >PartyId (<xsl:value-of select="cdf:PartyId"/>) must point to an element of type
                Party</sch:assert>
        </sch:rule>
        <sch:rule context="element(*, cdf:ReportingUnit)">
            <sch:assert
                test="count(idref(current()/@ObjectId)[(local-name() = 'ElectionDistrictId' and .. instance of element(*, cdf:Office)) or (local-name() = 'ElectionScopeId' and .. instance of element(*, cdf:Election))]) > 0"
                >ReportingUnit (<xsl:value-of select="current()/@ObjectId"/>) must have refereant
                from Office, Election</sch:assert>
            <sch:assert test="not(id(cdf:AuthorityIds)[not(. instance of element(*, cdf:Person))])"
                >AuthorityIds (<xsl:value-of select="cdf:AuthorityIds"/>) must point to an element
                of type Person</sch:assert>
            <sch:assert test="not(id(cdf:Id)[not(. instance of element(*, cdf:Contest))])">Id
                    (<xsl:value-of select="cdf:Id"/>) must point to an element of type
                Contest</sch:assert>
        </sch:rule>
        <sch:rule context="element(*, cdf:RetentionContest)">
            <sch:assert test="not(id(cdf:OfficeId)[not(. instance of element(*, cdf:Office))])"
                >OfficeId (<xsl:value-of select="cdf:OfficeId"/>) must point to an element of type
                Office</sch:assert>
            <sch:assert
                test="not(id(cdf:CandidateId)[not(. instance of element(*, cdf:Candidate))])"
                >CandidateId (<xsl:value-of select="cdf:CandidateId"/>) must point to an element of
                type Candidate</sch:assert>
        </sch:rule>
        <sch:rule context="element(*, cdf:VoteCounts)">
            <sch:assert test="not(id(cdf:Id)[not(. instance of element(*, cdf:ContestSelection))])"
                >Id (<xsl:value-of select="cdf:Id"/>) must point to an element of type
                ContestSelection</sch:assert>
        </sch:rule>
    </sch:pattern>
</sch:schema>
