# Use of `xsi:schemaLocation`

Use of `Q{http://www.w3.org/2001/XMLSchema-instance}schemaLocation` should not appear in any file under test. The XML Validator (Xerces) will use the location given by this attribute to resolve the schema to validate, which may cause invalid test results. 

