<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">




<xsl:template match="/">
<html>
<head>
    <title>Ejercicio 1</title>
</head>
<body>    

    <h1>Ejercicio 1</h1>
    <xsl:for-each select="horario/dia">
    Día <xsl:value-of select="numdia"/>
        <xsl:for-each select="tarea">
            <ul>
                <li><b><xsl:value-of select="nombre"/></b> - Prioridad: <xsl:value-of select="@prioridad"/></li>
                De <xsl:value-of select="hora-ini"/> a <xsl:value-of select="hora-fin"/>
             </ul>         
        </xsl:for-each>
               
    </xsl:for-each>

</body>
</html>
</xsl:template>



</xsl:stylesheet>