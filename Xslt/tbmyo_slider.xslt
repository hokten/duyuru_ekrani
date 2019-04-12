<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE xsl:stylesheet [ <!ENTITY nbsp "&#x00A0;"> ]>
<xsl:stylesheet
  version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:msxml="urn:schemas-microsoft-com:xslt"
  xmlns:umbraco.library="urn:umbraco.library" xmlns:Exslt.ExsltCommon="urn:Exslt.ExsltCommon" xmlns:Exslt.ExsltDatesAndTimes="urn:Exslt.ExsltDatesAndTimes" xmlns:Exslt.ExsltMath="urn:Exslt.ExsltMath" xmlns:Exslt.ExsltRegularExpressions="urn:Exslt.ExsltRegularExpressions" xmlns:Exslt.ExsltStrings="urn:Exslt.ExsltStrings" xmlns:Exslt.ExsltSets="urn:Exslt.ExsltSets"
  exclude-result-prefixes="msxml umbraco.library Exslt.ExsltCommon Exslt.ExsltDatesAndTimes Exslt.ExsltMath Exslt.ExsltRegularExpressions Exslt.ExsltStrings Exslt.ExsltSets ">

<xsl:output method="xml" omit-xml-declaration="yes" />

<xsl:param name="currentPage"/>

<!-- Don't change this, but add a 'contentPicker' element to -->
<!-- your macro with an alias named 'source' -->
<xsl:variable name="source" select="/macro/source"/>
   

<xsl:template match="/">


  <xsl:variable name="elma" select="0"/>
 
 
 
 
<xsl:for-each select="umbraco.library:GetXmlNodeById($source)/* [@isDoc]">
   
  <li data-transition="slideleft" data-slotamount="1" data-masterspeed="0" data-delay="9900" >
                                  <img>
      <xsl:attribute name="src">
        <xsl:value-of select="imageFile"/>
      </xsl:attribute>
    </img>
  
	  
	  <div class="caption lfb stl"
      data-x="right"
       data-y="250"
     data-speed="300"
      data-start="500"
      data-easing="easeOutExpo" data-end="8800" data-endspeed="300" data-endeasing="easeInSine" >
	  
	  
   
	 </div>
                                </li>
  
   
      
          
      
  
  
    
  </xsl:for-each>
  
     
 
</xsl:template>
  
  </xsl:stylesheet>