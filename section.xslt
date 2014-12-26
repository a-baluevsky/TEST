<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
						    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
		<HTML><head><base target="frmContents" />		
		<LINK rel="stylesheet" type="text/css" href="section.css"/>
		<SCRIPT src="section.js"></SCRIPT>
		<title><xsl:value-of select="//section/header/caption"/> - Российская гимназия при ГРМ</title>
		</head>
      <BODY>
		<table id="tblView" class="tblView" align="center" cellpadding="0" cellspacing="0">
		  <tr bgcolor="#4080BF" id="dvLogo"> 
			<td height="120" colspan="3" align="center" valign="middle">
			<a href="http://gymgrm.ru" target="_parent">
			<img src="../style/top.png" width="600" height="120" border="0"></a> 
			</td>
		  </tr>
		<tr id="trHeader">
			<td class="tdHeaderVBorder">&nbsp;</td>
			<td class="tdHeaderContents" align="center" valign="middle"><div id="dvInfoBanner" align="center">
				<table class="tblHeaderInnerContents" cellpadding="4">
				</table> 
			</div></td>			
			<td class="tdHeaderVBorder">&nbsp;</td>
		</tr>	  
	  
        <ul>		
        <xsl:for-each select="//Outline/Node">
          <li class="expanded">
			 <hr/>
              <a class="Node" Id="Node">
                <xsl:attribute name="href">Hint:  <xsl:value-of select="@Text"/></xsl:attribute>
                <xsl:value-of select="@Text"/>
              </a>              
              <ul>
              <xsl:for-each select="Item">
                <li class="node">
                  <xsl:choose>
                    <xsl:when test="@Link">
                      <a class="Item" Id="Item">
                        <xsl:attribute name="href"><xsl:value-of select="@Link"/></xsl:attribute>
                        <xsl:value-of select="@Text"/></a>
                    </xsl:when>
                    <xsl:otherwise>
                      <xsl:value-of select="@Text"/>
                    </xsl:otherwise>                  
                  </xsl:choose>
                  </li>  
              </xsl:for-each>
              </ul> 
          </li>
        </xsl:for-each>
        </ul>
      </BODY>
    </HTML>
    </xsl:template>
</xsl:stylesheet>

  