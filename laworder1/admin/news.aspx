<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/admin/Admin.Master" CodeBehind="news.aspx.cs" Inherits="laworder1.admin.news" %>

<%@ MasterType VirtualPath="~/admin/Admin.Master" %> 
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<center>

<h2>Add News Updates</h2></center><center>
<table width="500px" cellpadding="5" cellpadding="5" class="back">
		<tr><td colspan=3><h3>Add a Headline</h3></td></tr>
        
		
		 
                        
		
		
	
			<tr><td class="style5">Headline:</td>
 				<td class="style6">
  					
                     <asp:TextBox ID="txtHeadline" runat="server" TextMode="MultiLine" Height="39px" 
                         Width="184px"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="txtHeadline" 
                         ErrorMessage="Please Enter Headlines." Display="None"
                                SetFocusOnError="True"></asp:RequiredFieldValidator>
 				</td>
				 
 				
			</tr>
			
			<tr>
            <td colspan=2>
                <asp:Label ID="lblNews" runat="server" Font-Bold="True" ForeColor="#009900"></asp:Label>
                </td></tr>
			<tr>
				<td colspan="3" style="text-align:center;">
                    <asp:Button ID="btnCreate" runat="server" Text="Flash!" 
                        onclick="btnCreate_Click" /></td>
				<td></td>
			</tr>
		</table>
		<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="true" ShowSummary="false" />
	<table>
    </table>

























</center>
</asp:Content>