<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/admin/Admin.Master" CodeBehind="addofficer.aspx.cs" Inherits="laworder1.admin.addofficer" %>
<%@ MasterType VirtualPath="~/admin/Admin.Master" %> 
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="AK" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
 

        <table style="text-align:left" class="back" >
        <tr>
        <td>
        <table style="text-align:center"  >
		<tr>
		<td class="style4"><h2>Add Police Officer</h2>
		</td></tr></table>
<table style="text-align:left" class="back" >
		<tr>
		<td>E-mail Id
		</td>
		<td>
            <asp:TextBox ID="txtEmail" runat="server">
            </asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvEmailId" runat="server" 
                                ControlToValidate="txtEmail" ErrorMessage="Enter Email Id" Display="None"
                                SetFocusOnError="True" ></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revEmailId" runat="server" 
                                ControlToValidate="txtEmail" ErrorMessage="Enter a valid E-mail Id" Display="None"
                                SetFocusOnError="True" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ></asp:RegularExpressionValidator>
		</td>
	</tr>
	<tr>
	
		<td>Designation</td>
		<td>
			<div id='designationDIV' >
				<asp:DropDownList ID="ddlDesignation" runat="server" Height="16px" 
                    Width="128px">
                                <asp:ListItem Selected="True">Select</asp:ListItem>
                                <asp:ListItem Enabled="True" >Police Constable</asp:ListItem>
                                <asp:ListItem Enabled="True" >Senior Police Constable</asp:ListItem>
                                <asp:ListItem Enabled="True" >Police Head Constable</asp:ListItem>
                                <asp:ListItem Enabled="True" >Station House Officer of Police</asp:ListItem>
                                <asp:ListItem Enabled="True" >Assistant Sub Inspector of Police</asp:ListItem>
                                <asp:ListItem Enabled="True" >Sub – Inspector of Police</asp:ListItem>
                                 <asp:ListItem Enabled="True">Inspector of Police</asp:ListItem>
                               
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfvDesignation" runat="server" 
                                ControlToValidate="ddlDesignation" 
                                ErrorMessage="Please select designation" Display="None"
                                SetFocusOnError="True" InitialValue="Select" 
                    ValidationGroup="valAdd" ></asp:RequiredFieldValidator>
			</div>
		</td>
	
	</tr>

	<tr>
		<td></td>
		<td>This will be designation with which the employee will be appointed</td>
	</tr>
		<tr><td>Pin Code</td><td >
	<asp:TextBox ID="txtPinCode" runat="server" AutoPostBack="True" 
                ontextchanged="txtPinCode_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="tfvPinCode" runat="server" 
                                ControlToValidate="txtPinCode" 
                ErrorMessage="Please Enter your pin code." Display="None"
                                SetFocusOnError="True" ValidationGroup="valAdd"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revPinCode" 
                runat="server" ErrorMessage="Pin code must contain 6 digits." Display="None"
ControlToValidate="txtPinCode"    ValidationExpression="^[0-9]{6,6}$" 
                ValidationGroup="valAdd" />
	</td></tr>
	<tr >
	<td >
	Area
	</td>
		<td>
        <asp:DropDownList ID="ddlPinCode" runat="server">
                                    
                                </asp:DropDownList> 
            <asp:RequiredFieldValidator ID="rfvPinCode" runat="server" 
                                ControlToValidate="ddlPinCode" 
                                ErrorMessage="Please select your area" Display="None"
                                SetFocusOnError="True" InitialValue="Select Area" 
                ValidationGroup="valAdd" ></asp:RequiredFieldValidator></td>
	</tr>
	<tr >
	<td >Password:</td>
    <td>
        <asp:TextBox ID="txtPassword" runat="server" Visible="False"></asp:TextBox></td>
	</tr>
     <tr>
                        <td>
                            Name :<span class='style3'>*</span>
                        </td>
                        <td>
                            <asp:TextBox ID="txtName" runat="server" title="Please enter your first name"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvUserName" runat="server" 
                                ControlToValidate="txtName" ErrorMessage="Enter your name"  Display="None"
                                SetFocusOnError="True" ValidationGroup="valAdd"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revUserName" runat="server"    
ErrorMessage="Please enter a valid name"
ControlToValidate="txtName"    
ValidationExpression="^[a-zA-Z]{5,20}$" Display="None" SetFocusOnError="True" ValidationGroup="valAdd"/>
                        </td></tr><tr>
                        <td>
                            Father Name<span class='style3'>*</span>
                        </td>
                        <td>
                            <asp:TextBox ID="txtFatherName" runat="server" title="Please enter your last name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvFatherName" runat="server" 
                                ControlToValidate="txtFatherName" ErrorMessage="Please enter fathers name" Display="None"
                                SetFocusOnError="True" ValidationGroup="valAdd" ></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revFatherName" runat="server"    
ErrorMessage="Please enter a valid father name" Display="None"
ControlToValidate="txtFatherName"    
ValidationExpression="^[a-zA-Z]{5,20}$" ValidationGroup="valAdd"  />
                        
                        
                        </td>
                    </tr>
    <tr >
	<td >Date of birth:</td>
    <td>
        <asp:TextBox ID="txtDOB" runat="server"></asp:TextBox>
        <AK:CalendarExtender ID="CalDOB" runat="server" PopupButtonID="txtDOB" PopupPosition="BottomRight"
                                TargetControlID="txtDOB">
                            </AK:CalendarExtender></td>
	</tr>
    <tr >
	<td >Contact:</td>
    <td>
        <asp:TextBox ID="txtContact" runat="server"></asp:TextBox></td>
	</tr>
    <tr >
	<td >Adderess:</td>
    <td>
        <asp:TextBox ID="txtAdderess" runat="server" TextMode="MultiLine"></asp:TextBox></td>
	</tr>
	
	 <tr>
                        <td>
                            Gender<span class='style3'>*</span>
                        </td>
                        <td>
                            <asp:RadioButtonList ID="rbtGender" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Selected="True">Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:RadioButtonList>
                            <asp:RequiredFieldValidator ID="rfvGender" runat="server" 
                                ControlToValidate="rbtGender" ErrorMessage="Please select a gender" Display="None"
                                SetFocusOnError="True" ValidationGroup="valAdd" ></asp:RequiredFieldValidator>
                        </td>
                        </tr>
                        <tr>
                        <td>
                            Maritial Status:<span class='style3'>*</span>
                        </td>
                        <td>
                            <asp:RadioButtonList ID="rbtMaritialStatus" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Selected="True">Married</asp:ListItem>
                                <asp:ListItem>Single</asp:ListItem>
                            </asp:RadioButtonList>
                            <asp:RequiredFieldValidator ID="rfvMaritialStatus" runat="server" 
                                ControlToValidate="rbtMaritialStatus" 
                                ErrorMessage="Enter your maritial status"  Display="None"
                                SetFocusOnError="True" ValidationGroup="valAdd"></asp:RequiredFieldValidator>
                        </td>
                    </tr><tr><td>Blood Group</td>
	<td style="height: 26px">
                            <asp:DropDownList ID="ddlBloodGroup" runat="server">
                                <asp:ListItem Selected="True" Value='0'>Select</asp:ListItem>
                                <asp:ListItem Enabled="True" Value='1'>AB + Ve</asp:ListItem>
                                <asp:ListItem Enabled="True" Value='2'>AB - Ve</asp:ListItem>
                                <asp:ListItem Enabled="True" Value='3'>A + Ve</asp:ListItem>
                                <asp:ListItem Enabled="True" Value='4'>A - Ve</asp:ListItem>
                                <asp:ListItem Enabled="True" Value='5'>B + Ve</asp:ListItem>
                                <asp:ListItem Enabled="True" Value='6'>B - Ve</asp:ListItem>
                                <asp:ListItem Enabled="True" Value='7'>O + Ve</asp:ListItem>
                                <asp:ListItem Enabled="True" Value='8'>O - Ve</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfvBloodGroup" runat="server" 
                                ControlToValidate="ddlBloodGroup" 
                                ErrorMessage="Please select your blood group" Display="None"
                                SetFocusOnError="True" InitialValue="Select" ValidationGroup="valAdd" ></asp:RequiredFieldValidator>
                        </td>
                    </tr>
	<tr>
                        <td>
                            Id Card<span class='style3'>*</span>
                        </td>
                        <td>
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                             <asp:RequiredFieldValidator ID="rfvFileUpload" runat="server" 
                                ControlToValidate="FileUpload1" ErrorMessage="Please attach a ID proof." Display="None"
                                SetFocusOnError="True" ValidationGroup="valAdd" ></asp:RequiredFieldValidator>
	
	
	<tr>
		<td colspan="2" align="center">
            <asp:Button ID="btnCreate" runat="server" Text="Create" 
                onclick="btnCreate_Click" ValidationGroup="valAdd" />
            <asp:Button ID="btnReset" runat="server" Text="Reset" />
		</td>
	</tr>
<tr><td colspan="2"  style="font-size: 15pt;color: #0000a0;font-family: aerial;font-weight:bold">
	
	 </td></tr>
	 </table>
     </td><td>
     <table style="text-align:center"  >
		<tr>
		<td class="style4"><h2>Update/Delete Police Officer</h2>
		</td></tr></table>
     <table style="text-align:left" class="back" >
		<tr>
		<td>E-mail Id
		</td>
		<td class="style5">
            <asp:TextBox ID="TextEmail2" runat="server" AutoPostBack="True" 
                ontextchanged="TextEmail2_TextChanged"></asp:TextBox>
		 <td>   <asp:Label ID="lblMsg" runat="server" BackColor="#FF3300" Font-Bold="True" 
                 Font-Size="Medium"></asp:Label></td>
		</td>
	</tr>
	<tr>
	
		<td>Designation</td>
		<td >
                <asp:Label ID="lblOccupation" runat="server" Text=""></asp:Label>
			<td>
				<asp:DropDownList ID="ddlDesignation2" runat="server" Height="16px" 
                    Width="128px">
                                <asp:ListItem Selected="True">Select</asp:ListItem>
                                <asp:ListItem Enabled="True" >Police Constable</asp:ListItem>
                                <asp:ListItem Enabled="True" >Senior Police Constable</asp:ListItem>
                                <asp:ListItem Enabled="True" >Police Head Constable</asp:ListItem>
                                <asp:ListItem Enabled="True" >Station House Officer of Police</asp:ListItem>
                                <asp:ListItem Enabled="True" >Assistant Sub Inspector of Police</asp:ListItem>
                                <asp:ListItem Enabled="True" >Sub – Inspector of Police</asp:ListItem>
                                 <asp:ListItem Enabled="True">Inspector of Police</asp:ListItem>
                               
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="ddlDesignation2" 
                                ErrorMessage="Please select designation" Display="None"
                                SetFocusOnError="True" InitialValue="Select" 
                    ValidationGroup="valDel" ></asp:RequiredFieldValidator>
			
		</td>
	
	</tr>

	<tr>
		<td></td>
		<td class="style5">This will be designation with which the employee will be appointed</td>
	</tr>
		<tr><td>Pin Code</td><td class="style5" >
            <asp:Label ID="lblPinCode" runat="server"></asp:Label>
            <asp:TextBox ID="txtPinCode2" runat="server" AutoPostBack="True" ontextchanged="txtPinCode2_TextChanged" 
                ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="txtPinCode2" 
                ErrorMessage="Please Enter your pin code." Display="None"
                                SetFocusOnError="True" ValidationGroup="valDel"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ErrorMessage="Pin code must contain 6 digits." Display="None"
ControlToValidate="txtPinCode2"    ValidationExpression="^[0-9]{6,6}$" 
                ValidationGroup="valDel" />
	</td></tr>
	<tr >
	<td >
	Area
	</td>
		<td class="style5"><asp:Label ID="lblArea" runat="server" Text=""></asp:Label></td><td>
        <asp:DropDownList ID="ddlArea2" runat="server">
                                    
                                </asp:DropDownList> 
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="ddlArea2" 
                                ErrorMessage="Please select your area" Display="None"
                                SetFocusOnError="True" InitialValue="Select Area" 
                ValidationGroup="valDel" ></asp:RequiredFieldValidator></td>
	</tr>
	<tr >
	<td >Password:</td>
    <td class="style5">
        <asp:TextBox ID="txtPassword2" runat="server"></asp:TextBox></td>
	</tr>
     <tr>
                        <td>
                            Name :<span class='style3'>*</span>
                        </td>
                        <td class="style5">
                            <asp:TextBox ID="txtName2" runat="server" title="Please enter your first name" 
                                Enabled="False"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="txtName2" ErrorMessage="Enter your name"  Display="None"
                                SetFocusOnError="True" ValidationGroup="valDel"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"    
ErrorMessage="Please enter a valid name"
ControlToValidate="txtName2"    
ValidationExpression="^[a-zA-Z]{5,20}$" Display="None" SetFocusOnError="True" ValidationGroup="valDel"/>
                        </td></tr><tr>
                        <td>
                            Father Name<span class='style3'>*</span>
                        </td>
                        <td class="style5">
                            <asp:TextBox ID="txtFname2" runat="server" title="Please enter your last name" 
                                Enabled="False"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                ControlToValidate="txtFname2" ErrorMessage="Please enter fathers name" Display="None"
                                SetFocusOnError="True" ValidationGroup="valDel" ></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server"    
ErrorMessage="Please enter a valid father name" Display="None"
ControlToValidate="txtFname2"    
ValidationExpression="^[a-zA-Z]{5,20}$" ValidationGroup="valDel"  />
                        
                        
                        </td>
                    </tr>
    <tr >
	<td >Date of birth:</td>
    <td class="style5">
        <asp:TextBox ID="txtDOB2" runat="server"></asp:TextBox></td>
	</tr>
    <tr >
	<td >Contact:</td>
    <td class="style5">
        <asp:TextBox ID="txtContact2" runat="server"></asp:TextBox></td>
	</tr>
    <tr >
	<td >Adderess:</td>
    <td class="style5">
        <asp:TextBox ID="txtAdderess2" runat="server" TextMode="MultiLine"></asp:TextBox></td>
	</tr>
	
	 <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style5">
                            &nbsp;</td>
                        </tr>
                        <tr>
                        <td>
                            Maritial Status:<span class='style3'>*</span>
                        </td><td class="style5"><asp:Label ID="lblMarried" runat="server" Text=""></asp:Label></td>
                        <td>
                            <asp:RadioButtonList ID="rbtnStatus2" runat="server" 
                                RepeatDirection="Horizontal">
                                <asp:ListItem Selected="True">Married</asp:ListItem>
                                <asp:ListItem>Single</asp:ListItem>
                            </asp:RadioButtonList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                ControlToValidate="rbtnStatus2" ErrorMessage="Enter your maritial status"  Display="None"
                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr><tr><td>&nbsp;</td>
	<td class="style6">
                            &nbsp;</td>
                    </tr>
	<tr>
                        <td>
                            Id Card<span class='style3'>*</span>
                        </td>
                        <td class="style5">
                            <asp:Label ID="lblProof" runat="server"></asp:Label>
	
	
	<tr>
		<td colspan="2" align="center">
            <asp:Button ID="btnUpdate" runat="server" Text="Update" 
                 ValidationGroup="valDel" onclick="btnUpdate_Click" />
            <asp:Button ID="btnDelete" runat="server" Text="Delete" 
                onclick="btnDelete_Click" ValidationGroup="valDel" />
		</td>
	</tr>
<tr><td colspan="2"  style="font-size: 15pt;color: #0000a0;font-family: aerial;font-weight:bold">
	
	 </td></tr>
	 </table>
     
     
     
     
     
     
     
     
     
     
     </td></tr></table>

      <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
        ShowMessageBox="true" ShowSummary="false" ValidationGroup="valAdd" />
        <asp:ValidationSummary ID="ValidationSummary2" runat="server" 
        ShowMessageBox="true" ShowSummary="false" ValidationGroup="valDel" />








   




</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .style3
        {
            width: 193px;
        }
        .style4
        {
            width: 402px;
        }
        .style5
        {
            width: 207px;
        }
        .style6
        {
            height: 26px;
            width: 207px;
        }
    </style>
</asp:Content>
