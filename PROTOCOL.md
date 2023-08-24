# Testing Protocol

The following test protocol is designed to support efficient testing of common data format interfaces required under VVSG 2.0. It allows CDF testing to be integrated with other functional testing by following the flow of such testing. This protocol will need to be adjusted to support the specific election programming, voting and tabulation processes of each particular voting system.

![testing protocol](./assets/protocol.svg)

## TC41-A-I1 - Load a NIST Ballot Definition successfully

Steps:

1. Execute test method on the NIST Ballot Definition. Verify results.
1. Import NIST Ballot Definition into Voting System EMS.
1. Generate reports or interrogate system to verify successful import

Expected result:

All data points are loaded in accordance with manufacturer's specification of common format usage.

## TC41-AE1 - Export Ballot Definition for Voting Device Programming

Preconditions: Programming of voting devices is completed.

Steps:

1. Export ballot definition from Voting System EMS.
1. Execute test method on the NIST Ballot Definition. Verify results.

Expected result:

Test method report shows no detections.

## TC41-C-E1 - Export CVR from Vote Capture Device

Preconditions: Some number of ballots have been cast using target Vote Capture Device.

Steps:

1. Export ballot definition from Voting System EMS.
1. Execute test method on the NIST Cast Vote Record. Verify results.

Expected result:

Test method report shows no detections.

## TC41-B-E1

Preconditions: Some number of ballots have been cast using target Vote Capture Device.

Applies to: Vote Capture Devices with tabulator function

Steps:

1. Export ballot definition from Voting System EMS.
1. Execute test method on the NIST Cast Vote Record. Verify results.

Expected result:

Test method report shows no detections.

## TC41-C-I1 (CVR Version)

Preconditions: CVR instances have been exported from vote capture devices

Steps: 

1. Import CVRs into Voting System EMS
1. Verify Import

Expected result:

Test method report shows no detections.


## TC41-C-I1 (ERR Version)

Preconditions: ERR instances have been exported from vote capture devices

Steps: 

1. Import ERRs into Voting System EMS
1. Verify Import

Expected result:

Test method report shows no detections.

## TC41-B-E2

Preconditions: All CVRs / Election Results have been loaded

1. Export ERRs from Voting System EMS
1. Verify report matches expected result
1. Execute test method. Verify result.

Expected result:

Test method report shows no detections.