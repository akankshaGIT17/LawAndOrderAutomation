<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/admin/Admin.Master" CodeBehind="lawacts.aspx.cs" Inherits="laworder1.admin.lawacts" %>
<%@ MasterType VirtualPath="~/admin/Admin.Master" %> 
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<center>

<h2>Add Law &amp; Acts</h2></center><center>
<table width="500px" cellpadding="5" cellpadding="5" class="back">
		<tr><td colspan=3><h3>Add a Law</h3></td></tr>
        <tr>
                        <td class="style4">
                            Section</td>
                        <td>
                            <asp:TextBox ID="txtSection" runat="server" title="Enter section" 
                                 ></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvPinCode" runat="server" 
                                ControlToValidate="txtSection" ErrorMessage="Please Enter Section." Display="None"
                                SetFocusOnError="True" ValidationGroup="valAdd"></asp:RequiredFieldValidator>
                                
                        </td></tr><tr>

			<td class="style4">Name
			</td>
			<td>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                         ControlToValidate="txtName" ErrorMessage="Enter law name." Display="None" 
                         SetFocusOnError="True" ValidationGroup="valAdd"></asp:RequiredFieldValidator>
			</td>
		</tr>
		
		 
                        
		
		
	
			<tr><td class="style5">Description:</td>
 				<td class="style6">
  					
                     <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="txtDescription" ErrorMessage="Please Enter Descrition." Display="None"
                                SetFocusOnError="True" ValidationGroup="valAdd"></asp:RequiredFieldValidator>	
 				</td>
				 
 				
			</tr>
			
			<tr>
            <td colspan=2>&nbsp;</td></tr>
			<tr>
				<td colspan="3" style="text-align:center;">
                    <asp:Button ID="btnCreate" runat="server" Text="Submit" 
                        onclick="btnCreate_Click" ValidationGroup="valAdd&quot;" /></td>
				<td></td>
			</tr>
		</table>
		
	<table>

</table>
<table width="500px" cellpadding="5" cellpadding="5" class="back">
			<tr><td colspan=3><h3>Remove a Law</h3></td></tr>
			<td class="style4">Act
			</td>
			<td>
                <asp:TextBox ID="txtAct" runat="server" AutoPostBack="True" 
                    ontextchanged="txtAct_TextChanged"></asp:TextBox> <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                         ControlToValidate="txtAct" ErrorMessage="Enter act." Display="None" 
                         SetFocusOnError="True" ValidationGroup="valDel"></asp:RequiredFieldValidator>
			</td>
		</tr>
		<tr>
			<td class="style4"><!-- Blank Line Added for visual appearance --></td>
		</tr>
		 <tr>
                        <td class="style4">
                            Name</td>
                        <td>
                            <asp:TextBox ID="txtName2" runat="server" title="Enter section" 
                                 ></asp:TextBox>
                                
                                
                        </td</tr>
                        
		
		
	
			<tr><td class="style5">Description:</td>
 				<td class="style6">
  					
                     <asp:TextBox ID="txtDescrition2" runat="server" TextMode="MultiLine"></asp:TextBox>
                     
 				</td>
				 
 				
			</tr>
			
			<tr>
				<td   style="text-align:center;">
                    <asp:Button ID="btnUpdate" runat="server" Text="Updated" onclick="btnUpdate_Click" 
                         /></td>
				<td><asp:Button ID="btnDelete" runat="server" Text="Delete" 
                        onclick="btnDelete_Click" ValidationGroup="valDel"  
                         /></td>
			</tr>
		</table>
		
	<table>

</table>
<asp:ValidationSummary ID="ValidationSummary2" runat="server" ShowMessageBox="true" ShowSummary="false" />

</asp:Content>
