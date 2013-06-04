<?xml version="1.0" encoding="UTF-8"?>
<!--
	@author Paul van der Meijs <code@paulvandermeijs.nl>
	@copyright Copyright (c) 2013, Paul van der Meijs
	@version 1.0
	@name Single column
 -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:import href="index.xsl" />

	<xsl:output 
		method="html" 
		encoding="utf-8" 
		indent="no" 
		omit-xml-declaration="yes"  />


	<!-- Body columns > removed side column -->

	<xsl:template name="_body_columns">
		<xsl:call-template name="main">
			<xsl:with-param name="width">one-whole</xsl:with-param>
		</xsl:call-template>
	</xsl:template>


</xsl:stylesheet>