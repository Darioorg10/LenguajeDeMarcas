<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="/">
<html>
<head>
    <title>Ejercicio 7</title>
    <style>
        table{border-collapse:collapse}
        table, td, th{border:1px solid black}
        .rojo{background-color:red}
        .azul{background-color:blue}
        .verde{background-color:green}
        img{height:100px}
    </style>
</head>
<body>    
    
    <h1>Productos de la tienda</h1>
    <table>
    <tr>
        <th>Codigo</th>
        <th>Artículo</th>
        <th>Cantidad</th>
        <th>Foto</th>
    </tr>
        <xsl:for-each select="tienda/producto">
        <xsl:sort select="articulo"/><!-- se podría poner un order:descending por ejemplo-->

        <xsl:choose>
            
            <xsl:when test="precio &lt; 100">
            <tr>
                <td class="verde"><xsl:value-of select="codigo"/></td>
                <td class="verde"><xsl:value-of select="articulo"/></td>
                <td class="verde"><xsl:value-of select="cantidad"/></td>
                <td class="verde"><img><xsl:attribute name="src"><xsl:value-of select="imagen"/></xsl:attribute></img></td>
            </tr>
            </xsl:when>
                                        
            <xsl:when test="precio &lt; 1000">
            <tr> 
                <td class="azul"><xsl:value-of select="codigo"/></td>
                <td class="azul"><xsl:value-of select="articulo"/></td>
                <td class="azul"><xsl:value-of select="cantidad"/></td>
                <td class="azul"><img><xsl:attribute name="src"><xsl:value-of select="imagen"/></xsl:attribute></img></td>
            </tr>
            </xsl:when>            

            <xsl:otherwise>
            <tr> 
                <td class="rojo"><xsl:value-of select="codigo"/></td>
                <td class="rojo"><xsl:value-of select="articulo"/></td>
                <td class="rojo"><xsl:value-of select="cantidad"/></td>
                <td class="rojo"><img><xsl:attribute name="src"><xsl:value-of select="imagen"/></xsl:attribute></img></td>
            </tr>
            </xsl:otherwise>    

        </xsl:choose>   
        

        </xsl:for-each>    
    
    </table>

</body>
</html>
</xsl:template>

</xsl:stylesheet>