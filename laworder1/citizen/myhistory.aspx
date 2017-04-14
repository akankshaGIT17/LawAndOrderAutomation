<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/citizen/Citizen.Master" CodeBehind="myhistory.aspx.cs" Inherits="laworder1.citizen.myhistory" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


 <table width='100%' border="0">
<tr>
	<td width='25%' valign='top'>
	
<!-- Left column start-->

			<table width='100%'>

	<td valign='top'>
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
						</table></td></tr>
	
						<tr>
					<td>
						<table class='back' width="100%">
		 				<tr>
		 					<td colspan='2'  style="font-weight: bold;padding-bottom:3px"  id='station'>Complaints Status</td>
		 				</tr>
						<tr >
							<td style="text-align:left;" >You complete history for various licenses ans 
                                complaints will be reflected here. You can check progress gor you complaints and 
                                licenses here.</td>
						</tr>
						
				
					</table></td>
					</tr>
					<tr><td>
						
					</td></tr>
					
			</table>
<!-- Left column end -->

<!--content column start -->
<td width='80%' valign="top">
    <table width='100%' border="0">
        <tr>
            <td>
                <table width='97%' cellspacing='5' cellpadding="5" class='back' style='text-align: left;
                    vertical-align: top'  >
                    <tr>
                        <td colspan="4" class='colour' style='text-align: center'>
                            <h2>
                                Your Profile History</h2>
                               
                        </td>
                        
                    </tr>
                   
                     <tr>
                        <td colspan="2">
                          <h3>Loud Speaker License</h3> 
                            
                        </td>
                    </tr>
                    <tr>
                     <td style="text-align: center;border-style: groove; border-width: thin"> <b>Applied On</b> </td>                        
            <td class="style4" style="text-align: center;border-style: groove; border-width: thin"><b> Description Given</b></td>            
            <td style="text-align: center;border-style: groove; border-width: thin"><b> Approved Status</b></td>   
            <td style="text-align: center;border-style: groove; border-width: thin"><b> Comments</b></td> </tr>    
                    <%=getLoudData()%>
                    <tr>
                        <td colspan="4">
                          <%--   <asp:GridView ID="GridView1" runat="server" 
                                onselectedindexchanged="GridView1_SelectedIndexChanged" Width="351px">
                            </asp:GridView>--%>
                        </td>
                    </tr>
                
                    
                </table>
            </td>
        </tr>
    </table>
    <table width='100%' border="0">
        <tr>
            <td>
     <table width='97%' cellspacing='5' cellpadding="5" class='back' style='text-align: left;
                    vertical-align: top'  >
                    
                   
                     <tr>
                        <td colspan="2">
                          <h3>Mass Meeting License</h3> 
                            
                        </td>
                    </tr>
                    <tr>
                     <td style="text-align: center;border-style: groove; border-width: thin"> <b>Applied On</b> </td>                        
            <td class="style4" style="text-align: center;border-style: groove; border-width: thin"><b> Description Given</b></td>            
            <td style="text-align: center;border-style: groove; border-width: thin"><b> Approved Status</b></td>   
            <td style="text-align: center;border-style: groove; border-width: thin"><b> Comments</b></td> </tr>    
                    <%=getMassData()%>
                    <tr>
                        <td colspan="4">
                          <%--   <asp:GridView ID="GridView1" runat="server" 
                                onselectedindexchanged="GridView1_SelectedIndexChanged" Width="351px">
                            </asp:GridView>--%>
                        </td>
                    </tr>
                
                    
                </table></td></tr></table>
                <table width='100%' border="0">
        <tr>
            <td>
                <table width='97%' cellspacing='5' cellpadding="5" class='back' style='text-align: left;
                    vertical-align: top'  >
                    
                   
                     <tr>
                        <td colspan="2">
                          <h3>Non Emenrgency Complaints</h3> 
                            
                        </td>
                    </tr>
                    <tr>
                     <td style="text-align: center;border-style: groove; border-width: thin" 
                            class="style5"> <b>Applied On</b> </td>                        
            <td class="style6" style="text-align: center;border-style: groove; border-width: thin"><b> Description Given</b></td>            
            <td style="text-align: center;border-style: groove; border-width: thin" class="style7"><b> Complaint ID</b></td>   
            <td style="text-align: center;border-style: groove; border-width: thin"><b> Filed As</b></td> </tr>    
                    <%=getComplaintData()%>
                    <tr>
                        <td colspan="4">
                          <%--   <asp:GridView ID="GridView1" runat="server" 
                                onselectedindexchanged="GridView1_SelectedIndexChanged" Width="351px">
                            </asp:GridView>--%>
                        </td>
                    </tr>
                
                    
                </table>
            </td>
        </tr>
    </table>
     <table width='100%' border="0">
        <tr>
            <td>
                <table width='97%' cellspacing='5' cellpadding="5" class='back' style='text-align: left;
                    vertical-align: top'  >
                    
                   
                     <tr>
                        <td colspan="2">
                          <h3>Missing Person Complaints</h3> 
                            
                        </td>
                    </tr>
                    <tr>
                     <td style="text-align: center;border-style: groove; border-width: thin" 
                            class="style5"> <b>Applied On</b> </td>                        
            <td class="style6" style="text-align: center;border-style: groove; border-width: thin">
                <b> 
                Missing Person Name</b></td>            
            <td style="text-align: center;border-style: groove; border-width: thin" class="style7"><b> Complaint ID</b></td>   
            <td style="text-align: center;border-style: groove; border-width: thin"><b> Status</b></td> </tr>    
                    <%=getPersonData()%>
                    <tr>
                        <td colspan="4">
                          <%--   <asp:GridView ID="GridView1" runat="server" 
                                onselectedindexchanged="GridView1_SelectedIndexChanged" Width="351px">
                            </asp:GridView>--%>
                        </td>
                    </tr>
                
                    
                </table>
            </td>
        </tr>
    </table>
    <table width='100%' border="0">
        <tr>
            <td>
                <table width='97%' cellspacing='5' cellpadding="5" class='back' style='text-align: left;
                    vertical-align: top'  >
                    
                   
                     <tr>
                        <td colspan="2">
                          <h3>Missing Valuables Complaints</h3> 
                            
                        </td>
                    </tr>
                    <tr>
                     <td style="text-align: center;border-style: groove; border-width: thin" 
                            class="style5"> <b>Applied On</b> </td>                        
            <td class="style6" style="text-align: center;border-style: groove; border-width: thin">
                <b> 
                Valuable Lost</b></td>            
            <td style="text-align: center;border-style: groove; border-width: thin" class="style7"><b> Complaint ID</b></td>   
            <td style="text-align: center;border-style: groove; border-width: thin"><b> Status</b></td> </tr>    
                    <%=getValuableData()%>
                    <tr>
                        <td colspan="4">
                          <%--   <asp:GridView ID="GridView1" runat="server" 
                                onselectedindexchanged="GridView1_SelectedIndexChanged" Width="351px">
                            </asp:GridView>--%>
                        </td>
                    </tr>
                
                    
                </table>
            </td>
        </tr>
    </table></td>


    </td>
    </tr>
    </table>






</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .style4
        {
            width: 249px;
        }
        .style5
        {
            width: 211px;
        }
        .style6
        {
            width: 269px;
        }
        .style7
        {
            width: 232px;
        }
    </style>
</asp:Content>
