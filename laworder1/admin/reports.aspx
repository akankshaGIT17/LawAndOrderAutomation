<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/admin/Admin.Master" CodeBehind="reports.aspx.cs" Inherits="laworder1.admin.reports" %>
<%@ MasterType VirtualPath="~/admin/Admin.Master" %> 
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">





				<!-- Middle column start  -->
                <table>
                		<tr><td width="50%" valign="top" class="style4">
					<table style="width: 100%;height:230px;vertical-align: top;background: white;cursor:pointer"onclick="document.location='crimereport.aspx'" class="back"   ><tr>
                        <td valign="top" >
							
                    <h2 id='emergency'>
					
					
				        Crime Report</h2>
					<img border="0"
					src="images/general/criminalreport.jpg" style="height: 179px; width: 180px"  />
					</td></tr>
					
						<tr><td>Various criminal details report.</td></tr>
					</table>
				
						</td>
						<td width="45%" valign="top">
						
							
						
							<table style="width: 100%;height:230px; top; background: white;cursor:pointer" onclick="document.location='missingreport.aspx'" class="back"   ><tr>
                                <td valign="top" >
							
							
						<h2 id='emergency1'>
					
					        Missing Valuable / Citizen Report</h2>
					<img border="0" src="images/general/missreport.png" style="height: 179px; width: 180px"  /></td></tr>
					<tr><td valign="bottom" class="style7">Details for missing valuables and citizens 
                        report.</td></tr>
					</table>
				   
						</td>
                        <td width="5%" valign="top">
						
							
						
							<table style="width: 50%;height:30px; top; background: white;cursor:pointer"  class="back"   ><tr>
                                <td valign="top" >
							
							<asp:Button ID="Button1" runat="server" Text="Logout" 
                            onclick="btnLogout_Click" Height="25px" />
						</td></tr>
					</table>
				   
						</td>
						</tr>
					</table>
                    <table border="0">
					<tr>
						
						<td valign="top" width="25%">
							<table style="width: 100%;height:230px;vertical-align: top;background: white;cursor:pointer"onclick="document.location='weeklyreport.aspx'" class="back"   >
								<tr><td colspan="2" style="text-align: center;"><h2>Weekly Report</h2></td></tr>
								<tr><td class="style8"><a href="#"><img border="0" src="images/general/weeklyreport.png" style="height: 179px; width: 180px"  /></a></td></tr>
							<tr><td class="style8">Weekly report for citizens added.</td></tr>
							</table>
						</td>
						
						
						
						<td valign="top" width="25%">
				<table style="background: white;cursor:pointer" border="0" width="90%" onclick="document.location='casereport.aspx'"	class="back">
					<tr>
						<td>
						<h2>Case Report</h2>
						</td>
					</tr>
					<tr>
						<td><a href="#"><img border="0" src="images/general/casereport.jpg" style="height: 179px; width: 180px"  /></a></td>
					</tr>
					<tr><td>Any particular case report.</td></tr>
				</table>
				</td>
					</tr></tr>
					
					</table>
				
				<!-- Middle Column End -->
				
				
				
				
				
				










</asp:Content>
