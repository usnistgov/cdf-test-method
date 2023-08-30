# NIST Voting Common Data Format Test Method

The NIST Voting Common Data Format (CDF) Test Method (“Test Method”) is a machine executable method for testing NIST Voting (i.e. NIST SP 1500 series) CDFs. Its use is intended for voting system manufacturers, Voting System Test Labs (VSTLs), and other members of the election community that require a standardized method to determine election technology systems’ conformance to the CDFs.

The Test Method supports CDFs referenced by the Voluntary Voting System Guidelines, Version 2.0. It may possible to use this tool to test additional CDFs as well.

[Test data](#test-data) in many of the CDFs is also available.

To provide feedback, please open an issue on this repository.

## Downloading

Builds of the tool are available under the [releases](https://github.com/usnistgov/cdf-test-method/releases) section of this GitHub repository.

## Prerequisites

- Java Virtual Machine, either version 8.0 or 11 (and later)

The following system configurations have been tested:

- Windows 11 with OpenJDK 1.8.0_345 (64-bit)
- Debian Linux 11.6 with OpenJDK 11.0.16 (64-bit)

## Usage

See the [usage documentation](https://pages.nist.gov/cdf-test-method/USAGE.html) for more information.

## Limitations

Current Limitations (expected to be lifted in subsequent versions):

- Baseline semantic rulesets (Schematron) may be incomplete
- TM does not support external Schematron rulesets
- JSON Schema Validation of Voter Records Interchange (VRI) is not supported

> NB: Voter Records Interchange does not have any interoperability requirements in VVSG 2.0

## Test Data

Test Data for many of the NIST Voting Common Data Formats is also located in this repository, under [test_data](./test_data/) and included with each release. Please refer to the [README](./test_data/README.md) for more information.

## About this work

Principal investigators are Benjamin Long and Barbara Guttman of the Information Systems Group and Software Quality Group of NIST's Information Technology Lab (ITL), Software and Systems Division (SSD). They can be contacted via the [NIST Voting Team](mailto:voting@nist.gov) email address. More information on the NIST Voting Program can be found [here](https://www.nist.gov/itl/voting).

Example Citation: Citation - Dziurłaj, J., Marcotte, J., Guttman, B., and Long, B. (2023), Common Data Format Test Method, Version 1.0, National Institute of Standards and Technology, \[Software\], https://github.com/usnistgov/cdf-test-method/ (Accessed March 16, 2023)

## Licenses

The NIST Test Method license can be found [here](LICENSE.md). NIST Test Data license can be found [here](./test_data/LICENSE.md).

This tool uses several open source libraries including:

- MorganaXProc [GPLv3]
- Saxon-HE 11.5 [MPLv2]
- schxslt [MIT]
- Xerces 2.12.2 [Apache]

> NB: This list does not include dependencies of the libraries. E.g. MorganXProc includes several libraries, licensed separately.
