# NIST Voting Common Data Format Test Data - Synthetic Test Data Sets

The directory for each synthetic test election is structured in the same manner.

- `bd_v1` - JSON and XML files in the Ballot Definition v1 specification
- `cvr_v1` - JSON and XML files in the Cast Vote Records v1 specification
- `err_v2` - JSON and XML files in the Election Results Reporting v2 specification

The table below shows the different kinds of election types, voting methods and contest types included in each data set.

| Factor                                      | Synthetic |        |         |
|---------------------------------------------|-----------|--------|---------|
| Election                                    | GEN-01    | GEN-03 | PRIM-03 |
| Closed Primary                              |           |        | x       |
| Open Primary                                |           |        |         |
| Partisan offices                            | x         | x      | x       |
| Non-Partisan offices                        | x         | x      | x       |
| Write-in voting                             | x         | x      | x       |
| Primary presidential delegation nominations |           |        |         |
| Candidate Rotation                          |           |        |         |
| Straight Party Voting                       | x         |        |         |
| Cross-party endorsement                     |           |        |         |
| Split Precincts                             | x         |        |         |
| N-of-M, M>1                                 | x         | x      | x       |
| Recall issues, with options                 |           |        |         |
| Cumulative                                  |           |        |         |
| RCV                                         |           |        |         |
| Tickets (multiple candidates same option)   | x         |        |         |
| Combined Precincts                          | x         |

## Classes Included in Data Sets

The provided tables describe the classes included in each data set, one table per common data format.

### Ballot Definition

| Factor                 | Synthetic |        |         |
|------------------------|-----------|--------|---------|
| Election               | GEN-01    | GEN-03 | PRIM-03 |
| AnnotatedString        |           |        |         |
| AnnotatedUri           |           |        |         |
| BallotCounts           |           |        |         |
| BallotMeasureContest   | X         | X      | X       |
| BallotMeasureSelection | X         | X      | X       |
| BallotStyle            | X         | X      | X       |
| Candidate              | X         | X      | X       |
| CandidateContest       | X         | X      | X       |
| CandidateSelection     | X         | X      | X       |
| Coalition              |           |        |         |
| ContactInformation     |           |        |         |
| Contest                | X         | X      | X       |
| ContestSelection       | X         | X      | X       |
| Counts                 |           |        |         |
| CountStatus            |           |        |         |
| DateTimeWithZone       |           |        |         |
| DeviceClass            |           |        |         |
| Election               | X         | X      | X       |
| ElectionAdministration |           |        |         |
| ElectionReport         |           |        |         |
| ExternalIdentifier     | X         | X      | X       |
| GpUnit                 | X         | X      | X       |
| Header                 |           |        |         |
| Hours                  |           |        |         |
| HtmlColorString        |           |        |         |
| InternationalizedText  | X         | X      | X       |
| LanguageString         | X         | X      | X       |
| LatLng                 |           |        |         |
| Office                 |           |        |         |
| OfficeGroup            |           |        |         |
| OrderedContent         | X         | X      | X       |
| OrderedContest         | X         | X      | X       |
| OrderedHeader          |           |        |         |
| OtherCounts            |           |        |         |
| Party                  | X         | X      | X       |
| PartyContest           |           |        |         |
| PartyRegistration      |           |        |         |
| PartySelection         | X         |        |         |
| Person                 |           |        |         |
| ReportingDevice        |           |        |         |
| ReportingUnit          | X         | X      | X       |
| RetentionContest       |           |        |         |
| Schedule               |           |        |         |
| ShortString            |           |        |         |
| SpatialDimension       |           |        |         |
| SpatialExtent          |           |        |         |
| Term                   |           |        |         |
| TimeWithZone           |           |        |         |
| VoteCounts             |           |        |         |
| BallotDefinition       | X         | X      | X       |
| ControllingContest     | X         |        |         |
| StraightPartyContest   | X         |

### Cast Vote Records

| Factor                 | Synthetic |        |         |
|------------------------|-----------|--------|---------|
| Election               | GEN-01    | GEN-03 | PRIM-03 |
| Annotation             |           |        |         |
| BallotMeasureContest   | x         | x      | x       |
| BallotMeasureSelection | x         | x      | x       |
| Candidate              | x         | x      | x       |
| CandidateContest       | x         | x      | x       |
| CandidateSelection     | x         | x      | x       |
| CastVoteRecordReport   | x         | x      | x       |
| Code                   |           |        |         |
| Contest                | x         | x      | x       |
| ContestSelection       | x         | x      | x       |
| CVR                    | x         | x      | x       |
| CVRContest             | x         | x      | x       |
| CVRContestSelection    | x         | x      | x       |
| CVRSnapshot            | x         | x      | x       |
| CVRWriteIn             | x         | x      | x       |
| Election               | x         | x      | x       |
| File                   |           |        |         |
| FractionalNumber       |           |        |         |
| GpUnit                 | x         | x      | x       |
| Hash                   |           |        |         |
| Image                  |           |        |         |
| ImageData              |           |        |         |
| Party                  | x         | x      | x       |
| PartyContest           | x         |        |         |
| PartySelection         | x         |        |         |
| ReportingDevice        | x         | x      | x       |
| RetentionContest       |           |        |         |
| SelectionPosition      | x         | x      | x       |

### Election Results Reporting

| Factor                           | Synthetic |        |         |
|----------------------------------|-----------|--------|---------|
| Election                         | GEN-01    | GEN-03 | PRIM-03 |
| The AnnotatedString Class        |           |        |         |
| The AnnotatedUri Class           |           |        |         |
| The BallotCounts Class           |           |        |         |
| The BallotMeasureContest Class   | x         | x      | x       |
| The BallotMeasureSelection Class | x         | x      | x       |
| The BallotStyle Class            | x         | x      | x       |
| The Candidate Class              | x         | x      | x       |
| The CandidateContest Class       | x         | x      | x       |
| The CandidateSelection Class     | x         | x      | x       |
| The Coalition Class              |           |        |         |
| The ContactInformation Class     |           |        |         |
| The Contest Class                | x         | x      | x       |
| The ContestSelection Class       | x         | x      | x       |
| The Counts Class                 | x         | x      | x       |
| The CountStatus Class            |           |        |         |
| The DateTimeWithZone Class       |           |        |         |
| The DeviceClass Class            |           |        |         |
| The Election Class               | x         | x      | x       |
| The ElectionAdministration Class |           |        |         |
| The ElectionReport Class         | x         | x      | x       |
| The ExternalIdentifier Class     | x         | x      | x       |
| The GpUnit Class                 | x         | x      | x       |
| The Header Class                 |           |        |         |
| The Hours Class                  |           |        |         |
| The HtmlColorString Class        |           |        |         |
| The InternationalizedText Class  | x         | x      | x       |
| The LanguageString Class         | x         | x      | x       |
| The LatLng Class                 |           |        |         |
| The Office Class                 |           |        |         |
| The OfficeGroup Class            |           |        |         |
| The OrderedContent Class         | x         | x      | x       |
| The OrderedContest Class         | x         | x      | x       |
| The OrderedHeader Class          |           |        |         |
| The OtherCounts Class            | x         | x      | x       |
| The Party Class                  | x         | x      | x       |
| The PartyContest Class           | x         |        |         |
| The PartyRegistration Class      |           |        |         |
| The PartySelection Class         | x         |        |         |
| The Person Class                 |           |        |         |
| The ReportingDevice Class        |           |        |         |
| The ReportingUnit Class          | x         | x      | x       |
| The RetentionContest Class       |           |        |         |
| The Schedule Class               |           |        |         |
| The ShortString Class            |           |        |         |
| The SpatialDimension Class       |           |        |         |
| The SpatialExtent Class          |           |        |         |
| The Term Class                   |           |        |         |
| The TimeWithZone Class           |           |        |         |
| The VoteCounts Class             | x         | x      | x       |