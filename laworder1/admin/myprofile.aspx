<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/admin/Admin.Master" CodeBehind="myprofile.aspx.cs" Inherits="laworder1.admin.myprofile" %>
<%@ MasterType VirtualPath="~/admin/Admin.Master" %> 
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<table border="0" style="width: 99%">
        <tr>
            <td>
                <table width='97%' cellspacing='5' cellpadding="5" class='back' style='text-align: left;
                    vertical-align: top'>
                    <tr>
                        <td colspan="2" class='colour' style='text-align: center'>
                            <h2>
                                Your Profile
                            </h2>
                                </span>
                        </td>
                        
                    </tr>
                    <tr>
                        <td colspan="2">
                            <strong>Login Information</strong>
                            
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Email<span class='style3'>*</span>
                        </td>
                        <td>
                            <asp:Label ID="lblEmail" runat="server" Text=""></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            Password<span class='style3'>*</span>
                        </td>
                        <td>
                            <asp:Label ID="lblPassword" runat="server" Text=""></asp:Label>
                        </td>
                        <td>
                        <asp:TextBox ID="txtPassword" runat="server" Text="" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="txtPassword" ErrorMessage="Enter password."  Display="None"
                                SetFocusOnError="True" ValidationGroup="valPas"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revPassword" runat="server" ControlToValidate="txtPassword"
    ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$"
    ErrorMessage="Minimum 8 characters atleast 1 Alphabet, 1 Number and 1 Special Character" 
                                Display="None" ValidationGroup="valPas" /></td>
                        <td>
                            <asp:Button ID="btnUpdate" runat="server" Text="Update" 
                                onclick="btnUpdate_Click" ValidationGroup="valPas" /></td>
                    </tr>
                    
                </table>
                
                <table width='97%' cellspacing='5' cellpadding="5" class='back' style='text-align: left;
                    vertical-align: top'>
                    <tr class="colour">
                        <td colspan="4">
                            <b>Personal Information</b>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Name :<span class='style3'>*</span>
                        </td>
                        <td>
                            <asp:Label ID="lblName" runat="server" Text=""></asp:Label>
                        </td>
                        <td class="style5">
                        <asp:TextBox ID="txtName" runat="server" title="Please enter your first name"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvUserName" runat="server" 
                                ControlToValidate="txtName" ErrorMessage="Enter your name"  Display="None"
                                SetFocusOnError="True" ValidationGroup="valUser"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revUserName" runat="server"    
ErrorMessage="Please enter a valid name"
ControlToValidate="txtName"    
ValidationExpression="^[a-zA-Z]{10,20}$" Display="None" SetFocusOnError="True" ValidationGroup="valUser"/></td>
                        <td>
                            Father Name<span class='style3'>*</span>
                        </td>
                        <td class="style7">
                            <asp:Label ID="lblFatherName" runat="server" Text=""></asp:Label>
                        
                        
                        </td>
                        <td>
                            <asp:TextBox ID="txtFatherName" runat="server" title="Please enter your last name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvFatherName" runat="server" 
                                ControlToValidate="txtFatherName" ErrorMessage="Please enter fathers name" Display="None"
                                SetFocusOnError="True" ValidationGroup="valUser" ></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revFatherName" runat="server"    
ErrorMessage="Please enter a valid father name" Display="None"
ControlToValidate="txtFatherName"    
ValidationExpression="^[a-zA-Z]{10,20}$" ValidationGroup="valUser"  />
                        
                        
                        </td>
                    </tr>
                    <tr>
                        
                        
                        <td>
                            Occupation<span class='style3'>*</span>
                        </td>
                        <td>
                           <asp:Label ID="lblOccupation" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr>
                       
                        <td>
                            Maritial Status:<span class='style3'>*</span>
                        </td>
                        <td>
                            <asp:Label ID="lblMarriage" runat="server" Text=""></asp:Label>
                        </td>
                    <td class="style5">
                            <asp:RadioButtonList ID="rbtMaritialStatus" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Selected="True">Married</asp:ListItem>
                                <asp:ListItem>Single</asp:ListItem>
                            </asp:RadioButtonList>
                            <asp:RequiredFieldValidator ID="rfvMaritialStatus" runat="server" 
                                ControlToValidate="rbtMaritialStatus" 
                                ErrorMessage="Enter your maritial status"  Display="None"
                                SetFocusOnError="True" ValidationGroup="valUser"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            Mobile No.
                        </td>
                        <td class="style7">
                            <asp:Label ID="lblContact" runat="server" Text=""></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtCountryCode" runat="server" MaxLength="6" value="91" Style="width: 60px"></asp:TextBox>
                            <asp:TextBox ID="txtMobileNo" runat="server" MaxLength="10" title="Enter phone no as mentioned below"
                                Style="width: 85px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvMobileNo" runat="server" 
                                ControlToValidate="txtMobileNo" 
                                ErrorMessage="Please enter your mobile Number" Display="None"
                                SetFocusOnError="True" ValidationGroup="valUser" ></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revMobileNo" runat="server"    
ErrorMessage="Enter a valid mobile number" Display="None"
ControlToValidate="txtMobileNo"    
ValidationExpression="^[0-9]{10,10}$" ValidationGroup="valUser" />
                        </td>
                        
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td>
                            
                        </td>
                        <td class="style5">
                        </td>
                        <td>
                        </td>
                    </tr>
                
                    <tr class="colour">
                        <td colspan="4">
                            <b>Adderess Information</b>
                        </td>
                    </tr>
                    <tr>
                        <td class="style4">
                            Adderess: <span class='style3'>*</span>
                        </td>
                        <td>
                            <asp:Label ID="lblAdderess" runat="server" Text=""></asp:Label>
                        </td>
                        <td class="style5">
                            <asp:TextBox ID="txtAddress1" runat="server"  
                                title="Enter your plot no and street address" Height="54px"
                                width="219px" TextMode="MultiLine"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvAddress" runat="server" 
                                ControlToValidate="txtAddress1" 
                                ErrorMessage="Please Enter your housing address." Display="None"
                                SetFocusOnError="True" ValidationGroup="valUser" ></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revAddress" runat="server" 
                                ErrorMessage="Address should be more than 5 characters." Display="None"
ControlToValidate="txtAddress1"    ValidationExpression="^[\s\S]{5,}$" ValidationGroup="valUser"  />
                        </td>
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
                                SetFocusOnError="True" ValidationGroup="valUser"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                                runat="server" ErrorMessage="Pin code must contain 6 digits." Display="None"
ControlToValidate="txtPinCode"    ValidationExpression="^[0-9]{6,6}$" ValidationGroup="valUser" />
                        </td>
                   
                        
                        <td class="style5">
                            Area: <span class='style3'>*</span>
                        </td>
                        <td>
                            <asp:Label ID="lblArea" runat="server" Text=""></asp:Label>
                        </td>
                        <td class="style7">
                            <span id='arealistDIV'>
                                <asp:DropDownList ID="ddlPinCode" runat="server" 
                                onselectedindexchanged="ddlPinCode_SelectedIndexChanged">
                                    
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="rfvArea" runat="server" 
                                ControlToValidate="ddlPinCode" ErrorMessage="Please select your area." Display="None"
                                SetFocusOnError="True" ValidationGroup="valUser" ></asp:RequiredFieldValidator>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="style4">
                            State:<span class='style3'>*</span>
                        </td>
                        <td>
                            <asp:Label ID="lblState" runat="server" Text="Haryana"></asp:Label>
                        </td>
                        <td class="style6">
                            Blood Group
                        </td>
                        <td style="height: 26px">
                            <asp:Label ID="lblBlood" runat="server" Text=""></asp:Label>
                        </td>
                        <td class="style8">
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
                        </td>

                        
                    </tr>
                    <tr>
                    
                    <td colspan="6"><center>
                            <asp:Button ID="btnProfile" runat="server" Text="Update" 
                                onclick="btnProfile_Click" ValidationGroup="valUser" /></center></td></tr>
                </table>
              



                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="true" ShowSummary="false" />


</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
    .style3
    {
        width: 288px;
    }
    .style4
    {
        height: 26px;
        width: 288px;
    }
    .style5
    {
        width: 91px;
    }
    .style6
    {
        height: 26px;
        width: 91px;
    }
    .style7
    {
        width: 115px;
    }
    .style8
    {
        height: 26px;
        width: 115px;
    }
</style>
</asp:Content>

