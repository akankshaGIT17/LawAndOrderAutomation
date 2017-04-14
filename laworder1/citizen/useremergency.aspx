<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/citizen/Citizen.Master" CodeBehind="useremergency.aspx.cs" Inherits="laworder1.citizen.useremergency" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<table width='100%' border="0" >
			<tr>
				<td width='20%' valign='top'>
                <table  width='91%'   >
		
				<tr><td>
	
		<table class='back' width="100%" >
		 			
						<tr>
				 	
					
						<td colspan='2' style="text-align:left" id='email-text'><strong>Welcome </strong><b>
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
								<asp:Button ID="btnLogout" runat="server" onclick="btnLogout_Click1" 
                                    Text="Sign Out" />
							</td>
						</tr>
						</table>
						
		
				
				
				
				
				
				
				
				
				
				
				
		 		</td></tr>

					
					<tr><td>
						<br />
                        <br />
						
					</td></tr>
					<tr>
					<td>
						<table cellspacing='5' cellpadding='5' class='back' style='text-align:left;' width='90%' >

<tr><td></td><td class="style4"><strong>Emergency complaint Advantages</strong></td></tr>
	<tr><td></td><td class="style4">No Login Required</td></tr>
	<tr><td></td><td class="style4">Police officer will be alerted</td></tr>
	<tr><td></td><td class="style4">No personal information collected</td></tr>
	
	
</table></td>
					</tr>
					
			</table>		
<!-- Left column end -->
</td>
				
				<td width="60%" valign="top">
<!--content column start -->

<table width='100%' border="0" >
	<tr>
		<td >
		

<table width='97%' cellspacing='5' cellpadding="5" class='back' style='text-align:left;vertical-align: top'>


<tr class="colour">
		<td colspan="2"><h1>
            <asp:Label ID="lblMsg" runat="server" Text="" ForeColor="green"></asp:Label></h1></td>
	</tr><tr class="colour">
		<td colspan="2"><h1>Emergency Complaint</h1></td>
	</tr>
	<tr>
		<td colspan="2">Please enter the district and area of the place where the crime has occured.</td>
		
	</tr>
	<tr>
		<td colspan="2" class="style3">
			Complaint will be entertained after verification with the complainant. Legal action is likely to be taken if the complaints are found to be false. 
		</td>
	</tr>
	<tr>
		<td width="40%">Pin Code</td>
		<td width="60%">
			<asp:TextBox ID="txtPinCodeH" runat="server" title="Enter your pin code" 
                 AutoPostBack="True" ontextchanged="txtPinCodeH_TextChanged1"  ></asp:TextBox>
                 <asp:RequiredFieldValidator ID="rfvPinCodeH" runat="server" 
                                ControlToValidate="txtPinCodeH" ErrorMessage="Please Enter your pin code." Display="None"
                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revPinCodeH" runat="server" ErrorMessage="Pin code must contain 6 digits." Display="None"
ControlToValidate="txtPinCodeH"    ValidationExpression="^[0-9]{6,6}$" />
			
		</td>
	</tr>
	<tr>
		<td>Area (where the crime occured) </td>
		<td><div id="areaDIV"><asp:DropDownList ID="ddlPinCodeH" runat="server" 
               >
                                    
                                </asp:DropDownList> </div>
                                <asp:RequiredFieldValidator ID="RrfvPinCodeH" runat="server" 
                                ControlToValidate="ddlPinCodeH" 
                                ErrorMessage="Please select your area" Display="None"
                                SetFocusOnError="True" InitialValue="Select Area" ></asp:RequiredFieldValidator></td>
	</tr>
    <%--<tr>
    <td>
    Crime Type
      
    </td>
     <td>
     <asp:DropDownList ID="ddlBloodGroup" runat="server">
                                <asp:ListItem Selected="True" Value='0'>Select</asp:ListItem>
                                <asp:ListItem Enabled="True" Value='1'>Financial crimes</asp:ListItem>
                                <asp:ListItem Enabled="True" Value='2'>Property crimes</asp:ListItem>
                                <asp:ListItem Enabled="True" Value='3'>Life Theft Crimes</asp:ListItem>
                                <asp:ListItem Enabled="True" Value='4'>Sexual Crimes</asp:ListItem>
                                <asp:ListItem Enabled="True" Value='5'>Cyber Crimes</asp:ListItem>
                                <asp:ListItem Enabled="True" Value='6'>Trafficing Crimes</asp:ListItem>
                               
                            </asp:DropDownList>
    </td>
    
    </tr>--%>
	<tr>
		<td valign="top">Complaint Information</td>
		<td><asp:TextBox ID="txtComplaint" runat="server" title="Enter Complaint" 
                TextMode="MultiLine" Height="197px" Width="194px"></asp:TextBox><asp:RequiredFieldValidator ID="rfvComplaint" runat="server" 
                                ControlToValidate="txtComplaint" ErrorMessage="Please enter your complaint." Display="None"
                                SetFocusOnError="True"></asp:RequiredFieldValidator></td>
	</tr>
	<tr>
		<td>Enter your IP adderess as shown</td>
		<td><asp:TextBox ID="txtIp" runat="server" title="Enter Complaint" ReadOnly="True" 
                ></asp:TextBox></td>
	</tr>
	<tr>
	<td style="color: red;font-weight:bold;font-size:15pt"> 
        <asp:Label ID="lblIP" runat="server" Text=""></asp:Label>
</td>
	</tr>
</table>
<table width='97%' class="back" cellspacing='5' cellpadding="5"  style='text-align:center;vertical-align: top'>
	<tr>
		<td width="25%">&nbsp;</td>
		<td><asp:Button ID="btnSubmitH" runat="server" Text="Submit" 
                onclick="btnSubmitH_Click" style="height: 26px"
                                 /></td>
		<td><asp:Button ID="btnResetH" runat="server" Text="Reset" /></td>
		<td width="25%">&nbsp;</td>
		
	</tr>
	</table>
</td>


</tr>

</table>
</td></tr>
<tr></td></tr>

</table><asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="true" ShowSummary="false" />
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .style4
        {
            width: 201px;
        }
    </style>
</asp:Content>
