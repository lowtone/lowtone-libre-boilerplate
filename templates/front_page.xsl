<?xml version="1.0" encoding="UTF-8"?>
<!--
	@author Paul van der Meijs <code@paulvandermeijs.nl>
	@copyright Copyright (c) 2013, Paul van der Meijs
	@version 1.0
 -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:import href="index.xsl" />

	<xsl:output 
		method="html" 
		encoding="utf-8" 
		indent="no" 
		omit-xml-declaration="yes"  />


	<!-- Body > Added front page sidebar -->

	<xsl:template name="body">
		<div id="body">
			<div class="container clearfix">
				<xsl:apply-templates select="sidebars/sidebar[@id='front_page']">
					<xsl:with-param name="width">one-whole</xsl:with-param>
				</xsl:apply-templates>
				<xsl:call-template name="main" />
				<xsl:call-template name="side" />
			</div>
		</div>
	</xsl:template>


</xsl:stylesheet>