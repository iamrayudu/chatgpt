<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:preserve-space elements="*"/>

<xsl:template match="/">
	<xsl:apply-templates/>
</xsl:template>

<xsl:template match="DIFFERENTIEL">

<h1><center><font face="Arial, Helvetica, sans-serif" size="4">
Lot n° <xsl:value-of select="LOT/@numero_lot"/> à <xsl:value-of select="LOT/@site"/> <xsl:value-of select="LOT/@etat"/> <xsl:if test="LOT/@date_transmission"> le <xsl:value-of select="LOT/@date_transmission"/></xsl:if>
</font></center></h1>

<hr size="1" color="#E3E3E3"/>
<h2><font face="Arial, Helvetica, sans-serif" size="3"><u><b>Lot d'application / Application batch</b></u></font></h2>
<table width="100%" border="0">
	<tr>
		<td bgcolor="#E3E3E3"><font face="Arial, Helvetica, sans-serif" size='2pt'><b>Identifiant lot / Batch identification</b></font></td>
		<td><font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:value-of select="LOT/@numero_lot"/></font></td>
		<td bgcolor='#E3E3E3'><font face='Arial, Helvetica, sans-serif' size='2pt'><b>Documentateur / Scheduler</b></font></td>
		<td><font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:value-of select="LOT/@nom_utilisateur"/></font></td>
	</tr>
	<tr>
		<td bgcolor='#E3E3E3'><font face='Arial, Helvetica, sans-serif' size='2pt'><b>Etat / State</b></font></td>
		<td><font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:value-of select="LOT/@etat"/></font></td>
		<td bgcolor='#E3E3E3'><font face='Arial, Helvetica, sans-serif' size='2pt'><b>Code TGP / TGP code</b></font></td>
		<td><font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:value-of select="LOT/@code_tgp"/></font></td>
	</tr>
	<tr>
		<td bgcolor='#E3E3E3'><font face='Arial, Helvetica, sans-serif' size='2pt'><b>Site / Plant</b></font></td>
		<td><font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:value-of select="LOT/@site"/></font></td>
		<td bgcolor='#E3E3E3'><font face='Arial, Helvetica, sans-serif' size='2pt'><b>Service gestionnaire / Management service</b></font></td>
		<td><font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:value-of select="LOT/@service"/></font></td>
	</tr>
	<tr>
		<td bgcolor='#E3E3E3'><font face='Arial, Helvetica, sans-serif' size='2pt'><b>Désignation / Part name</b></font></td>
		<td><font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:value-of select="LOT/@designation"/></font></td>
		<td bgcolor='#E3E3E3'><font face='Arial, Helvetica, sans-serif' size='2pt'><b>Date de création / Creation date</b></font></td>
		<td><font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:value-of select="LOT/@date_creation"/></font></td>
	</tr>
	<tr>
		<td bgcolor='#E3E3E3'><font face='Arial, Helvetica, sans-serif' size='2pt'><b>Date de transmission / Transmission date</b></font></td>
		<td><font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:value-of select="LOT/@date_transmission"/></font></td>
		<td bgcolor='#E3E3E3'><font face='Arial, Helvetica, sans-serif' size='2pt'><b>Origine / Origin</b></font></td>
		<td><font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:value-of select="LOT/@origine"/></font></td>
	</tr>
	<tr>
		<td bgcolor='#E3E3E3'><font face='Arial, Helvetica, sans-serif' size='2pt'><b>Dossier d'évolution / Engineering change notice (ECN)</b></font></td>
		<td><font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:value-of select="LOT/@numero_doe"/> <xsl:value-of select="LOT/@nature_doe"/></font></td>
		<td bgcolor='#E3E3E3'><font face='Arial, Helvetica, sans-serif' size='2pt'><b>Date d'officialisation / Officialization date</b></font></td>
		<td><font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:value-of select="LOT/@date_officialisation_doe"/></font></td>
	</tr>
	<tr>
		<td bgcolor='#E3E3E3'><font face='Arial, Helvetica, sans-serif' size='2pt'><b>Suivi ordonnanceur / Scheduler tracking</b></font></td>
		<td><font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:value-of select="LOT/@code_ordonnancement"/></font></td>
		<td><font face='Arial, Helvetica, sans-serif' size='2pt'>&#160;</font></td>
		<td><font face='Arial, Helvetica, sans-serif' size='1pt'>&#160;</font></td>
	</tr>
	<tr>
		<td bgcolor='#E3E3E3'><font face='Arial, Helvetica, sans-serif' size='2pt'><b>Date fin de documentation / Information end date</b></font></td>
		<td><font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:value-of select="LOT/@date_constitution"/></font></td>
		<td><font face='Arial, Helvetica, sans-serif' size='2pt'>&#160;</font></td>
		<td><font face='Arial, Helvetica, sans-serif' size='1pt'>&#160;</font></td>
	</tr>
</table>

<hr SIZE="1" color='#E3E3E3'/>
<h2><font face='Arial, Helvetica, sans-serif' size="3"><u><b>Conditions d'application du lot / Batch application terms</b></u></font></h2>
<table width="100%" border="0">
	<tr>
		<td bgcolor='#E3E3E3'><font face='Arial, Helvetica, sans-serif' size='3pt'><b>Date d'application prévue / Expected application date</b></font></td>
		<td><font face='Arial, Helvetica, sans-serif' size='2pt'><b><xsl:value-of select="LOT/@date_prevue_application"/></b></font></td>
		<td bgcolor='#E3E3E3'><font face='Arial, Helvetica, sans-serif' size='2pt'><b>Type d'application / Application type</b></font></td>
		<td><font face='Arial, Helvetica, sans-serif' size='2pt'><xsl:value-of select="LOT/@type_lot"/></font></td>
	</tr>
	<tr>
		<td bgcolor='#E3E3E3'><font face='Arial, Helvetica, sans-serif' size='3pt'><b>Date d'application réelle / Real application date</b></font></td>
		<td><font face='Arial, Helvetica, sans-serif' size='2pt'><b><xsl:value-of select="LOT/@date_reelle_application"/></b></font></td>
		<td bgcolor='#E3E3E3'><font face='Arial, Helvetica, sans-serif' size='2pt'><b>Nature d'application / Nature of the application</b></font></td>
		<td><font face='Arial, Helvetica, sans-serif' size='2pt'><xsl:value-of select="LOT/@nature_lot"/></font></td>
	</tr>
	<tr>
		<td bgcolor='#E3E3E3'><font face='Arial, Helvetica, sans-serif' size='3pt'><b>Millésime d'application / Model year applicated</b></font></td>
		<td><font face='Arial, Helvetica, sans-serif' size='2pt'><b><xsl:value-of select="LOT/@millesime_application"/></b></font></td>
		<td bgcolor='#E3E3E3'><font face='Arial, Helvetica, sans-serif' size='2pt'><b>Millésime de spécification / Model year specificated</b></font></td>
		<td><font face='Arial, Helvetica, sans-serif' size='2pt'><xsl:value-of select="LOT/@millesime_specification"/></font></td>
	</tr>
	<tr>
		<td><font face='Arial, Helvetica, sans-serif' size='2pt'>&#160;</font></td>
		<td><font face='Arial, Helvetica, sans-serif' size='1pt'>&#160;</font></td>
		<td bgcolor='#E3E3E3'><font face='Arial, Helvetica, sans-serif' size='2pt'><b>Code Suivi / Tracking code</b></font></td>
		<td><font face='Arial, Helvetica, sans-serif' size='2pt'><xsl:value-of select="LOT/@code_suivi"/></font></td>
	</tr>
</table>
<hr SIZE="1" color='#E3E3E3'/>
<xsl:if test="FAMILLES/FAMILLE/@code_famille">
<h2><font face='Arial, Helvetica, sans-serif' size='3pt'><u><b>Familles du lot d'application</b></u></font></h2>
<table width="100%" border="0">
	<tr>
		<td bgcolor='#E3E3E3'><font face='Arial, Helvetica, sans-serif' size='2pt'><b>Code / Code</b></font></td>
		<td bgcolor='#E3E3E3'><font face='Arial, Helvetica, sans-serif' size='2pt'><b>Désignation / Part name</b></font></td>
		<td bgcolor='#E3E3E3'><font face='Arial, Helvetica, sans-serif' size='2pt'><b>Type / Type</b></font></td>
		<td bgcolor='#E3E3E3'><font face='Arial, Helvetica, sans-serif' size='2pt'><b>Site / Pilote plant</b></font></td>
	</tr>

	<xsl:for-each select="FAMILLES/FAMILLE">
	<tr>
			<td><font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:value-of select="@code_famille"/></font></td>
			<td><font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:value-of select="@designation"/></font></td>
			<td><font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:value-of select="@type_famille"/></font></td>
			<td><font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:value-of select="@site"/></font></td>
	</tr>
	</xsl:for-each>

</table>
<hr SIZE="1" color='#E3E3E3'/>
</xsl:if>
<xsl:if test="LIAISONS/LIAISON/@numero_lot">
<h2><font face='Arial, Helvetica, sans-serif' size='3pt'><u><b>Lots d'application liés / Application batch connected</b></u></font></h2>
<table width="100%" border="0">
	<tr>
		<td bgcolor='#E3E3E3'><font face='Arial, Helvetica, sans-serif' size='2pt'><b>Lot lié / Associated batch</b></font></td>
		<td bgcolor='#E3E3E3'><font face='Arial, Helvetica, sans-serif' size='2pt'><b>Site / Plant</b></font></td>
		<td bgcolor='#E3E3E3'><font face='Arial, Helvetica, sans-serif' size='2pt'><b>Nature du lien / Nature type</b></font></td>
		<td bgcolor='#E3E3E3'><font face='Arial, Helvetica, sans-serif' size='2pt'><b>Date du lien / Link creation date</b></font></td>
		<td bgcolor='#E3E3E3'><font face='Arial, Helvetica, sans-serif' size='2pt'><b>Type de lien / Link type</b></font></td>
	</tr>

	<xsl:for-each select="LIAISONS/LIAISON">
	<tr>
			<td><font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:value-of select="@numero_lot"/></font></td>
			<td><font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:value-of select="@site"/></font></td>
			<td><font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:value-of select="@nature_lien"/></font></td>
			<td><font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:value-of select="@date_lien"/></font></td>
			<td><font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:value-of select="@type_lien"/></font></td>
	</tr>
	</xsl:for-each>

</table>
<hr SIZE="1" color='#E3E3E3'/>
</xsl:if>
<xsl:if test="LUPS/LUP/@numero_lup">
<h2><font face='Arial, Helvetica, sans-serif' size='3pt'><u><b>Liste des LUP associées au dossier d'évolution / List of the LUP associated to ECN</b></u></font></h2>
<table width="100%" border="0">
	<tr>
		<td bgcolor='#E3E3E3'><font face='Arial, Helvetica, sans-serif' size='2pt'><b>N° de LUP / LUP N°</b></font></td>
		<td bgcolor='#E3E3E3'><font face='Arial, Helvetica, sans-serif' size='2pt'><b>Cas Application / Application case</b></font></td>
		<td bgcolor='#E3E3E3'><font face='Arial, Helvetica, sans-serif' size='2pt'><b>Désignation / Part name</b></font></td>
		<td bgcolor='#E3E3E3'><font face='Arial, Helvetica, sans-serif' size='2pt'><b>Origin du problème / Problem origin</b></font></td>
	</tr>

	<xsl:for-each select="LUPS/LUP">
	<tr>
			<td><font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:value-of select="@numero_lup"/></font></td>
			<td><font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:value-of select="@cas_application"/></font></td>
			<td nowrap=""><font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:value-of select="@designation"/></font></td>
			<td><font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:value-of select="@origine"/></font></td>
	</tr>
	</xsl:for-each>

</table>
<hr SIZE="1" color='#E3E3E3'/>
</xsl:if>
<xsl:if test="GRAPHIQUEUR/@graphiqueur_impacte">
<h2><font face='Arial, Helvetica, sans-serif' size='3pt'><u><b>Approvisionneurs impactés / Impacted purchaser</b></u></font></h2>
<table border="0">
	<tr>
	<xsl:for-each select="GRAPHIQUEUR">
			<td><font face='Arial, Helvetica, sans-serif' size='1pt'>&#160;&#160;<xsl:value-of select="@graphiqueur_impacte"/>&#160;&#160;</font></td>
<xsl:text>GRAPHIQUEUR_BREAK_COUNT</xsl:text>
	</xsl:for-each>
	</tr>
</table>

</br>
</br>
</xsl:if>
<xsl:if test="CDF_IMPACTE/@centre_frais_impacte">
<h2><font face='Arial, Helvetica, sans-serif' size='3pt'><u><b>Centres de frais impactés / Impacted cost center</b></u></font></h2>
<table border="0">
	<tr>
	<xsl:for-each select="CDF_IMPACTE">
			<td><font face='Arial, Helvetica, sans-serif' size='1pt'>&#160;&#160;<xsl:value-of select="@centre_frais_impacte"/>&#160;&#160;</font></td>
<xsl:text>CDF_IMPACTE_BREAK_COUNT</xsl:text>
	</xsl:for-each>
	</tr>
</table>
</br>
</br>
</xsl:if>
<xsl:if test="PIECE_COMPO_IMPACTEE/@piece_impactee">
<h2><font face='Arial, Helvetica, sans-serif' size='3pt'><u><b>Pièces composées impactées / Composed parts impacted</b></u></font></h2>
<table border="0">
	<tr>
	<xsl:for-each select="PIECE_COMPO_IMPACTEE">
			<td nowrap=""><font face='Arial, Helvetica, sans-serif' size='1pt'>&#160;&#160;<xsl:value-of select="@piece_impactee"/></font></td>
			<td nowrap=""><font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:value-of select="@designation_abrege"/>&#160;&#160;</font></td>
<xsl:text>PIECE_COMPO_IMPACTEE_BREAK_COUNT</xsl:text>
	</xsl:for-each>
	</tr>
</table>
</br>
</br>
</xsl:if>
<xsl:if test="PIECE_SITE_ARRETEE/@piece_site">
<h2><font face='Arial, Helvetica, sans-serif' size='3pt'><u><b>Pièces site gérées à la quantité d'arrêt / Parts managed by abolish quantity</b></u></font></h2>
<table width="100%" border="0">
	<tr>
		<td bgcolor='#E3E3E3'><font face='Arial, Helvetica, sans-serif' size='2pt'><b>N° de pièce / Part N°</b></font></td>
		<td bgcolor='#E3E3E3'><font face='Arial, Helvetica, sans-serif' size='2pt'><b>Désignation / Part name</b></font></td>
		<td bgcolor='#E3E3E3'><font face='Arial, Helvetica, sans-serif' size='2pt'><b>Unité comptage / Counting unit</b></font></td>
		<td bgcolor='#E3E3E3'><font face='Arial, Helvetica, sans-serif' size='2pt'><b>T. Prod. / Prod. Typ.</b></font></td>
		<td bgcolor='#E3E3E3'><font face='Arial, Helvetica, sans-serif' size='2pt'><b>C. Appro. / Purchaser code</b></font></td>
		<td bgcolor='#E3E3E3'><font face='Arial, Helvetica, sans-serif' size='2pt'><b>RSE / RSE</b></font></td>
	</tr>

	<xsl:for-each select="PIECE_SITE_ARRETEE">
	<tr>
			<td><font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:value-of select="@piece_site"/></font></td>
			<td><font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:value-of select="@designation"/></font></td>
			<td><font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:value-of select="@unite_comptage"/></font></td>
			<td><font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:value-of select="@type_produit"/></font></td>
			<td><font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:value-of select="@code_graphiqueur"/></font></td>
			<td><font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:value-of select="@rse"/></font></td>
	</tr>
	</xsl:for-each>

</table>

</br>
</br>
</xsl:if>
<xsl:if test="PERI_FONC_IMPACTE/@code_famille">
<h2><font face='Arial, Helvetica, sans-serif' size='3pt'><u><b>Périmètre Fonctionnel impacté / Impacted functional scope</b></u></font></h2>
<table border="0">
	<tr>
	<xsl:for-each select="PERI_FONC_IMPACTE">
			<td align="right" nowrap=""><font face='Arial, Helvetica, sans-serif' size='1pt'>&#160;&#160;<xsl:value-of select="@code_famille"/></font></td>
			<td nowrap=""><font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:value-of select="@fonction_famille"/></font></td>
			<td nowrap=""><font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:value-of select="@designation"/>&#160;&#160;&#160;</font></td>
<xsl:text>PERI_FONC_IMPACTE_BREAK_COUNT</xsl:text>
	</xsl:for-each>
	</tr>

</table>

</br>
</br>
</xsl:if>
<xsl:if test="PIECES_CREEES/SECTION/LIBELLE/@piece">
<h2><font face='Arial, Helvetica, sans-serif' size='3pt'><u><b>Pièces créées / Created parts</b></u></font></h2>
<table border="0">
	<tr>
	<xsl:for-each select="PIECES_CREEES/SECTION/LIBELLE">
			<td align="right" nowrap=""><font face='Arial, Helvetica, sans-serif' size='1pt'>&#160;&#160;<xsl:value-of select="@piece"/></font></td>
			<td nowrap=""><font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:value-of select="@designation_abrege"/>&#160;&#160;&#160;</font></td>
<xsl:text>PIECES_CREEES_BREAK_COUNT</xsl:text>
	</xsl:for-each>
	</tr>

</table>

</br>
</br>
</xsl:if>
<xsl:if test="PIECES_MODIFIEES/SECTION/LIBELLE/@piece">
<h2><font face='Arial, Helvetica, sans-serif' size='3pt'><u><b>Pièces modifiées / Parts modified</b></u></font></h2>
<table border="0">
	<tr>
	<xsl:for-each select="PIECES_MODIFIEES/SECTION/LIBELLE">
			<td align="right" nowrap=""><font face='Arial, Helvetica, sans-serif' size='1pt'>&#160;&#160;<xsl:value-of select="@piece"/></font></td>
			<td nowrap=""><font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:value-of select="@designation_abrege"/>&#160;&#160;&#160;</font></td>
<xsl:text>PIECES_MODIFIEES_BREAK_COUNT</xsl:text>
	</xsl:for-each>
	</tr>

</table>

</br>
</br>
</xsl:if>
<xsl:if test="PIECE_VARIATION_CADENCE/SECTION/SUPPRESSION/PIECE_SUPP/@num_piece">
<h2><font face='Arial, Helvetica, sans-serif' size='3pt'><u><b>Pièces supprimées / Abolish parts</b></u></font></h2>
<table border="0">
	<tr>
	<xsl:for-each select="PIECE_VARIATION_CADENCE/SECTION/SUPPRESSION/PIECE_SUPP">
			<td align="right" nowrap=""><font face='Arial, Helvetica, sans-serif' size='1pt'>&#160;&#160;<xsl:value-of select="@num_piece"/></font></td>
			<td nowrap=""><font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:value-of select="@dsg_piece"/>&#160;&#160;&#160;</font></td>
<xsl:text>PIECE_VARIATION_CADENCE_BREAK_COUNT</xsl:text>
	</xsl:for-each>
	</tr>

</table>

</br>
</br>
</xsl:if>
<xsl:if test="PIECE_VARIATION_CADENCE/SECTION/*/PIECE_VDC/@num_piece">
<h2><font face='Arial, Helvetica, sans-serif' size='3pt'><u><b>Pièces en variation de cadence / Using variantion part</b></u></font></h2>
<table border="0">
	<tr>
	<xsl:for-each select="PIECE_VARIATION_CADENCE/SECTION/*/PIECE_VDC">
	<xsl:if test="@*">
			<td align="right" nowrap=""><font face='Arial, Helvetica, sans-serif' size='1pt'>&#160;&#160;<xsl:value-of select="@num_piece"/></font></td>
			<td nowrap=""><font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:value-of select="@dsg_piece"/>&#160;&#160;&#160;</font></td>
	</xsl:if>
	<xsl:text>PIECE_VARIATION_CADENCE_BREAK_COUNT</xsl:text>
	</xsl:for-each>
	</tr>

</table>

</br>
</br>
</xsl:if>
<xsl:if test="PIECE_VARIATION_CENTRE_FRAIS/SECTION/*/PIECE_VDC/@num_piece">
<h2><font face='Arial, Helvetica, sans-serif' size='3pt'><u><b>Pièces en variation de centre de frais / Cost center variation part</b></u></font></h2>
<table border="0">
	<tr>
	<xsl:for-each select="PIECE_VARIATION_CENTRE_FRAIS/SECTION/*/PIECE_VDC">
	<xsl:if test="@*">
			<td align="right" nowrap=""><font face='Arial, Helvetica, sans-serif' size='1pt'>&#160;&#160;<xsl:value-of select="@num_piece"/></font></td>
			<td nowrap=""><font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:value-of select="@dsg_piece"/>&#160;&#160;&#160;</font></td>
	</xsl:if>
	<xsl:text>PIECE_VARIATION_CENTRE_FRAIS_BREAK_COUNT</xsl:text>
	</xsl:for-each>
	</tr>

</table>

</br>
</br>
</xsl:if>
<xsl:if test="PIECE_VARIATION_COMPO_FAB/SECTION/*/PIECE_COMPO/@num_piece">
<h2><font face='Arial, Helvetica, sans-serif' size='3pt'><u><b>Pièces en variation de composition fabrication / Assembly structure variation part</b></u></font></h2>
<table border="0">
	<tr>
	<xsl:for-each select="PIECE_VARIATION_COMPO_FAB/SECTION/*/PIECE_COMPO">
	<xsl:if test="@*">
			<td align="right" nowrap=""><font face='Arial, Helvetica, sans-serif' size='1pt'>&#160;&#160;<xsl:value-of select="@num_piece"/></font></td>
			<td nowrap=""><font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:value-of select="@dsg_piece"/>&#160;&#160;&#160;</font></td>
	</xsl:if>
	<xsl:text>PIECE_VARIATION_COMPO_FAB_BREAK_COUNT</xsl:text>
	</xsl:for-each>
	</tr>

</table>

</br>
</br>
</xsl:if>
<xsl:if test="TEXTE">
<hr style="page-break-after:always"/>
<h2><font face='Arial, Helvetica, sans-serif' size='3pt'><u><b>Texte libre / Available text</b></u></font></h2>
<table>
<tr>
<td>
	<pre><xsl:value-of select="TEXTE"/></pre>
</td>
</tr>
</table>
</xsl:if>
<xsl:if test="PIECES_CREEES/SECTION/LIBELLE/@piece">
<hr style="page-break-after:always"/>
<table width="100%" border="0">
	<tr bgcolor='#E3E3E3'>
		<td><h2><font face='Arial, Helvetica, sans-serif' size='3pt'><b>PIÈCES CRÉÉES: / CREATED PARTS:</b></font></h2></td>
	</tr>
	<tr><td>&#160;</td></tr>

		<xsl:apply-templates select="PIECES_CREEES"/>

</table>
</xsl:if>
<xsl:if test="PIECES_MODIFIEES/SECTION/LIBELLE/@piece">
<hr style="page-break-after:always"/>
<table width="100%" border="0">
	<tr bgcolor='#E3E3E3'>
		<td width="77%"><h2><font face='Arial, Helvetica, sans-serif' size='3pt'><b>PIÈCES MODIFIÉES: / PARTS MODIFIED:</b></font></h2></td>
	</tr>
</table>
<table width="100%" border="0">

		<xsl:apply-templates select="PIECES_MODIFIEES"/>

</table>
</xsl:if>
<xsl:if test="PIECE_VARIATION_CADENCE/SECTION/*/@piece">
<hr style="page-break-after:always"/>
<table width="100%" border="0">
	<tr bgcolor='#E3E3E3'>
		<td><h2><font face='Arial, Helvetica, sans-serif' size='3pt'><b>PIÈCES EN VARIATION DE CADENCE: / USING VARIANTION PART:</b></font></h2></td>
	</tr>
</table>
<table width="100%" border="0">

		<xsl:apply-templates select="PIECE_VARIATION_CADENCE"/>

</table>
</xsl:if>
<xsl:if test="PIECE_VARIATION_CENTRE_FRAIS/SECTION/*/@piece">
<hr style="page-break-after:always"/>
<table width="100%" border="0">
	<tr bgcolor='#E3E3E3'>
		<td width="77%"><h2><font face='Arial, Helvetica, sans-serif' size='3pt'><b>PIÈCES EN VARIATION DE CENTRE DE FRAIS: / COST CENTER VARIATION PART:</b></font></h2></td>
	</tr>
</table>
<table width="100%" border="0">

		<xsl:apply-templates select="PIECE_VARIATION_CENTRE_FRAIS"/>

</table>
</xsl:if>
<xsl:if test="PIECE_VARIATION_COMPO_FAB/SECTION/*/@piece">
<hr style="page-break-after:always"/>
<table width="100%" border="0">
	<tr bgcolor='#E3E3E3'>
		<td width="77%"><h2><font face='Arial, Helvetica, sans-serif' size='3pt'><b>PIÈCES EN VARIATION DE COMPOSITION FABRICATION: / ASSEMBLY STRUCTURE VARIATION PART:</b></font></h2></td>
	</tr>
</table>
<table width="100%" border="0">

		<xsl:apply-templates select="PIECE_VARIATION_COMPO_FAB"/>

</table>
</xsl:if>
<tr>
<td><center><font face="Arial, Helvetica, sans-serif" size="4">
<b>Fin du Lot n° <xsl:value-of select="LOT/@numero_lot"/></b>
</font></center></td>
</tr>
</xsl:template>

		<xsl:template match="PIECES_MODIFIEES">

					<xsl:if test="SECTION/LIBELLE/@*">
					<tr>
						<td width="50%">
						</br>
						<font face='Arial, Helvetica, sans-serif' size='3pt'><b>Départ: / Start:</b></font>
						</td>
						<xsl:if test="SECTION/LIBELLE/AVANT/@*">
						<td width="50%">
						</br>
							<font face='Arial, Helvetica, sans-serif' size='3pt'><b>Arrêt: / Abolition:</b></font>
						</td>
						</xsl:if>
					</tr>
					</xsl:if>

					<xsl:for-each select="SECTION">
					<xsl:if test="LIBELLE">
					<xsl:for-each select="LIBELLE">
					<tr>
						<td nowrap="" width="50%">
							<font face='Arial, Helvetica, sans-serif' size='2pt'><b>Pièce Indice: / Part index:</b></font>
							<font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:value-of select="@piece"/><xsl:value-of select="@indice"/> <xsl:if test="@item">[Item: <xsl:value-of select="@item"/>]</xsl:if> <xsl:if test="@designation_abrege">[Dés. abrégée:/ Abbreviated: <xsl:value-of select="@designation_abrege"/>]</xsl:if> <xsl:if test="@designation">[Désignation:/ Name: <xsl:value-of select="@designation"/>]</xsl:if> <xsl:if test="@unite_comptage">[Unité comptage:/ Counting unit: <xsl:value-of select="@unite_comptage"/>]</xsl:if></br> <xsl:if test="@type_produit">[T. Prod.: / Prod. Typ.:<xsl:value-of select="@type_produit"/>]</xsl:if> <xsl:if test="@code_graphiqueur">[Appro.:/ Suppl.: <xsl:value-of select="@code_graphiqueur"/>]</xsl:if> <xsl:if test="@masse">[Masse: / Weight:<xsl:value-of select="@masse"/>]</xsl:if> <xsl:if test="@rse">[RSE:/ RSE: <xsl:value-of select="@rse"/>]</xsl:if> <xsl:if test="section_achat">[Section achat:/ Cost center:<xsl:value-of select="@section_achat"/>]</xsl:if><xsl:if test="@commentaire"></br><b>Commentaire indice: / Indice comments:</b><xsl:value-of select="@commentaire"/></xsl:if></font>
						</td>
						<xsl:if test="AVANT/@*">
						<td nowrap="" width="50%">
							<font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:if test="AVANT/@indice">[Indice: / Index:<xsl:value-of select="AVANT/@indice"/>]</xsl:if><xsl:if test="AVANT/@item">[Dernier item: / Last item:<xsl:value-of select="AVANT/@item"/>]</xsl:if><xsl:if test="AVANT/@ofi_cde_rse">[RSE:/ RSE: <xsl:value-of select="AVANT/@ofi_cde_rse"/>]</xsl:if></font>
						</td>
						</xsl:if>
					</tr>
					<xsl:if test="CDF_ORDRE/@*">
						<tr>
							<td>
								</br>
								<font face='Arial, Helvetica, sans-serif' size='3pt'><b>Parcours pièce site / Plant part route</b></font>
								</br>
								<table border="0">
									<xsl:for-each select="CDF_ORDRE">
									<tr>
										<td nowrap="" bgcolor='#E3E3E3'><font face='Arial, Helvetica, sans-serif' size='2pt'><b>Num Ordre: / Order Num:</br>Centre de Frais: / Cost center:</b></font></td>

										<td>
												<font face='Arial, Helvetica, sans-serif' size='1pt'>&#160;&#160;<xsl:value-of select="@num_ordre"/>&#160;&#160;
												</br>
												&#160;&#160;<xsl:value-of select="@centre_frais"/>&#160;&#160;</font>
										</td>

									</tr>
									</xsl:for-each>
								</table>
							</td>
						</tr>
					</xsl:if>
					</xsl:for-each>
					</xsl:if>
					<xsl:if test="UTILISATION/@*">
					<xsl:for-each select="UTILISATION">
					<tr>
						<td width="50%">
							<font face='Arial, Helvetica, sans-serif' size='2pt'><b>Utilisation assemblé: / Assembly use:</b></font>
						</td>
						<td width="50%">&#160;</td>
					</tr>
					<tr>
						<td width="50%">
									<font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:if test="@piece">[N° de pièce / Part N° composée: <xsl:value-of select="@piece"/>]</xsl:if> <xsl:if test="@alternative">[Alt: / Alt:<xsl:value-of select="@alternative"/>]</xsl:if> <xsl:if test="@num_ordre">[Num Ordre: / Order Num: <xsl:value-of select="@num_ordre"/>]</xsl:if> <xsl:if test="@num_sequence">[N° séquence:/ Sequence N°: <xsl:value-of select="@num_sequence"/>]</xsl:if> <xsl:if test="@coefficient">[Coef.: / Quantity:<xsl:value-of select="@coefficient"/>]</xsl:if> <xsl:if test="@designation_abrege">[Dés. abrégée:/ Abreviated: <xsl:value-of select="@designation_abrege"/>]</xsl:if> <xsl:if test="@code_graphiqueur">[Appro.:/ Suppl.: <xsl:value-of select="@code_graphiqueur"/>]</xsl:if> <xsl:if test="@aval_gpro">[Aval GPRO: / Downstream GPRO:<xsl:value-of select="@aval_gpro"/>]</xsl:if></font>
						</td>
						<td width="50%">&#160;</td>
					</tr>
					</xsl:for-each>
					</xsl:if>

					<tr>
						<td  colspan="2">
							</br>
							<hr SIZE="1" width="70%" color="#E3E3E3" />
							</br>
						</td>
					</tr>

					</xsl:for-each>
		</xsl:template>
		<xsl:template match="PIECES_CREEES">
				 <xsl:for-each select="SECTION">
					<xsl:if test="LIBELLE">
					<xsl:for-each select="LIBELLE">
						<tr>
							<td>
								<font face='Arial, Helvetica, sans-serif' size='2pt'><b>Pièce Indice: / Part index:</b></font>
								<font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:value-of select="@piece"/><xsl:value-of select="@indice"/> <xsl:if test="@item">[Item: <xsl:value-of select="@item"/>]</xsl:if> <xsl:if test="@designation_abrege">[Dés. abrégée: / Abbreviated:<xsl:value-of select="@designation_abrege"/>]</xsl:if> <xsl:if test="@designation">[Désignation: / Part name:<xsl:value-of select="@designation"/>]</xsl:if> <xsl:if test="@unite_comptage">[Unité comptage: / Counting unit:<xsl:value-of select="@unite_comptage"/>]</xsl:if></br> <xsl:if test="@type_produit">[T. Prod.:/ Prod. Typ.:<xsl:value-of select="@type_produit"/>]</xsl:if> <xsl:if test="@code_graphiqueur">[Appro.: / Suppl.:<xsl:value-of select="@code_graphiqueur"/>]</xsl:if> <xsl:if test="@masse">[Masse:/Weight:<xsl:value-of select="@masse"/>]</xsl:if> <xsl:if test="@rse">[RSE: / RSE:<xsl:value-of select="@rse"/>]</xsl:if> <xsl:if test="@section_achat">[Section achat: / Cost center:<xsl:value-of select="@section_achat"/>]</xsl:if><xsl:if test="TEXTE"></br></br><b>Commentaire GSP: / GSP comments:</b><font size='3pt'><pre><xsl:value-of select="TEXTE"/></pre></font></xsl:if></font>
							</td>
						</tr>

						<xsl:if test="LIEN_DIRECT/@d_piece">
						<xsl:for-each select="LIEN_DIRECT">
						<tr>
							<td>
								<font face='Arial, Helvetica, sans-serif' size='2pt'><b>Pièces associées: / Associated parts:</b></font>
								<font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:value-of select="@d_piece"/>&#160;<xsl:value-of select="@d_designation"/>&#160;<xsl:value-of select="@d_lien"/></font>
							</td>
						</tr>
						</xsl:for-each>
						</xsl:if>

						<xsl:if test="LIEN_INDUIT/@i_piece">
						<xsl:for-each select="LIEN_INDUIT">
						<tr>
							<td>
								<font face='Arial, Helvetica, sans-serif' size='2pt'><b>Pièces associées: / Associated parts:</b></font>
								<font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:value-of select="@i_piece"/>&#160;<xsl:value-of select="@i_designation"/>&#160;<xsl:value-of select="@i_lien"/></br></font>
							</td>
						</tr>
						</xsl:for-each>
						</xsl:if>

						<xsl:if test="@suivi">
						<tr>
							<td>
								<font face='Arial, Helvetica, sans-serif' size='2pt'><b>Conditions d'application spécifiques: / Specific application terms:</b></font>
								<font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:if test="@date_prevue">[Date prévue: / Forecasted date:<xsl:value-of select="@date_prevue"/>]</xsl:if> <xsl:if test="@date_reelle">[Date Réelle: / Real date:<xsl:value-of select="@date_reelle"/>]</xsl:if> <xsl:if test="@suivi">[Suivi: / Following:<xsl:value-of select="@suivi"/>]</xsl:if></font>
							</td>
						</tr>
						</xsl:if>

					<xsl:if test="CDF_ORDRE/@*">
						<tr>
							<td>
								</br>
								<font face='Arial, Helvetica, sans-serif' size='3pt'><b>Parcours pièce site / Plant part route</b></font>
								</br>
								<table border="0">
									<xsl:for-each select="CDF_ORDRE">
									<tr>
										<td nowrap="" bgcolor='#E3E3E3'><font face='Arial, Helvetica, sans-serif' size='2pt'><b>Num Ordre: / Order Num:</br>Centre de Frais: / Cost center:</b></font></td>

										<td>
												<font face='Arial, Helvetica, sans-serif' size='1pt'>  <xsl:value-of select="@num_ordre"/>
												</br>
												  <xsl:value-of select="@centre_frais"/></font>
										</td>

									</tr>
									</xsl:for-each>
								</table>
							</td>
						</tr>
					</xsl:if>

					</xsl:for-each>
					</xsl:if>
					<xsl:if test="ENSEMBLE_CREE/@*">
					<xsl:for-each select="ENSEMBLE_CREE">
						<xsl:if test="@*">
						<tr>
							<td>
								<font face='Arial, Helvetica, sans-serif' size='2pt'><b>Ensemble créé: / Created set:</b></br></font>
								<font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:if test="@piece_composee"><xsl:value-of select="@piece_composee"/></xsl:if> <xsl:if test="@num_alternative">[Alt. / Alt: <xsl:value-of select="@num_alternative"/>]</xsl:if> <xsl:if test="@num_ordre">[Num Ordre: / Order Num:<xsl:value-of select="@num_ordre"/>]</xsl:if> <xsl:if test="@num_sequence">[N°séquence: / Sequence N°:<xsl:value-of select="@num_sequence"/>]</xsl:if> <xsl:if test="@coefficient">[Coef.: / Quantity:<xsl:value-of select="@coefficient"/>]</xsl:if> <xsl:if test="@designation_abrege">[Dés. abrégée: / Abbreviated:<xsl:value-of select="@designation_abrege"/>]</xsl:if> <xsl:if test="@code_graphiqueur">[Appro.: / Suppl.:<xsl:value-of select="@code_graphiqueur"/>]</xsl:if> <xsl:if test="@aval_gpro">[Aval GPRO: / Downstream GPRO:<xsl:value-of select="@aval_gpro"/>]</xsl:if> <xsl:if test="@validite">[Validité: / Validity:<xsl:value-of select="@validite"/>]</xsl:if></font>
							</td>
						</tr>
						</xsl:if>
				</xsl:for-each>
				</xsl:if>

				<tr>
					<td>
						</br>
						<hr SIZE="1" width="70%" color='#E3E3E3'/>
						</br>
					</td>
				</tr>

				</xsl:for-each>
		</xsl:template>

			<xsl:template match="PIECE_VARIATION_CADENCE">
					<xsl:if test="SECTION/*">

										<tr>
											<xsl:if test="SECTION/DEPART">
											<td width="50%">
											</br>
												<font face='Arial, Helvetica, sans-serif' size='3pt'><b>Départ: / Start:</b></font>
											</td>
											</xsl:if>
											<xsl:if test="SECTION/ARRET">
											<xsl:choose>
											<xsl:when test="SECTION/DEPART">
											<td width="50%">
											</br>
												<font face='Arial, Helvetica, sans-serif' size='3pt'><b>Arrêt: / Abolition:</b></font>
											</td>
											</xsl:when>
											<xsl:otherwise>
											<td width="50%">&#160;</td>
											<td width="50%">
											</br>
											<font face='Arial, Helvetica, sans-serif' size='3pt'><b>Arrêt: / Abolition:</b></font>
											</td>
											</xsl:otherwise>
											</xsl:choose>
											</xsl:if>
										</tr>
					</xsl:if>
					<xsl:for-each select="SECTION">
									<xsl:if test="./*">
									<tr>
										<xsl:if test="DEPART">
										<td width="50%">
											<font face='Arial, Helvetica, sans-serif' size='2pt'><b>Pièce: / Part:</b></font>
											<font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:value-of select="DEPART/@piece"/> [Dés. abrégée: / Abbreviated:<xsl:value-of select="DEPART/@designation_abrege"/>] [Unité comptage: / Counting unit:<xsl:value-of select="DEPART/@unite_comptage"/>]</br> [T. Prod.: / Prod. Typ.:<xsl:value-of select="DEPART/@type_produit"/>] [Appro.: / Suppl.:<xsl:value-of select="DEPART/@code_graphiqueur"/>] [RSE: / RSE:<xsl:value-of select="DEPART/@rse"/>] [Section achat: / Cost center :<xsl:value-of select="DEPART/@section_achat"/>] [Validité: / Validity:<xsl:value-of select="DEPART/@validite"/>]</font>
										</td>
										</xsl:if>
										<xsl:if test="ARRET">
										<xsl:choose>
										<xsl:when test="DEPART">
										<td width="50%">
											<font face='Arial, Helvetica, sans-serif' size='2pt'><b>Pièce: / Part:</b></font>
											<font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:value-of select="ARRET/@piece"/> [Dés. abrégée: / Abbreviated:<xsl:value-of select="ARRET/@designation_abrege"/>] [Unité comptage: / Counting unit:<xsl:value-of select="ARRET/@unite_comptage"/>]</br> [T. Prod.: / Prod. Typ.:<xsl:value-of select="ARRET/@type_produit"/>] [Appro.: / Suppl.:<xsl:value-of select="ARRET/@code_graphiqueur"/>] [RSE: / RSE:<xsl:value-of select="ARRET/@rse"/>] [Section achat: / Cost center :<xsl:value-of select="ARRET/@section_achat"/>] [Validité: / Validity:<xsl:value-of select="ARRET/@validite"/>]</font>
										</td>
										</xsl:when>
										<xsl:otherwise>
										<td width="50%">&#160;</td>
										<td width="50%">
											<font face='Arial, Helvetica, sans-serif' size='2pt'><b>Pièce: / Part:</b></font>
											<font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:value-of select="ARRET/@piece"/> [Dés. abrégée: / Abbreviated:<xsl:value-of select="ARRET/@designation_abrege"/>] [Unité comptage: / Counting unit:<xsl:value-of select="ARRET/@unite_comptage"/>]</br> [T. Prod.: / Prod. Typ.:<xsl:value-of select="ARRET/@type_produit"/>] [Appro.: / Suppl.:<xsl:value-of select="ARRET/@code_graphiqueur"/>] [RSE: / RSE:<xsl:value-of select="ARRET/@rse"/>] [Section achat: / Cost center :<xsl:value-of select="ARRET/@section_achat"/>] [Validité: / Validity:<xsl:value-of select="ARRET/@validite"/>]</font>
										</td>
										</xsl:otherwise>
										</xsl:choose>
										</xsl:if>
									</tr>
									</xsl:if>
									<xsl:if test="*/@suivi">
									<tr>
									<xsl:if test="DEPART/@suivi">
										<td width="50%">
											<font face='Arial, Helvetica, sans-serif' size='1pt'><b>Conditions d'application spécifiques: / Specific application terms:</b></font>
											<font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:if test="DEPART/@millesime">[Mill appli: / Appli.Mdl yr.:<xsl:value-of select="DEPART/@millesime"/>]</xsl:if> <xsl:if test="DEPART/@date_prevue">[Date prévue: / Forecasted date: <xsl:value-of select="DEPART/@date_prevue"/>]</xsl:if> <xsl:if test="DEPART/@date_reelle">[Date Réelle: / Real Date: <xsl:value-of select="DEPART/@date_reelle"/>]</xsl:if> <xsl:if test="DEPART/@suivi">[Suivi: / Following: <xsl:value-of select="DEPART/@suivi"/>]</xsl:if></font>
										</td>
									</xsl:if>
									<xsl:if test="ARRET/@suivi">
									<xsl:choose>
									<xsl:when test="DEPART/@suivi">
										<td width="50%">
											<font face='Arial, Helvetica, sans-serif' size='1pt'><b>Conditions d'application spécifiques: / Specific application terms:</b></font>
											<font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:if test="ARRET/@millesime">[Mill appli: / Appli.Mdl yr.:<xsl:value-of select="ARRET/@millesime"/>]</xsl:if> <xsl:if test="ARRET/@date_prevue">[Date prévue: / Forecasted date: <xsl:value-of select="ARRET/@date_prevue"/>]</xsl:if> <xsl:if test="ARRET/@date_reelle">[Date Réelle: / Real Date: <xsl:value-of select="ARRET/@date_reelle"/>]</xsl:if> <xsl:if test="ARRET/@suivi">[Suivi: / Following: <xsl:value-of select="ARRET/@suivi"/>]</xsl:if></font>
										</td>
									</xsl:when>
									<xsl:otherwise>
										<td width="50%">&#160;</td>
										<td width="50%">
											<font face='Arial, Helvetica, sans-serif' size='1pt'><b>Conditions d'application spécifiques: / Specific application terms:</b></font>
											<font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:if test="ARRET/@millesime">[Mill appli: / Appli.Mdl yr.:<xsl:value-of select="ARRET/@millesime"/>]</xsl:if> <xsl:if test="ARRET/@date_prevue">[Date prévue: / Forecasted date: <xsl:value-of select="ARRET/@date_prevue"/>]</xsl:if> <xsl:if test="ARRET/@date_reelle">[Date Réelle: / Real Date: <xsl:value-of select="ARRET/@date_reelle"/>]</xsl:if> <xsl:if test="ARRET/@suivi">[Suivi: / Following: <xsl:value-of select="ARRET/@suivi"/>]</xsl:if></font>
										</td>
									</xsl:otherwise>
									</xsl:choose>
									</xsl:if>
									</tr>
									</xsl:if>
									<xsl:if test="*/UTILISATION_NOMENCLATURE/@*">
									<tr>
										<xsl:if test="DEPART/UTILISATION_NOMENCLATURE/@*">
										<td width="50%">
										</br>
											<font face='Arial, Helvetica, sans-serif' size='2pt'><b>Utilisation nomenclature: / BOM use:</b></font>
										</td>
										</xsl:if>
										<xsl:if test="ARRET/UTILISATION_NOMENCLATURE/@*">
										<xsl:choose>
										<xsl:when test="DEPART">
										<td width="50%">
										</br>
											<font face='Arial, Helvetica, sans-serif' size='2pt'><b>Utilisation nomenclature: / BOM use:</b></font>
										</td>
										</xsl:when>
										<xsl:otherwise>
										<td width="50%">&#160;</td>
										<td width="50%">
										</br>
											<font face='Arial, Helvetica, sans-serif' size='2pt'><b>Utilisation nomenclature: / BOM use:</b></font>
										</td>
										</xsl:otherwise>
										</xsl:choose>
										</xsl:if>
									</tr>
									<tr valign="top">
										<xsl:if test="DEPART/UTILISATION_NOMENCLATURE/@*">
										<td align="left" nowrap="" width="50%">
													<font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:value-of select="DEPART/UTILISATION_NOMENCLATURE/@famille"/> <xsl:value-of select="DEPART/UTILISATION_NOMENCLATURE/@fonction_famille"/> <xsl:if test="DEPART/UTILISATION_NOMENCLATURE/@variante">[Var.:/ Var: <xsl:value-of select="DEPART/UTILISATION_NOMENCLATURE/@variante"/>]</xsl:if> <xsl:if test="DEPART/UTILISATION_NOMENCLATURE/@origine_variante">[Ori.:/ Origin: <xsl:value-of select="DEPART/UTILISATION_NOMENCLATURE/@origine_variante"/>]</xsl:if> <xsl:if test="DEPART/UTILISATION_NOMENCLATURE/@solution">[SOL:/ SOL: <xsl:value-of select="DEPART/UTILISATION_NOMENCLATURE/@solution"/>]</xsl:if> <xsl:if test="DEPART/UTILISATION_NOMENCLATURE/@origine_solution">[Ori.:/ Origin: <xsl:value-of select="DEPART/UTILISATION_NOMENCLATURE/@origine_solution"/>]</xsl:if> <xsl:if test="DEPART/UTILISATION_NOMENCLATURE/@piece_generique">[N°PG:/ PG N°: <xsl:value-of select="DEPART/UTILISATION_NOMENCLATURE/@piece_generique"/>]</xsl:if><xsl:if test="DEPART/UTILISATION_NOMENCLATURE/@reserve_usine">[Réservé usine:/ Plant reserve:<xsl:value-of select="DEPART/UTILISATION_NOMENCLATURE/@reserve_usine"/> <xsl:if test="DEPART/UTILISATION_NOMENCLATURE/@fam_Ppum">Fam Ppum: <xsl:value-of select="DEPART/UTILISATION_NOMENCLATURE/@fam_Ppum"/></xsl:if>]</xsl:if> <xsl:if test="DEPART/UTILISATION_NOMENCLATURE/@coefficient">[Coef.: / Quantity:<xsl:value-of select="DEPART/UTILISATION_NOMENCLATURE/@coefficient"/>]</xsl:if><xsl:choose><xsl:when test="DEPART/UTILISATION_NOMENCLATURE/@sol_ext"></br></xsl:when><xsl:when test="DEPART/UTILISATION_NOMENCLATURE/@code_aval"></br></xsl:when><xsl:when test="DEPART/UTILISATION_NOMENCLATURE/@code_assembe"></br></xsl:when><xsl:when test="DEPART/UTILISATION_NOMENCLATURE/@centre_de_frais"></br></xsl:when></xsl:choose><xsl:if test="DEPART/UTILISATION_NOMENCLATURE/@sol_ext">[Sol ext.:/ Ext Sol.: <xsl:value-of select="DEPART/UTILISATION_NOMENCLATURE/@sol_ext"/>]</xsl:if> <xsl:if test="DEPART/UTILISATION_NOMENCLATURE/@code_aval">[C. FEV:/ C. FEV: <xsl:value-of select="DEPART/UTILISATION_NOMENCLATURE/@code_aval"/>]</xsl:if> <xsl:if test="DEPART/UTILISATION_NOMENCLATURE/@code_assembe">[C. ass.: / Ass.C.: <xsl:value-of select="DEPART/UTILISATION_NOMENCLATURE/@code_assembe"/>]</xsl:if> <xsl:if test="DEPART/UTILISATION_NOMENCLATURE/@centre_de_frais">[CdF.:/ C ctr.: <xsl:value-of select="DEPART/UTILISATION_NOMENCLATURE/@centre_de_frais"/>]</xsl:if> <xsl:choose><xsl:when test="DEPART/UTILISATION_NOMENCLATURE/@ecart"></br></xsl:when><xsl:otherwise><xsl:if test="DEPART/UTILISATION_NOMENCLATURE/@commentaire"></br></xsl:if></xsl:otherwise></xsl:choose><xsl:if test="DEPART/UTILISATION_NOMENCLATURE/@ecart">[Ecart:/ Gap: <xsl:value-of select="DEPART/UTILISATION_NOMENCLATURE/@ecart"/>]</xsl:if><xsl:if test="DEPART/UTILISATION_NOMENCLATURE/@commentaire"><b>Commentaire APN: / APN comments <xsl:value-of select="DEPART/UTILISATION_NOMENCLATURE/@commentaire"/></b></xsl:if></font>
										<xsl:if test="DEPART/MTC/@*">
											<table border="0">
											<xsl:for-each select="DEPART/MTC">
												<xsl:if test="@*">
													<tr><td>
													<font face='Arial, Helvetica, sans-serif' size='1pt'>&#160;- <xsl:value-of select="@millesime_deb"/>&#160;<xsl:value-of select="@millesime_fin"/>&#160;:&#160;</font>
													<font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:value-of select="@mtceps"/></font>
													</td></tr>
												</xsl:if>
											</xsl:for-each>
											</table>
										</xsl:if>
										</td>
										</xsl:if>
										<xsl:if test="ARRET/UTILISATION_NOMENCLATURE/@*">
										<xsl:choose>
										<xsl:when test="DEPART">
										<td align="left" nowrap="" width="50%">
													<font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:value-of select="ARRET/UTILISATION_NOMENCLATURE/@famille"/> <xsl:value-of select="ARRET/UTILISATION_NOMENCLATURE/@fonction_famille"/> <xsl:if test="ARRET/UTILISATION_NOMENCLATURE/@variante">[Var.:/ Var: <xsl:value-of select="ARRET/UTILISATION_NOMENCLATURE/@variante"/>]</xsl:if> <xsl:if test="ARRET/UTILISATION_NOMENCLATURE/@origine_variante">[Ori.:/ Origin: <xsl:value-of select="ARRET/UTILISATION_NOMENCLATURE/@origine_variante"/>]</xsl:if> <xsl:if test="ARRET/UTILISATION_NOMENCLATURE/@solution">[SOL:/ SOL: <xsl:value-of select="ARRET/UTILISATION_NOMENCLATURE/@solution"/>]</xsl:if> <xsl:if test="ARRET/UTILISATION_NOMENCLATURE/@origine_solution">[Ori.:/ Origin : <xsl:value-of select="ARRET/UTILISATION_NOMENCLATURE/@origine_solution"/>]</xsl:if> <xsl:if test="ARRET/UTILISATION_NOMENCLATURE/@piece_generique">[N°PG:/ PG N°: <xsl:value-of select="ARRET/UTILISATION_NOMENCLATURE/@piece_generique"/>]</xsl:if><xsl:if test="ARRET/UTILISATION_NOMENCLATURE/@reserve_usine">[Réservé usine:/ Plant reserve: <xsl:value-of select="ARRET/UTILISATION_NOMENCLATURE/@reserve_usine"/> <xsl:if test="ARRET/UTILISATION_NOMENCLATURE/@fam_Ppum">Fam Ppum: <xsl:value-of select="ARRET/UTILISATION_NOMENCLATURE/@fam_Ppum"/></xsl:if>]</xsl:if> <xsl:if test="ARRET/UTILISATION_NOMENCLATURE/@coefficient">[Coef.: / Quantity:<xsl:value-of select="ARRET/UTILISATION_NOMENCLATURE/@coefficient"/>]</xsl:if><xsl:choose><xsl:when test="ARRET/UTILISATION_NOMENCLATURE/@sol_ext"></br></xsl:when><xsl:when test="ARRET/UTILISATION_NOMENCLATURE/@code_aval"></br></xsl:when><xsl:when test="ARRET/UTILISATION_NOMENCLATURE/@code_assembe"></br></xsl:when><xsl:when test="ARRET/UTILISATION_NOMENCLATURE/@centre_de_frais"></br></xsl:when></xsl:choose><xsl:if test="ARRET/UTILISATION_NOMENCLATURE/@sol_ext">[Sol ext.:/ Ext Sol: <xsl:value-of select="ARRET/UTILISATION_NOMENCLATURE/@sol_ext"/>]</xsl:if> <xsl:if test="ARRET/UTILISATION_NOMENCLATURE/@code_aval">[C. FEV:/ C. FEV:<xsl:value-of select="ARRET/UTILISATION_NOMENCLATURE/@code_aval"/>]</xsl:if> <xsl:if test="ARRET/UTILISATION_NOMENCLATURE/@code_assembe">[C. ass.:/ Ass. C.: <xsl:value-of select="ARRET/UTILISATION_NOMENCLATURE/@code_assembe"/>]</xsl:if> <xsl:if test="ARRET/UTILISATION_NOMENCLATURE/@centre_de_frais">[CdF.:/ C ctr.: <xsl:value-of select="ARRET/UTILISATION_NOMENCLATURE/@centre_de_frais"/>]</xsl:if> <xsl:choose><xsl:when test="ARRET/UTILISATION_NOMENCLATURE/@ecart"></br></xsl:when><xsl:otherwise><xsl:if test="ARRET/UTILISATION_NOMENCLATURE/@arret_strict"></br></xsl:if></xsl:otherwise></xsl:choose><xsl:if test="ARRET/UTILISATION_NOMENCLATURE/@ecart">[Ecart:/ Gap: <xsl:value-of select="ARRET/UTILISATION_NOMENCLATURE/@ecart"/>]</xsl:if><xsl:if test="ARRET/UTILISATION_NOMENCLATURE/@arret_strict"><b>Application:/ Application: <xsl:value-of select="ARRET/UTILISATION_NOMENCLATURE/@arret_strict"/></b></xsl:if></font>
											<xsl:if test="ARRET/MTC/@*">
												<table border="0">
												<xsl:for-each select="ARRET/MTC">
													<xsl:if test="@*">
														<tr><td>
														<font face='Arial, Helvetica, sans-serif' size='1pt'>&#160;- <xsl:value-of select="@millesime_deb"/>&#160;<xsl:value-of select="@millesime_fin"/>&#160;:&#160;</font>
														<font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:value-of select="@mtceps"/></font>
														</td></tr>
													</xsl:if>
												</xsl:for-each>
												</table>
											</xsl:if>
										</td>
										</xsl:when>
										<xsl:otherwise>
										<td align="left" nowrap="" width="50%">&#160;</td>
										<td align="left" nowrap="" width="50%">
												<font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:value-of select="ARRET/UTILISATION_NOMENCLATURE/@famille"/> <xsl:value-of select="ARRET/UTILISATION_NOMENCLATURE/@fonction_famille"/> <xsl:if test="ARRET/UTILISATION_NOMENCLATURE/@variante">[Var.:/ Var.: <xsl:value-of select="ARRET/UTILISATION_NOMENCLATURE/@variante"/>]</xsl:if> <xsl:if test="ARRET/UTILISATION_NOMENCLATURE/@origine_variante">[Ori.:/ Origin: <xsl:value-of select="ARRET/UTILISATION_NOMENCLATURE/@origine_variante"/>]</xsl:if> <xsl:if test="ARRET/UTILISATION_NOMENCLATURE/@solution">[SOL:/ SOL: <xsl:value-of select="ARRET/UTILISATION_NOMENCLATURE/@solution"/>]</xsl:if> <xsl:if test="ARRET/UTILISATION_NOMENCLATURE/@origine_solution">[Ori.:/ Origin: <xsl:value-of select="ARRET/UTILISATION_NOMENCLATURE/@origine_solution"/>]</xsl:if> <xsl:if test="ARRET/UTILISATION_NOMENCLATURE/@piece_generique">[N°PG:/ PG N°: <xsl:value-of select="ARRET/UTILISATION_NOMENCLATURE/@piece_generique"/>]</xsl:if><xsl:if test="ARRET/UTILISATION_NOMENCLATURE/@reserve_usine">[Réservé usine:/ Plant reserve: <xsl:value-of select="ARRET/UTILISATION_NOMENCLATURE/@reserve_usine"/> <xsl:if test="ARRET/UTILISATION_NOMENCLATURE/@fam_Ppum">Fam Ppum: <xsl:value-of select="ARRET/UTILISATION_NOMENCLATURE/@fam_Ppum"/></xsl:if>]</xsl:if> <xsl:if test="ARRET/UTILISATION_NOMENCLATURE/@coefficient">[Coef.: / Quantity:<xsl:value-of select="ARRET/UTILISATION_NOMENCLATURE/@coefficient"/>]</xsl:if><xsl:choose><xsl:when test="ARRET/UTILISATION_NOMENCLATURE/@sol_ext"></br></xsl:when><xsl:when test="ARRET/UTILISATION_NOMENCLATURE/@code_aval"></br></xsl:when><xsl:when test="ARRET/UTILISATION_NOMENCLATURE/@code_assembe"></br></xsl:when><xsl:when test="ARRET/UTILISATION_NOMENCLATURE/@centre_de_frais"></br></xsl:when></xsl:choose><xsl:if test="ARRET/UTILISATION_NOMENCLATURE/@sol_ext">[Sol ext.:/ Ext Sol: <xsl:value-of select="ARRET/UTILISATION_NOMENCLATURE/@sol_ext"/>]</xsl:if> <xsl:if test="ARRET/UTILISATION_NOMENCLATURE/@code_aval">[C. FEV:/ C. FEV: <xsl:value-of select="ARRET/UTILISATION_NOMENCLATURE/@code_aval"/>]</xsl:if> <xsl:if test="ARRET/UTILISATION_NOMENCLATURE/@code_assembe">[C. ass.:/ Ass. C.: <xsl:value-of select="ARRET/UTILISATION_NOMENCLATURE/@code_assembe"/>]</xsl:if> <xsl:if test="ARRET/UTILISATION_NOMENCLATURE/@centre_de_frais">[CdF.:/ C ctr.: <xsl:value-of select="ARRET/UTILISATION_NOMENCLATURE/@centre_de_frais"/>]</xsl:if> <xsl:choose><xsl:when test="ARRET/UTILISATION_NOMENCLATURE/@ecart"></br></xsl:when><xsl:otherwise><xsl:if test="ARRET/UTILISATION_NOMENCLATURE/@arret_strict"></br></xsl:if></xsl:otherwise></xsl:choose><xsl:if test="ARRET/UTILISATION_NOMENCLATURE/@ecart">[Ecart:/ Gap: <xsl:value-of select="ARRET/UTILISATION_NOMENCLATURE/@ecart"/>]</xsl:if><xsl:if test="ARRET/UTILISATION_NOMENCLATURE/@arret_strict"><b>Application:/ Application: <xsl:value-of select="ARRET/UTILISATION_NOMENCLATURE/@arret_strict"/></b></xsl:if></font>
										<xsl:if test="ARRET/MTC/@*">
											<table border="0">
											<xsl:for-each select="ARRET/MTC">
												<xsl:if test="@*">
													<tr><td>
													<font face='Arial, Helvetica, sans-serif' size='1pt'>&#160;- <xsl:value-of select="@millesime_deb"/>&#160;<xsl:value-of select="@millesime_fin"/>&#160;:&#160;</font>
													<font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:value-of select="@mtceps"/></font>
													</td></tr>
												</xsl:if>
											</xsl:for-each>
											</table>
										</xsl:if>
										</td>
										</xsl:otherwise>
										</xsl:choose>
										</xsl:if>

									</tr>

									<xsl:choose>
									<xsl:when test="DEPART/UTILISATION_NOMENCLATURE">
										<tr>
											<td  colspan="2"><hr SIZE="1" width="70%" color="#E3E3E3" /></td>
										</tr>
									</xsl:when>
									<xsl:when test="ARRET/UTILISATION_NOMENCLATURE">
										<tr>
											<td  colspan="2"><hr SIZE="1" width="70%" color="#E3E3E3" /></td>
										</tr>
									</xsl:when>
									</xsl:choose>
									</xsl:if>

				</xsl:for-each>
				<xsl:if test="SECTION/SUPPRESSION">

									<xsl:if test="SECTION/SUPPRESSION">
									<tr>
									<td width="50%">&#160;</td>
									<td width="50%">
									</br>
										<font face='Arial, Helvetica, sans-serif' size='3pt'><b>Suppression: / Abolition:</b></font>
									</td>
									</tr>
									</xsl:if>

					<xsl:for-each select="SECTION/SUPPRESSION">

									<tr>
									<td width="50%">&#160;</td>
									<td width="50%">
										<font face='Arial, Helvetica, sans-serif' size='2pt'><b>Pièce: / Part:</b></font>
										<font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:value-of select="@piece"/> [Dés. abrégée: / Abbreviated:<xsl:value-of select="@designation_abrege"/>] [Unité comptage:/Counting unit:<xsl:value-of select="@unite_comptage"/>]</br> [T. Prod.: / Prod. Typ.:<xsl:value-of select="@type_produit"/>] [Appro.: /Suppl.:<xsl:value-of select="@code_graphiqueur"/>] [RSE: / RSE:<xsl:value-of select="@rse"/>] [Section achat:/ Cost center:<xsl:value-of select="@section_achat"/>] [Validité: / Validity:<xsl:value-of select="@validite"/>]</font>
									</td>
									</tr>
									<xsl:if test="@suivi">
									<tr>
									<td width="50%">&#160;</td>
									<td width="50%">
											<font face='Arial, Helvetica, sans-serif' size='1pt'><b>Conditions d'application spécifiques: / Specific application terms:</b></font>
											<font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:if test="@millesime">[Mill appli: / Appli.Mdl yr.:<xsl:value-of select="@millesime"/>]</xsl:if> <xsl:if test="@date_prevue">[Date prévue: / Forecasted date:<xsl:value-of select="@date_prevue"/>]</xsl:if> <xsl:if test="@date_reelle">[Date Réelle: / Real Date:<xsl:value-of select="@date_reelle"/>]</xsl:if> <xsl:if test="@suivi">[Suivi: / Following:<xsl:value-of select="@suivi"/>]</xsl:if></font>
									</td>
									</tr>
									</xsl:if>
									<xsl:if test="UTILISATION_NOMENCLATURE/@*">
									<tr>
									<td width="50%">&#160;</td>
									<td width="50%">
									</br>
										<font face='Arial, Helvetica, sans-serif' size='2pt'><b>Utilisation nomenclature: / BOM use:</b></font>
									</td>
									</tr>
									</xsl:if>

									<xsl:if test="UTILISATION_NOMENCLATURE/@*">
									<tr valign="top">
									<td width="50%" align="left">&#160;</td>
									<td align="left" nowrap="" width="50%">
													<font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:value-of select="UTILISATION_NOMENCLATURE/@famille"/> <xsl:value-of select="UTILISATION_NOMENCLATURE/@fonction_famille"/> <xsl:if test="UTILISATION_NOMENCLATURE/@variante">[Var.:/ Var: <xsl:value-of select="UTILISATION_NOMENCLATURE/@variante"/>]</xsl:if> <xsl:if test="UTILISATION_NOMENCLATURE/@origine_variante">[Ori.:/ Origin: <xsl:value-of select="UTILISATION_NOMENCLATURE/@origine_variante"/>]</xsl:if> <xsl:if test="UTILISATION_NOMENCLATURE/@solution">[SOL:/ SOL: <xsl:value-of select="UTILISATION_NOMENCLATURE/@solution"/>]</xsl:if> <xsl:if test="UTILISATION_NOMENCLATURE/@origine_solution">[Ori.:/ Origin: <xsl:value-of select="UTILISATION_NOMENCLATURE/@origine_solution"/>]</xsl:if> <xsl:if test="UTILISATION_NOMENCLATURE/@piece_generique">[N°PG:/ PG N°: <xsl:value-of select="UTILISATION_NOMENCLATURE/@piece_generique"/>]</xsl:if><xsl:if test="UTILISATION_NOMENCLATURE/@reserve_usine">[Réservé usine:/ Plant reserve: <xsl:value-of select="UTILISATION_NOMENCLATURE/@reserve_usine"/> <xsl:if test="UTILISATION_NOMENCLATURE/@fam_Ppum">Fam Ppum: <xsl:value-of select="UTILISATION_NOMENCLATURE/@fam_Ppum"/></xsl:if>]</xsl:if> <xsl:if test="UTILISATION_NOMENCLATURE/@coefficient">[Coef.:/ Quantity:<xsl:value-of select="UTILISATION_NOMENCLATURE/@coefficient"/>]</xsl:if><xsl:choose><xsl:when test="UTILISATION_NOMENCLATURE/@sol_ext"></br></xsl:when><xsl:when test="UTILISATION_NOMENCLATURE/@code_aval"></br></xsl:when><xsl:when test="UTILISATION_NOMENCLATURE/@code_assembe"></br></xsl:when><xsl:when test="UTILISATION_NOMENCLATURE/@centre_de_frais"></br></xsl:when></xsl:choose><xsl:if test="UTILISATION_NOMENCLATURE/@sol_ext">[Sol ext.:/ Ext Sol: <xsl:value-of select="UTILISATION_NOMENCLATURE/@sol_ext"/>]</xsl:if> <xsl:if test="UTILISATION_NOMENCLATURE/@code_aval">[C. FEV:/ C. FEV: <xsl:value-of select="UTILISATION_NOMENCLATURE/@code_aval"/>]</xsl:if> <xsl:if test="UTILISATION_NOMENCLATURE/@code_assembe">[C. ass.:/ Ass. C.: <xsl:value-of select="UTILISATION_NOMENCLATURE/@code_assembe"/>]</xsl:if> <xsl:if test="UTILISATION_NOMENCLATURE/@centre_de_frais">[CdF.:/ C. ctr.: <xsl:value-of select="UTILISATION_NOMENCLATURE/@centre_de_frais"/>]</xsl:if> <xsl:choose><xsl:when test="UTILISATION_NOMENCLATURE/@ecart"></br></xsl:when><xsl:otherwise><xsl:if test="UTILISATION_NOMENCLATURE/@arret_strict"></br></xsl:if></xsl:otherwise></xsl:choose><xsl:if test="UTILISATION_NOMENCLATURE/@ecart">[Ecart:/ Gap: <xsl:value-of select="UTILISATION_NOMENCLATURE/@ecart"/>]</xsl:if><xsl:if test="UTILISATION_NOMENCLATURE/@arret_strict"><b>Application:/ Application:<xsl:value-of select="UTILISATION_NOMENCLATURE/@arret_strict"/></b></xsl:if></font>
										<xsl:if test="MTC/@*">
											<table border="0">
											<xsl:for-each select="MTC">
												<xsl:if test="@*">
													<tr><td>
													<font face='Arial, Helvetica, sans-serif' size='1pt'>&#160;- <xsl:value-of select="@millesime_deb"/>&#160;<xsl:value-of select="@millesime_fin"/>&#160;:&#160;</font>
													<font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:value-of select="@mtceps"/></font>
													</td></tr>
												</xsl:if>
											</xsl:for-each>
											</table>
										</xsl:if>
									</td>
									</tr>

									<tr>
									<td  colspan="2"><hr SIZE="1" width="70%" color="#E3E3E3" /></td>
									</tr>

									</xsl:if>
				</xsl:for-each>
			</xsl:if>
			</xsl:template>

		<xsl:template match="PIECE_VARIATION_CENTRE_FRAIS">
				<xsl:if test="SECTION/*">

					<tr>
						<xsl:if test="SECTION/DEPART">
						<td width="50%">
						</br>
							<font face='Arial, Helvetica, sans-serif' size='3pt'><b>Départ: / Start:</b></font>
						</td>
						</xsl:if>
						<xsl:if test="SECTION/ARRET">
						<xsl:choose>
						<xsl:when test="SECTION/DEPART">
						<td width="50%">
						</br>
							<font face='Arial, Helvetica, sans-serif' size='3pt'><b>Arrêt: / Abolition:</b></font>
						</td>
						</xsl:when>
						<xsl:otherwise>
						<td width="50%">&#160;</td>
						<td width="50%">
						</br>
						<font face='Arial, Helvetica, sans-serif' size='3pt'><b>Arrêt: / Abolition:</b></font>
						</td>
						</xsl:otherwise>
						</xsl:choose>
						</xsl:if>
					</tr>
			</xsl:if>
			<xsl:for-each select="SECTION">
				<xsl:if test="./*">
				<tr>
					<xsl:if test="DEPART">
					<td width="50%">
						<font face='Arial, Helvetica, sans-serif' size='2pt'><b>Pièce: / Part:</b></font>
						<font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:value-of select="DEPART/@piece"/> [Dés. abrégée: / Abbreviated:<xsl:value-of select="DEPART/@designation_abrege"/>] [Unité comptage: / Counting unit:<xsl:value-of select="DEPART/@unite_comptage"/>]</br> [T. Prod.: /Prod. Typ.:<xsl:value-of select="DEPART/@type_produit"/>] [Appro.: / Suppl.:<xsl:value-of select="DEPART/@code_graphiqueur"/>] [RSE: / RSE:<xsl:value-of select="DEPART/@rse"/>] [Section achat: / Cost center:<xsl:value-of select="DEPART/@section_achat"/>] [Validité: / Validity:<xsl:value-of select="DEPART/@validite"/>]</font>
					</td>
					</xsl:if>
					<xsl:if test="ARRET">
					<xsl:choose>
					<xsl:when test="DEPART">
					<td width="50%">
						<font face='Arial, Helvetica, sans-serif' size='2pt'><b>Pièce: / Part:</b></font>
						<font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:value-of select="ARRET/@piece"/> [Dés. abrégée: / Abbreviated:<xsl:value-of select="ARRET/@designation_abrege"/>] [Unité comptage: / Counting unit:<xsl:value-of select="ARRET/@unite_comptage"/>]</br> [T. Prod.: /Prod. Typ.:<xsl:value-of select="ARRET/@type_produit"/>] [Appro.: / Suppl.:<xsl:value-of select="ARRET/@code_graphiqueur"/>] [RSE: / RSE:<xsl:value-of select="ARRET/@rse"/>] [Section achat: / Cost center:<xsl:value-of select="ARRET/@section_achat"/>] [Validité: / Validity:<xsl:value-of select="ARRET/@validite"/>]</font>
					</td>
					</xsl:when>
					<xsl:otherwise>
					<td width="50%">&#160;</td>
					<td width="50%">
						<font face='Arial, Helvetica, sans-serif' size='2pt'><b>Pièce: / Part:</b></font>
						<font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:value-of select="ARRET/@piece"/> [Dés. abrégée: / Abbreviated:<xsl:value-of select="ARRET/@designation_abrege"/>] [Unité comptage: / Counting unit:<xsl:value-of select="ARRET/@unite_comptage"/>]</br> [T. Prod.: /Prod. Typ.:<xsl:value-of select="ARRET/@type_produit"/>] [Appro.: / Suppl.:<xsl:value-of select="ARRET/@code_graphiqueur"/>] [RSE: / RSE:<xsl:value-of select="ARRET/@rse"/>] [Section achat: / Cost center:<xsl:value-of select="ARRET/@section_achat"/>] [Validité: / Validity:<xsl:value-of select="ARRET/@validite"/>]</font>
					</td>
					</xsl:otherwise>
					</xsl:choose>
					</xsl:if>
				</tr>
				</xsl:if>
				<xsl:if test="*/@suivi">
				<tr>
				<xsl:if test="DEPART/@suivi">
					<td width="50%">
						<font face='Arial, Helvetica, sans-serif' size='1pt'><b>Conditions d'application spécifiques: / Specific application terms:</b></font>
						<font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:if test="DEPART/@millesime">[Mill appli: / Appli.Mdl yr.:<xsl:value-of select="DEPART/@millesime"/>]</xsl:if> <xsl:if test="DEPART/@date_prevue">[Date prévue: / Forecasted date:<xsl:value-of select="DEPART/@date_prevue"/>]</xsl:if> <xsl:if test="DEPART/@date_reelle">[Date Réelle: / Real Date:<xsl:value-of select="DEPART/@date_reelle"/>]</xsl:if> <xsl:if test="DEPART/@suivi">[Suivi: / Following:<xsl:value-of select="DEPART/@suivi"/>]</xsl:if></font>
					</td>
				</xsl:if>
				<xsl:if test="ARRET/@suivi">
				<xsl:choose>
				<xsl:when test="DEPART/@suivi">
					<td width="50%">
						<font face='Arial, Helvetica, sans-serif' size='1pt'><b>Conditions d'application spécifiques: / Specific application terms:</b></font>
						<font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:if test="ARRET/@millesime">[Mill appli: / Appli.Mdl yr.:<xsl:value-of select="ARRET/@millesime"/>]</xsl:if> <xsl:if test="ARRET/@date_prevue">[Date prévue: / Forecasted date:<xsl:value-of select="ARRET/@date_prevue"/>]</xsl:if> <xsl:if test="ARRET/@date_reelle">[Date Réelle: / Real Date:<xsl:value-of select="ARRET/@date_reelle"/>]</xsl:if> <xsl:if test="ARRET/@suivi">[Suivi: / Following:<xsl:value-of select="ARRET/@suivi"/>]</xsl:if></font>
					</td>
				</xsl:when>
				<xsl:otherwise>
					<td width="50%">&#160;</td>
					<td width="50%">
						<font face='Arial, Helvetica, sans-serif' size='1pt'><b>Conditions d'application spécifiques: / Specific application terms:</b></font>
						<font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:if test="ARRET/@millesime">[Mill appli: / Appli.Mdl yr.:<xsl:value-of select="ARRET/@millesime"/>]</xsl:if> <xsl:if test="ARRET/@date_prevue">[Date prévue: / Forecasted date:<xsl:value-of select="ARRET/@date_prevue"/>]</xsl:if> <xsl:if test="ARRET/@date_reelle">[Date Réelle: / Real Date:<xsl:value-of select="ARRET/@date_reelle"/>]</xsl:if> <xsl:if test="ARRET/@suivi">[Suivi: / Following:<xsl:value-of select="ARRET/@suivi"/>]</xsl:if></font>
					</td>
				</xsl:otherwise>
				</xsl:choose>
				</xsl:if>
				</tr>
				</xsl:if>
				<xsl:if test="*/UTILISATION_NOMENCLATURE/@*">
				<tr>
					<xsl:if test="DEPART/UTILISATION_NOMENCLATURE/@*">
					<td width="50%">
					</br>
						<font face='Arial, Helvetica, sans-serif' size='2pt'><b>Utilisation nomenclature: / BOM use:</b></font>
					</td>
					</xsl:if>
					<xsl:if test="ARRET/UTILISATION_NOMENCLATURE/@*">
					<xsl:choose>
					<xsl:when test="DEPART">
					<td width="50%">
					</br>
						<font face='Arial, Helvetica, sans-serif' size='2pt'><b>Utilisation nomenclature: / BOM use:</b></font>
					</td>
					</xsl:when>
					<xsl:otherwise>
					<td width="50%">&#160;</td>
					<td width="50%">
					</br>
						<font face='Arial, Helvetica, sans-serif' size='2pt'><b>Utilisation nomenclature: / BOM use:</b></font>
					</td>
					</xsl:otherwise>
					</xsl:choose>
					</xsl:if>
				</tr>
				<tr valign="top">
					<xsl:if test="DEPART/UTILISATION_NOMENCLATURE/@*">
					<td align="left" nowrap="" width="50%">
								<font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:value-of select="DEPART/UTILISATION_NOMENCLATURE/@famille"/> <xsl:value-of select="DEPART/UTILISATION_NOMENCLATURE/@fonction_famille"/> <xsl:if test="DEPART/UTILISATION_NOMENCLATURE/@variante">[Var.: / Var.:<xsl:value-of select="DEPART/UTILISATION_NOMENCLATURE/@variante"/>]</xsl:if> <xsl:if test="DEPART/UTILISATION_NOMENCLATURE/@origine_variante">[Ori.: / Origin:<xsl:value-of select="DEPART/UTILISATION_NOMENCLATURE/@origine_variante"/>]</xsl:if> <xsl:if test="DEPART/UTILISATION_NOMENCLATURE/@solution">[SOL: / SOL:<xsl:value-of select="DEPART/UTILISATION_NOMENCLATURE/@solution"/>]</xsl:if> <xsl:if test="DEPART/UTILISATION_NOMENCLATURE/@origine_solution">[Ori.: / Origin:<xsl:value-of select="DEPART/UTILISATION_NOMENCLATURE/@origine_solution"/>]</xsl:if> <xsl:if test="DEPART/UTILISATION_NOMENCLATURE/@piece_generique">[N°PG: /PG N°:<xsl:value-of select="DEPART/UTILISATION_NOMENCLATURE/@piece_generique"/>]</xsl:if><xsl:if test="DEPART/UTILISATION_NOMENCLATURE/@reserve_usine">[Réservé usine: / Plant reserve:<xsl:value-of select="DEPART/UTILISATION_NOMENCLATURE/@reserve_usine"/> <xsl:if test="DEPART/UTILISATION_NOMENCLATURE/@fam_Ppum">/ Fam Ppum: <xsl:value-of select="DEPART/UTILISATION_NOMENCLATURE/@fam_Ppum"/></xsl:if>]</xsl:if> <xsl:if test="DEPART/UTILISATION_NOMENCLATURE/@coefficient">[Coef.: / Quantity:<xsl:value-of select="DEPART/UTILISATION_NOMENCLATURE/@coefficient"/>]</xsl:if><xsl:choose><xsl:when test="DEPART/UTILISATION_NOMENCLATURE/@sol_ext"></br></xsl:when><xsl:when test="DEPART/UTILISATION_NOMENCLATURE/@code_aval"></br></xsl:when><xsl:when test="DEPART/UTILISATION_NOMENCLATURE/@code_assembe"></br></xsl:when><xsl:when test="DEPART/UTILISATION_NOMENCLATURE/@centre_de_frais"></br></xsl:when></xsl:choose><xsl:if test="DEPART/UTILISATION_NOMENCLATURE/@sol_ext">[Sol ext.: / Ext. Sol.:<xsl:value-of select="DEPART/UTILISATION_NOMENCLATURE/@sol_ext"/>]</xsl:if> <xsl:if test="DEPART/UTILISATION_NOMENCLATURE/@code_aval">[C. FEV: / C. FEV:<xsl:value-of select="DEPART/UTILISATION_NOMENCLATURE/@code_aval"/>]</xsl:if> <xsl:if test="DEPART/UTILISATION_NOMENCLATURE/@code_assembe">[C. ass.: / Ass.C.:<xsl:value-of select="DEPART/UTILISATION_NOMENCLATURE/@code_assembe"/>]</xsl:if> <xsl:if test="DEPART/UTILISATION_NOMENCLATURE/@centre_de_frais">[CdF.: / C ctr.:<xsl:value-of select="DEPART/UTILISATION_NOMENCLATURE/@centre_de_frais"/>]</xsl:if> <xsl:choose><xsl:when test="DEPART/UTILISATION_NOMENCLATURE/@ecart"></br></xsl:when><xsl:otherwise><xsl:if test="DEPART/UTILISATION_NOMENCLATURE/@commentaire"></br></xsl:if></xsl:otherwise></xsl:choose><xsl:if test="DEPART/UTILISATION_NOMENCLATURE/@ecart">[Ecart: / Gap:<xsl:value-of select="DEPART/UTILISATION_NOMENCLATURE/@ecart"/>]</xsl:if><xsl:if test="DEPART/UTILISATION_NOMENCLATURE/@commentaire"><b>Commentaire APN: / APN comments:<xsl:value-of select="DEPART/UTILISATION_NOMENCLATURE/@commentaire"/></b></xsl:if></font>
					<xsl:if test="DEPART/MTC/@*">
						<xsl:for-each select="DEPART/MTC">
							<xsl:if test="@*">
								</br>
								<font face='Arial, Helvetica, sans-serif' size='1pt'>&#160;- <xsl:value-of select="@millesime_deb"/> <xsl:value-of select="@millesime_fin"/> <xsl:value-of select="@mtceps"/></font>
							</xsl:if>
						</xsl:for-each>
					</xsl:if>
					</td>
					</xsl:if>
					<xsl:if test="ARRET/UTILISATION_NOMENCLATURE/@*">
					<xsl:choose>
					<xsl:when test="DEPART">
					<td align="left" nowrap="" width="50%">
								<font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:value-of select="ARRET/UTILISATION_NOMENCLATURE/@famille"/> <xsl:value-of select="ARRET/UTILISATION_NOMENCLATURE/@fonction_famille"/> <xsl:if test="ARRET/UTILISATION_NOMENCLATURE/@variante">[Var.: / Var.:<xsl:value-of select="ARRET/UTILISATION_NOMENCLATURE/@variante"/>]</xsl:if> <xsl:if test="ARRET/UTILISATION_NOMENCLATURE/@origine_variante">[Ori.: / Origin:<xsl:value-of select="ARRET/UTILISATION_NOMENCLATURE/@origine_variante"/>]</xsl:if> <xsl:if test="ARRET/UTILISATION_NOMENCLATURE/@solution">[SOL: / SOL:<xsl:value-of select="ARRET/UTILISATION_NOMENCLATURE/@solution"/>]</xsl:if> <xsl:if test="ARRET/UTILISATION_NOMENCLATURE/@origine_solution">[Ori.: / Origin:<xsl:value-of select="ARRET/UTILISATION_NOMENCLATURE/@origine_solution"/>]</xsl:if> <xsl:if test="ARRET/UTILISATION_NOMENCLATURE/@piece_generique">[N°PG: /PG N°:<xsl:value-of select="ARRET/UTILISATION_NOMENCLATURE/@piece_generique"/>]</xsl:if><xsl:if test="ARRET/UTILISATION_NOMENCLATURE/@reserve_usine">[Réservé usine: / Plant reserve:<xsl:value-of select="ARRET/UTILISATION_NOMENCLATURE/@reserve_usine"/> <xsl:if test="ARRET/UTILISATION_NOMENCLATURE/@fam_Ppum">/ Fam Ppum: <xsl:value-of select="ARRET/UTILISATION_NOMENCLATURE/@fam_Ppum"/></xsl:if>]</xsl:if> <xsl:if test="ARRET/UTILISATION_NOMENCLATURE/@coefficient">[Coef.: / Quantity:<xsl:value-of select="ARRET/UTILISATION_NOMENCLATURE/@coefficient"/>]</xsl:if><xsl:choose><xsl:when test="ARRET/UTILISATION_NOMENCLATURE/@sol_ext"></br></xsl:when><xsl:when test="ARRET/UTILISATION_NOMENCLATURE/@code_aval"></br></xsl:when><xsl:when test="ARRET/UTILISATION_NOMENCLATURE/@code_assembe"></br></xsl:when><xsl:when test="ARRET/UTILISATION_NOMENCLATURE/@centre_de_frais"></br></xsl:when></xsl:choose><xsl:if test="ARRET/UTILISATION_NOMENCLATURE/@sol_ext">[Sol ext.: / Ext. Sol.:<xsl:value-of select="ARRET/UTILISATION_NOMENCLATURE/@sol_ext"/>]</xsl:if> <xsl:if test="ARRET/UTILISATION_NOMENCLATURE/@code_aval">[C. FEV: / C. FEV:<xsl:value-of select="ARRET/UTILISATION_NOMENCLATURE/@code_aval"/>]</xsl:if> <xsl:if test="ARRET/UTILISATION_NOMENCLATURE/@code_assembe">[C. ass.: / Ass.C.:<xsl:value-of select="ARRET/UTILISATION_NOMENCLATURE/@code_assembe"/>]</xsl:if> <xsl:if test="ARRET/UTILISATION_NOMENCLATURE/@centre_de_frais">[CdF.: / C ctr.:<xsl:value-of select="ARRET/UTILISATION_NOMENCLATURE/@centre_de_frais"/>]</xsl:if> <xsl:choose><xsl:when test="ARRET/UTILISATION_NOMENCLATURE/@ecart"></br></xsl:when><xsl:otherwise><xsl:if test="ARRET/UTILISATION_NOMENCLATURE/@commentaire"></br></xsl:if></xsl:otherwise></xsl:choose><xsl:if test="ARRET/UTILISATION_NOMENCLATURE/@ecart">[Ecart: / Gap:<xsl:value-of select="ARRET/UTILISATION_NOMENCLATURE/@ecart"/>]</xsl:if><xsl:if test="ARRET/UTILISATION_NOMENCLATURE/@commentaire"><b>Commentaire APN: / APN comments:<xsl:value-of select="ARRET/UTILISATION_NOMENCLATURE/@commentaire"/></b></xsl:if></font>
						<xsl:if test="ARRET/MTC/@*">
							<xsl:for-each select="ARRET/MTC">
								<xsl:if test="@*">
								</br>
									<font face='Arial, Helvetica, sans-serif' size='1pt'>&#160;- <xsl:value-of select="@millesime_deb"/> <xsl:value-of select="@millesime_fin"/> <xsl:value-of select="@mtceps"/></font>
								</xsl:if>
							</xsl:for-each>
						</xsl:if>
					</td>
					</xsl:when>
					<xsl:otherwise>
					<td align="left" width="50%">&#160;</td>
					<td align="left" nowrap="" width="50%">
							<font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:value-of select="ARRET/UTILISATION_NOMENCLATURE/@famille"/> <xsl:value-of select="ARRET/UTILISATION_NOMENCLATURE/@fonction_famille"/> <xsl:if test="ARRET/UTILISATION_NOMENCLATURE/@variante">[Var.: / Var.:<xsl:value-of select="ARRET/UTILISATION_NOMENCLATURE/@variante"/>]</xsl:if> <xsl:if test="ARRET/UTILISATION_NOMENCLATURE/@origine_variante">[Ori.: / Origin:<xsl:value-of select="ARRET/UTILISATION_NOMENCLATURE/@origine_variante"/>]</xsl:if> <xsl:if test="ARRET/UTILISATION_NOMENCLATURE/@solution">[SOL: / SOL:<xsl:value-of select="ARRET/UTILISATION_NOMENCLATURE/@solution"/>]</xsl:if> <xsl:if test="ARRET/UTILISATION_NOMENCLATURE/@origine_solution">[Ori.: / Origin:<xsl:value-of select="ARRET/UTILISATION_NOMENCLATURE/@origine_solution"/>]</xsl:if> <xsl:if test="ARRET/UTILISATION_NOMENCLATURE/@piece_generique">[N°PG: /PG N°:<xsl:value-of select="ARRET/UTILISATION_NOMENCLATURE/@piece_generique"/>]</xsl:if><xsl:if test="ARRET/UTILISATION_NOMENCLATURE/@reserve_usine">[Réservé usine: / Plant reserve:<xsl:value-of select="ARRET/UTILISATION_NOMENCLATURE/@reserve_usine"/> <xsl:if test="ARRET/UTILISATION_NOMENCLATURE/@fam_Ppum">/ Fam Ppum: <xsl:value-of select="ARRET/UTILISATION_NOMENCLATURE/@fam_Ppum"/></xsl:if>]</xsl:if> <xsl:if test="ARRET/UTILISATION_NOMENCLATURE/@coefficient">[Coef.: / Quantity:<xsl:value-of select="ARRET/UTILISATION_NOMENCLATURE/@coefficient"/>]</xsl:if><xsl:choose><xsl:when test="ARRET/UTILISATION_NOMENCLATURE/@sol_ext"></br></xsl:when><xsl:when test="ARRET/UTILISATION_NOMENCLATURE/@code_aval"></br></xsl:when><xsl:when test="ARRET/UTILISATION_NOMENCLATURE/@code_assembe"></br></xsl:when><xsl:when test="ARRET/UTILISATION_NOMENCLATURE/@centre_de_frais"></br></xsl:when></xsl:choose><xsl:if test="ARRET/UTILISATION_NOMENCLATURE/@sol_ext">[Sol ext.: / Ext. Sol.:<xsl:value-of select="ARRET/UTILISATION_NOMENCLATURE/@sol_ext"/>]</xsl:if> <xsl:if test="ARRET/UTILISATION_NOMENCLATURE/@code_aval">[C. FEV: / C. FEV:<xsl:value-of select="ARRET/UTILISATION_NOMENCLATURE/@code_aval"/>]</xsl:if> <xsl:if test="ARRET/UTILISATION_NOMENCLATURE/@code_assembe">[C. ass.: / Ass.C.:<xsl:value-of select="ARRET/UTILISATION_NOMENCLATURE/@code_assembe"/>]</xsl:if> <xsl:if test="ARRET/UTILISATION_NOMENCLATURE/@centre_de_frais">[CdF.: / C ctr.:<xsl:value-of select="ARRET/UTILISATION_NOMENCLATURE/@centre_de_frais"/>]</xsl:if> <xsl:choose><xsl:when test="ARRET/UTILISATION_NOMENCLATURE/@ecart"></br></xsl:when><xsl:otherwise><xsl:if test="ARRET/UTILISATION_NOMENCLATURE/@commentaire"></br></xsl:if></xsl:otherwise></xsl:choose><xsl:if test="ARRET/UTILISATION_NOMENCLATURE/@ecart">[Ecart: / Gap:<xsl:value-of select="ARRET/UTILISATION_NOMENCLATURE/@ecart"/>]</xsl:if><xsl:if test="ARRET/UTILISATION_NOMENCLATURE/@commentaire"><b>Commentaire APN: / APN comments:<xsl:value-of select="ARRET/UTILISATION_NOMENCLATURE/@commentaire"/></b></xsl:if></font>
					<xsl:if test="ARRET/MTC/@*">
						<xsl:for-each select="ARRET/MTC">
							<xsl:if test="@*">
							</br>
								<font face='Arial, Helvetica, sans-serif' size='1pt'>&#160;- <xsl:value-of select="@millesime_deb"/> <xsl:value-of select="@millesime_fin"/> <xsl:value-of select="@mtceps"/></font>
							</xsl:if>
						</xsl:for-each>
					</xsl:if>
					</td>
					</xsl:otherwise>
					</xsl:choose>
					</xsl:if>

				</tr>

				<xsl:choose>
				<xsl:when test="DEPART/UTILISATION_NOMENCLATURE">
					<tr>
						<td  colspan="2"><hr SIZE="1" width="70%" color="#E3E3E3" /></td>
					</tr>
				</xsl:when>
				<xsl:when test="ARRET/UTILISATION_NOMENCLATURE">
					<tr>
						<td  colspan="2"><hr SIZE="1" width="70%" color="#E3E3E3" /></td>
					</tr>
				</xsl:when>
				</xsl:choose>
				</xsl:if>

</xsl:for-each>
		</xsl:template>

		<xsl:template match="PIECE_VARIATION_COMPO_FAB">
		<xsl:for-each select="SECTION">
						<xsl:if test="./*">
						<tr>
							<xsl:if test="DEPART/@*">
							<td width="50%">
							</br>

								<font face='Arial, Helvetica, sans-serif' size='3pt'><b>Départ: / Start:</b></br></font>
								<font face='Arial, Helvetica, sans-serif' size='2pt'><b>Pièce: / Part:</b></font>
								<font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:value-of select="DEPART/@piece"/> [Dés. abrégée: / Abbreviated:<xsl:value-of select="DEPART/@designation_abrege"/>] [Unité comptage: / Counting unit:<xsl:value-of select="DEPART/@unite_comptage"/>]</br> [T. Prod.: / Prod. Typ.:<xsl:value-of select="DEPART/@type_produit"/>] [Appro.: / Suppl.:<xsl:value-of select="DEPART/@code_graphiqueur"/>] [RSE: / RSE:<xsl:value-of select="DEPART/@rse"/>] [Section achat: / Cost center:<xsl:value-of select="DEPART/@section_achat"/>] [Validité: / Validity:<xsl:value-of select="DEPART/@validite"/>]</font>
							</td>
							</xsl:if>
							<xsl:if test="ARRET/@*">
							<xsl:choose>
							<xsl:when test="DEPART/@*">
							<td width="50%">
							</br>
								<font face='Arial, Helvetica, sans-serif' size='3pt'><b>Arrêt: / Abolition:</b></br></font>
								<font face='Arial, Helvetica, sans-serif' size='2pt'><b>Pièce: / Part:</b></font>
								<font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:value-of select="ARRET/@piece"/> [Dés. abrégée: / Abbreviated:<xsl:value-of select="ARRET/@designation_abrege"/>] [Unité comptage: / Counting unit:<xsl:value-of select="ARRET/@unite_comptage"/>]</br> [T. Prod.: / Prod. Typ.:<xsl:value-of select="ARRET/@type_produit"/>] [Appro.: / Suppl.:<xsl:value-of select="ARRET/@code_graphiqueur"/>] [RSE: / RSE:<xsl:value-of select="ARRET/@rse"/>] [Section achat: / Cost center:<xsl:value-of select="ARRET/@section_achat"/>] [Validité: / Validity:<xsl:value-of select="ARRET/@validite"/>]</font>
							</td>
							</xsl:when>
							<xsl:otherwise>
							<td width="50%">&#160;</td>
							<td width="50%">
							</br>
								<font face='Arial, Helvetica, sans-serif' size='3pt'><b>Arrêt: / Abolition:</b></br></font>
								<font face='Arial, Helvetica, sans-serif' size='2pt'><b>Pièce: / Part:</b></font>
								<font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:value-of select="ARRET/@piece"/> [Dés. abrégée: / Abbreviated:<xsl:value-of select="ARRET/@designation_abrege"/>] [Unité comptage: / Counting unit:<xsl:value-of select="ARRET/@unite_comptage"/>]</br> [T. Prod.: / Prod. Typ.:<xsl:value-of select="ARRET/@type_produit"/>] [Appro.: / Suppl.:<xsl:value-of select="ARRET/@code_graphiqueur"/>] [RSE: / RSE:<xsl:value-of select="ARRET/@rse"/>] [Section achat: / Cost center:<xsl:value-of select="ARRET/@section_achat"/>] [Validité: / Validity:<xsl:value-of select="ARRET/@validite"/>]</font>
							</td>
							</xsl:otherwise>

							</xsl:choose>

							</xsl:if>
							<xsl:if test="SUPPRESSION">
							<td width="50%">&#160;</td>
							<td width="50%">
							</br>
								<font face='Arial, Helvetica, sans-serif' size='3pt'><b>Suppression: / Abolition:</b></br></font>
								<font face='Arial, Helvetica, sans-serif' size='2pt'><b>Pièce: / Part:</b></font>
								<font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:value-of select="SUPPRESSION/@piece"/> [Dés. abrégée: / Abbreviated:<xsl:value-of select="SUPPRESSION/@designation_abrege"/>] [Unité comptage: / Counting unit:<xsl:value-of select="SUPPRESSION/@unite_comptage"/>]</br> [T. Prod.: / Prod. Typ.:<xsl:value-of select="SUPPRESSION/@type_produit"/>] [Appro.: / Suppl.:<xsl:value-of select="SUPPRESSION/@code_graphiqueur"/>] [RSE: / RSE:<xsl:value-of select="SUPPRESSION/@rse"/>] [Section achat: / Cost center:<xsl:value-of select="SUPPRESSION/@section_achat"/>] [Validité: / Validity:<xsl:value-of select="SUPPRESSION/@validite"/>]</font>
							</td>
							</xsl:if>
						</tr>
						</xsl:if>
						<xsl:if test="*/UTILISATION_ASSEMBLE/@*">
						<tr>
							<xsl:if test="DEPART/@*">
							<xsl:if test="DEPART/UTILISATION_ASSEMBLE/@*">
							<td width="50%">
							</br>
								<font face='Arial, Helvetica, sans-serif' size='2pt'><b>Utilisation assemble: / Assembly use:</b></font>
							</td>
							</xsl:if>
							</xsl:if>
							<xsl:if test="ARRET/@*">
							<xsl:if test="ARRET/UTILISATION_ASSEMBLE/@*">
							<xsl:choose>
							<xsl:when test="DEPART">
							<td width="50%">
							</br>
								<font face='Arial, Helvetica, sans-serif' size='2pt'><b>Utilisation assemble: / Assembly use:</b></font>
							</td>
							</xsl:when>
							<xsl:otherwise>
							<td width="50%">&#160;</td>
							<td width="50%">
							</br>
								<font face='Arial, Helvetica, sans-serif' size='2pt'><b>Utilisation assemble: / Assembly use:</b></font>
							</td>
							</xsl:otherwise>
							</xsl:choose>
							</xsl:if>
							</xsl:if>
							<xsl:if test="SUPPRESSION/UTILISATION_ASSEMBLE/@*">
							<td width="50%">&#160;</td>
							<td width="50%">
							</br>
								<font face='Arial, Helvetica, sans-serif' size='2pt'><b>Utilisation assemble: / Assembly use:</b></font>
							</td>
							</xsl:if>
						</tr>
						<tr valign="top">
							<xsl:if test="DEPART/UTILISATION_ASSEMBLE/@*">
							<td width="50%">
										<font face='Arial, Helvetica, sans-serif' size='1pt'><font STYLE="background-color: #E3E3E3"><xsl:value-of select="DEPART/UTILISATION_ASSEMBLE/@piece"/></font><xsl:if test="DEPART/UTILISATION_ASSEMBLE/@alternative">[Alt: /Alt:<xsl:value-of select="DEPART/UTILISATION_ASSEMBLE/@alternative"/>]</xsl:if> <xsl:if test="DEPART/UTILISATION_ASSEMBLE/@num_ordre">[N.Ordre: / Order N°<xsl:value-of select="DEPART/UTILISATION_ASSEMBLE/@num_ordre"/>]</xsl:if> <xsl:if test="DEPART/UTILISATION_ASSEMBLE/@num_sequence">[N.Sequence: / Sequence N.:<xsl:value-of select="DEPART/UTILISATION_ASSEMBLE/@num_sequence"/>]</xsl:if> <xsl:if test="DEPART/UTILISATION_ASSEMBLE/@coefficient">[Coef.: / Quantity:<xsl:value-of select="DEPART/UTILISATION_ASSEMBLE/@coefficient"/>]</xsl:if> <xsl:if test="DEPART/UTILISATION_ASSEMBLE/@designation_abrege">[Des.abregee: / Abbreviated:<xsl:value-of select="DEPART/UTILISATION_ASSEMBLE/@designation_abrege"/>]</xsl:if></br> <xsl:if test="DEPART/UTILISATION_ASSEMBLE/@aval_gpro">[Code aval GPRO: / Downstream GPRO code:<xsl:value-of select="DEPART/UTILISATION_ASSEMBLE/@aval_gpro"/>]</xsl:if><xsl:if test="DEPART/UTILISATION_ASSEMBLE/@code_graphiqueur">[Appro.: / Suppl.:<xsl:value-of select="DEPART/UTILISATION_ASSEMBLE/@code_graphiqueur"/>]</xsl:if></br></br></font>
							</td>
							</xsl:if>
							<xsl:if test="ARRET/UTILISATION_ASSEMBLE/@*">
							<xsl:choose>
							<xsl:when test="DEPART">
							<td width="50%">
										<font face='Arial, Helvetica, sans-serif' size='1pt'><font STYLE="background-color: #E3E3E3"><xsl:value-of select="ARRET/UTILISATION_ASSEMBLE/@piece"/></font><xsl:if test="ARRET/UTILISATION_ASSEMBLE/@alternative">[Alt: /Alt:<xsl:value-of select="ARRET/UTILISATION_ASSEMBLE/@alternative"/>]</xsl:if> <xsl:if test="ARRET/UTILISATION_ASSEMBLE/@num_ordre">[N.Ordre: / Order N°<xsl:value-of select="ARRET/UTILISATION_ASSEMBLE/@num_ordre"/>]</xsl:if> <xsl:if test="ARRET/UTILISATION_ASSEMBLE/@num_sequence">[N.Sequence: / Sequence N.:<xsl:value-of select="ARRET/UTILISATION_ASSEMBLE/@num_sequence"/>]</xsl:if> <xsl:if test="ARRET/UTILISATION_ASSEMBLE/@coefficient">[Coef.: / Quantity:<xsl:value-of select="ARRET/UTILISATION_ASSEMBLE/@coefficient"/>]</xsl:if> <xsl:if test="ARRET/UTILISATION_ASSEMBLE/@designation_abrege">[Des.abregee: / Abbreviated:<xsl:value-of select="ARRET/UTILISATION_ASSEMBLE/@designation_abrege"/>]</xsl:if></br> <xsl:if test="ARRET/UTILISATION_ASSEMBLE/@aval_gpro">[Code aval GPRO: / Downstream GPRO code:<xsl:value-of select="ARRET/UTILISATION_ASSEMBLE/@aval_gpro"/>]</xsl:if><xsl:if test="ARRET/UTILISATION_ASSEMBLE/@code_graphiqueur">[Appro.: / Suppl.:<xsl:value-of select="ARRET/UTILISATION_ASSEMBLE/@code_graphiqueur"/>]</xsl:if></br></br></font>
							</td>
							</xsl:when>
							<xsl:otherwise>
							<td width="50%">&#160;</td>
							<td width="50%">
										<font face='Arial, Helvetica, sans-serif' size='1pt'><font STYLE="background-color: #E3E3E3"><xsl:value-of select="ARRET/UTILISATION_ASSEMBLE/@piece"/></font><xsl:if test="ARRET/UTILISATION_ASSEMBLE/@alternative">[Alt: /Alt:<xsl:value-of select="ARRET/UTILISATION_ASSEMBLE/@alternative"/>]</xsl:if> <xsl:if test="ARRET/UTILISATION_ASSEMBLE/@num_ordre">[N.Ordre: / Order N°<xsl:value-of select="ARRET/UTILISATION_ASSEMBLE/@num_ordre"/>]</xsl:if> <xsl:if test="ARRET/UTILISATION_ASSEMBLE/@num_sequence">[N.Sequence: / Sequence N.:<xsl:value-of select="ARRET/UTILISATION_ASSEMBLE/@num_sequence"/>]</xsl:if> <xsl:if test="ARRET/UTILISATION_ASSEMBLE/@coefficient">[Coef.: / Quantity:<xsl:value-of select="ARRET/UTILISATION_ASSEMBLE/@coefficient"/>]</xsl:if> <xsl:if test="ARRET/UTILISATION_ASSEMBLE/@designation_abrege">[Des.abregee: / Abbreviated:<xsl:value-of select="ARRET/UTILISATION_ASSEMBLE/@designation_abrege"/>]</xsl:if></br> <xsl:if test="ARRET/UTILISATION_ASSEMBLE/@aval_gpro">[Code aval GPRO: / Downstream GPRO code:<xsl:value-of select="ARRET/UTILISATION_ASSEMBLE/@aval_gpro"/>]</xsl:if><xsl:if test="ARRET/UTILISATION_ASSEMBLE/@code_graphiqueur">[Appro.: / Suppl.:<xsl:value-of select="ARRET/UTILISATION_ASSEMBLE/@code_graphiqueur"/>]</xsl:if></br></br></font>
							</td>
							</xsl:otherwise>
							</xsl:choose>
							</xsl:if>
							<xsl:if test="SUPPRESSION/UTILISATION_ASSEMBLE/@*">
							<td width="50%">&#160;</td>
							<td width="50%">
											<font face='Arial, Helvetica, sans-serif' size='1pt'><font STYLE="background-color: #E3E3E3"><xsl:value-of select="SUPPRESSION/UTILISATION_ASSEMBLE/@piece"/></font><xsl:if test="SUPPRESSION/UTILISATION_ASSEMBLE/@alternative">[Alt: /Alt:<xsl:value-of select="SUPPRESSION/UTILISATION_ASSEMBLE/@alternative"/>]</xsl:if> <xsl:if test="SUPPRESSION/UTILISATION_ASSEMBLE/@num_ordre">[N.Ordre: / Order N°<xsl:value-of select="SUPPRESSION/UTILISATION_ASSEMBLE/@num_ordre"/>]</xsl:if> <xsl:if test="SUPPRESSION/UTILISATION_ASSEMBLE/@num_sequence">[N.Sequence: / Sequence N.:<xsl:value-of select="SUPPRESSION/UTILISATION_ASSEMBLE/@num_sequence"/>]</xsl:if> <xsl:if test="SUPPRESSION/UTILISATION_ASSEMBLE/@coefficient">[Coef.: / Quantity:<xsl:value-of select="SUPPRESSION/UTILISATION_ASSEMBLE/@coefficient"/>]</xsl:if> <xsl:if test="SUPPRESSION/UTILISATION_ASSEMBLE/@designation_abrege">[Des.abregee: / Abbreviated:<xsl:value-of select="SUPPRESSION/UTILISATION_ASSEMBLE/@designation_abrege"/>]</xsl:if></br> <xsl:if test="SUPPRESSION/UTILISATION_ASSEMBLE/@aval_gpro">[Code aval GPRO: / Downstream GPRO code:<xsl:value-of select="SUPPRESSION/UTILISATION_ASSEMBLE/@aval_gpro"/>]</xsl:if><xsl:if test="SUPPRESSION/UTILISATION_ASSEMBLE/@code_graphiqueur">[Appro.: / Suppl.:<xsl:value-of select="SUPPRESSION/UTILISATION_ASSEMBLE/@code_graphiqueur"/>]</xsl:if></font>
							</td>
							</xsl:if>
						</tr>
						<xsl:if test="*/UTILISATION_ASSEMBLE/@suivi">
							<tr valign="top">
							<xsl:if test="DEPART/UTILISATION_ASSEMBLE/@suivi">
								<td width="50%">
									<font face='Arial, Helvetica, sans-serif' size='1pt'><b>Conditions d'application spécifiques: / Specific application terms:</b></font>
									<font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:if test="DEPART/UTILISATION_ASSEMBLE/@date_prevue">[Date prévue: / Forecasted date <xsl:value-of select="DEPART/UTILISATION_ASSEMBLE/@date_prevue"/>]</xsl:if> <xsl:if test="DEPART/UTILISATION_ASSEMBLE/@date_reelle">[Date Réelle: /Real Date:<xsl:value-of select="DEPART/UTILISATION_ASSEMBLE/@date_reelle"/>]</xsl:if> <xsl:if test="DEPART/UTILISATION_ASSEMBLE/@suivi">[Suivi: / Following:<xsl:value-of select="DEPART/UTILISATION_ASSEMBLE/@suivi"/>]</xsl:if></font>
								</td>
							</xsl:if>
							<xsl:if test="ARRET/UTILISATION_ASSEMBLE/@suivi">
							<xsl:choose>
							<xsl:when test="DEPART/UTILISATION_ASSEMBLE/@suivi">
								<td width="50%">
									<font face='Arial, Helvetica, sans-serif' size='1pt'><b>Conditions d'application spécifiques: / Specific application terms:</b></font>
									<font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:if test="ARRET/UTILISATION_ASSEMBLE/@date_prevue">[Date prévue: / Forecasted date <xsl:value-of select="ARRET/UTILISATION_ASSEMBLE/@date_prevue"/>]</xsl:if> <xsl:if test="ARRET/UTILISATION_ASSEMBLE/@date_reelle">[Date Réelle: /Real Date:<xsl:value-of select="ARRET/UTILISATION_ASSEMBLE/@date_reelle"/>]</xsl:if> <xsl:if test="ARRET/UTILISATION_ASSEMBLE/@suivi">[Suivi: / Following:<xsl:value-of select="ARRET/UTILISATION_ASSEMBLE/@suivi"/>]</xsl:if></font>
								</td>
							</xsl:when>
							<xsl:otherwise>
							<td width="50%">&#160;</td>
							<td width="50%">
								<font face='Arial, Helvetica, sans-serif' size='1pt'><b>Conditions d'application spécifiques: / Specific application terms:</b></font>
								<font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:if test="ARRET/UTILISATION_ASSEMBLE/@date_prevue">[Date prévue: / Forecasted date <xsl:value-of select="ARRET/UTILISATION_ASSEMBLE/@date_prevue"/>]</xsl:if> <xsl:if test="ARRET/UTILISATION_ASSEMBLE/@date_reelle">[Date Réelle: /Real Date:<xsl:value-of select="ARRET/UTILISATION_ASSEMBLE/@date_reelle"/>]</xsl:if> <xsl:if test="ARRET/UTILISATION_ASSEMBLE/@suivi">[Suivi: / Following:<xsl:value-of select="ARRET/UTILISATION_ASSEMBLE/@suivi"/>]</xsl:if></font>
							</td>
							</xsl:otherwise>
							</xsl:choose>

							</xsl:if>
							<xsl:if test="SUPPRESSION/UTILISATION_ASSEMBLE/@suivi">
							<td width="50%">&#160;</td>
							<td width="50%">
									<font face='Arial, Helvetica, sans-serif' size='1pt'><b>Conditions d'application spécifiques: / Specific application terms:</b></font>
									<font face='Arial, Helvetica, sans-serif' size='1pt'><xsl:if test="SUPPRESSION/UTILISATION_ASSEMBLE/@date_prevue">[Date prévue: / Forecasted date <xsl:value-of select="SUPPRESSION/UTILISATION_ASSEMBLE/@date_prevue"/>]</xsl:if> <xsl:if test="SUPPRESSION/UTILISATION_ASSEMBLE/@date_reelle">[Date Réelle: /Real Date:<xsl:value-of select="SUPPRESSION/UTILISATION_ASSEMBLE/@date_reelle"/>]</xsl:if> <xsl:if test="SUPPRESSION/UTILISATION_ASSEMBLE/@suivi">[Suivi: / Following:<xsl:value-of select="SUPPRESSION/UTILISATION_ASSEMBLE/@suivi"/>]</xsl:if></font>
							</td>
							</xsl:if>
							</tr>
						</xsl:if>

				</xsl:if>

			</xsl:for-each>

				<tr>
				<td  colspan="2"><hr SIZE="1" width="70%" color="#E3E3E3" /></td>
				</tr>

		</xsl:template>

</xsl:stylesheet>
