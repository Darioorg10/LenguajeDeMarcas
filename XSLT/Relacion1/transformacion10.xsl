<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="/">
    <html>
        <head>
            <title>Transformacion 9</title>
            <style>
                .rojo{color:red}
                .amarillo{color:yellow}
                .verde{color:green}
            </style>
        </head>
        <body>
            <xsl:for-each select="ies/ciclos/ciclo">
            <xsl:sort select="nombre" order="descending"/>
                <xsl:choose>
                    <xsl:when test="decretoTitulo/@año = 2008">
                        <p class="rojo"><xsl:value-of select="nombre"/> -<xsl:text>  </xsl:text>Hola</p>
                    </xsl:when>
                    <xsl:when test="decretoTitulo/@año = 2009">
                        <p class="amarillo"><xsl:value-of select="nombre"/> -<xsl:text> </xsl:text>Hola</p>
                    </xsl:when>        
                <xsl:otherwise>
                    <p class="verde">
                        <xsl:value-of select="nombre"/> - <xsl:text> </xsl:text>Hola
                    </p>
                </xsl:otherwise>
                </xsl:choose>
            </xsl:for-each>
            
        </body>
    </html>
</xsl:template>

</xsl:stylesheet>