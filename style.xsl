<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
	<html>
		<head>
			<title>Game Catalogue</title>
			<link rel="stylesheet" type="text/css" href="./style.css" />
			<script
  src="https://code.jquery.com/jquery-2.2.1.js"
  integrity="sha256-eNcUzO3jsv0XlJLveFEkbB8bA7/CroNpNVk3XpmnwHc="
  crossorigin="anonymous"></script>
			<script src="sort.js"></script>
		</head>
		<body>
			<h1>My Videogames</h1>
			<button id="alphBntASC">Sort by name ASC</button>
			<button id="numBntASC">Sort by year ASC</button>
			<button id="alphBntDESC">Sort by name DESC</button>
			<button id="numBntDESC">Sort by year DESC</button> <br/>
			<div id="outer">			
				<xsl:for-each select="GameCatalogue/Game">
				<div class="main">
					<h2><xsl:value-of select="Name"/></h2>
					<img alt="" src="{unparsed-entity-uri(CoverImageLink/@src)}"/>	
					<p>Available on <xsl:for-each select="Platform"><xsl:value-of select="text()"/><xsl:if test="position() != last()">
					  <xsl:text>, </xsl:text>
						   </xsl:if></xsl:for-each></p>
					<p>Publisher: <xsl:value-of select="@publisher"/></p>
					<p>Information: <xsl:value-of select="Information"/></p>
					<p>Genre: <xsl:for-each select="Genre"><xsl:value-of select="text()"/><xsl:if test="position() != last()">
					  <xsl:text>, </xsl:text>
						   </xsl:if></xsl:for-each></p>
					<p>Released: <span class="year"><xsl:value-of select="ReleaseDate"/></span></p>
					<p>Price: <xsl:value-of select="Price"/></p>
					<p><a href="{./BuyLink}" alt="Buy Now">Buy Now</a></p>
				</div>
				</xsl:for-each>
				
			</div>
		</body>
	</html>
</xsl:template>
</xsl:stylesheet>