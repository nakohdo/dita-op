<?xml version="1.0" encoding="UTF-8" ?>
<!--
    Copyright (C) 2008 Claude Vedovini <http://vedovini.net/>.
    
    This file is part of the DITA Open Platform <http://www.dita-op.org/>.
    
    The DITA Open Platform is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.
    
    The DITA Open Platform is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.
    
    You should have received a copy of the GNU General Public License
    along with The DITA Open Platform.  If not, see <http://www.gnu.org/licenses/>.
-->
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:saxon="http://icl.com/saxon"
                xmlns:xt="http://www.jclark.com/xt"
                extension-element-prefixes="saxon xt">

                
<!-- map2wppage.xsl   main stylesheet
     Merge topics from a DITA map to produce an HTML fragment suitable for inclusion in a Worpress Page.
     Input = one DITA map file
     Output = one HTML file to include in a Wordpress Page.

     Options:
        OUTEXT  = output extension (default is '.inc')
        WORKDIR = The working directory that contains the document being transformed.
                   Needed as a directory prefix for the @href "document()" function calls.
                   Default is './'
-->

<xsl:import href="dita2wpImpl.xsl"></xsl:import>
<xsl:import href="../../../xsl/xslhtml/taskdisplay.xsl"></xsl:import>
<xsl:import href="../../../xsl/xslhtml/refdisplay.xsl"></xsl:import>
<xsl:import href="../../../xsl/xslhtml/ut-d.xsl"></xsl:import>
<xsl:import href="../../../xsl/xslhtml/sw-d.xsl"></xsl:import>
<xsl:import href="../../../xsl/xslhtml/pr-d.xsl"></xsl:import>
<xsl:import href="../../../xsl/xslhtml/ui-d.xsl"></xsl:import>
<xsl:import href="../../../xsl/xslhtml/hi-d.xsl"></xsl:import>

<xsl:output method="html" encoding="UTF-8" indent="no" />

<!-- *************************** Command line parameters *********************** -->
<xsl:param name="OUTEXT" select="'.inc'"/><!-- "htm" and "html" are valid values -->
<!-- the path back to the project. Used for c.gif, delta.gif, css to allow user's to have
  these files in 1 location. -->
<xsl:param name="PATH2PROJ">
  <xsl:apply-templates select="/processing-instruction('path2project')" mode="get-path2project"/>
</xsl:param>

<!-- Define a newline character -->
<xsl:variable name="newline"><xsl:text>
</xsl:text></xsl:variable>

<xsl:template match="processing-instruction('path2project')" mode="get-path2project">
  <xsl:value-of select="."/>
</xsl:template>

<xsl:template match="/">
    <xsl:apply-templates/>
</xsl:template>

<xsl:template match="*[contains(@class, ' map/map ')]">
    <xsl:apply-templates/>
</xsl:template>

<xsl:template match="*[contains(@class, ' map/map ')]/*[contains(@class,' topic/title ')]">
    <title><xsl:value-of select="text()" /></title><xsl:value-of select="$newline" />
</xsl:template>

<xsl:template match="*[contains(@class, ' map/map ')]/@title">
    <title><xsl:value-of select="." /></title><xsl:value-of select="$newline" />
</xsl:template>

<xsl:template match="*[contains(@class, ' map/map ')]/*[contains(@class,' map/topicmeta ')]">
    <xsl:apply-templates mode="wpmeta"/>
</xsl:template>

<xsl:template match="category" mode="wpmeta">
    <category><xsl:value-of select="text()" /></category><xsl:value-of select="$newline" />
</xsl:template>

<!-- Ignore other meta info -->
<xsl:template match="*" mode="wpmeta" />

<!-- Ignore related links -->
<xsl:template match="*[contains(@class,' topic/related-links ')]" name="topic.related-links" />

</xsl:stylesheet>
