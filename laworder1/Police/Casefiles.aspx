<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Police/Police.Master" CodeBehind="Casefiles.aspx.cs" Inherits="laworder1.Police.Casefiles" %>
<%@ MasterType VirtualPath="~/Police/Police.Master" %> 
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table width="800px" class="back">

                <tr >
                <td colspan=2><center><h2>FIR/Petty Case Files</h2></center></td>
                
                
                
                </tr>
                <tr>
                <td>
                    &nbsp;</td>
                <td>
                
                    <asp:Label ID="lblPolice" runat="server" Font-Size="Large" ForeColor="#009900"></asp:Label>
                    </td>
                </tr>
                <tr>
                <td>Complaint Id:</td><td>
                    <asp:TextBox ID="txtUserMail" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEmailId" runat="server" 
                                ControlToValidate="txtUserMail" ErrorMessage="Enter Email Id" Display="None"
                                SetFocusOnError="True" ></asp:RequiredFieldValidator>
                             </td>
                </tr>
                <tr>
                <td>
                Complaint Type:
                </td>
                <td>
                
                    <asp:DropDownList ID="ddlAccept" runat="server" Height="23px" 
                    Width="128px" style="margin-left: 0px">
                                <asp:ListItem Selected="True">Select</asp:ListItem>
                                <asp:ListItem Enabled="True" >FIR</asp:ListItem>
                                <asp:ListItem Enabled="True" >Petty Case</asp:ListItem>
                               
                                
                               
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="ddlAccept" 
                                ErrorMessage="Please select action for complaint" Display="None"
                                SetFocusOnError="True" InitialValue="Select" ></asp:RequiredFieldValidator>
			
                </td>
                </tr>
                <tr>
                <td>&nbsp;</td><td>
                    &nbsp;</td>
                </tr>
                <tr><td colspan=2>
                    <asp:Button ID="btnUpdate" runat="server" Text="Search" 
                        onclick="btnSearch_Click" /></td></tr>
                </table>

                <table width="1000px" class="back">
		<tr>
        <td colspan=14><center><h2>Complaints Registered</h2></center></td></tr>
                     <tr>
                        <td colspan="4">
                          <h3>Recent Complaints</h3> 
                            
                        </td>
                    </tr>
                    <tr>
                     <td class="style3" style="text-align: center;border-style: groove; border-width: thin"><b> Name</b></td>            
            <td style="text-align: center;border-style: groove; border-width: thin" class="style18"><b> Description</b></td>
            <td style="text-align: center;border-style: groove; border-width: thin" class="style20">
                <b> &nbsp;Area </b></td> 
            <td style="text-align: center;border-style: groove; border-width: thin" class="style21"><b> Created On </b></td>
            <td style="text-align: center;border-style: groove; border-width: thin" class="style22"><b> Email </b></td> 
             <td style="text-align: center;border-style: groove; border-width: thin" class="style23"><b> Contact </b></td> 
             <td style="text-align: center;border-style: groove; border-width: thin" class="style23"><b> Adderess </b></td>
              
                  </tr>
                  <tr>
                     <td ><b> 
                         <asp:Label ID="lblname" runat="server" Text=""></asp:Label></b></td>            
            <td><b>  <asp:Label ID="lblDesc" runat="server" Text=""></asp:Label></b></td>
            <td >
                <b> <asp:Label ID="lblArea" runat="server" Text=""></asp:Label></b></td> 
            <td ><b>  <asp:Label ID="lblCreated" runat="server" Text=""></asp:Label> </b></td>
            <td ><b>  <asp:Label ID="lblEmail" runat="server" Text=""></asp:Label> </b></td> 
             <td ><b>  <asp:Label ID="lblContact" runat="server" Text=""></asp:Label> </b></td> 
             <td ><b>  <asp:Label ID="lblAdd" runat="server" Text=""></asp:Label> </b></td>
              
                  </tr>
                 
                    <tr>
                        <td colspan="4">
                          <%--   <asp:GridView ID="GridView1" runat="server" 
                                onselectedindexchanged="GridView1_SelectedIndexChanged" Width="351px">
                            </asp:GridView>--%>
                        </td>
                    </tr>
                
                    
                </table>

</asp:Content>