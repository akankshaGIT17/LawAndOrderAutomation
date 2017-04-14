<%@ Page Language="C#"  MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Services.aspx.cs" Inherits="laworder1.Services" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table width='100%' border="0" >
<tr><td colspan="3" style="text-align: center;color: red;">You should be registered user of law and order automation to use full benefits of these services.To register<a href="WebForm3.aspx"> click here</a></td></tr>
			<tr>
				<td width='20%' valign='top'>
                <table  width='91%'   >
		
				<tr><td>
<form name="RegistrationForm" action="#" method="post" onsubmit="return checkform()">
		 			<table class='back' width="100%" >
		 				<tr>
		 					<td colspan='2'  style="font-weight: bold;padding-bottom:4px"  id='login-head'>
		 					Citizen Login</td>
		 				</tr>
						<tr>
							<td style="text-align:left" id='email-text' class="style5">Email-id</td>
							<td>
                                <asp:TextBox ID="txtEmailId" runat="server"></asp:TextBox></td>
						</tr>
						<tr>
							<td style="text-align:left;padding-top:3px" id='password-text' class="style5">Password</td>
							<td style="padding-top: 3px">
                                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox></td>
						</tr>
				
						<tr>
							<td colspan='2'> 
                                <asp:Button ID="btnLogin" runat="server" Text="Login" />
                                 <asp:Button ID="btnReset" runat="server" Text="Reset" />
                                <asp:RequiredFieldValidator ID="rfvUserId" runat="server" 
                         ControlToValidate="txtEmailId" ErrorMessage="User Id is required" Display="None"
                         ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator></br>
                     <asp:RegularExpressionValidator ID="revUserId" runat="server" 
                         ControlToValidate="txtEmailId" ErrorMessage="Invalid Id!"  Display="None"
                         SetFocusOnError="True" 
                         ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                         <asp:RequiredFieldValidator ID="rfvPassword" runat="server" 
                ControlToValidate="txtPassword" ErrorMessage="Password is required!" Display="None"
                ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator></br>
            <asp:RangeValidator ID="rvPassword" runat="server" 
                ControlToValidate="txtPassword" ErrorMessage="Cannot be less than 6 letters" Display="None"
                ForeColor="Red" SetFocusOnError="True"></asp:RangeValidator>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="true" ShowSummary="false" />
							</td>
						</tr>
						
						<tr>  
							<td colspan='2'>
							<br/>
					 	<%--	<input type="hidden" value="1" name="usertype"  />--%>
							<a href='ForgotPassword.aspx'>Forgot Password?</a>
							</td>
						</tr>
				
					</table>
					
					</form>
<%--
<%
}
else
	{
		%>
		<table class='back' width="100%" >
		 			
						<tr>
				 	<%@page language="java" import="java.sql.*" %>
					<jsp:useBean id="db" class="database.DbBean" />
						<% 
						db.connect();
						ResultSet rs2=null;
						rs2=db.execSQL("select t.name from db2.users as i,xmltable('$c/all' passing i.personal as \"c\" columns name varchar(100) path 'name') as t where i.user_id="+session.getAttribute("id"));
						while(rs2.next())
						{
						%>
							<td colspan='2' style="text-align:left" id='email-text'><strong><%  out.print(captions.getString("welcome")); %> </strong><b><%=rs2.getString("name") %></b> </td>
							<%} %>
						</tr>
						<tr>
							<td style="padding-top:3px" id='password-text'><img src="images/general/user_default.gif"/></td>
							<td style="text-align:left">
								<a href="myprofile.jsp"><%  out.print(captions.getString("myaccount")); %></a><br />
								
								
						</td>
						</tr>
						
				
						<tr>
							<td></td>
							<td style="text-align:left"> 
								<a href='signout.jsp?err=Thanks for using ECOPS'><%  out.print(captions.getString("signout")); %></a>
							</td>
						</tr>
						</table>
						
		<% 
	}
 %>		
		--%>		
				
				
				
				
				
				
				
				
				
				
		 		</td></tr>

					<tr><td><center><a href="WebForm3.aspx"><img src="img/general/top_button.gif" style="cursor: pointer;"alt="Sign up for free" /></a></center></td></tr>
					
					<tr><td>
						
						
					</td></tr>
					<tr>
					<td>
						<table class='back' style="text-align: left;" width="100%">
							<tr>
								<td colspan="2" style="padding-bottom:3px"><center><u><strong>
								Emergency Phone Numbers
</strong></u></center></td>
							</tr>
							<tr>
								<td> Emergency-Control room </td>
								<td> 100 </td>
							</tr>
							<tr>
								<td>
To Report trafffic voilation
</td>
								<td> 103 </td>
							</tr>
							<tr>
								<td>Ambulance </td>
								<td> 108 </td>
							</tr>
							<tr>
								<td>Child Line</td>
								<td>  	 1098 </td>
							</tr>
														<tr>
								<td>Women Help Line</td>
								<td> 1091 </td>
							</tr>
														<tr>
								<td>Senior Citizen Line</td>
								<td> 1253 </td>
							</tr>
														<tr>
								<td>Blue Line</td>
								<td> 12700 </td>
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
					<table style="width: 100%;height:230px;vertical-align: top;background: white;cursor:pointer"onclick="document.location='emergency.aspx'" class="back"   ><tr>
                        <td valign="top" >
							
                    <h2 id='emergency'>
					
					
				Make an	Emergency Complaint
					</h2>
					<img border="0"
					src="img/general/Siren.gif"  />
					</td></tr>
					
						<tr><td>Make this in the very emergency situation, concerned <b>police inspector will be alerted.</b> </td></tr>
					</table>
				
						</td>
						<td width="50%" valign="top">
						
							
						
							<table style="width: 97%;height:230px; top;background: white;cursor:pointer" onclick="document.location='citizen/complaint.aspx'" class="back"   ><tr>
                                <td valign="top" >
							
							
						<h2 id='emergency1'>
					
					Make An Complaint
					</h2>
					<img border="0" src="img/general/blue.jpg" width="87"
							height="87" /></td></tr>
					<tr><td valign="bottom" class="style7">General complaints,complaints will be accepted and processed.Police inspector will not be alerted immediately </td></tr>
					</table>
				   
						</td>
						</tr>
					</table>
                    <table border="0">
					<tr>
						
						<td valign="top" width="45%">
							<table style="background: white;cursor:pointer;" border="0" width="96%" class="back" " >
								<tr><td colspan="2" style="text-align: center;"><h2>Report Wanted Criminals</h2></td></tr>
								<tr><td><a href="#"><img border="0" src="img/missing.png"
							width="101" height="163" /></a></td></tr>
							<tr><td>Click here to complain about most wanted criminals.</td></tr>
							</table>
						</td>
						
						
						<td valign="top" width="25%">
							<table style="background: white;cursor:pointer;" border="0" width="96%" class="back" ">
								<tr><td><h2>Missing Persons</h2></td></tr>
								<tr><td><a href="citizen/missingperson.aspx"><img border="0" src="img/general/missed.jpeg"
							width="101" height="163" /></a></td></tr>
							<tr><td>Click here to complain about missing person.</td></tr>
							</table>
						</td>
						<td valign="top" width="25 %">
				<table style="background: white;cursor:pointer" border="0" width="100%" 	class="back">
					<tr>
						<td>
						<h2>Missing Valuables</h2>
						</td>
					</tr>
					<tr>
						<td><a href="#"><img border="0" src="img/general/thief.gif" width="106"
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
					
					
					<tr><td>Meetings and Mass movements</td></tr>
					<tr><td>Loud Speaker</td></tr>
					<tr><td>Gym</td></tr>
					
				
				</table>
                
				<table cellspacing="5" style="text-align: left;" class="back" width="91%">
				<tr>
					<td><h3>Complaint Status</h3></td>
				</tr>
				<tr>
					<td><a href='#'>Click here</a></td>
				</tr>
				<tr>
					<td>The status of the complaint will describe whether FIR is filed or any other action is taken.</td>
				</tr>
				</table>

				
				<!-- Right column end -->
				</td>
				
				
				
                </tr></table>

</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
   
    <style type="text/css">
        .style4
        {
            width: 50%;
        }
        .style5
        {
            width: 489px;
        }
        .style6
        {
            width: 333px;
        }
        .style7
        {
            width: 367px;
        }
    </style>
   
</asp:Content>
