<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/admin/Admin.Master" CodeBehind="addpolicestation.aspx.cs" Inherits="laworder1.admin.addpolicestation" %>
<%@ MasterType VirtualPath="~/admin/Admin.Master" %> 
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<center>

<h2>Add a police station</h2></center><center>
<table width="500px" cellpadding="5" cellpadding="5" class="back">
		<tr>
			<td class="style4">Station Name
			</td>
			<td>
                <asp:TextBox ID="txtStation" runat="server"></asp:TextBox> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                         ControlToValidate="txtStation" ErrorMessage="Enter station name." Display="None" 
                         SetFocusOnError="True"></asp:RequiredFieldValidator>
			</td>
		</tr>
		<tr>
			<td class="style4"><!-- Blank Line Added for visual appearance --></td>
		</tr>
		 <tr>
                        <td class="style4">
                            Pin Code:<span class='style3'>*</span>
                        </td>
                        <td>
                            <asp:TextBox ID="txtPinCode" runat="server" title="Enter your pin code" 
                                AutoPostBack="True" ontextchanged="txtPinCode_TextChanged"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvPinCode" runat="server" 
                                ControlToValidate="txtPinCode" ErrorMessage="Please Enter your pin code." Display="None"
                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Pin code must contain 6 digits." Display="None"
ControlToValidate="txtPinCode"    ValidationExpression="^[0-9]{6,6}$" />
                        </td</tr>
                        <tr>
                        <td class="style4">
                            Area: <span class='style3'>*</span>
                        </td>
                        <td>
                            <span id='arealistDIV'>
                                <asp:DropDownList ID="ddlPinCode" runat="server" 
                                onselectedindexchanged="ddlPinCode_SelectedIndexChanged" 
                                AutoPostBack="True">
                                    
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RrfvPinCode" runat="server" 
                                ControlToValidate="ddlPinCode" 
                                ErrorMessage="Please select your area" Display="None"
                                SetFocusOnError="True" InitialValue="Select Area" ></asp:RequiredFieldValidator>
                                
                            </span>
                        </td>
                    </tr>
		
		<tr>
			<td colspan="2">Assign police officers to that station(area should be selected)<br/><br/></td>
		</tr>	
	
			<tr><td class="style5">Police Officer Id:</td>
 				<td class="style6">
  					
                     <asp:TextBox ID="txtEmails" runat="server" TextMode="MultiLine"></asp:TextBox>	
 				</td>
				 <td class="style6">
					  <br/><br/>
					  <br/><br/>
					  <br/><br/>
					  &nbsp;</td>
 				<td class="style6">

                </td>
			</tr>
			<tr><td colspan="3"><br/></td></tr>
			<tr>
 				<td class="style4">
  				
  					Police 1:
 				</td>
				 <td>
                     <asp:TextBox ID="txtPolice1" runat="server"></asp:TextBox>
					  &nbsp;<asp:RequiredFieldValidator ID="rfvPolice1" runat="server" 
                         ControlToValidate="txtPolice1" ErrorMessage="Select atleast 1 police officer." Display="None" 
                         SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
 				<td>

  					&nbsp;</td>
			</tr>
            <tr>
 				<td class="style4">
  				
  					Police 2:
 				</td>
				 <td>
                     <asp:TextBox ID="txtPolice2" runat="server"></asp:TextBox>
					  &nbsp;</td>
 				<td>

  					&nbsp;</td>
			</tr>
            <tr>
 				<td class="style4">
  				
  					Police 3:
 				</td>
				 <td>
                     <asp:TextBox ID="txtPolice3" runat="server"></asp:TextBox>
					  &nbsp;</td>
 				<td>

  					&nbsp;</td>
			</tr>
			<tr>
				<td class="style4"><br/>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server"  ShowMessageBox="true" ShowSummary="false"/>
                    <br/></td>
			</tr>
			<tr>
				<td colspan="3" style="text-align:center;">
                    <asp:Button ID="btnCreate" runat="server" Text="Create" 
                        onclick="btnCreate_Click" /></td>
				<td></td>
			</tr>
		</table>
		
	<table>

</table>

</center>

<asp:ValidationSummary ID="ValidationSummary2" runat="server" ShowMessageBox="true" ShowSummary="false" />








</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .style3
        {
            width: 101px;
        }
        .style4
        {
            width: 116px;
        }
        .style5
        {
            width: 116px;
            height: 87px;
        }
        .style6
        {
            height: 87px;
        }
    </style>
</asp:Content>
