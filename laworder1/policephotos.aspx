<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Main.Master" CodeBehind="policephotos.aspx.cs" Inherits="laworder1.policephotos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<table width='100%' border="0">
<tr>
	<td width='25%' valign='top'>
	
<!-- Left column start-->

			<table cellspacing='5' cellpadding='5' class='back' style='text-align:left;' width='70%' >

<tr><td></td><td><span><a href='policeorganisation.aspx'>Organisation</a></span></td></tr>
	<tr><td></td><td><span><a href='policehistory.aspx'>History</a></span></td></tr>
	<tr><td></td><td><span><a href='policedepartment.aspx'>About Us</a></span></td></tr>
	<tr><td></td><td><span><a href='caseprogress.aspx'>Case Progress</a></span></td></tr>
	<tr><td></td><td><span><a href='policephotos.aspx'>Photos</a></span></td></tr>
	
</table>
</td>
<!-- Left column end -->

<!--content column start -->
<td width='75%' valign="top">
<table width='100%' border="0" >
	<tr><td align="center"><h1>Photo Gallery</h1></td></tr>
	<tr><td align="right"></td></tr>
	<tr>
		<td align="center">
		<div id="menu">
		<ul class="hoverbox">
		
		<li><a href="img/gallery/3.jpg" target="_blank"><img src="img/gallery/3.jpg" alt="police"  border="0" /><img src="img/gallery/3.jpg" alt="police" class="preview" /></a></li>
		<li><a href="img/gallery/4.jpg" target="_blank"><img src="img/gallery/4.jpg" alt="police"  border="0" /><img src="img/gallery/4.jpg" alt="police" class="preview" /></a></li>
		<li><a href="img/gallery/2.jpg" target="_blank"><img src="img/gallery/2.jpg" alt="police"  border="0" /><img src="img/gallery/2.jpg" alt="police" class="preview" /></a></li>
		<li><a href="img/gallery/1.jpg" target="_blank"><img src="img/gallery/1.jpg" alt="police"  border="0" /><img src="img/gallery/1.jpg" alt="police" class="preview" /></a></li>
		<li><a href="img/gallery/5.jpg" target="_blank"><img src="img/gallery/5.jpg" alt="police"  border="0" /><img src="img/gallery/5.jpg" alt="police" class="preview" /></a></li>
		
        </ul>
</div>			
		</td>
	</tr>
</table></td>


</tr>
<tr><td>

</td></tr>
</table>





</asp:Content>