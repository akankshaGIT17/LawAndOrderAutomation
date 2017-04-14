<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/admin/Admin.Master" CodeBehind="missingreport.aspx.cs" Inherits="laworder1.admin.missingreport" %>
<%@ MasterType VirtualPath="~/admin/Admin.Master" %> 
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<center>
<table border=0>
<tr>
<td align="center"><h2>Missing Person Report</h2></td></tr></table>
<asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="false">
        <Columns>
            <asp:BoundField DataField="missing_id" HeaderText="Missing Id" ItemStyle-Width="100" />
            <asp:BoundField DataField="description" HeaderText="Description" ItemStyle-Width="500" />
            
            <asp:BoundField DataField="complained_on" HeaderText="Complained On" ItemStyle-Width="150" />
            <asp:BoundField DataField="area" HeaderText="Area" ItemStyle-Width="100" />
            <asp:BoundField DataField="missing_name" HeaderText="Person Name" ItemStyle-Width="150" />
            <asp:BoundField DataField="gender" HeaderText="Gender" ItemStyle-Width="100" />
            <asp:BoundField DataField="amount" HeaderText="Reward" ItemStyle-Width="100" />
            <asp:BoundField DataField="complaintid" HeaderText="Complaint ID" ItemStyle-Width="150" />
           
            
        </Columns>
    </asp:GridView>
    <br />
    <br />
    <br />
<table border=0>
<tr>
<td align="center"><h2>Missing Valuables Report</h2></td></tr></table>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">
        <Columns>
            <asp:BoundField DataField="valuable_id" HeaderText="Valuable Id" ItemStyle-Width="100" />
            <asp:BoundField DataField="name" HeaderText="Name" ItemStyle-Width="150" />
            <asp:BoundField DataField="description" HeaderText="Description" ItemStyle-Width="500" />
            <asp:BoundField DataField="area" HeaderText="Area" ItemStyle-Width="100" />
            <asp:BoundField DataField="comments" HeaderText="Comments" ItemStyle-Width="150" />
            <asp:BoundField DataField="foundstatus" HeaderText="Found Status" ItemStyle-Width="50" />
            <asp:BoundField DataField="complaintid" HeaderText="Complaint ID" ItemStyle-Width="150" />
            <asp:BoundField DataField="IsActive" HeaderText="Is Active" ItemStyle-Width="50" />
            <asp:BoundField DataField="CreatedOn" HeaderText="Created On" ItemStyle-Width="150" />
           
            
        </Columns>
    </asp:GridView>
    </center>


</asp:Content>