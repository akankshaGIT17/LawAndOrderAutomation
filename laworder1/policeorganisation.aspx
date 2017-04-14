<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/Main.Master" CodeBehind="policeorganisation.aspx.cs" Inherits="laworder1.policeorganisation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<!-- Menu Start -->
	
<!-- Menu End -->
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
	<tr><td align="center"><h1>Organisation chart</h1></td></tr>
	<tr><td align="right">Law and order only show in this chart</td></tr>
	<tr>
		<td align="center">
		<div id="menu">
		<strong>Click on the plus icons</strong>
			<script type="text/javascript">
			    mytree = new dTree('mytree');


			    mytree.add(145, -1, 'DGP', '#', 'Developers', '', '');

			    mytree.add(147, 145, 'DGP/Mod ', '#', '', '', '');
			    mytree.add(148, 145, 'ADGP/Admin ', '#', '', '', '');
			    mytree.add(149, 145, 'ADGP/L & O ', '#', '', '', '');
			    mytree.add(150, 145, 'DG/CrimeMod ', '#', '', '', '');
			    mytree.add(151, 147, 'IGP/Mod ', '#', '', '', '');
			    mytree.add(152, 147, '   &nbsp;&nbsp;&nbsp;   IGP/IT ', '#', '', '', '');
			   
			    mytree.add(153, 148, '    &nbsp;&nbsp;&nbsp;   IGP/Admin    ', '#', '', '', '');
			    mytree.add(154, 148, '    &nbsp;&nbsp;&nbsp;   AIG/Admin        ', '#', '', '', '');
			    mytree.add(155, 149, '    &nbsp;&nbsp;&nbsp;   IGP/L & O      ', '#', '', '', '');

			    mytree.add(156, 150, '    &nbsp;&nbsp;&nbsp;    IGP/CAW  ', '#', '', '', '');


			    mytree.add(157, 151, '    &nbsp;&nbsp;&nbsp;   AIG/Wel.    ', '#', '', '', '');
			    mytree.add(158, 151, '    &nbsp;&nbsp;&nbsp;   AIG/Prov.    ', '#', '', '', '');
			    mytree.add(159, 152, '    &nbsp;&nbsp;&nbsp;   SP/tele.    ', '#', '', '', '');

			    mytree.add(160, 153, '  &nbsp;&nbsp;&nbsp;     Trg.    ', '#', '', '', '');
			    mytree.add(161, 153, '   &nbsp;&nbsp;&nbsp;    Gnl. Admin     ', '#', '', '', '');
			    mytree.add(162, 153, ' &nbsp;&nbsp;&nbsp;      AD/o   ', '#', '', '', '');
			    mytree.add(163, 153, ' &nbsp;&nbsp;&nbsp;     DA/DDA    ', '#', '', '', '');
			    mytree.add(164, 154, ' &nbsp;&nbsp;&nbsp;     ESTT-I    ', '#', '', '', '');

			    mytree.add(165, 155, '  &nbsp;&nbsp;&nbsp;     Operations    ', '#', '', '', '');
			    mytree.add(166, 155, '   &nbsp;&nbsp;&nbsp;    Camplaints    ', '#', '', '', '');
			    mytree.add(167, 155, ' &nbsp;&nbsp;&nbsp;      Special Cell   ', '#', '', '', '');
			    mytree.add(168, 155, ' &nbsp;&nbsp;&nbsp;     Internal Vig. Cell   ', '#', '', '', '');
			    mytree.add(169, 155, ' &nbsp;&nbsp;&nbsp;     POs Cell   ', '#', '', '', '');

			    mytree.add(170, 156, ' &nbsp;&nbsp;&nbsp;     CAW Cell   ', '#', '', '', '');
			    mytree.add(171, 157, ' &nbsp;&nbsp;&nbsp;     Welfare   ', '#', '', '', '');
			    mytree.add(172, 158, ' &nbsp;&nbsp;&nbsp;     Prov.   ', '#', '', '', '');
			    mytree.add(173, 159, ' &nbsp;&nbsp;&nbsp;     IT Cell   ', '#', '', '', '');
			    mytree.add(174, 155, ' &nbsp;&nbsp;&nbsp;     Operations   ', '#', '', '', '');
			    

			    document.write(mytree); 

</script> 
</div>			
		</td>
	</tr>
</table></td>


</tr>



</table>
<table width="100%">
<tr>
<td valign="bottom"  colspan="2" align="center">

</td>
</tr>
</table>

<!--content column end -->


</asp:Content>