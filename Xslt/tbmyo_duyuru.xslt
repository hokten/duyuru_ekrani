<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE xsl:stylesheet [ <!ENTITY nbsp "&#x00A0;"> ]>
<xsl:stylesheet
  version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:msxml="urn:schemas-microsoft-com:xslt"
  xmlns:umbraco.library="urn:umbraco.library" xmlns:Exslt.ExsltCommon="urn:Exslt.ExsltCommon" xmlns:Exslt.ExsltDatesAndTimes="urn:Exslt.ExsltDatesAndTimes" xmlns:Exslt.ExsltMath="urn:Exslt.ExsltMath" xmlns:Exslt.ExsltRegularExpressions="urn:Exslt.ExsltRegularExpressions" xmlns:Exslt.ExsltStrings="urn:Exslt.ExsltStrings" xmlns:Exslt.ExsltSets="urn:Exslt.ExsltSets"
  exclude-result-prefixes="msxml umbraco.library Exslt.ExsltCommon Exslt.ExsltDatesAndTimes Exslt.ExsltMath Exslt.ExsltRegularExpressions Exslt.ExsltStrings Exslt.ExsltSets ">


<xsl:output method="xml" omit-xml-declaration="yes"/>

<xsl:param name="currentPage"/>
<xsl:variable name="source" select="/macro/source"/>

<xsl:template match="/">

<!-- The fun starts here -->
<xsl:for-each select="umbraco.library:GetXmlNodeById($source)/* [@isDoc and string(umbracoNaviHide) != '1']">
  <xsl:sort select="umbraco.library:FormatDateTime(objectDate, 'yyyyMMdd')" order="descending"/>
    <li>
  
 <table width="1900" border="1" >
  <tr>
	  <td colspan="2" align="center" bgcolor="#d7e4bc"><xsl:value-of select="../@nodeName"/></td>
  </tr>
  <tr>
    <td width="300" bgcolor="#c5d9f1"> <span class="label">Dersin Kodu</span></td>
    <td width="1020" bgcolor="#fcd5b4"><span class="value"><xsl:value-of select="dersinKodu"/></span></td>
  </tr>
  <tr>
    <td width="300" bgcolor="#c5d9f1"><span class="label">Dersin Adı</span></td>
	  <td width="1020" bgcolor="#fcd5b4"><span class="value"><xsl:value-of select="dersinadi"/></span></td>
  </tr>
  <tr>
    <td width="300" bgcolor="#c5d9f1"><span class="label">Sınav Salonu</span></td>
    <td width="1020" bgcolor="#fcd5b4"> <span class="value"><xsl:value-of select="sinavsalonu"/></span></td>
  </tr>
  <tr>
    <td width="300" bgcolor="#c5d9f1"><span class="label">Sınav Saati</span></td>
    <td width="1020" bgcolor="#fcd5b4"><span class="value"><xsl:value-of select="sinavsaati"/></span></td>
  </tr>
  <tr>
    <td width="300" bgcolor="#c5d9f1"><span class="label">Öğr. Elemanı</span></td>
    <td width="1020" bgcolor="#fcd5b4"><span class="value"><xsl:value-of select="ogretimelemani"/></span></td>
  </tr>
</table>
  
  
  
  
  
  
  
  
  </li>
  </xsl:for-each>


</xsl:template>

</xsl:stylesheet>