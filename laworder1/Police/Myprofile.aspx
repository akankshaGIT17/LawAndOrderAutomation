<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Police/Police.Master" CodeBehind="Myprofile.aspx.cs" Inherits="laworder1.Police.Myprofile" %>

<%@ MasterType VirtualPath="~/Police/Police.Master" %> 

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


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
                            &nbsp;</td>
                        <td>
                            <asp:Label ID="lblMag" runat="server"></asp:Label>
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
                </asp:Content>