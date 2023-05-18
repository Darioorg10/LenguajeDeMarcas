<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="/">
    <html>
        <head>
            <title>Ejercicio 4</title>
        </head>
        <body>
            <h1>Ejercicio 4</h1>
            <ol>
                <xsl:for-each select="bib/libro">
                    <xsl:if test="precio &lt; 100"> <!-- Esto es lo mismo que poner un choose y un when pero sin otherwise, es decir, un if sin el else-->
                        <li>
                            <xsl:value-of select="titulo"/>
                        </li>
                    </xsl:if>                    
                </xsl:for-each>
            </ol>
        </body>
    </html>
</xsl:template>

</xsl:stylesheet>