<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="laworder1.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align=center> <tr>  <td>
        <h3>Forgot Password</h3></td> <tr>  <td></table><center>
         <table align=center class="back">
         <tr><td>&nbsp;</td><td>&nbsp;</td></tr>
          <tr>  <td>
        
        Enter your registered email id :</td><td> <asp:TextBox ID="txtUserId" runat="server"></asp:TextBox></td>
    </tr>
    
   <tr>  <td>
       <td align="center"><a href="WebForm3.aspx">
            New User?</a></td>
    </tr><tr><td> &nbsp;</td><td>&nbsp;</td></tr>
    <tr>  <td align="center">
        <asp:Button ID="btnSendPassword" runat="server" Text="Send" 
            onclick="btnSendPassword_Click" /> </td><td align="center">
            <asp:Button ID="btnReset" runat="server" Text="Reset" /> </td>
    </tr> <tr><td><asp:Label ID="lblGreen" runat="server"  ForeColor="green"></asp:Label>
                     <asp:RegularExpressionValidator ID="revUserId" runat="server" 
                         ControlToValidate="txtUserId" ErrorMessage="Invalid Id!" ForeColor="Red" 
                         SetFocusOnError="True" 
                         ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                 </td></tr>
        <tr><td><asp:Label ID="lblRed" runat="server" Text=""  ForeColor="red"></asp:Label>
           
                     <asp:RequiredFieldValidator ID="rfvUserId" runat="server" 
                         ControlToValidate="txtUserId" ErrorMessage="User Id is required" Display="None"
                         ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator></td></tr> <tr><td align="center">
           
                     </br>
                 </td></tr>
    </table></center><asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="true" ShowSummary="false" />
</asp:Content>
