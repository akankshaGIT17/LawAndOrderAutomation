<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/admin/Admin.Master" CodeBehind="message.aspx.cs" Inherits="laworder1.admin.message" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<table width='100%' >
			<tr>
				
				
				<td width="100%" valign="top">
<div align='center'>
		
					<h2>
                        <asp:Label ID="lblMsg" runat="server" Text="" ForeColor="green"></asp:Label></h2>
					
				</div>
<div align="center">
		<table width='90%' align='center' cellspacing='5' cellpadding="5" class='back' style='text-align:left;vertical-align: top'>
				
				<tr>
					<td colspan="2" class='color'><center><h3>
                        <asp:Label ID="lblMsg1" runat="server" Text="" ForeColor="green"></asp:Label></h3></center></td>
					</tr></table></div>
                    </table>


<div align='center'>
		
					<h2>
                        <asp:Label ID="lblErr" runat="server" Text="" ForeColor="red"></asp:Label></h2>
					
				</div>
<div align="center">
		<table width='90%' align='center' cellspacing='5' cellpadding="5" class='back' style='text-align:left;vertical-align: top'>
				
				<tr>
					<td colspan="2" class='color'><center><h3>
                        <asp:Label ID="lblErr2" runat="server" Text="" ForeColor="red"></asp:Label></h3></center></td>
					</tr></table></div></td></tr></table>
                    
                    
                    
                    </td></tr></table>




</asp:Content>