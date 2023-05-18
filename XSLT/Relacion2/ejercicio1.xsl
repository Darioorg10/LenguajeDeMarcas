<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<!-- Los ifs aquí se hacen con choose, when y otherwise-->
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
                    <tr> <!-- Creamos una tabla que antes de añadir nada tenga una fila con 3 columnas, el título, los autores y los editores-->
                        <th>Título del libro</th> <!-- Este tipo de título aparece en negrita-->
                        <th>Autores</th>
                        <th>Editores/Afiliaciones</th>
                    </tr>
                    <xsl:for-each select="bib/libro"> <!-- Esto significa que para cada uno de los libros haga lo siguiente-->
                    <xsl:sort select="titulo" order="descending"/> <!-- Nos ordena los títulos de forma descendiente-->
                        <tr> <!-- Por cada libro creamos una fila -->
                            <td> <!-- Una columna será el título -->
                                <xsl:choose>
                                    <xsl:when test="precio > 100"> <!-- if -->
                                        <span class="rojo"><xsl:value-of select="titulo"/> (Caro)</span> <!-- Por cada libro creamos una columna que contenga esto (el título) -->
                                    </xsl:when>
                                    <xsl:otherwise> <!-- else -->
                                        <xsl:value-of select="titulo"/>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </td>                                                                                         
                            <td> <!-- Esta columna serán los autores -->
                                <xsl:for-each select="autor"> <!-- Por cada autor que nos ponga sus nombre y apellidos separados por un espacio (la entidad &#160;) -->
                                    <xsl:value-of select="nombre"/>&#160;<xsl:value-of select="apellido"/><br/>
                                </xsl:for-each>                                
                            </td> 
                            <td> <!-- Esta columna serán los editores-->
                                <xsl:for-each select="editor">
                                    <xsl:value-of select="nombre"/>&#160;<xsl:value-of select="apellido"/> / <xsl:value-of select="afiliacion"/>
                                </xsl:for-each>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    
    
    </xsl:template>


</xsl:stylesheet>