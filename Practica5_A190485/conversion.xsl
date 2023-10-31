<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head>
        <title>Libros</title>
        <style>
          body {
            font-family: Arial, sans-serif;
            margin: 20px;
          }
          h1 {
            color: #333;
          }
          div {
            background-color: #f7f7f7;
            border: 1px solid #ddd;
            margin: 10px;
            padding: 10px;
          }
          h2 {
            color: #333;
            font-size: 18px;
          }
          p {
            color: #666;
            font-size: 14px;
          }
        </style>
      </head>
      <body>
        <h1>Mis Libros</h1>
        <xsl:apply-templates select="document('C:\Users\PC\Desktop\6to\Practicas XML\Practica5_A190485\Practica5_A190485.xml" />
      </body>
    </html>
  </xsl:template>

  <xsl:template match="libro">
    <div>
      <h2><xsl:value-of select="titulo" /></h2>
      <p>Autor: <xsl:value-of select="autor" /></p>
    </div>
  </xsl:template>

</xsl:stylesheet>