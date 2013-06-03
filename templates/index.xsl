<?xml version="1.0" encoding="UTF-8"?>
<!--
	@author Paul van der Meijs <code@paulvandermeijs.nl>
	@copyright Copyright (c) 2012, Paul van der Meijs
	@version 1.0
 -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:import href="../../lowtone-libre/templates/index.xsl" />

	<xsl:output 
		method="html" 
		encoding="utf-8" 
		indent="no" 
		omit-xml-declaration="yes"  />


	<!-- Header > Added a logo div and sidebar -->

	<xsl:template name="header">
		<header id="header">
			<div class="container clearfix">
				<div class="one-half column">
					<h1 id="logo"><a href="./"><img src="{info/stylesheet_directory}/images/logo.png" alt="{info/name}" /></a></h1>
				</div>
				<xsl:apply-templates select="sidebars/sidebar[@id='sidebar-6']">
					<xsl:with-param name="width">one-half</xsl:with-param>
				</xsl:apply-templates>
			</div>
		</header>
	</xsl:template>

</xsl:stylesheet>