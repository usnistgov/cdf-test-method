<xsl:package
  name="http://example.org/some-name"
  package-version="1.0"
  version="3.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:eel="http://itl.nist.gov/ns/voting/1500-101/v1"
  xmlns:sch="http://purl.oclc.org/dsdl/schematron" 
  xmlns:my="http://customfunction.com/"
  declared-modes="no">
  <xsl:output method="xml" />  
  <xsl:function name="my:enquote" as="xs:string*">      
    <xsl:param name="type" as="xs:string*"/>
    <xsl:for-each select="$type">      
       <xsl:value-of select="concat('''',current(),'''')"/>
    </xsl:for-each>
  </xsl:function>  
  <xsl:template match="eel:ElectionEventLogDocumentation">
    <xsl:variable name="enquotedIds" select="eel:EventIdDescription/eel:Id => my:enquote() => string-join(',')" />
    <xsl:variable name="enquotedTypes" select="eel:EventTypeDescription/eel:Type => my:enquote() => string-join(',')" />
    <sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
      xmlns:sqf="http://www.schematron-quickfix.com/validator/process" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">    
      <sch:ns uri="http://itl.nist.gov/ns/voting/1500-101/v1" prefix="eel"/>
      <sch:pattern>                        
        <sch:rule context="eel:Event"> 
          <sch:assert test="eel:Id=({$enquotedIds})">Id (<sch:value-of select="eel:Id"/>) is not defined</sch:assert>         
          <sch:assert test="eel:Type=({$enquotedTypes})">Type (<sch:value-of select="eel:Type"/>) is not defined</sch:assert>
        </sch:rule>
      </sch:pattern>
    </sch:schema>
    </xsl:template>
</xsl:package>