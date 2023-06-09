# NIST Voting Common Data Format Test Data - Test Data Sets

The directory for each test election is structured in the following manner.

- `bd_v1` - JSON and XML files in the Ballot Definition v1 specification
- `cvr_v1` - JSON and XML files in the Cast Vote Records v1 specification
  - Some elections may have an additional `raw` prefixed CVR; this CVR contains a CVRs before Straight Party contest rules have been applied.
- `err_v2` - JSON and XML files in the Election Results Reporting v2 specification
  - `pe` prefixed ERR files are for pre-election use-case and do not contain counts

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
| BallotDefinition       | X         | X      | X       |
| BallotMeasureContest   | X         | X      | X       |
| BallotMeasureOption    | X         | X      | X       |
| BallotStyle            | X         | X      | X       |
| Candidate              | X         | X      | X       |
| CandidateContest       | X         | X      | X       |
| CandidateOption        | X         | X      | X       |
| Coalition              |           |        |         |
| ContactInformation     |           |        |         |
| Contest                | X         | X      | X       |
| ContestOption          | X         | X      | X       |
| ControllingContest     | X         |        |         |
| Counts                 |           |        |         |
| CountStatus            |           |        |         |
| DateTimeWithZone       |           |        |         |
| DeviceClass            |           |        |         |
| Election               | X         | X      | X       |
| ElectionAdministration |           |        |         |
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
| PartyOption            | X         |        |         |
| Person                 |           |        |         |
| ReportingDevice        |           |        |         |
| ReportingUnit          | X         | X      | X       |
| RetentionContest       |           |        |         |
| Schedule               |           |        |         |
| ShortString            |           |        |         |
| SpatialDimension       |           |        |         |
| SpatialExtent          |           |        |         |
| StraightPartyContest   | X         |
| Term                   |           |        |         |
| TimeWithZone           |           |        |         |
| VoteCounts             |           |        |         |

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

| Factor                 | Synthetic |        |         |
|------------------------|-----------|--------|---------|
| Election               | GEN-01    | GEN-03 | PRIM-03 |
| AnnotatedString        |           |        |         |
| AnnotatedUri           |           |        |         |
| BallotCounts           |           |        |         |
| BallotMeasureContest   | x         | x      | x       |
| BallotMeasureSelection | x         | x      | x       |
| BallotStyle            | x         | x      | x       |
| Candidate              | x         | x      | x       |
| CandidateContest       | x         | x      | x       |
| CandidateSelection     | x         | x      | x       |
| Coalition              |           |        |         |
| ContactInformation     |           |        |         |
| Contest                | x         | x      | x       |
| ContestSelection       | x         | x      | x       |
| Counts                 | x         | x      | x       |
| CountStatus            |           |        |         |
| DateTimeWithZone       |           |        |         |
| DeviceClass            |           |        |         |
| Election               | x         | x      | x       |
| ElectionAdministration |           |        |         |
| ElectionReport         | x         | x      | x       |
| ExternalIdentifier     | x         | x      | x       |
| GpUnit                 | x         | x      | x       |
| Header                 |           |        |         |
| Hours                  |           |        |         |
| HtmlColorString        |           |        |         |
| InternationalizedText  | x         | x      | x       |
| LanguageString         | x         | x      | x       |
| LatLng                 |           |        |         |
| Office                 |           |        |         |
| OfficeGroup            |           |        |         |
| OrderedContent         | x         | x      | x       |
| OrderedContest         | x         | x      | x       |
| OrderedHeader          |           |        |         |
| OtherCounts            | x         | x      | x       |
| Party                  | x         | x      | x       |
| PartyContest           | x         |        |         |
| PartyRegistration      |           |        |         |
| PartySelection         | x         |        |         |
| Person                 |           |        |         |
| ReportingDevice        |           |        |         |
| ReportingUnit          | x         | x      | x       |
| RetentionContest       |           |        |         |
| Schedule               |           |        |         |
| ShortString            |           |        |         |
| SpatialDimension       |           |        |         |
| SpatialExtent          |           |        |         |
| Term                   |           |        |         |
| TimeWithZone           |           |        |         |
| VoteCounts             | x         | x      | x       |