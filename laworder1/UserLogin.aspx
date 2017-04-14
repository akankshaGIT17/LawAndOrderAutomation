<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="laworder1.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .style4
    {
        height: 1px;
    }
    .style5
    {
        height: 2px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align=center> <tr>  <td>
        <h2>User Login</h2></td></tr></table><table align=center><tr>  <td>
        <asp:Label ID="lblLoginError" runat="server" ForeColor="Red"></asp:Label></td><tr><td><asp:Label ID="lblError1" runat="server" ForeColor="green"></asp:Label></td></tr></tr>
         <tr>  <td></table><center>
         <table align=center class="back" cellpadding="5" cellpadding="5">
          <tr><td>
        User Id :</td><td> <asp:TextBox ID="txtUserId" runat="server"></asp:TextBox></td>
    </tr>
    <tr>  <td>
        Password :</td><td><asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox></td>
    </tr>
   <tr>  <td> <a href="ForgotPassword.aspx">
        Forgot Password?</a></td><td align="center">
           <a href="WebForm3.aspx"> New User?</a></td>
    </tr><tr><td class="style4"> </td><td class="style4"></td></tr>
    <tr>  <td align="center">
        <asp:Button ID="btnLogin" runat="server" Text="Login" 
            onclick="btnLogin_Click" /> </td><td align="center">
            <asp:Button ID="btnReset" runat="server" Text="Reset" /> </td>
    </tr> <tr>
         <td align="center" class="style5">
           
                     <asp:RequiredFieldValidator ID="rfvUserId" runat="server" 
                         ControlToValidate="txtUserId" ErrorMessage="User Id is required" Display="None"
                         ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator></br>
                     <asp:RegularExpressionValidator ID="revUserId" runat="server" 
                         ControlToValidate="txtUserId" ErrorMessage="Invalid Id!"  Display="None"
                         SetFocusOnError="True" 
                         ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                 </td></tr><tr>
         <td align="center" class="style5">
            
            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" 
                ControlToValidate="txtPassword" ErrorMessage="Password is required!" Display="None"
                ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator></br>
            
        </td></tr><asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="true" ShowSummary="false" />
    </table>
    </center>
</asp:Content>
