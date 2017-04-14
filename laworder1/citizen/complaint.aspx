<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/citizen/Citizen.Master" CodeBehind="complaint.aspx.cs" Inherits="laworder1.citizen.complaint" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



<table width='100%' border="0">
<tr>
	<td width='25%' valign='top'>
	
<!-- Left column start-->

			
				<div id="left">
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
						</table>
					<table cellspacing='5' cellpadding="5" width="96%" class="back" style="text-align:left">
					<tr><td><strong><!-- here you will be acalling first time here it comes na
					cant get u . 1 sec./ both are same .. saw that?  yeh ok.. i'll add it.. -->What happens when a complaint is filled</strong></td></tr>
					<tr><td>An police officer will be verifying the complaint with complainant</td></tr>
					<tr><td>Either FIR is filled or Petty case or non cognizable case is made</td></tr>
					<tr><td>Investigation continues depending upon the case.</td></tr>
					</table>
				</div>
		
					
			
		
</td>
<!-- Left column end -->

<!--content column start -->
<td width='80%' valign="top">
<table width='100%' border="0" >
	<tr>
		<td >
		

<table width='97%' cellspacing='5' cellpadding="5" class='back' style='text-align:left;vertical-align: top'>
<tr class="colour">
		<td colspan="2"><h1>
            <asp:Label ID="lblMsg" runat="server" Text="" ForeColor="green"></asp:Label></h1></td>
	</tr>
<tr class="colour">



		<td colspan="2"><h1>Complaint  </h1></td>
	</tr>
	<tr>
		<td colspan="2">Please enter the area of the place where the crime has occured.</td>
		
	</tr>
	<tr>
		<td colspan="2" class="style3">
			Complaint will be entertained after verification with the complainant. Legal action is likely to be taken if the complaints are found to be false.
		</td>
	</tr>
	<tr>
		<td width="40%">Pin Code</td>
		<td width="60%">
            <asp:TextBox ID="txtPinCode" runat="server" AutoPostBack="True" 
                ontextchanged="txtPinCode_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="tfvPinCode" runat="server" 
                                ControlToValidate="txtPinCode" ErrorMessage="Please Enter your pin code." Display="None"
                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revPinCode" runat="server" ErrorMessage="Pin code must contain 6 digits." Display="None"
ControlToValidate="txtPinCode"    ValidationExpression="^[0-9]{6,6}$" />
		</td>
	</tr>
	<tr>
		<td>Area </td>
		<td><div id="areaDIV"><asp:DropDownList ID="ddlPinCode" runat="server">
                                    
                                </asp:DropDownList> <asp:RequiredFieldValidator ID="rfvPinCode" runat="server" 
                                ControlToValidate="ddlPinCode" 
                                ErrorMessage="Please select your area" Display="None"
                                SetFocusOnError="True" InitialValue="Select Area" ></asp:RequiredFieldValidator></div></td>
	</tr>
	<tr>
		<td width="40%">Crime type (Select proper crime)</td>
		<td width="60%">
			 <asp:DropDownList ID="ddlCrimeType" runat="server">
                                <asp:ListItem Selected="True" Value='0'>Select</asp:ListItem>
                                <asp:ListItem Enabled="True" Value='1'>Financial crimes</asp:ListItem>
                                <asp:ListItem Enabled="True" Value='2'>Property crimes</asp:ListItem>
                                <asp:ListItem Enabled="True" Value='3'>Life Theft Crimes</asp:ListItem>
                                <asp:ListItem Enabled="True" Value='4'>Sexual Crimes</asp:ListItem>
                                <asp:ListItem Enabled="True" Value='5'>Cyber Crimes</asp:ListItem>
                                <asp:ListItem Enabled="True" Value='6'>Trafficing Crimes</asp:ListItem>
                               
                            </asp:DropDownList>

			<asp:RequiredFieldValidator ID="rfvCrimeType" runat="server" 
                                ControlToValidate="ddlCrimeType" 
                                ErrorMessage="Please select your area" Display="None"
                                SetFocusOnError="True" InitialValue="Select Crime Type" ></asp:RequiredFieldValidator>
		</td>
	</tr>
	<tr>
		<td valign="top">Complaint Information</td>
		<td>
            <asp:TextBox ID="txtComplaint" runat="server" Height="59px" 
                TextMode="MultiLine" Width="273px"></asp:TextBox><asp:RequiredFieldValidator ID="rfvComplaint" runat="server" 
                                ControlToValidate="txtComplaint" ErrorMessage="Please enter your complaint." Display="None"
                                SetFocusOnError="True"></asp:RequiredFieldValidator>
        </td>
	</tr>
	<tr>
		<td valign="top">Complainant Information</td>
		<td>
				
		</td>
	</tr>
	
					
						
						
						<tr><td  style="text-align:left" id='name-text'>Name  </td><td> : 
                            <asp:Label ID="lblNameUser" runat="server" Text=""></asp:Label> </td></tr>
						<tr><td  style="text-align:left" id='father-text'>Father Name  </td><td> : <asp:Label ID="lblFatherName" runat="server" Text=""></asp:Label></td></tr>
						<tr><td  style="text-align:left" id='dob-text'>Date Of Birth  </td><td> :<asp:Label ID="lblDOB" runat="server" Text=""></asp:Label> </td></tr>
						<tr><td  style="text-align:left" id='mobileno-text'>Mobile Number </td><td> : <asp:Label ID="lblContact" runat="server" Text=""></asp:Label> </td></tr>
						<tr><td  style="text-align:left" id='address-text'>Address </td><td> :<asp:Label ID="lblAddress" runat="server" Text=""></asp:Label> </td></tr>
						<tr><td  style="text-align:left" id='district-text'>Area </td><td> : <asp:Label ID="LblArea" runat="server" Text=""></asp:Label></td></tr>
    
						
	<tr>
		<td>IP Address </td>
		<td>
            <asp:TextBox ID="txtIP" runat="server" Enabled="False"></asp:TextBox>
        </td>
	</tr>
	
	<tr>
	<td > IP :
<asp:Label ID="lblIP" runat="server" Font-Size="X-Large" ForeColor="Red"></asp:Label></td>



	<td>By entering IP, you confirm that complaint is made only by you and you will be held responsible for illegal use.</td>
	</tr>
</table>
<table width='97%' class="back" cellspacing='5' cellpadding="5"  style='text-align:center;vertical-align: top'>
	<tr>
		<td width="25%">&nbsp;</td>
		<td><asp:Button ID="btnSubmit" runat="server" Text="Submit" 
                onclick="btnSubmit_Click"></asp:Button></td>
		<td></td>
		<td width="25%">&nbsp;</td>
		
	</tr>
	</table>
</td>


</tr>

</table>
</td></tr>
<tr><td align="center"></td></tr>

</table>



<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="true" ShowSummary="false" />


   
   
</asp:Content>