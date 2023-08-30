# NIST Voting Common Data Format Test Data - Test Data Sets


The directory for each test election is structured in the following manner.

- `bd_v1` - JSON and XML files in the Ballot Definition v1 specification
- `cvr_v1` - JSON and XML files in the Cast Vote Records v1 specification
  - Some elections may have an additional `raw` prefixed CVR; this CVR contains a CVRs before Straight Party and Open Primary overvoting contest rules have been applied.
- `eel_v1` - JSON and XML files in the Election Event Logging v1 specification
- `err_v2` - JSON and XML files in the Election Results Reporting v2 specification
  - `pe` prefixed ERR files are for pre-election use-case and do not contain counts

The table below lists the CDFs exercised by each test data set.

| CDF                                        | Synthetic |        |        |         |         |         | Massachussetts |        |
|--------------------------------------------|-----------|--------|--------|---------|---------|---------|----------------|--------|
| Election                                   | GEN-01    | GEN-02 | GEN-03 | PRIM-01 | PRIM-02 | PRIM-03 | 22 PRIM        | 22 GEN |
| Ballot Definition*                         | x         | x      | x      | x       | x       | x       |                |        |
| Cast Vote Records                          | x         | x      | x      | x       | x       | x       |                |        |
| Election Event Logging                     | x         |        |        |         |         |         |                |        |
| Election Results Reporting v2 with Counts  | x         | x      | x      | x       | x       | x       | x              | x      |
| Pre-Election Election Results Reporting v2 | x         | x      | x      | x       | x       | x       |                |        |
| Voter Record Interchange                   |

*Ballot Definition CDF is not currently referenced in VVSG 2.0

The table below shows the different kinds of election types, voting methods and contest types included in each data set.

| Factor                                      | Synthetic |        |        |         |         |         | Massachussetts |        |
|---------------------------------------------|-----------|--------|--------|---------|---------|---------|----------------|--------|
| Election                                    | GEN-01    | GEN-02 | GEN-03 | PRIM-01 | PRIM-02 | PRIM-03 | 22 PRIM        | 22 GEN |
| Closed Primary                              |           |        |        |         |         | x       | x              |        |
| Open Primary                                |           |        |        | x       | x       |         |                |        |
| Partisan offices                            | x         | x      | x      | x       | x       | x       | x              | x      |
| Non-Partisan offices                        | x         | x      | x      |         | x       | x       |                |        |
| Write-in voting                             | x         | x      | x      | x       | x       | x       |                | x      |
| Primary presidential delegation nominations |           |        |        |         | x       |         |                |        |
| Candidate Rotation                          |           | x      |        |         |         |         |                |        |
| Straight Party Voting                       | x         |        |        |         |         |         |                |        |
| Cross-party endorsement                     |           |        |        |         | x       |         |                |        |
| Split Precincts                             | x         |        |        |         |         |         | x              | x      |
| N-of-M, M>1                                 | x         | x      | x      |         | x       | x       |                | x      |
| Recall issues, with options                 |           | x      |        |         |         |         |                |        |
| Cumulative                                  |           |        |        |         |         |         |                |        |
| RCV                                         |           | x      |        |         |         |         |                |        |
| **Additional Factors**                      |           |        |        |         |         |         |                |        |
| Tickets (multiple candidates same option)   | x         |        |        |         |         |         |                |        |
| Combined Precincts                          | x         |        |        |         |         |         |                |        |
| Headers                                     |           |        |        | x       | x       |         |                |        |
| **Languages**                               |           |        |        |         |         |         |                |        |
| Non-English Latin Alphabet*                 | x         | x      | x      | x       | x       | x       |                |        |
| Logographic                                 |           |        |        |         |         |         |                |        |
| **XML Specific**                            |           |        |        |         |         |         |                |        |
| Namespace Prefixes                          |           |        | x      |         |         | x       |                |        |
| Boolean numeric substition                  | x         | x      |        | x       |         |         |                |        |

* Non-English Latin Alphabet is limited to write-in names only.

## Classes Included in Data Sets

The provided tables describe the classes included in each data set, one table per common data format.

### Ballot Definition

| Class                                | Synthetic |        |        |         |         |         |
|--------------------------------------|-----------|--------|--------|---------|---------|---------|
| Election                             | GEN-01    | GEN-02 | GEN-03 | PRIM-01 | PRIM-02 | PRIM-03 |
| AnnotatedString                      |           |        |        |         |         |         |
| AnnotatedUri                         |           |        |        |         |         |         |
| BallotMeasureContest                 | x         | x      | x      |         | x       | x       |
| BallotMeasureSelection               | x         | x      | x      |         | x       | x       |
| BallotStyle                          | x         | x      | x      | x       | x       | x       |
| Candidate                            | x         | x      | x      | x       | x       | x       |
| CandidateContest                     | x         | x      | x      | x       | x       | x       |
| CandidateSelection                   | x         | x      | x      | x       | x       | x       |
| Coalition                            |           |        |        |         |         |         |
| ContactInformation                   |           |        |        |         |         |         |
| Contest                              | x         | x      | x      | x       | x       | x       |
| ContestSelection                     | x         | x      | x      | x       | x       | x       |
| DateTimeWithZone                     |           |        |        |         |         |         |
| Election                             | x         | x      | x      | x       | x       | x       |
| ElectionAdministration               |           |        |        |         |         |         |
| ElectionReport                       |           |        |        |         |         |         |
| ExternalIdentifier                   | x         | x      | x      | x       | x       | x       |
| GpUnit                               | x         | x      | x      | x       | x       | x       |
| Header                               |           |        |        | x       | x       |         |
| Hours                                |           |        |        |         |         |         |
| HtmlColorString                      |           |        |        |         |         |         |
| InternationalizedText                | x         | x      | x      | x       | x       | x       |
| LanguageString                       | x         | x      | x      | x       | x       | x       |
| LatLng                               |           |        |        |         |         |         |
| Office                               |           |        |        |         |         |         |
| OfficeGroup                          |           |        |        |         |         |         |
| OrderedContent                       | x         | x      | x      | x       | x       | x       |
| OrderedContest                       | x         | x      | x      | x       | x       | x       |
| OrderedHeader                        |           |        |        | x       | x       |         |
| Party                                | x         | x      | x      | x       | x       | x       |
| PartyContest                         |           |        |        |         |         |         |
| PartyRegistration                    |           |        |        |         |         |         |
| PartySelection                       | x         |        |        |         |         |         |
| Person                               |           |        |        |         |         |         |
| ReportingUnit                        | x         | x      | x      | x       | x       | x       |
| RetentionContest                     |           |        |        |         |         |         |
| Schedule                             |           |        |        |         |         |         |
| ShortString                          |           |        |        |         |         |         |
| SpatialDimension                     |           |        |        |         |         |         |
| SpatialExtent                        |           |        |        |         |         |         |
| Term                                 |           |        |        |         |         |         |
| TimeWithZone                         |           |        |        |         |         |         |
| **Ballot Definition Specific**       |           |        |        |         |         |         |
| ActivationContest                    |           | x      |        |         |         |         |
| ActivationOption                     |           | x      |        |         |         |         |
| BallotDefinition                     | x         | x      | x      | x       | x       | x       |
| ControllingContest                   | x         | x      |        |         |         |         |
| StraightPartyContest                 | x         |        |        |         |         |         |

*(Options mapped as Selections above) 

### Cast Vote Records

| Class                  | Synthetic |        |        |         |         |         |
|------------------------|-----------|--------|--------|---------|---------|---------|
| Election               | GEN-01    | GEN-02 | GEN-03 | PRIM-01 | PRIM-02 | PRIM-03 |
| Annotation             |           |        |        |         |         |         |
| BallotMeasureContest   | x         | x      | x      |         | x       | x       |
| BallotMeasureSelection | x         | x      | x      |         | x       | x       |
| Candidate              | x         | x      | x      | x       | x       | x       |
| CandidateContest       | x         | x      | x      | x       | x       | x       |
| CandidateSelection     | x         | x      | x      |         |         | x       |
| CastVoteRecordReport   | x         | x      | x      | x       | x       | x       |
| Code                   |           |        |        |         |         |         |
| Contest                | x         | x      | x      | x       | x       | x       |
| ContestSelection       | x         | x      | x      | x       | x       | x       |
| CVR                    | x         | x      | x      | x       | x       | x       |
| CVRContest             | x         | x      | x      | x       | x       | x       |
| CVRContestSelection    | x         | x      | x      | x       | x       | x       |
| CVRSnapshot            | x         | x      | x      | x       | x       | x       |
| CVRWriteIn             | x         | x      | x      | x       | x       | x       |
| Election               | x         | x      | x      | x       | x       | x       |
| File                   |           |        |        |         |         |         |
| FractionalNumber       |           |        |        |         |         |         |
| GpUnit                 | x         | x      | x      | x       | x       | x       |
| Hash                   |           |        |        |         |         |         |
| Image                  |           |        |        |         |         |         |
| ImageData              |           |        |        |         |         |         |
| Party                  | x         | x      | x      | x       | x       | x       |
| PartyContest           | x         |        |        |         |         |         |
| PartySelection         | x         |        |        |         |         |         |
| ReportingDevice        | x         | x      | x      | x       | x       | x       |
| RetentionContest       |           |        |        |         |         |         |
| SelectionPosition      | x         | x      | x      | x       | x       | x       |

### Election Event Logging

| Class                         | Synthetic |        |        |         |         |         |
|-------------------------------|-----------|--------|--------|---------|---------|---------|
| Election                      | GEN-01    | GEN-02 | GEN-03 | PRIM-01 | PRIM-02 | PRIM-03 |
| Device                        | x         |        |        |         |         |         |
| ElectionEventLog              | x         |        |        |         |         |         |
| ElectionEventLogDocumentation | x         |        |        |         |         |         |
| Event                         | x         |        |        |         |         |         |
| EventIdDescription            | x         |        |        |         |         |         |
| EventTypeDescription          | x         |

### Election Results Reporting

| Class                  | Synthetic |        |        |         |         |         | Massachussets |              |
|------------------------|-----------|--------|--------|---------|---------|---------|---------------|--------------|
| Election               | GEN-01    | GEN-02 | GEN-03 | PRIM-01 | PRIM-02 | PRIM-03 | 2022 Primary  | 2022 General |
| AnnotatedString        |           |        |        |         |         |         |               |              |
| AnnotatedUri           |           |        |        |         |         |         |               |              |
| BallotCounts           |           |        |        |         |         |         | x             | x            |
| BallotMeasureContest   | x         | x      | x      |         | x       | x       |               | x            |
| BallotMeasureSelection | x         | x      | x      |         | x       | x       |               | x            |
| BallotStyle            | x         | x      | x      | x       | x       | x       | x             | x            |
| Candidate              | x         | x      | x      | x       | x       | x       | x             | x            |
| CandidateContest       | x         | x      | x      | x       | x       | x       | x             | x            |
| CandidateSelection     | x         | x      | x      | x       | x       | x       | x             | x            |
| Coalition              |           |        |        |         |         |         |               |              |
| ContactInformation     |           |        |        |         |         |         | x             | x            |
| Contest                | x         | x      | x      | x       | x       | x       | x             | x            |
| ContestSelection       | x         | x      | x      | x       | x       | x       | x             | x            |
| Counts                 | x         | x      | x      | x       | x       | x       | x             | x            |
| CountStatus            |           |        |        |         |         |         |               |              |
| DateTimeWithZone       |           |        |        |         |         |         |               |              |
| DeviceClass            |           |        |        |         |         |         |               |              |
| Election               | x         | x      | x      | x       | x       | x       | x             | x            |
| ElectionAdministration |           |        |        |         |         |         |               |              |
| ElectionReport         | x         | x      | x      | x       | x       | x       | x             | x            |
| ExternalIdentifier     | x         | x      | x      | x       | x       | x       |               |              |
| GpUnit                 | x         | x      | x      | x       | x       | x       | x             | x            |
| Header                 |           |        |        | x       | x       |         |               |              |
| Hours                  |           |        |        |         |         |         | x             | x            |
| HtmlColorString        |           |        |        |         |         |         |               |              |
| InternationalizedText  | x         | x      | x      | x       | x       | x       | x             | x            |
| LanguageString         | x         | x      | x      | x       | x       | x       | x             | x            |
| LatLng                 |           |        |        |         |         |         |               |              |
| Office                 |           |        |        |         |         |         |               |              |
| OfficeGroup            |           |        |        |         |         |         |               |              |
| OrderedContent         | x         | x      | x      | x       | x       | x       | x             | x            |
| OrderedContest         | x         | x      | x      | x       | x       | x       | x             | x            |
| OrderedHeader          |           |        |        | x       | x       |         |               |              |
| OtherCounts            | x         | x      | x      | x       | x       | x       | x             | x            |
| Party                  | x         | x      | x      | x       | x       | x       | x             | x            |
| PartyContest           | x         |        |        |         |         |         |               |              |
| PartyRegistration      |           |        |        |         |         |         |               |              |
| PartySelection         | x         |        |        |         |         |         |               |              |
| Person                 |           |        |        |         |         |         |               |              |
| ReportingDevice        |           |        |        |         |         |         |               |              |
| ReportingUnit          | x         | x      | x      | x       | x       | x       | x             | x            |
| RetentionContest       |           |        |        |         |         |         |               |              |
| Schedule               |           |        |        |         |         |         | x             | x            |
| ShortString            |           |        |        |         |         |         |               |              |
| SpatialDimension       |           |        |        |         |         |         |               |              |
| SpatialExtent          |           |        |        |         |         |         |               |              |
| Term                   |           |        |        |         |         |         |               |              |
| TimeWithZone           |           |        |        |         |         |         |               |              |
| VoteCounts             | x         | x      | x      | x       | x       | x       | x             | x            |