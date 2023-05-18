<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
    <html>
        <head>
            <title>Ejercicio 6</title>
            <style>
                table, th, td{border:1px solid black}
                table{border-collapse:collapse}
                .rojo{background-color:red}
                .verde{background-color:green}
            </style>
        </head>
        <body>
            <h1>Productos de la tienda</h1>
            <table>
                <tr>
                    <th>Código</th>
                    <th>Artículo</th>
                    <th>Cantidad</th>
                </tr>
                <xsl:for-each select="tienda/producto">
                <xsl:sort select="articulo"/>
                <xsl:choose>
                    <xsl:when test="precio &lt; 100">
                        <tr class="rojo">
                        <td>
                            <xsl:value-of select="codigo"/>
                        </td>
                        <td>
                            <xsl:value-of select="articulo"/>
                        </td>
                        <td>
                            <xsl:value-of select="cantidad"/>
                        </td>                        
                        </tr>
                    </xsl:when>
                    <xsl:when test="precio &lt; 1000">
                        <tr class="verde">
                        <td>
                            <xsl:value-of select="codigo"/>
                        </td>
                        <td>
                            <xsl:value-of select="articulo"/>
                        </td>
                        <td>
                            <xsl:value-of select="cantidad"/>
                        </td>                        
                        </tr>
                    </xsl:when>
                    <xsl:otherwise>
                        <tr>
                        <td>
                            <xsl:value-of select="codigo"/>
                        </td>
                        <td>
                            <xsl:value-of select="articulo"/>
                        </td>
                        <td>
                            <xsl:value-of select="cantidad"/>
                        </td>                        
                        </tr>
                    </xsl:otherwise>                
                </xsl:choose>                                                                 
                </xsl:for-each>                        
            </table>            
        </body>        
    </html>
    </xsl:template>

</xsl:stylesheet>