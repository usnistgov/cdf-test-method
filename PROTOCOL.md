---
layout: default
title: NIST Voting Common Data Format Test Method
---

# Testing Protocol

The following test protocol is designed to support efficient testing of common data format interfaces required under VVSG 2.0. The protocol supports CDF testing to be integrated with other, functional testing by following the flow of such testing. This protocol is a reference, it will need to be adjusted to support the specific election programming, voting and tabulation processes of each voting system.

![testing protocol](./assets/protocol.svg)

## TC41-A-I1 - Load election programming data successfully

Steps:

1. Choose either (1) a NIST Ballot Definition or (2) NIST Election Results Reporting CDF 2.0 file conforming to the pre-election use-case.
1. Execute test method on the file. Verify results.
1. Import file into Voting System EMS.
1. Generate reports or otherwise interrogate system to verify a successful import.

Expected result:

All data points are loaded in accordance with manufacturer's specification of common format usage (4.1-F).

## TC41-AE1 - Export Ballot Definition for voting device programming

NB: Use of the NIST Ballot Definition CDF is not currently required in VVSG 2.0.

Preconditions: Programming of voting devices is completed.

Steps:

1. Export NIST Ballot Definition from Voting System EMS.
1. Execute test method on the NIST Ballot Definition. Verify results.

Expected result:

Test method report shows no detections.

## TC41-C-E1 - Export CVRs from vote capture device

Preconditions: Some number of ballots have been cast using target vote-capture device.

Steps:

1. Export NIST Cast Vote Record from vote-capture device.
1. Execute test method on the NIST Cast Vote Record. Verify results.

NB: If the vote-capture device produces separate files for subsets of cast votes, then the test method will need to be executed multiple times.

Expected result:

Test method report shows no detections.

## TC41-B-E1 - Export election results from vote-capture device (tabulator)

Preconditions: Some number of ballots have been cast using target vote-capture device.

Applies to: vote-capture devices with tabulator function

Steps:

1. Export NIST Election Results Reporting 2.0 from vote-capture device.
1. Execute test method on the NIST Cast Vote Record. Verify results.

Expected result:

Test method report shows no detections.

## TC41-C-I1 - Import cast vote records from vote-capture devices

Preconditions: CVR instances have been exported from vote-capture devices

Steps: 

1. Import CVRs into Voting System EMS
1. Verify Import

Expected result:

Test method report shows no detections.

## TC41-B-E2 - Export tabulator report data from EMS

Preconditions: All CVRs / Election Results have been loaded

1. Export ERR from Voting System EMS
1. Verify report matches expected result
1. Execute test method. Verify result.

Expected result:

Test method report shows no detections.