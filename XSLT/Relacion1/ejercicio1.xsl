<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
        <html>
            <head>
                <title>Ejercicio 1</title>
            </head>
            <body>
                <p><xsl:apply-templates/></p>
            </body>
        </html>
    </xsl:template>




    <xsl:template match="ciclo">
        <xsl:value-of select="nombre"/>
    </xsl:template>


</xsl:stylesheet>