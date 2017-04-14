<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Main.Master" CodeBehind="error.aspx.cs" Inherits="laworder1.error" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">




<br />
<br />
<br />
<center>
<table style="text-align: center">
<tr>
<td style="text-align: center">
 <asp:Label ID="lblSuccess" runat="server" Text="" Font-Size="XX-Large" ForeColor="green"></asp:Label>
 <tr><td>
    <asp:Label ID="lblSuccessMessage" runat="server" Text="" ForeColor="green"></asp:Label></td></tr>


</td>

</tr>

<td style="text-align: center">
 <asp:Label ID="lblFail" runat="server" Text="" Font-Size="XX-Large" ForeColor="red"></asp:Label>
 <tr>
    <td><asp:Label ID="lblFailMessage" runat="server" Text="" ForeColor="red"></asp:Label></td></tr>
    </td>




</tr>

 </table>

 </center>






</asp:Content>