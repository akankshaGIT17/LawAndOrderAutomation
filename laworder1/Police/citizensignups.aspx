<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/Police/Police.Master" CodeBehind="citizensignups.aspx.cs" Inherits="laworder1.Police.citizensignups" %>
<%@ MasterType VirtualPath="~/Police/Police.Master" %> 
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<table width="800px" class="back">

                <tr >
                <td colspan=2><center><h2>Accept/Reject License</h2></center></td>
                
                
                
                </tr>
                <tr>
                <td>
                    &nbsp;</td>
                <td>
                
                    <asp:Label ID="lblPolice" runat="server" Text=""></asp:Label>
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
                <td>&nbsp;</td><td>
                    &nbsp;</td>
                </tr>
                <tr><td colspan=2>
                    <asp:Button ID="btnUpdate" runat="server" Text="Update" 
                        onclick="btnUpdate_Click" /></td></tr>
                </table>
<table width="800px" class="back">
		<tr><td colspan=5><center><h2>People Who Apllied For SignUps</h2></center></td></tr>
                     <tr>
                        <td colspan="2">
                          <h3>Pending/Rejected Requests</h3> 
                            
                        </td>
                    </tr>
                    <tr>
                                            
            <td class="style3" style="text-align: center;border-style: groove; border-width: thin"><b> Name</b></td>            
            <td style="text-align: center;border-style: groove; border-width: thin" class="style9"><b> Applied On</b></td>
            <td style="text-align: center;border-style: groove; border-width: thin" class="style8"><b> Occupation </b></td> 
             <td style="text-align: center;border-style: groove; border-width: thin" class="style8"><b> Gender </b></td> 
              <td style="text-align: center;border-style: groove; border-width: thin" class="style8"><b> Email </b></td>
              <td style="text-align: center;border-style: groove; border-width: thin" class="style8"><b> Area </b></td> 
               <td style="text-align: center;border-style: groove; border-width: thin" class="style8"><b> Father Name </b></td>  
                
            <td style="text-align: center;border-style: groove; border-width: thin" class="style4">
                <b> Adderess</b></td>
                <td style="text-align: center;border-style: groove; border-width: thin" class="style4">
                <b> ID Proof</b></td> </tr>    
                 <%=getPendingData()%>
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
                          <h3>Accepted Request</h3> 
                            
                        </td>
                    </tr>
                    <tr>
                     <td class="style3" style="text-align: center;border-style: groove; border-width: thin"><b> Name</b></td>            
            <td style="text-align: center;border-style: groove; border-width: thin" class="style9"><b> Applied On</b></td>
            <td style="text-align: center;border-style: groove; border-width: thin" class="style8"><b> Occupation </b></td> 
             <td style="text-align: center;border-style: groove; border-width: thin" class="style8"><b> Gender </b></td> 
              <td style="text-align: center;border-style: groove; border-width: thin" class="style8"><b> Email </b></td>
              <td style="text-align: center;border-style: groove; border-width: thin" class="style8"><b> Area </b></td> 
               <td style="text-align: center;border-style: groove; border-width: thin" class="style8"><b> Father Name </b></td>  
                
            <td style="text-align: center;border-style: groove; border-width: thin" class="style4">
                <b> Adderess</b></td>
                <td style="text-align: center;border-style: groove; border-width: thin" class="style4">
                <b> ID Proof</b></td> </tr>    
                 <%=getAcceptedData()%>    
                 
                    <tr>
                        <td colspan="4">
                          <%--   <asp:GridView ID="GridView1" runat="server" 
                                onselectedindexchanged="GridView1_SelectedIndexChanged" Width="351px">
                            </asp:GridView>--%>
                        </td>
                    </tr>
                
                    
                </table><asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="true" ShowSummary="false" />
               
</asp:Content>