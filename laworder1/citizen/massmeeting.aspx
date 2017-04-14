<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/citizen/Citizen.Master" CodeBehind="massmeeting.aspx.cs" Inherits="laworder1.citizen.massmeeting" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">




     <table width='100%' >
			<tr>
				<td width='20%' valign='top'>
			<!-- Left column start -->
			
				<table  width='91%'   >
		
				<tr><td>
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
                        </td></tr>

					
					<tr><td>
						<br />
                        <br />
						
					</td></tr>
					<tr>
					<td>
						<table cellspacing='5' class='back' style='text-align:left;' width='100%' >

<tr><td></td><td class="style4"><center><strong>Requirements </strong></center></td></tr>
<ul>
<tr><td></td><td class="style4"><li>Reason must be valid.</li></td></tr>
	<tr><td></td><td class="style4"><li>Enter duration in proper format.</li></td></tr>
	<tr><td></td><td class="style4"><li>Enter time in <b>HH:MM AM/PM format only</b>.</li></td></tr>
	<tr><td></td><td class="style4"><li>Police have full right to to discard your request </li>
        under circumstances.</td></tr></ul>
    <tr><td></td><td class="style4">&nbsp;</td></tr>
	
	
</table></td>
					</tr>
					
			</table>		
<!-- Left column end -->
</td>
				
				<td width="60%" valign="top">



                <div align='center'>
		
					<h2>Mass Meeting Application Form</h2>
					
				</div>
	<div align="center">
		<table width='90%' align='center' cellspacing='5' cellpadding="5" class='back' style='text-align:left;vertical-align: top'>
				
				<tr>
					<td colspan="2" class='color'><strong>Meeting Information</strong></td>
					
				</tr>
				<tr>
					<td colspan='2'>Reason for meeting:<span class='style3'>*</span></td>
					<td >
                        <asp:TextBox ID="txtReason" runat="server"></asp:TextBox></td>
				</tr>
				<tr>
					<td colspan='2'>Place of occurence:<span class='style3'>*</span></td>
					<td ><asp:TextBox ID="txtOccurence" runat="server"></asp:TextBox></td>
				</tr>
				<tr>
					<td colspan='2'>Duration of the meeting: <span class='style3'>*</span></td>
				</tr>
				
				<tr>
				
				
					<td>Starting Time:</td>
					<td width="419"><asp:TextBox ID="txtStartTime" runat="server" title="Pleae enter in format HH:MM AM/PM ex: 08:30 AM"></asp:TextBox>
            <asp:RegularExpressionValidator ID="revTime" runat="server" 
                ControlToValidate="txtStartTime" ValidationExpression="^(1[0-2]|0[1-9]):[0-5][0-9]\040(AM|am|PM|pm)$"
    ErrorMessage="Invalid time format." BackColor="Red" />	</td>
					<td>Ending Time:</td>
					<td width="419"><asp:TextBox ID="txtEndTime" runat="server" title="Pleae enter in format HH:MM AM/PM ex: 08:30 AM"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="txtEndTime" ValidationExpression="^(1[0-2]|0[1-9]):[0-5][0-9]\040(AM|am|PM|pm)$"
    ErrorMessage="Invalid time format." BackColor="Red" />	</td>
				</tr>
				<tr>
					<td>Total no. of Participants:<span class='style3'>*</span></td>
					<td ><asp:TextBox ID="txtParticipants" runat="server"></asp:TextBox></td>
				</tr>
				
	</table>
<table class='back' width='90%' style='text-align:center;vertical-align: top' align="center" cellspacing='5' cellpadding="5" >
<tr><td colspan="2" align="left"><strong>Applicant Information (Taken from your profile)</strong></td></tr>
	
						
						<tr align="left"><td  style="text-align:left" id='name-text'>Name  </td><td> :<asp:Label ID="lblName" runat="server" Text=""></asp:Label></td></tr>
						<tr align="left"><td  style="text-align:left" id='father-text'>Father Name  </td><td> : <asp:Label ID="lblFatherName" runat="server" Text=""></asp:Label></td></tr>
						<tr align="left"><td  style="text-align:left" id='dob-text'>Date of birth  </td><td> : <asp:Label ID="lblDOB" runat="server" Text=""></asp:Label> </td></tr>
						<tr align="left"><td  style="text-align:left" id='mobileno-text'>Mobile Number  </td><td> : <asp:Label ID="lblContact" runat="server" Text=""></asp:Label> </td></tr>
						<tr align="left"><td  style="text-align:left" id='address-text'>Adderess  </td><td> :<asp:Label ID="lblAddress" runat="server" Text=""></asp:Label> </td></tr>
						<tr align="left"><td  style="text-align:left" id='district-text'>Area  </td><td> : <asp:Label ID="lblArea" runat="server" Text=""></asp:Label> </td></tr>
							
	</table>
	<table width='90%' align='center' cellspacing='5' cellpadding="5"  style='text-align:center;vertical-align: top'>
	<tr>
		<td width="25%">&nbsp;</td>
		<td>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" 
                onclick="btnSubmit_Click" /></td>
		<td><asp:Button ID="btnReset" runat="server" Text="Reset" /></td>
		<td width="25%">&nbsp;</td>
		
	</tr>
	</table>
	
</div>
</td></tr></table>
<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="true" ShowSummary="false" />
















    </asp:Content>