<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
    <html>
        <head>
            <title>Transformación 4</title>
        </head>
        <body>
            <h1>Títulos (fecha publicación) - autores (Fecha Nacimiento)</h1>
            <xsl:apply-templates/>
        </body>
    </html>
    </xsl:template>

    <xsl:template match="libro">
        <p>
            <xsl:value-of select="titulo"/>
            (<xsl:value-of select="fechaPublicacion/@año"/>) <!-- Ponemos el @ para el atributo -->             
            -
            <xsl:value-of select="autor"/>
            (<xsl:value-of select="autor/@fechaNacimiento"/>)
        </p>
    </xsl:template>

</xsl:stylesheet>