<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/admin/Admin.Master" CodeBehind="default.aspx.cs" Inherits="laworder1.admin._default" %>
<%@ MasterType VirtualPath="~/admin/Admin.Master" %> 
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">





				<!-- Middle column start  -->
                <table>
                		<tr><td width="50%" valign="top" class="style4">
					<table style="width: 100%;height:230px;vertical-align: top;background: white;cursor:pointer"onclick="document.location='addofficer.aspx'" class="back"   ><tr>
                        <td valign="top" >
							
                    <h2 id='emergency'>
					
					
				        Add/Remove Police officers</h2>
					<img border="0"
					src="images/general/policeman.png" style="height: 179px; width: 180px"  />
					</td></tr>
					
						<tr><td>Appoint a new police officer to a particular station</td></tr>
					</table>
				
						</td>
						<td width="45%" valign="top">
						
							
						
							<table style="width: 100%;height:230px; top; background: white;cursor:pointer" onclick="document.location='addpolicestation.aspx'" class="back"   ><tr>
                                <td valign="top" >
							
							
						<h2 id='emergency1'>
					
					        Add/Remove Police station</h2>
					<img border="0" src="images/general/policestation.jpg" style="height: 179px; width: 180px"  /></td></tr>
					<tr><td valign="bottom" class="style7">This is generally first time setup where you 
                        can add Police stations and assign the areas to it (police officers should be 
                        added before this step)</td></tr>
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
							<table style="width: 100%;height:230px;vertical-align: top;background: white;cursor:pointer"onclick="document.location='lawacts.aspx'" class="back"   >
								<tr><td colspan="2" style="text-align: center;"><h2>Laws, Rules and Acts</h2></td></tr>
								<tr><td class="style8"><a href="#"><img border="0" src="images/general/law.png" style="height: 179px; width: 180px"  /></a></td></tr>
							<tr><td class="style8">Add new laws and acts to the site.</td></tr>
							</table>
						</td>
						
						
						
						<td valign="top" width="25%">
				<table style="background: white;cursor:pointer" border="0" width="90%" onclick="document.location='news.aspx'"	class="back">
					<tr>
						<td>
						<h2>News Feeds</h2>
						</td>
					</tr>
					<tr>
						<td><a href="#"><img border="0" src="images/general/news.png" style="height: 179px; width: 180px"  /></a></td>
					</tr>
					<tr><td>Add daily news feeds.</td></tr>
				</table>
				</td>
					</tr></tr>
					
					</table>
				
				<!-- Middle Column End -->
				
				
				
				
				
				










</asp:Content>
