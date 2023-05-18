<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="/">
        <html>
            <head>
                <title>Ejercicio 6</title>
                <style>
                    table, th, td{border:1px solid black}
                    table{border-collapse:collapse}
                    .rojo{color:red}
                    .verde{color:green}
                </style>
            </head>
            <body>
                <h1>Tabla con los datos de los CDs</h1>
                <table>
                    <tr>
                        <th>Título</th>
                        <th>Precio</th>
                        <th>Año</th>
                    </tr>
                    <xsl:for-each select="catalogo/cds/cd">
                        <tr>
                            <td>
                                <xsl:choose>
                                    <xsl:when test="año &lt; 2000">
                                        <span class="rojo"></span>
                                        <xsl:value-of select="titulo"/>
                                    </xsl:when>
                                    <xsl:when test="año > 2000">
                                        <span class="verde"/>
                                        <xsl:value-of select="titulo"/>
                                    </xsl:when>
                                </xsl:choose>                                
                            </td>
                            <td>
                                <xsl:value-of select="precio"/>
                            </td>
                            <td>
                                <xsl:value-of select="año"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>                
        </html>
    </xsl:template>
</xsl:stylesheet>