<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/citizen/Citizen.Master" CodeBehind="updatepassword.aspx.cs" Inherits="laworder1.citizen.updatepassword" %>




<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style4
        {
            width: 136px;
        }
        .style6
        {
            height: 7px;
        }
        .style7
        {
            height: 5px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <table width='100%' border="0">
<tr>
	<td width='25%' valign='top'>
	
<!-- Left column start-->

			<table width='100%'>

	<td valign='top'>
	<table class='back' width="100%" >
		 			
						<tr>
				 	
					
						<td colspan='2' style="text-align:left" id='email-text'><strong>Welcome, </strong><b>
                            <asp:Label runat="server" ID="lblUserName"></asp:Label>  </b> </td>
							
						</tr>
						<tr>
							<td style="padding-top:3px" id='password-text'><img src="../img/general/missing.png"/></td>
							<td style="text-align:left">
								<a href="myprofile.aspx">My Profile</a><br />
                                <a href="myhistory.aspx">My History</a><br />
								
								
						</td>
						</tr>
						
				
						<tr>
							<td></td>
							<td style="text-align:left"> 
								&nbsp;<asp:Button ID="btnLogout" runat="server" Text="Sign Out" 
                                    onclick="btnLogout_Click" />
							</td>
						</tr>
						</table></td></tr>
	
						<tr>
					<td>
						<table class='back' width="100%">
		 				<tr>
		 					<td colspan='2'  style="font-weight: bold;padding-bottom:3px"  id='station'>Security Tip of the day</td>
		 				</tr>
						<tr >
							<td style="text-align:left;" >There are timer mechanisms available in market, which control lights. If you are planning to be away from home for some days, install one of these gadgets.</td>
						</tr>
						
				
					</table></td>
					</tr>
					<tr><td>
						<table class='back' style="text-align: left;" width="100%">
							<tr>
								<td colspan="2" style="padding-bottom:3px"><center><u><strong>
								Emergency Phone Numbers
</strong></u></center></td>
							</tr>
							<tr>
								<td> Emergency-Control room </td>
								<td> 100 </td>
							</tr>
							<tr>
								<td>
To Report trafffic voilation
</td>
								<td> 103 </td>
							</tr>
							<tr>
								<td>Ambulance </td>
								<td> 108 </td>
							</tr>
							<tr>
								<td>Child Line</td>
								<td>  	 1098 </td>
							</tr>
														<tr>
								<td>Women Help Line</td>
								<td> 1091 </td>
							</tr>
														<tr>
								<td>Senior Citizen Line</td>
								<td> 1253 </td>
							</tr>
														<tr>
								<td>Blue Line</td>
								<td> 12700 </td>
							</tr>
							
																																		
						</table>
					</td></tr>
					
			</table>
<!-- Left column end -->

<!--content column start -->
<td width='80%' valign="top">
    <table width='100%' border="0">
        <tr>
            <td>
                <table width='97%' cellspacing='5' cellpadding="5" class='back' style='text-align: left;
                    vertical-align: top'>
                    <tr>
                        <td colspan="2" class='colour' style='text-align: center'>
                            <h2>
                                Your Profile
                            </h2>
                                </span>
                        </td>
                        
                    </tr>
                    <tr>
                        <td colspan="2">
                            <strong>Update Password</strong>
                            
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 140px">
                            EMail-Id<span class='style3'>*</span>
                        </td>
                        <td>
                           <strong><asp:Label ID="lblEmail" runat="server" Text=""></asp:Label></strong>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td>
                            <span style="color: #FF0000"></span>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td colspan='2'>
                            
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Password<span class='style3'>*</span>
                        </td>
                        <td>
                            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox><span
                                class='style3'> cAsE sEnSiTiVe (LAWS!=laws)</span>
                            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" 
                                ControlToValidate="txtPassword" ErrorMessage="Enter a password"  Display="None"
                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="cvPassowrd" runat="server" 
                                ControlToCompare="txtPassword" ControlToValidate="txtRePassword" 
                                ErrorMessage="Your Passwords do not match!"  SetFocusOnError="True" 
                                Display="None"></asp:CompareValidator>
                        <asp:RegularExpressionValidator ID="revPassword" runat="server" ControlToValidate="txtPassword"
    ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$"
    ErrorMessage="Minimum 8 characters atleast 1 Alphabet, 1 Number and 1 Special Character" Display="None" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            ReType your password<span class='style3'>*</span>
                        </td>
                        <td>
                            <asp:TextBox ID="txtRePassword" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td>
                            You will recieve an email if someone tries to break into your account by entering
                            a wrong password.
                        </td>
                    </tr>
                </table>
                
                <table width='97%' class="back" cellspacing='5' cellpadding="5" style='text-align: center;
                    vertical-align: top'>
                    <tr>
                        <td width="25%">
                            &nbsp;
                        </td>
                        <td >
                            <asp:Button ID="btnSignUp" runat="server" Text="Submit" onclick="btnSignUp_Click1" 
                                 />
                        </td>
                        <td>
                            <asp:Button ID="btnReset" runat="server" Text="Reset" />
                        </td>
                        <td width="25%">
                            &nbsp;
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table></td></tr></table>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="true" ShowSummary="false" />
</asp:Content>












