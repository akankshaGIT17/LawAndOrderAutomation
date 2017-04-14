<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/citizen/Citizen.Master" CodeBehind="lawandacts.aspx.cs" Inherits="laworder1.lawandacts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<table width='100%' border="0">
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

		
	
    </td></tr></table>
<!--content column start -->
<td width='80%' valign="top">
<table width='100%' border="0" >
	<tr><td><h1>Laws And Acts</h1></td></tr>
	<tr>
		<td >
			
			<table width='97%' cellspacing='5' cellpadding="5" class='back' style='text-align:left;vertical-align: top'>
				
				<tr><td style='text-align:left;vertical-align: top'>302</td></tr>
				<tr><td style='text-align:left;vertical-align: top'>Punishment for murder</td></tr>
				<tr><td style='text-align:left;vertical-align: top'>Whoever commits murder with death, or 1[inprisonment for life] and shall also be liable to fine.</td></tr>
			
			
		</table>
		<table width='97%' cellspacing='5' cellpadding="5" class='back' style='text-align:left;vertical-align: top'>
				
				<tr><td style='text-align:left;vertical-align: top'>303</td></tr>
				<tr><td style='text-align:left;vertical-align: top'>Punishment for murder by life-convict</td></tr>
				<tr><td style='text-align:left;vertical-align: top'>Whoever, being under sentence of *[imprisonment for life],commits murder, shall be punished with death.</td></tr>
			
			
		</table>
        	<table width='97%' cellspacing='5' cellpadding="5" class='back' style='text-align:left;vertical-align: top'>
				
				<tr><td style='text-align:left;vertical-align: top'>304</td></tr>
				<tr><td style='text-align:left;vertical-align: top'>Punishment for culpable homicide not amounting to murder</td></tr>
				<tr><td style='text-align:left;vertical-align: top'>Whoever commits culpable homicide not amounting to murder shall be punished with *[imprisonment for life ],or imprisonment of either description for a term which may extend to ten years, and shall also be liable to fine, if the act by which the death is caused is done with the intention of causing death, or of causing such bodily injury as is likely to cause death,

Or with imprisonment of either description for a term which may extend to ten years, or with fine, or with both, if the act is done with the knowledge that it is likely to cause death ,but without any intention to cause death, or to cause such bodily injury as is likely to cause death.</td></tr>
			
			
		</table>
        	<table width='97%' cellspacing='5' cellpadding="5" class='back' style='text-align:left;vertical-align: top'>
				
				<tr><td style='text-align:left;vertical-align: top'>305</td></tr>
				<tr><td style='text-align:left;vertical-align: top'>Abetment of suicide of child or insane person</td></tr>
				<tr><td style='text-align:left;vertical-align: top'>If any person under eighteen years of age, any insane person, any delirious person, any idiot, or any person in a state of intoxication, commits suicide, whoever abets the commission of such suicide, shall be punished with death or *[ imprisonment for life], or imprisonment for a term not exceeding ten years, and shall also be liable to fine.</td></tr>
			
			
		</table>
        	<table width='97%' cellspacing='5' cellpadding="5" class='back' style='text-align:left;vertical-align: top'>
				
				<tr><td style='text-align:left;vertical-align: top'>307</td></tr>
				<tr><td style='text-align:left;vertical-align: top'>Attempt to murder</td></tr>
				<tr><td style='text-align:left;vertical-align: top'>Whoever does any act with such intention or knowledge, and under such circumstances that, if he by that act caused death, he would be guilty or murder, shall be punished with imprisonment of either description for a term which may extend to ten years, and shall also be liable to fine, and is hurt is caused to any person by such act, the offender shall be liable either to 1[imprisonment for life], or to such punishment as is hereinbefore mentioned.</td></tr>
			
			
		</table>

		</td>
	</tr>
</table>

</td></tr>
</table>








</asp:Content>