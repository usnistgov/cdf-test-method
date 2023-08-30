# Usage of Test Method Tool

The tool is a command line interface (CLI) application, invoked using the command `testcdf`. It takes a Common Data Format (CDF) instance (i.e. a CDF file in JSON or XML) as an input, and produces a [report](REPORT.md) as its primary output. There are additional flags that may or must be provided depending on the test.

The general invocation of the test method is of the form:

`testcdf {pipeline to execute} [-silent] -input:source={path/uri to source document} [-output:report={path/uri to output report}] -option:schemaNS={namespace of CDF}`

The required command line arguments for a particular CDF and serialization are given below:

| CDF                           | Input Type | Pipeline              | Schema Namespace                          |
|-------------------------------|------------|-----------------------|-------------------------------------------|
| Ballot Definition v1          | JSON       | validate_json.xpl     | http://itl.nist.gov/ns/voting/1500-20/v1  |
| Ballot Definition v1          | XML        | validate_xml.xpl      | http://itl.nist.gov/ns/voting/1500-20/v1  |
| Cast Vote Records v1          | JSON       | validate_json.xpl     | http://itl.nist.gov/ns/voting/1500-103/v1 |
| Cast Vote Records v1          | XML        | validate_xml.xpl      | http://itl.nist.gov/ns/voting/1500-103/v1 |
| Election Results Reporting v2 | JSON       | validate_json.xpl     | http://itl.nist.gov/ns/voting/1500-100/v2 |
| Election Results Reporting v2 | XML        | validate_xml.xpl      | http://itl.nist.gov/ns/voting/1500-100/v2 |
| Election Event Logging v1     | JSON       | validate_eel_json.xpl | http://itl.nist.gov/ns/voting/1500-101/v1 |
| Election Event Logging v1     | XML        | validate_eel_xml.xpl  | http://itl.nist.gov/ns/voting/1500-101/v1 |
| Voter Records Interchange     | JSON       | validate_json.xpl     | http://itl.nist.gov/ns/voting/1500-102/v1 |
| Voter Records Interchange     | XML        | validate_xml.xpl      | http://itl.nist.gov/ns/voting/1500-102/v1 |

Pipelines are located under the `pipelines/` directory; they follow a standardized naming structure: `validate_[cdf_abbreviation_cdf_version]_{xml|json}.xpl`. All pipelines of this form can be directly invoked by the Test Method.

All pipelines take similar inputs, outputs and options.  

Ports:

Ports (where input or output may be placed) expect a path to a resource using OS-style path notation or a `uri`.

- `-input:source` -  file subject to validation.
- `-output:report` - consolidated XVRL report.
- `-output:xml` - (JSON only) XML version of `-input:source`.
- `-input:documentation` - (Election Event Logging Only) Documentation-EEL instance.

Options:

- `-option:reportType` - whether output report should be `XML` (default), or `HTML`.
- `-option:stopOnError` - whether execution should halt after any data errors are found (`true`), otherwise `false` (default). 
- `-option:conformance` - whether to run additional, internal checks. Required for *valid* results. Default: `conformance`, any other value runs in `non-conformance`.
- `-option:schemaNS` - namespace of the common data format schema. See above table.

Other flags:

- `-silent` suppresses messages on the standard output.

Notes:

- If a path for `-output:report` is not specified, then the report will be provided on the *standard output*.
- Any existing data that is the target of an output port (e.g. `-output:report`) will be overwritten with new content upon test method execution.
- It is important to pick the correct pipeline for the given input. The tool cannot automatically detect which validation pipeline to use, so be careful!

[^eel]: EEL require an additional parameter to be passed. See `-input:documentation` above.

## Modes

The Test Method can run in one of two modes, `conformance mode` and `non-conformance mode`. By default, the Test Method runs in conformance mode. Because non-conformance mode skips some internal checks, it may run somewhat faster, which may be useful for rapid testing by manufacturers during development.

### Input and Output

By default, both STDERR and STDOUT are placed on the terminal output.

**STDOUT** contains the following:

- NIST Test Method and MorganaXProc banner messages
- XVRL report or p:error

**STDERR** contains the following:

- Diagnostic Messages

If you wish to pipe the XVRL report to another program, e.g. for reporting, then use the `-silent` flag to suppress banners and other messages.

### Return codes

The test method cannot change the return code of the underlying XProc processor. A `0` return code should not be interpreted as successful run per se, but running according to expected parameters of the test method. A nonzero return code represents a underlying error in the processor and should be carefully analyzed. If it appears to be a bug, please open a GitHub issue.

## Handling Errors

As the TM is primarily a validation tool, it is important to distinguish between validation errors of files provided to the test method and runtime errors of the test method tool itself. The former will appear in an [XVRL Report](REPORT.md), the latter will appear using the [c:error vocabulary](https://spec.xproc.org/3.0/xproc/#cv.errors). In rare cases, the TM may terminate abnormally (i.e. with a non-zero return code).

The kinds of runtime errors that may occur are hard to predict but usually involve factors of the test method's execution environment. A runtime error might occur if the input provided was not in the correct format, the wrong pipeline was utilized for the given input, among others.

Example `c:error`:

```xml
<c:errors xmlns:c="http://www.w3.org/ns/xproc-step"><c:error code="err:XD0038" name="json-validation" type="p:validate-with-json-schema" href="file:///C:/xproc-test-method/BUILD/pipelines/validate_eel_json.xpl" line="12" column="98" xmlns:p="http://www.w3.org/ns/xproc" xmlns:err="http://www.w3.org/ns/xproc-error"><message>Document with mediatype 'application/octet-stream' is not accepted by port 'source'.</message></c:error></c:errors>
```

In this case, an error message given as XML is sent to the STDOUT. 
