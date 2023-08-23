---
layout: default
title: NIST Voting Common Data Format Test Method
---

# Reporting

Reporting is provided in a standardized format called [XVRL](https://github.com/xproc/xvrl). This report contains validation events called *detections* that occur during one or more validation steps. Steps causing detections include include:

- JSON Schema Validation
- Schematron Validation
- XML Schema Validation

The validations steps invoked depends on the serialization of the CDF instance (e.g. XML), the common data format, and if any business (i.e. Schematron) rulesets have been optionally provided.

Detections are categorized by severity, given below:

- `info`
- `warning`
- `error`
- `fatal-error`
- `unspecified`

By analyzing the detections appearing in a report output, decisions regarding conformance can be made. 

The XVRL output is presented as a "report of reports". The XVRL provides metadata about the test run. Particularly useful metadata is highlighted below:

| Metadata                      | Description                                                                        |
|-------------------------------|------------------------------------------------------------------------------------|
| creator/@name                 | Name of the tool that created the report, i.e. NIST Common Data Format Test Method |
| creator/@version              | Version of the tool                                                                |
| timestamp                     | Time of test method invocation                                                     |
| xvrl:supplemental/@tm:runcode | A unique code corresponding to the run                                             |
| xvrl:supplemental/validity    | Whether the test report is *valid* or *invalid*.                                   |
| xvrl:supplemental/validity-reason | Reason for the validity result                                                 |

An example metadata section is given below

```xml
<xvrl:metadata xmlns:tm="http://itl.nist.gov/ns/voting/test-method" xmlns:xvrl="http://www.xproc.org/ns/xvrl">
	<xvrl:creator name="NIST Common Data Format Test Method" version="1.0"/>
	<xvrl:timestamp>2023-01-12T12:47:39.26-05:00</xvrl:timestamp>	
	<xvrl:summary>File is valid/invalid (we can mix content here)</xvrl:summary>
	<xvrl:supplemental tm:xproc-engine-version="1.0.5" tm:psvi-supported="false" tm:xproc-engine-vendor="&lt;xml-project /&gt; Achim Berndzen" tm:xproc-engine-name="MorganaXProc-IIIse">
		<tm:runcode>Episode-1673545656175</tm:runcode>
	</xvrl:supplemental>	
</xvrl:metadata>
```

Each report section corresponds to a different validation step in the run. The digest gives the total number of detections by severity. It has its own metadata section as well, key attributes are described in the table below:

| Metadata        | Description                               |
|-----------------|-------------------------------------------|
| timestamp       | Time of the phase's run                   |
| document/@href  | The file that was placed under validation |
| schema/@href    | The schema that was validated against     |
| validator/@name | Name of the library performing validation |

validator/@name correspond roughly to the following phases of validation:

| Validator Name                                     | Of          |
|----------------------------------------------------|-------------|
| networknt/json-schema-validator                    | JSON Schema |
| org.apache.xerces.jaxp.validation.XMLSchemaFactory | XSD         |
| SchXslt                                            | Schematron  |

```xml
<report xmlns="http://www.xproc.org/ns/xvrl">
	<metadata>
		<timestamp>2023-01-12T12:47:36.47-05:00</timestamp>
		<document href="file:///C:/eel_v1/eel_sample.json"/>
		<schema href="http://itl.nist.gov/ns/voting/1500-101/v1#json" schematypens="JsonSchema"/>
		<validator name="networknt/json-schema-validator"/>
	</metadata>
	<digest/>
</report>
```

## Reading report sections

Each `report` section relates to a single invocation of a validator. 

### Detections

| Element            | Description                                          |
|--------------------|------------------------------------------------------|
| @severity          | Severity of detection.                               |
| location/@xpath    | XPath to location of detection                       |
| location/@jsonpath | JSONPath to location of detection                    |
| message            | Message related to detection (e.g. an error message) |

### JSON Detections

JSON detections include a location (given by a `@jsonpath`), a `message` and a `code` (codes are given [here](https://github.com/networknt/json-schema-validator/blob/0d1d8f27d44294bf5e265b688e83880602ff815f/src/main/java/com/networknt/schema/ValidatorTypeCode.java)).

```xml
<detection severity="error" code="1034">
	<location jsonpath="$.Device[0].Event[0].TimeStamp"/>
	<message>$.Device[0].Event[0].TimeStamp: a2001-12-17T09:30:47Z is an invalid date-time</message>
</detection>
```

### XML and Schematron Detections

XML and Schematron detections include a location (given by a `@xpath`), and a `message`.

```xml
<detection severity="error">
	<location line="1" path="/Q{http://itl.nist.gov/ns/voting/1500-101/v1}ElectionEventLog[1]/Q{http://itl.nist.gov/ns/voting/1500-101/v1}Device[1]/Q{http://itl.nist.gov/ns/voting/1500-101/v1}Event[1]/Q{http://itl.nist.gov/ns/voting/1500-101/v1}TimeStamp[1]/text()[1]"/>
	<message>cvc-datatype-valid.1.2.1: 'a2001-12-17T09:30:47Z' is not a valid value for 'dateTime'.</message>
</detection>
```

NB: The XPaths include fully qualified names for tags belonging to a particular namespace.

XPath and related line numbers are always in terms of XML, even if the original input is JSON. As a convenience, the XML that was converted from JSON is available as an output on the port `xml` (see [USAGE](./USAGE.md)).
