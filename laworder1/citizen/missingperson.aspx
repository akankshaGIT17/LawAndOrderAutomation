<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/citizen/Citizen.Master" CodeBehind="missingperson.aspx.cs" Inherits="laworder1.citizen.missingperson" %>


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
		<h1>
            <asp:Label ID="lblMsg" runat="server" Text="" ForeColor="green"></asp:Label></h1>
					<h2>Reporting Missing Persons</h2>
					
				</div>
<div align="center">
		<table width='90%' align='center' cellspacing='5' cellpadding="5" class='back' style='text-align:left;vertical-align: top'>
				
				<tr>
					<td colspan="2" class='color'><strong>Missing Persons Identities</strong></td>
					
				</tr>
				<tr>
					<td>Name:<span class='style3'>*</span></td>
					<td class="style5" >
                        <asp:TextBox ID="txtMissingName" runat="server" title='Please enter the name of the lost person'></asp:TextBox>
                         <asp:RequiredFieldValidator ID="rfvMissingName" runat="server" 
                                ControlToValidate="txtMissingName" ErrorMessage="Please enter the name of lost person." Display="None"
                                SetFocusOnError="True" ></asp:RequiredFieldValidator>
                                </td>
				</tr>
				<tr>
					<td>Gender:<span class='style3'>*</span></td>
					<td class="style5" >
						<asp:RadioButtonList ID="rbtGender" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Selected="True">Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:RadioButtonList>
                            <asp:RequiredFieldValidator ID="rfvGender" runat="server" 
                                ControlToValidate="rbtGender" ErrorMessage="Please select a gender" Display="None"
                                SetFocusOnError="True" ></asp:RequiredFieldValidator>
					</td>
				</tr>
				<tr>
					<td >Colour: <span class='style3'>*</span></td>
					<td class="style5"><asp:DropDownList ID="ddlColor" runat="server">
                                <asp:ListItem Selected="True" Value='0'>Select</asp:ListItem>
                                <asp:ListItem Enabled="True" Value='1'>Black</asp:ListItem>
                                <asp:ListItem Enabled="True" Value='2'>White</asp:ListItem>
                                <asp:ListItem Enabled="True" Value='3'>Brown</asp:ListItem>
                               
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfvColor" runat="server" 
                                ControlToValidate="ddlColor" 
                                ErrorMessage="Please select color" Display="None"
                                SetFocusOnError="True" InitialValue="Select" ></asp:RequiredFieldValidator>
                            </td>
				</tr>
				<tr>
					<td>Height(in cm):<span class='style3'>*</span></td>
					<td class="style5">
                        <asp:TextBox ID="txtHieght" runat="server" title="Pleae enter the height of missing person"></asp:TextBox> 
                        <asp:RequiredFieldValidator ID="rfvHeight" runat="server" 
                                ControlToValidate="txtHieght" ErrorMessage="Pleae enter the height of missing person" Display="None"
                                SetFocusOnError="True" ></asp:RequiredFieldValidator> </td>
				</tr>
				<tr>
					<td>Weight(in kg):<span class='style3'>*</span></td>
					<td class="style5"><asp:TextBox ID="txtWeight" runat="server" title="Pleae enter the weight of missing person"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvWeight" runat="server" 
                                ControlToValidate="txtWeight" ErrorMessage="Pleae enter the weight of missing person" Display="None"
                                SetFocusOnError="True" ></asp:RequiredFieldValidator></td>
				</tr>
				<tr>
					<td>Lost Place:<span class='style3'>*</span></td>
					<td class="style5"><asp:TextBox ID="txtPlace" runat="server" title="Pleae enter the Place of missing person"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvPlace" runat="server" 
                                ControlToValidate="txtPlace" ErrorMessage="Pleae enter the place of missing person" Display="None"
                                SetFocusOnError="True" ></asp:RequiredFieldValidator></td>
				</tr>
				<tr>
		<td width="40%">Pin Code
		
			<asp:TextBox ID="txtPinCode" runat="server" title="Enter your pin code" 
                                AutoPostBack="True" ontextchanged="txtPinCode_TextChanged"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvPinCode" runat="server" 
                                ControlToValidate="txtPinCode" ErrorMessage="Please Enter your pin code." Display="None"
                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revPinCode" runat="server" ErrorMessage="Pin code must contain 6 digits." Display="None"
ControlToValidate="txtPinCode"    ValidationExpression="^[0-9]{6,6}$" />
			
		</td>
	
		<td class="style5">Area <span id="areaDIV"><asp:DropDownList ID="ddlPinCode" runat="server" 
                                onselectedindexchanged="ddlPinCode_SelectedIndexChanged">
                                    
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RrfvPinCode" runat="server" 
                                ControlToValidate="ddlPinCode" 
                                ErrorMessage="Please select your area" Display="None"
                                SetFocusOnError="True" InitialValue="Select Area" ></asp:RequiredFieldValidator> </span></td>
	</tr>
				<tr>
					<td>Date and Time when he/she lost:<span class='style3'>*</span></td>
					<td class="style5" ><asp:TextBox ID="txtDOB" runat="server"></asp:TextBox>
                            <AK:CalendarExtender ID="CalDOB" runat="server" PopupButtonID="txtDOB" PopupPosition="BottomRight"
                                TargetControlID="txtDOB">
                            </AK:CalendarExtender>
                            <asp:RequiredFieldValidator ID="rfvDateLost" runat="server" 
                                ControlToValidate="txtDOB" ErrorMessage="Please Enter your date when lost." Display="None"
                                SetFocusOnError="True"></asp:RequiredFieldValidator>
		</td>
		<td width="419">
			Time (ex: 08:30 AM):<asp:TextBox ID="txtTime" runat="server" title="Pleae enter in format HH:MM AM/PM ex: 08:30 AM"></asp:TextBox>
            <asp:RegularExpressionValidator ID="revTime" runat="server" 
                ControlToValidate="txtTime" ValidationExpression="^(1[0-2]|0[1-9]):[0-5][0-9]\040(AM|am|PM|pm)$"
    ErrorMessage="Invalid time format." BackColor="Red" />
			
		</td>
	</tr>
				<tr >
					<td >Dressings when he/she was lost:<span class='style3'>*</span></td>
		 			<td class="style5"><asp:TextBox ID="txtDress" runat="server" title="Pleae enter in dressings of lost person."></asp:TextBox></td>
		 		</tr>
		 		<tr>	
				 	<td >Photo of missing person: <span class='style3'></span></td>
		 			<td class="style5"><asp:FileUpload ID="FileUpload1" runat="server" />
                             </td>
				</tr>
				<tr>
					<td >Do you think whether the person has gone willingly:<span class='style3'>*</span></td>
					
				<td class="style5">
					<asp:TextBox ID="txtYesWilling" runat="server" Height="55px" 
                            TextMode="MultiLine" Width="193px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvWilling" runat="server" 
                                ControlToValidate="txtYesWilling" ErrorMessage="Please enter Do you think whether the person has gone willingly." Display="None"
                                SetFocusOnError="True" ></asp:RequiredFieldValidator>
				</td></tr>
				<tr>
					<td valign="top" >
						<span id="leftDIV3"></span>
					</td>
					<td class="style5">
						<span id="rightDIV3"></span>
					</td>
				</tr> 
				<tr>
					<td>Do you think whether the person has kidnapped:<span class='style3'>*</span></td>
					<td class="style5"  ><asp:TextBox ID="txtYesKidnap" runat="server" Height="55px" 
                            TextMode="MultiLine" Width="193px"></asp:TextBox>
                           <asp:RequiredFieldValidator ID="rfvKidnap" runat="server" 
                                ControlToValidate="txtYesKidnap" ErrorMessage="Please enter Do you think whether the person has kidnapped." Display="None"
                                SetFocusOnError="True" ></asp:RequiredFieldValidator> </td>
				</tr>
						
				<tr>
					<td valign="top" >
						<span id="leftDIV4"></span>
					</td>
					<td class="style5">
						<span id="rightDIV4"></span>
					</td>
				</tr>
				<tr>
					<td>Do you know any details about kidnapped person:<span class='style3'>*</span></td>
					<td class="style5"  ><asp:TextBox ID="txtYesDetails" runat="server" Height="55px" 
                            TextMode="MultiLine" Width="193px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvDtails" runat="server" 
                                ControlToValidate="txtYesDetails" ErrorMessage="Please enter Do you know any details about kidnapped person." Display="None"
                                SetFocusOnError="True" ></asp:RequiredFieldValidator> 
					</td>
				</tr>
				 
					
				
				<tr>
					<td valign="top" >
						<span id="leftDIV2"></span>
					</td>
					<td class="style5">
						<span id="rightDIV2"></span>
					</td>
				</tr> 
		 		<tr>
					<td >Do you want to give any reward:<span class='style3'>*</span></td>
					<td class="style5"  >
                        <asp:TextBox ID="txtReward" runat="server" Height="22px" 
                             Width="102px"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="rfvReward" runat="server" 
                                ControlToValidate="txtReward" ErrorMessage="Please enter the reward." Display="None"
                                SetFocusOnError="True" ></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revReward" runat="server"    
ErrorMessage="Enter a valid amount" Display="None"
ControlToValidate="txtReward"    
ValidationExpression="^[0-9]{3,5}$" /> </td>
				</tr>
				<tr>
					<td>
						
					</td>
				</tr>
				<tr>
					<td valign="top" >
						<span id="leftDIV"></span>
					</td>
					<td class="style5">
						<span id="rightDIV"></span>
					</td>
				</tr>
			</table></tr></table>

	<table width='90' align='center' cellspacing='5' cellpadding="5"  style='text-align:center;vertical-align: top'>
	<tr>
		<td width="25%">&nbsp;</td>
		<td>
            <asp:Button ID="btnSave" runat="server" Text="Submit" onclick="btnSave_Click" /></td>
		<td>
            <asp:Button ID="btnCancel" runat="server" Text="Reset" /></td>
		<td width="25%">&nbsp;</td>
		
	</tr>
	</table>
	<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="true" ShowSummary="false" />
</div>
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .style4
        {
            width: 254px;
        }
        .style5
        {
            width: 223px;
        }
    </style>
</asp:Content>
