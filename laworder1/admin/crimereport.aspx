<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/admin/Admin.Master" CodeBehind="crimereport.aspx.cs" Inherits="laworder1.admin.crimereport" %>
<%@ MasterType VirtualPath="~/admin/Admin.Master" %> 
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
<table border=0>
<tr>
<td align="center"><h2>Criminals Report</h2></td></tr></table>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">
        <Columns>
            <asp:BoundField DataField="crid" HeaderText="Criminal Id" ItemStyle-Width="100" />
            <asp:BoundField DataField="name" HeaderText="Name" ItemStyle-Width="150" />
            
            <asp:BoundField DataField="aliasname" HeaderText="Alias Name" ItemStyle-Width="150" />
            <asp:BoundField DataField="DOB" HeaderText="DOB" ItemStyle-Width="150" />
            <asp:BoundField DataField="adderess" HeaderText="Adderess" ItemStyle-Width="150" />
            <asp:BoundField DataField="reward" HeaderText="Reward" ItemStyle-Width="150" />
            <asp:BoundField DataField="status" HeaderText="Status" ItemStyle-Width="150" />
            <asp:BoundField DataField="CreatedOn" HeaderText="Added On" ItemStyle-Width="150" />
            <asp:BoundField DataField="isactive" HeaderText="IsActive" ItemStyle-Width="150" />
           <%-- <asp:TemplateField HeaderText="Image">
            <ItemTemplate>
            <asp:Image ID="image" runat="server" Height="100px" Width="100px" ImageUrl='<%#Eval("image") %>' />
            </ItemTemplate>
            </asp:TemplateField>--%>
            
        </Columns>
    </asp:GridView>
    </center>


</asp:Content>