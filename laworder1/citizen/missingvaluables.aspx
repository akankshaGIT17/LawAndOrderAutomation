<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/citizen/Citizen.Master" CodeBehind="missingvaluables.aspx.cs" Inherits="laworder1.citizen.missingvaluables" %>
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
<tr><td></td><td class="style4">It is advisory to provide a photo of the lost person.</td></tr>
	<tr><td></td><td class="style4">Give height and weight in proper format asked.</td></tr>
	<tr><td></td><td class="style4">Enter time in <b>HH:MM AM/PM format only</b>.</td></tr>
	<tr><td></td><td class="style4">Give full description for kidnapper etc if you know.</td></tr>
    <tr><td></td><td class="style4">Depending on the situation the lost person's image will be flashed on our website.</td></tr>
	
	
</table></td>
					</tr>
					
			</table>		
<!-- Left column end -->
</td>
				
				<td width="60%" valign="top">
<div align='center'>
		
					<h2>Reporting Missing Valuables</h2>
					
				</div>
<div align="center">
		<table width='90%' align='center' cellspacing='5' cellpadding="5" class='back' style='text-align:left;vertical-align: top'>
				
				<tr>
					<td colspan="2" class='color'><strong>Missing Valuable Information</strong></td>
					
				</tr>
				<tr>
					<td>Name of the stolen property:<span class='style3'>*</span></td>
					<td colspan="2"><asp:TextBox ID="txtMissingValuable" runat="server" title='Please enter the name of the lost valuable'></asp:TextBox>
                         <asp:RequiredFieldValidator ID="rfvMissingValuable" runat="server" 
                                ControlToValidate="txtMissingValuable" ErrorMessage="Please enter the name of lost Valuable." Display="None"
                                SetFocusOnError="True" ></asp:RequiredFieldValidator> Ex : Cell phone</td>
				</tr>
				<tr>
					<td>Worth of the property (in RS)</td>
					<td><asp:TextBox ID="txtWorth" runat="server" title='Please enter the worth of the lost valuable'></asp:TextBox>
                       <%--  <asp:RequiredFieldValidator ID="rfvWorth" runat="server" 
                                ControlToValidate="txtWorth" ErrorMessage="Please enter the worth of lost valuable." Display="None"
                                SetFocusOnError="True" ></asp:RequiredFieldValidator> --%>
                                <asp:RegularExpressionValidator ID="revWorth" runat="server"    
ErrorMessage="Enter a valid amount" Display="None"
ControlToValidate="txtWorth"    
ValidationExpression="^[0-9]{4,7}$" /></td>
				</tr>
				
				
				<tr>
					<td>Lost Place (any landmark):<span class='style3'>*</span></td>
					<td><asp:TextBox ID="txtLandmark" runat="server" title='Please enter the a landmark'></asp:TextBox>
                         <asp:RequiredFieldValidator ID="rfvLandmark" runat="server" 
                                ControlToValidate="txtLandmark" ErrorMessage="Please enter the landmark." Display="None"
                                SetFocusOnError="True" ></asp:RequiredFieldValidator> </td>
				</tr>
				<tr>
		<td width="40%">Pin Code:
		
			<asp:TextBox ID="txtPinCode" runat="server" title="Enter your pin code" 
                                AutoPostBack="True" ontextchanged="txtPinCode_TextChanged"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvPinCode" runat="server" 
                                ControlToValidate="txtPinCode" ErrorMessage="Please Enter your pin code." Display="None"
                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revPinCode" runat="server" ErrorMessage="Pin code must contain 6 digits." Display="None"
ControlToValidate="txtPinCode"    ValidationExpression="^[0-9]{6,6}$" /></td>
	
		<td>Area <span id="areaDIV"><asp:DropDownList ID="ddlPinCode" runat="server" 
                                onselectedindexchanged="ddlPinCode_SelectedIndexChanged">
                                    
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RrfvPinCode" runat="server" 
                                ControlToValidate="ddlPinCode" 
                                ErrorMessage="Please select your area" Display="None"
                                SetFocusOnError="True" InitialValue="Select Area" ></asp:RequiredFieldValidator> </span></td>
	</tr>
				<tr>
					<td>Date and Time when lost:<span class='style3'>*</span></td>
					<td ><asp:TextBox ID="txtDOB" runat="server"></asp:TextBox>
                            <AK:CalendarExtender ID="CalDOB" runat="server" PopupButtonID="txtDOB" PopupPosition="BottomRight"
                                TargetControlID="txtDOB">
                            </AK:CalendarExtender>
		Time:
			<asp:TextBox ID="txtTime" runat="server" title="Pleae enter in format HH:MM AM/PM ex: 08:30 AM"></asp:TextBox>
            <asp:RegularExpressionValidator ID="revTime" runat="server" 
                ControlToValidate="txtTime" ValidationExpression="^(1[0-2]|0[1-9]):[0-5][0-9]\040(AM|am|PM|pm)$"
    ErrorMessage="Invalid time format." BackColor="Red" />
			<div id="time3_picker" class="time_picker_div"></div>
		</td>
	</tr>
				<tr >
					<td valign="top">Other Details regarding Theft</td>
		 			<td><asp:TextBox ID="txtTheftDetail" runat="server" Height="55px" 
                            TextMode="MultiLine" Width="193px"></asp:TextBox></td>
		 		</tr>
		 		
				
			</table>

	<table width='90' align='center' cellspacing='5' cellpadding="5"  style='text-align:center;vertical-align: top'>
	<tr>
		<td width="25%">&nbsp;</td>
		<td><asp:Button ID="btnSave" runat="server" Text="Submit" onclick="btnSave_Click" /></td>
		<td><asp:Button ID="btnClear" runat="server" Text="Reset"  /></td>
		<td width="25%">&nbsp;</td>
		
	</tr>
	</table>
	
</div>
</td>
</tr>
</table>


<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="true" ShowSummary="false" />











  
</asp:Content>