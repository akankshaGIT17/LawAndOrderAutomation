<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/admin/Admin.Master" CodeBehind="casereport.aspx.cs" Inherits="laworder1.admin.casereport" %>
<%@ MasterType VirtualPath="~/admin/Admin.Master" %> 
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>


 <table width="800px" class="back">

                <tr >
                <td colspan=2><center><h2>FIR Case Files</h2></center></td>
                
                
                
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
                
                    FIR
                            			
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

                
                                     </table>
                                     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">
        <Columns>
            <asp:BoundField DataField="fir_id" HeaderText="FIR ID" ItemStyle-Width="100" />
            <asp:BoundField DataField="summary" HeaderText="Summary" ItemStyle-Width="150" />
            
            <asp:BoundField DataField="CreatedOn" HeaderText="Created On" ItemStyle-Width="150" />
            <asp:BoundField DataField="name" HeaderText="Name" ItemStyle-Width="150" />
            <asp:BoundField DataField="contact" HeaderText="Contact" ItemStyle-Width="150" />
            <asp:BoundField DataField="adderess" HeaderText="Adderess" ItemStyle-Width="150" />
            <asp:BoundField DataField="area" HeaderText="Area" ItemStyle-Width="150" />
            <asp:BoundField DataField="email" HeaderText="Email" ItemStyle-Width="150" />
            
          
        </Columns>
    </asp:GridView>
</center>
</asp:Content>
