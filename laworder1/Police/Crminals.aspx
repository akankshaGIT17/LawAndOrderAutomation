<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Police/Police.Master" CodeBehind="Crminals.aspx.cs" Inherits="laworder1.Police.Crminals" %>
<%@ MasterType VirtualPath="~/Police/Police.Master" %> 
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <table width='100%' border="0">
        <tr>
            <td>
                <table width='97%' cellspacing='5' cellpadding="5" class='back' style='text-align: left;
                    vertical-align: top'>
                    <tr>
                        <td colspan="4" class='colour' style='text-align: center'>
                            <h2>
                                Criminal Registration</h2>
                                </span>
                        </td>
                        <tr><td style="color: #FF0000" style='text-align: center'>
                  
                        </td></tr>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <strong>Criminal Information</strong>
                            <asp:Label ID="lblMsg" runat="server" Font-Size="Medium" ForeColor="#009900"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 140px">
                          Name Of Criminal  <span class='style3'>*</span>
                        </td>
                        <td>
                            <asp:TextBox ID="txtName" runat="server" ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvName" runat="server" 
                                ErrorMessage="Name is required" SetFocusOnError="True" 
                                ControlToValidate="txtName" Display="None"></asp:RequiredFieldValidator>
                        </td>
                    
                        <td class="style4">
                            Alias Name
                        </td>
                        <td>
                            <asp:TextBox ID="txtAlias" runat="server" TextMode="SingleLine"></asp:TextBox><span
                                class='style3'></span>
                            
                        </td>
                    </tr>
                    <tr>
                        <td>
                            DOB
                        </td>
                        <td>
                            <asp:TextBox ID="txtDOB" runat="server" TextMode="SingleLine"></asp:TextBox>
                       </td>
                        <td>Status</td><td>
                            <asp:DropDownList ID="ddlStatus" runat="server">
                                <asp:ListItem Selected="True" Value='0'>Select</asp:ListItem>
                                <asp:ListItem Enabled="True" Value='1'>1</asp:ListItem>
                                <asp:ListItem Enabled="True" Value='2'>0</asp:ListItem>
                                
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RrfvStatus" runat="server" 
                                ControlToValidate="ddlStatus" 
                                ErrorMessage="Please select your status" Display="None"
                                SetFocusOnError="True" InitialValue="Select" ></asp:RequiredFieldValidator>
                        
                        
                        
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Adderess<span class='style3'>*</span></td>
                        <td>
                           <asp:TextBox ID="txtAdderess" runat="server" TextMode="SingleLine"></asp:TextBox>
                           <asp:RequiredFieldValidator ID="rfvAdderess" runat="server" 
                                ErrorMessage="Adderess is required" SetFocusOnError="True" 
                                ControlToValidate="txtAdderess" Display="None"></asp:RequiredFieldValidator>
                        </td>
                        <td class="style4">
                            Reward<span class='style3'>*</span></td>
                        <td>
                            <asp:TextBox ID="txtReward" runat="server" TextMode="SingleLine"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvReward" runat="server" 
                                ErrorMessage="Reward is required" SetFocusOnError="True" 
                                ControlToValidate="txtName" Display="None"></asp:RequiredFieldValidator>
                        </td><tr>
                           
                        
                        
                        <td>Image</td><td><asp:FileUpload ID="FileUpload2" runat="server" />
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="FileUpload2" ErrorMessage="Please attach a Image." Display="None"
                                SetFocusOnError="True" ></asp:RequiredFieldValidator></td>
                    </tr>
                
                </tr></table>
                <table width='97%' class="back" cellspacing='5' cellpadding="5" style='text-align: center;
                    vertical-align: top'>
                    <tr>
                        <td width="25%">
                            &nbsp;
                        </td>
                        <td>
                            <asp:Button ID="btnSignUp" runat="server" Text="Submit" onclick="btnSignUp_Click1" 
                                 />
                        </td>
                        <td>
                            <asp:Button ID="btnReset" runat="server" Text="Reset" />
                        </td>
                        <td width="25%">
                            &nbsp;
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>

    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="true" ShowSummary="false" />










</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .style4
        {
            width: 145px;
        }
    </style>
</asp:Content>
