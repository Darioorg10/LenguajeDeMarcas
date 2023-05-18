<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="/">
    <html>
        <head>
            <title>Ejercicio 2</title>
            <style>
                table, th, td{border:1px solid black}
                table{border-collapse:collapse}
                .fondo_rojo{background-color:red}
            </style>
        </head>
        <body>
            <table>
                <tr>
                    <th>Precio</th>
                    <th>Título</th>
                    <th>Año publicación</th>
                </tr>
                <xsl:for-each select="bib/libro">
                <xsl:sort select="precio"/>
                    <tr>
                        <td>
                            <xsl:value-of select="precio"/>
                        </td>
                        <xsl:choose select="titulo">
                            <xsl:when test="precio > 100">
                                <td class="fondo_rojo">
                                    <xsl:value-of select="titulo"/>
                                </td>
                            </xsl:when>
                            <xsl:otherwise>
                                <td>
                                    <xsl:value-of select="titulo"/>
                                </td>
                            </xsl:otherwise>                            
                        </xsl:choose>                        
                        <td>
                            <em><xsl:value-of select="@año"/></em>
                        </td>
                    </tr>
                </xsl:for-each>
            </table>
        </body>
    </html>
</xsl:template>

</xsl:stylesheet>