<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Police/Police.Master" CodeBehind="default.aspx.cs" Inherits="laworder1.Police._default" %>
<%@ MasterType VirtualPath="~/Police/Police.Master" %> 
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table width='100%' >
			<tr>
				
				<td width="60%" valign="top">
				<!-- Middle column start  -->
                <table>
						<tr><td valign="top" class="style4">
					<table style="width: 100%;height:230px;vertical-align: top;background: white;cursor:pointer"onclick="document.location='citizensignups.aspx'" class="back"   ><tr>
                        <td valign="top" >
							
                    <h2 id='emergency'>
					
					
				        Citizen Signups</h2><center>
					<img border="0"
					src="images/general/usser.png" style="height: 128px; width: 150px"  /></center>
					</td></tr>
					
						<tr><td>Accept/Reject Citizen SignUps</td></tr>
					</table>
				
						</td>
						<td width="50%" valign="top">
						
							
						
							<table style="width: 100%;height:230px; top;background: white;cursor:pointer" onclick="document.location='Complaints.aspx'" class="back"   ><tr>
                                <td valign="top" >
							
							
						<h2 id='emergency1'>
					
					        Complaints</h2><center>
					<img border="0" src="images/general/complaint.jpg" /></center></td></tr>
					<tr><td valign="bottom" class="style7">Complaints bythe user</td></tr>
					</table>
				   
						</td>
						</tr>
					</table></td><td width="50%" valign="top">
                    <table style="width: 100%;height:230px; top;background: white;cursor:pointer" onclick="document.location='licenses.aspx'" class="back"   ><tr>
                                <td valign="top" ><h2>Licenses</h2>
								<tr><td><a href="#"><img border="0" src="images/general/license.jpg" 
                                        /></a></td></tr>
							<tr><td valign="bottom" class="style7">Details of various applied licenses.</td></tr>
							</table></td>
                    <table border="0">
					<tr>
						
						<td valign="top" width="50%">
							<table style="background: white;cursor:pointer;"onclick="document.location='Crminals.aspx'" border="0" width="96%" class="back" " >
								<tr><td colspan="2" style="text-align: center;"><h2>Criminals</h2></td></tr>
								<tr><td class="style8"><a href="#">
                                    <img border="0" src="../img/criminal.png" 
                                        style="width: 133px" /></a></td></tr>
							<tr><td class="style8">Details about various criminals</td></tr>
							</table>
						</td>
						
						
						
						<td valign="top" width="50 %">
				<table style="background: white;cursor:pointer" border="0" width="100%" onclick="document.location='Casefiles.aspx'"	class="back">
					<tr>
						<td>
						<h2>Case Files</h2>
						</td>
					</tr>
					<tr>
						<td><center><a href="#"><img border="0" src="images/general/case.jpg" width="106"
							height="143" /></a></center></td>
					</tr>
					<tr><td>Check the various case files.</td></tr>
				</table>
				</td>
					</tr></tr>
					
					</table>
				
				<!-- Middle Column End -->
				</td>
				
				
				
				<td width="20%" valign="top">
				<!-- Right column start -->
				<table cellspacing="10" style="text-align: left;" class="back" width="91%">
				<tr>
					<td><h2>Recent FIR Case Files</h2></td>
				</tr><%=getFIRData()%>
				
				</table>
                
				<table cellspacing="5" style="text-align: left;" class="back" width="91%">
				<tr>
					<td><h2>Recent Pettycase Case Files</h2></td>
				</tr>
				<%=getPettyData()%>
				
				</table>

                <table cellspacing="5" style="text-align: left;" class="back" width="91%">
				<tr>
					<td>
                        <asp:Button ID="btnLogout" runat="server" Text="Logout" 
                            onclick="btnLogout_Click" /></td>
				</tr>
				
				</table>

				
				<!-- Right column end -->
				</td>
				
				
				</tr>
                </table>



</asp:Content>