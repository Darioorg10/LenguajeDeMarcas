<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
        <html>
            <head>                
                <title>Ejercicio 6</title>
            </head>
            <body>                
                
                <h1><xsl:value-of select="ies/@nombre"/></h1>
                <p>Página web: 
                    <a title="Enlace a la web">
                        <xsl:attribute name="href">
                            <xsl:value-of select="ies/@web"/>
                        </xsl:attribute>
                    <xsl:value-of select="ies/@nombre"/>    
                    </a>                
                </p>                
                <ul>
                    <xsl:apply-templates/>
                </ul>                                            
                
            </body>
        </html>
    </xsl:template>
    

    <xsl:template match="ciclo">
        <p><xsl:value-of select="nombre"/></p>
    </xsl:template>


</xsl:stylesheet>