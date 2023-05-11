<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
        <html>
            <head>
                <title>Ejercicio1</title>
            </head>
            <style>
                table,th, td{border:1px solid black}
                table{border-collapse:collapse; text-align:center}
                .rojo{color:red}
            </style>
            <body>
                <table>
                    <tr>
                        <th>Título del libro</th>
                        <th>Autores</th>
                        <th>Editores</th>
                    </tr>
                    <xsl:for-each select="bib/libro">
                        <tr>
                            <xsl:choose>
                                <xsl:when test="precio &gt; 100">
                                    <td class="rojo">
                                        <xsl:value-of select="titulo"/> (Caro)
                                    </td>
                                </xsl:when>
                                <xsl:otherwise>
                                    <td>
                                        <xsl:value-of select="titulo"/>
                                    </td>
                                </xsl:otherwise>
                            </xsl:choose>                            
                            <td>
                                <xsl:for-each select="autor">
                                    <xsl:value-of select="nombre"/><xsl:text> </xsl:text>
                                    <xsl:value-of select="apellido"/><xsl:text> </xsl:text>
                                    <xsl:value-of select="afiliacion"/>
                                    <br/>
                                </xsl:for-each>
                            </td>
                            <td>
                                <xsl:for-each select="editor">
                                    <xsl:value-of select="nombre"/><xsl:text> </xsl:text>
                                    <xsl:value-of select="apellido"/><xsl:text> </xsl:text>
                                    <xsl:value-of select="afiliacion"/>
                                    <br/>
                                </xsl:for-each>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    
    
    </xsl:template>


</xsl:stylesheet>