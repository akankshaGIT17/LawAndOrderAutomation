<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/citizen/Citizen.Master" CodeBehind="loudspeaker.aspx.cs" Inherits="laworder1.citizen.loudspeaker" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="AK" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
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
		
					<h2>Loud Speaker Application Form</h2>
					
				</div>
	<div align="center">
		<table width='90%' align='center' cellspacing='5' cellpadding="5" class='back' style='text-align:left;vertical-align: top'>
				
				<tr>
					<td colspan="2" class='color'><strong>Petitioner's Information</strong></td>
					
				</tr>
				<tr>
					<td colspan='2'>Name of the Applicant:<span class='style3'>*</span></td>
					<td >
                        <asp:TextBox ID="txtNameL" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvName" runat="server" 
                                ControlToValidate="txtNameL" ErrorMessage="Please Enter reason." Display="None"
                                SetFocusOnError="True"></asp:RequiredFieldValidator></td>
				</tr>
				<tr>
					<td colspan='2'>Reason for using Speakers:<span class='style3'>*</span></td>
					<td ><asp:TextBox ID="txtReasonL" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvReason" runat="server" 
                                ControlToValidate="txtReasonL" ErrorMessage="Please Enter reason." Display="None"
                                SetFocusOnError="True"></asp:RequiredFieldValidator></td>
				</tr>
				<tr>
					<td colspan='2' style="text-decoration: underline">Date and Time of using the Speakers: <span class='style3'>*</span></td>
				</tr>
				
				<tr>
				
				
					<td>Starting Date:</td>
					<td width="419"><asp:TextBox ID="txtStartDateL" runat="server"></asp:TextBox>
                            <AK:CalendarExtender ID="CalStartDate" runat="server" PopupButtonID="txttxtStartDate" PopupPosition="BottomRight"
                                TargetControlID="txtStartDateL">
                            </AK:CalendarExtender>
                            <asp:RequiredFieldValidator ID="rfvStrtDate" runat="server" 
                                ControlToValidate="txtStartDateL" ErrorMessage="Please Enter start date." Display="None"
                                SetFocusOnError="True"></asp:RequiredFieldValidator>	</td>
					<td>Ending Date</td>
					<td width="419"><asp:TextBox ID="txtEndDateL" runat="server"></asp:TextBox>
                            <AK:CalendarExtender ID="CalEndDate" runat="server" PopupButtonID="txtEndDate" PopupPosition="BottomRight"
                                TargetControlID="txtEndDateL">
                            </AK:CalendarExtender>	
                            <asp:RequiredFieldValidator ID="rfvEndDate" runat="server" 
                                ControlToValidate="txtEndDateL" ErrorMessage="Please Enter end date." Display="None"
                                SetFocusOnError="True"></asp:RequiredFieldValidator></td>
				</tr>
				<tr>
					<td>Ending Time:<span class='style3'>*</span></td>
					<td ><asp:TextBox ID="txtEndTimeL" runat="server" title="Pleae enter in format HH:MM AM/PM ex: 08:30 AM"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                ControlToValidate="txtEndTimeL" ValidationExpression="^(1[0-2]|0[1-9]):[0-5][0-9]\040(AM|am|PM|pm)$"
    ErrorMessage="Invalid time format." BackColor="Red" /></td>
				</tr>
                <tr>
					<td colspan='2'>Location of the speaker to be used<span class='style3'>*</span></td>
					
				</tr>
                <tr>
				
				
					<td>Pin Code:</td>
					<td width="419"><asp:TextBox ID="txtPinCodeL" runat="server" title="Enter your pin code" 
                                AutoPostBack="True" ontextchanged="txtPinCode_TextChanged"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvPinCode" runat="server" 
                                ControlToValidate="txtPinCodeL" ErrorMessage="Please Enter your pin code." Display="None"
                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revPinCode" runat="server" ErrorMessage="Pin code must contain 6 digits." Display="None"
ControlToValidate="txtPinCodeL"    ValidationExpression="^[0-9]{6,6}$" />	</td>
					<td>Area:</td>
					<td width="419">
                            <asp:DropDownList ID="ddlPinCodeL" runat="server" 
                                onselectedindexchanged="ddlPinCode_SelectedIndexChanged">
                                    
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RrfvPinCode" runat="server" 
                                ControlToValidate="ddlPinCodeL" 
                                ErrorMessage="Please select your area" Display="None"
                                SetFocusOnError="True" InitialValue="Select Area" ></asp:RequiredFieldValidator> </td>
				</tr>
				
	</table>
<table class='back' width='90%' style='text-align:center;vertical-align: top' align="center" cellspacing='5' cellpadding="5" >
<tr><td colspan="2" align="left"><strong>Applicant Information (Taken from your profile)</strong></td></tr>
	
						
						<tr align="left"><td  style="text-align:left" id='name-text'>Name  </td><td> :<asp:Label ID="lblNameL" runat="server" Text=""></asp:Label></td></tr>
						<tr align="left"><td  style="text-align:left" id='father-text'>Father Name  </td><td> : <asp:Label ID="lblFatherNameL" runat="server" Text=""></asp:Label></td></tr>
						<tr align="left"><td  style="text-align:left" id='dob-text'>Date of birth  </td><td> : <asp:Label ID="lblDOBL" runat="server" Text=""></asp:Label> </td></tr>
						<tr align="left"><td  style="text-align:left" id='mobileno-text'>Mobile Number  </td><td> : <asp:Label ID="lblContactL" runat="server" Text=""></asp:Label> </td></tr>
						<tr align="left"><td  style="text-align:left" id='address-text'>Adderess  </td><td> :<asp:Label ID="lblAddressL" runat="server" Text=""></asp:Label> </td></tr>
						<tr align="left"><td  style="text-align:left" id='district-text'>Area  </td><td> : <asp:Label ID="lblAreaL" runat="server" Text=""></asp:Label> </td></tr>
							
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