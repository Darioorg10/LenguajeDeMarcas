<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">




<xsl:template match="/">
<html>
<head>
    <title>Ejercicio 5</title>
    <style>
        table{border-collapse:collapse}
        table, td, th{border:1px solid black}
    </style>
</head>
<body>    
    
    <h1>Productos de la tienda</h1>
    <table>
    <tr>
        <th>Codigo</th>
        <th>Artículo</th>
        <th>Cantidad</th>
    </tr>
        <xsl:for-each select="tienda/producto">
        <tr>
            <td><xsl:value-of select="codigo"/></td>
            <td><xsl:value-of select="articulo"/></td>
            <td><xsl:value-of select="cantidad"/></td>
        </tr>
            
        
        </xsl:for-each>    
    
    </table>

</body>
</html>
</xsl:template>



</xsl:stylesheet>