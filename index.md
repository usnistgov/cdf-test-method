---
layout: default
title: NIST Voting Common Data Format Test Method
---

# NIST Common Data Format Test Method

The NIST Voting Common Data Format (CDF) Test Method ("Test Method") is a machine executable method for testing [NIST Voting](https://www.nist.gov/itl/voting) (i.e. NIST SP 1500 series) CDFs. Its use is intended for voting system manufacturers, [Voting System Test Labs (VSTLs)](https://www.eac.gov/voting-equipment/voting-system-test-laboratories-vstl), and other members of the election community that require a standardized method to determine election technology systems' conformance to the CDFs.

The Test Method supports CDFs referenced by the Voluntary Voting System Guidelines, Version 2.0. It may possible to use this tool to test additional CDFs as well.

## Releases

Prepackaged releases are [available on GitHub](https://github.com/usnistgov/cdf-test-method/releases) and contain all required supporting files. Consult the release notes for any changes between versions.

## Prerequisites

- Java Virtual Machine, either version 8.0 or 11 (and later)

The following system configurations have been tested:

- Windows 11 with OpenJDK 17.0.6 (64-bit)
- Windows 11 with OpenJDK 1.8.0_382 (64-bit)
- Debian Linux 11.6 with OpenJDK 11.0.16 (64-bit)

## Memory Use

The amount of memory required to run this tool is proportional to the size of the input. The ratio ranges from 10:1 to 50:1 (e.g. 10 bytes of memory is required to process 1 byte of input). Running the tool with inadequate amount of memory for the input provided may lead to system stability issues, and may jeopardize accurate test results.

## Getting Started

See [usage instructions](USAGE.md) to get started.

Page was last updated on {{ site.time | date: "%B %-d %Y" }}