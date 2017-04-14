<%@ Page Title="" Language="C#" MasterPageFile="~/citizen/Citizen.Master" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="laworder1.citizen.WebForm1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <table width='100%' border="0" >
			<tr>
				<td width='20%' valign='top'>
                <table  width='91%'   >
		
				<tr><td>




		<table class='back' width="100%" >
		 			
						<tr>
				 	
					
						<td colspan='2' style="text-align:left" id='email-text'><strong>Welcome </strong><b>
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
								<asp:Button ID="btnLogout" runat="server" onclick="btnLogout_Click1" 
                                    Text="Sign Out" />
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
						<table class='back' width="100%">
		 				<tr>
		 					<td colspan='2'  style="font-weight: bold;padding-bottom:4px"  id='station'>Security Tip of the day</td>
		 				</tr>
						<tr >
							<td style="text-align:left;" >There are timer mechanisms available in market, which control lights. If you are planning to be away from home for some days, install one of these gadgets.</td>
						</tr>
						
				
					</table></td>
					</tr>
					
			</table>
				<!-- Left column end-->
				</td>
				
				<td width="60%" valign="top">
				<!-- Middle column start  -->
                <table>
						<tr><td valign="top" class="style4">
					<table style="width: 100%;height:230px;vertical-align: top;background: white;cursor:pointer"onclick="document.location='useremergency.aspx'" class="back"   ><tr>
                        <td valign="top" >
							
                    <h2 id='emergency'>
					
					
				Make an	Emergency Complaint
					</h2>
					<img border="0"
					src="../img/general/Siren.gif"  />
					</td></tr>
					
						<tr><td>Make this in the very emergency situation, concerned <b>police inspector will be alerted.</b> </td></tr>
					</table>
				
						</td>
						<td width="50%" valign="top">
						
							
						
							<table style="width: 97%;height:230px; top;background: white;cursor:pointer" onclick="document.location='complaint.aspx'" class="back"   ><tr>
                                <td valign="top" >
							
							
						<h2 id='emergency1'>
					
					Make An Complaint
					</h2>
					<img border="0" src="../img/general/blue.jpg" width="87"
							height="87" /></td></tr>
					<tr><td valign="bottom" class="style7">General complaints,complaints will be accepted and processed.Police inspector will not be alerted immediately </td></tr>
					</table>
				   
						</td>
						</tr>
					</table>
                    <table border="0">
					<tr>
						
						<td valign="top" width="45%">
							<asp:DataList ID="datalist1" runat="server">
                    <ItemTemplate>
                    <table style="width: 91% ;background: white;cursor:pointer" border="0" " class="back"  ><tr>
								<td><h2>Wanted Criminals</h2></td>
							</tr><tr><td >
                        
                           <img border="0" src="../img/criminal.PNG"                            
                               style="height: 190px; width: 136px;"/>
                   </tr> 

                   <tr><td><b>Name: </b></td><td>

					<%#Eval("name") %>
					</td></tr><tr><td><b>Reward: </b></td><td><%#Eval("reward") %></td></tr><tr><td colspan=2>Report about this criminal to your nearest police station.</td></tr>
                  </table></ItemTemplate>  </asp:DataList>
						</td>
						
						
						<td valign="top" width="25%">
							<table style="background: white;cursor:pointer;" border="0" width="96%" onclick="document.location='missingperson.aspx'"class="back" ">
								<tr><td><h2>Missing Persons</h2></td></tr>
								<tr><td><a href="#"><img border="0" src="../img/general/missed.jpeg"
							width="101" height="163" /></a></td></tr>
							<tr><td>Click here to complain about missing person.</td></tr>
							</table>
						</td>
						<td valign="top" width="25 %">
				<table style="background: white;cursor:pointer" border="0" width="100%" onclick="document.location='missingvaluables.aspx'"	class="back">
					<tr>
						<td>
						<h2>Missing Valuables</h2>
						</td>
					</tr>
					<tr>
						<td><a href="#"><img border="0" src="../img/general/thief.gif" width="106"
							height="143" /></a></td>
					</tr>
					<tr><td>Click here to complain about missing valuables</td></tr>
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
				<td style="text-align: center;"><h2>Licenses</h2></td>
				</tr>
					
					
					<tr><td><a href="massmeeting.aspx">Meetings and Mass movements</a></td></tr>
					<tr><td><a href="loudspeaker.aspx">Loud Speaker</a></td></tr>
					<tr><td>&nbsp;</td></tr>
					
				
				</table>
                
				<table cellspacing="5" style="text-align: left;" class="back" width="91%">
				<tr>
					<td><h3>Complaint Status</h3></td>
				</tr>
				<tr>
					<td><a href='myhistory.aspx'>Click here</a></td>
				</tr>
				<tr>
					<td>The status of the complaint will describe whether FIR is filed or any other action is taken.</td>
				</tr>
				</table>

				
				<!-- Right column end -->
				</td>
				
				
				</tr>
                </table>
                

</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
   
    <style type="text/css">
        .style4
        {
            width: 50%;
        }
        .style7
        {
            width: 367px;
        }
    .style8
    {
        width: 258px;
    }
    </style>










</asp:Content>
