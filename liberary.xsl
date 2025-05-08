<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/"> 
<html>
<head> 
<title>liberay</title>
<style>
        table {
            border-collapse: collapse;
            width: 80%;
            margin: 20px auto;
          }
          th, td {
            border: 2px solid yellow;
            padding: 8px;
            text-align: center;
          }
          th {
            background-color: #f2f2f2;
            text-align:center;
          }
          h1{
            text-align:center;
            text-decoration:underline;
          }
          *{
            text-align:center;
          }
        </style>
 </head>
 <body>
    <h1 >liberary Catalog</h1>
    <table> 
    <tr>
    <th>Title</th>
    <th>Author</th>
    <th>Genre</th>
    <th>Price</th>
    <th>Publish-date</th>
    </tr>
    <xsl:for-each select="catalog/book">
            <tr>
              <td><xsl:value-of select="title"/></td>
              <td><xsl:value-of select="author"/></td>
              <td><xsl:value-of select="genre"/></td>
              <td><xsl:value-of select="price"/></td>
              <td><xsl:value-of select="publish-date"/></td>
            </tr>
          </xsl:for-each>
          
    </table>
    
 </body>
</html>




</xsl:template> 
</xsl:stylesheet>
