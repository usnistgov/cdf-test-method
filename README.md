# NIST Voting Common Data Format Test Method

This repo demonstrates the implementation of a NIST Voting CDF Test Method using XProc 3.0.

This is a pre-release of the NIST Voting CDF Test Method and should only be used to evaluate the test method and provide feedback to NIST. It should not be used to determine conformance at this time. To provide feedback, please open an issue on this repository.

Current Limitations (expected to be lifted in subsequent versions):

- Baseline semantic rulesets (Schematron) may be incomplete
- TM does not support external Schematron rulesets
- JSON Schema Validation of Voter Records Interchange (VRI) is not supported
- JSON Schema Validation of certain Election Event Logs may fail
- There is a known issue with the JSON Schema Validator's handling of `format: time` for certain format models

> NB: Voter Records Interchange does not have any interoperability requirements in VVSG 2.0

## Downloading

Builds of the tool are available under the [releases](https://github.com/usnistgov/cdf-test-method/releases) section of this GitHub repository.

## Prerequisites

- Java Virtual Machine, either version 8.0 or 11 (and later)

The following system configurations have been tested:

- Windows 11 with OpenJDK 1.8.0_345 (64-bit)
- Debian Linux 11.6 with OpenJDK 11.0.16 (64-bit)

## Usage

See the [usage documentation](https://pages.nist.gov/cdf-test-method/USAGE.html) for more information.

## About this work

Principal investigators are Benjamin Long and Barbara Guttman of the Information Systems Group and Software Quality Group of NIST's Information Technology Lab (ITL), Software and Systems Division (SSD). They can be contacted via the [NIST Voting Team](mailto:voting@nist.gov) email address. More information on the NIST Voting Program can be found [here](https://www.nist.gov/itl/voting).

Example Citation: Citation - Dziurłaj, J., Marcotte, J., Guttman, B., and Long, B. (2023), Common Data Format Test Method, Version 1.0, National Institute of Standards and Technology, \[Software\], https://github.com/usnistgov/cdf-test-method/ (Accessed March 16, 2023)

## Licenses

The NIST Test Method license can be found [here](LICENSE.md).

This tool uses several open source libraries including:

- MorganaXProc [GPLv3]
- Saxon-HE 11.5 [MPLv2]
- schxslt [MIT]
- Xerces 2.12.2 [Apache]

> NB: This list does not include dependencies of the libraries. E.g. MorganXProc includes several libraries, licensed separately.
