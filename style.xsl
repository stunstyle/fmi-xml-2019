<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
	<html>
		<head>
			<title>Game Catalogue</title>
			<link rel="stylesheet" type="text/css" href="./style.css" />
			
		</head>
		<body>
			<h1>My Videogames</h1>
			<div>
				<xsl:for-each select="GameCatalogue/Game">
				<xsl:sort select="Price" data-type="number"/>
					<h4 class="gameTitle">Name: <xsl:value-of select="Name"/></h4>
					<img alt="" src="{unparsed-entity-uri(CoverImageLink/@src)}"/>	
					<p>Available on <xsl:for-each select="Platform"><xsl:value-of select="text()"/><xsl:if test="position() != last()">
      <xsl:text>, </xsl:text>
   </xsl:if></xsl:for-each></p> <!--TODO: FIX-->
					<p>Publisher: <xsl:value-of select="@publisher"/></p>
					<p>Information: <xsl:value-of select="Information"/></p>
					<p>Genre: <xsl:value-of select="Genre"/></p>
					<p>Released: <xsl:value-of select="ReleaseDate"/></p>
					<p>Price: <xsl:value-of select="Price"/></p>
				</xsl:for-each>
				
			</div>
		</body>
	</html>
</xsl:template>
</xsl:stylesheet>