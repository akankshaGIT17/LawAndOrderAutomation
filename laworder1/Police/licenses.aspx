<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Police/Police.Master" CodeBehind="licenses.aspx.cs" Inherits="laworder1.Police.licenses" %>
<%@ MasterType VirtualPath="~/Police/Police.Master" %> 
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">




<table width="800px" class="back">

                <tr >
                <td colspan=2><center><h2>Accept/Reject License</h2></center></td>
                
                
                
                </tr>
                <tr>
                <td>
                License Type:
                </td>
                <td>
                
                    <asp:DropDownList ID="ddlLicense" runat="server" Height="21px" 
                    Width="128px" style="margin-left: 0px">
                                <asp:ListItem Selected="True">Select</asp:ListItem>
                                <asp:ListItem Enabled="True" >Loud Speaker</asp:ListItem>
                                <asp:ListItem Enabled="True" >Mass Meeting</asp:ListItem>
                                
                               
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfvDesignation" runat="server" 
                                ControlToValidate="ddlLicense" 
                                ErrorMessage="Please select license type" Display="None"
                                SetFocusOnError="True" InitialValue="Select" ></asp:RequiredFieldValidator>
			
                </td>
                </tr>
                <tr>
                <td>Email Id of user:</td><td>
                    <asp:TextBox ID="txtUserMail" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEmailId" runat="server" 
                                ControlToValidate="txtUserMail" ErrorMessage="Enter Email Id" Display="None"
                                SetFocusOnError="True" ></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revEmailId" runat="server" 
                                ControlToValidate="txtUserMail" ErrorMessage="Enter a valid E-mail Id" Display="None"
                                SetFocusOnError="True" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ></asp:RegularExpressionValidator>  </td>
                </tr>
                <tr>
                <td>
                Accept/Reject:
                </td>
                <td>
                
                    <asp:DropDownList ID="ddlAccept" runat="server" Height="23px" 
                    Width="128px" style="margin-left: 0px">
                                <asp:ListItem Selected="True">Select</asp:ListItem>
                                <asp:ListItem Enabled="True" >Accept</asp:ListItem>
                                <asp:ListItem Enabled="True" >Reject</asp:ListItem>
                                
                               
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="ddlAccept" 
                                ErrorMessage="Please accept or reject the license" Display="None"
                                SetFocusOnError="True" InitialValue="Select" ></asp:RequiredFieldValidator>
			
                </td>
                </tr>
                <tr>
                <td>Comments:</td><td>
                    <asp:TextBox ID="txtComment" runat="server" TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="txtComment" ErrorMessage="Enter Comments" Display="None"
                                SetFocusOnError="True" ></asp:RequiredFieldValidator>
                             </td>
                </tr>
                <tr><td colspan=2>
                    <asp:Button ID="btnUpdate" runat="server" Text="Update" 
                        onclick="btnUpdate_Click" />
                    <asp:Label ID="lblPolice" runat="server" Font-Size="Large" ForeColor="#009900"></asp:Label>
                    </td></tr>
                </table>
<table width="800px" class="back">
		<tr><td colspan=5><center><h2>People Who Apllied For Licenses</h2></center></td></tr>
                     <tr>
                        <td colspan="2">
                          <h3>Loud Speaker License</h3> 
                            
                        </td>
                    </tr>
                    <tr>
                     <td style="text-align: center;border-style: groove; border-width: thin" 
                            class="style6"> <b>Applied On</b> </td>                        
            <td class="style3" style="text-align: center;border-style: groove; border-width: thin"><b> Description Given</b></td>            
            <td style="text-align: center;border-style: groove; border-width: thin" class="style9"><b> Applied By</b></td>
            <td style="text-align: center;border-style: groove; border-width: thin" class="style8"><b> Email </b></td>   
            <td style="text-align: center;border-style: groove; border-width: thin" class="style4">
                <b> ID Proof</b></td> </tr>    
                 <%=getLoudData()%>
                    <tr>
                        <td colspan="4">
                          <%--   <asp:GridView ID="GridView1" runat="server" 
                                onselectedindexchanged="GridView1_SelectedIndexChanged" Width="351px">
                            </asp:GridView>--%>
                        </td>
                    </tr>
                
                    
                </table>
                <table width="800px" class="back">
		
                     <tr>
                        <td colspan="2">
                          <h3>Mass Meeting License</h3> 
                            
                        </td>
                    </tr>
                    <tr>
                     <td style="text-align: center;border-style: groove; border-width: thin" 
                            class="style6"> <b>Applied On</b> </td>                        
            <td class="style3" style="text-align: center;border-style: groove; border-width: thin"><b> Description Given</b></td>            
            <td style="text-align: center;border-style: groove; border-width: thin" class="style9"><b> Applied By</b></td>
            <td style="text-align: center;border-style: groove; border-width: thin" class="style8"><b> Email </b></td>   
            <td style="text-align: center;border-style: groove; border-width: thin" class="style4">
                <b> ID Proof</b></td> </tr>    
                 <%=getMassData()%>
                    <tr>
                        <td colspan="4">
                          <%--   <asp:GridView ID="GridView1" runat="server" 
                                onselectedindexchanged="GridView1_SelectedIndexChanged" Width="351px">
                            </asp:GridView>--%>
                        </td>
                    </tr>
                
                    
                </table><asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="true" ShowSummary="false" />
               
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .style3
        {
            width: 448px;
        }
        .style4
        {
            width: 188px;
        }
        .style6
        {
            width: 115px;
        }
        .style8
        {
            width: 180px;
        }
        .style9
        {
            width: 202px;
        }
    </style>
</asp:Content>