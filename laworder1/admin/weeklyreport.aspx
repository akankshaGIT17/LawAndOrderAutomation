<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/admin/Admin.Master" CodeBehind="weeklyreport.aspx.cs" Inherits="laworder1.admin.weeklyreport" %>
<%@ MasterType VirtualPath="~/admin/Admin.Master" %> 
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<center>
<table border=0>
<tr>
<td align="center"><h2>Weekly Citizen SignUp Report</h2></td></tr></table>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">
        <Columns>
            <asp:BoundField DataField="signup_id" HeaderText="Sign Up ID" ItemStyle-Width="100" />
            <asp:BoundField DataField="email" HeaderText="Email" ItemStyle-Width="150" />
            
            <asp:BoundField DataField="dob" HeaderText="DOB" ItemStyle-Width="150" />
            <asp:BoundField DataField="name" HeaderText="Name" ItemStyle-Width="150" />
            <asp:BoundField DataField="fathername" HeaderText="Father Name" ItemStyle-Width="150" />
            <asp:BoundField DataField="occupation" HeaderText="Occupation" ItemStyle-Width="150" />
            <asp:BoundField DataField="gender" HeaderText="Gender" ItemStyle-Width="150" />
            <asp:BoundField DataField="maritialstatus" HeaderText="Maritial Status" ItemStyle-Width="150" />
            <asp:BoundField DataField="contact" HeaderText="Contact" ItemStyle-Width="150" />
            <asp:BoundField DataField="adderess" HeaderText="Adderess" ItemStyle-Width="150" />
            <asp:BoundField DataField="area" HeaderText="Area" ItemStyle-Width="150" />

            <asp:BoundField DataField="bloodgroup" HeaderText="Blood Group" ItemStyle-Width="150" />
            <asp:BoundField DataField="IsActive" HeaderText="IsActive" ItemStyle-Width="150" />
          
        </Columns>
    </asp:GridView>
    </center>


</asp:Content>