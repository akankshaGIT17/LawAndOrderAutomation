<%@ Page  Title="" Language="C#" MasterPageFile="~/Main.Master"  AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="laworder1.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style4
        {
            width: 200px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- content start -->
		<table width='100%' >
			<tr>
				<td width='20%' valign='top'>
			<!-- Left column start -->
			
				<table  width='91%'   >
		
				<tr><td>
					

			<form name="RegistrationForm" action="#" method="post" onsubmit="return checkform()">
		 			<table class='back' width="100%" >
		 				<tr>
		 					<td colspan='2'  style="font-weight: bold;padding-bottom:4px"  id='login-head'>Citizen Login</td>
		 				</tr>
						<tr>
							<td style="text-align:left" id='email-text'>
							Email-id
              							
							</td>
							<td><asp:TextBox runat="server" ID="txtEmailId">
                                </asp:TextBox></td>
						</tr>
						<tr>
							<td style="text-align:left;padding-top:3px" id='password-text'>
							Password
              							
							
							</td>
							<td style="padding-top: 3px"><asp:TextBox runat="server" ID="txtPassword" TextMode="Password">
                                </asp:TextBox></td>
						</tr>
				
						<tr>
							<td colspan='2'> 
                                <asp:Button ID="btnLogin" runat="server" Text="Login" 
                                    onclick="btnLogin_Click" />
							</td>
						</tr>
						
						<tr>
							<td colspan='2'>
							    <asp:RequiredFieldValidator ID="rfvEmailHome" runat="server" 
                                    ControlToValidate="txtEmailId" ErrorMessage="Please enter e-mail id. " 
                                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                                <br />
                                <asp:RequiredFieldValidator ID="rfvPasswordHome" runat="server" 
                                    ControlToValidate="txtPassword" ErrorMessage="Please enter password." 
                                    SetFocusOnError="True" Display="None" ></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="revUserId" runat="server" 
                         ControlToValidate="txtEmailId" ErrorMessage="Invalid Id!"  Display="None"
                         SetFocusOnError="True" 
                         ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
							<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="true" ShowSummary="false" /><br/>
							
							<a href="ForgotPassword.aspx">
Forgot Password?Click here
              							

</a>
							</td>
						</tr>
				
					</table>
					
					</form>

		
		
						
			
				
				
				
				
				
				
				
				
				
				
		 			</td></tr>
	
					<tr><td><center><a href="WebForm3.aspx"><img src="img/general/top_button.gif" style="cursor: pointer;" alt="Sign up for free" /></a></center></td></tr>
	<tr>
					<td>
						</td>
					</tr>
					<tr><td>
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
							
																																		
						</table>
					</td></tr>
					
			</table>
				<!-- Left column end-->
				</td>
				<td width='60%'style="vertical-align: top"'>
				<!-- centre column start-->
				<table width='100%'   >
				<tr><td style="vertical-align: top">
					<table class='back' id='message' width="99%"> <tr><td style="font-size:14px;font-weight: bold;">
Message from Director General Of Police
</td></tr>
				<tr><td>
	
									<table style="text-align: justify;'" border='0'>
									<tr><td id='message1'>
									
									
									We will remain comitted to maintain public order, preventing and detecting crime, maintain and promoting communal harmony,
                                    assuring a smmoth flow of traffic, and taking strong action against terrorism, organised crime, anti-social/illicit activities/elements.
										</td>
							  			<td rowspan="2" align="center"><img src='img/general/dgp.jpg'
									style="text-align: right" width="92" height="114" /><br/> Yash Pal Singal</td></tr>	  
									<tr><td  id='message2'>
										We shall ensure the Rule of Law
, enforce the law of the land impartially and firmly without fear of favour, and strive to create a fear free environmentthat is conducive to growth and development.												
									</td></tr><tr>
							<td colspan='2' id='message3'>
							
							We will serve and protect all, particularly the downtrodden, the weak, women, minorities, senior citizen's, slums dwellers, the poor & other marginalised sections of society.
                            Prompt and compassionate response to every call of citizen's in distress.

							<br />
								</td></tr>
							
								
							<tr><td colspan='2' id='message4'>
							<br/>
							We will keep our personal integrity high, work as a team to make the force corruption free, bring in transperency in our functioning, strive continously to raise the professional skills and work for the welfare of our force.  
							</td></tr></table>
</td></tr>

					</table>
					<table width="100%" id="prob" cellpadding="5%" cellpadding="5%">
							<tr>
								<td style="width: 33%" valign="top">
									<!--1 start -->
									<div class='back' id="polls">
									
						

						
				</div>

				</td>
				<td class="style4">
                <table style="width: 40%" class='back'  ><tr>
								<td><strong><u>Missing Persons</u></strong></td>
							</tr><tr><td ><a href='#'>
                       <center> 
                           <img border="0"
					src="img/missing.png" 
                               
                               
                               style="height: 151px; width: 144px; margin-left: 8px; margin-top: 8px; margin-right: 0px; margin-bottom: 0px;"/></a></center>
                 </td>  </tr> 

                   <tr><td>

					Report about missing person identity if you know.
					</td>
                    </tr></table>
                    
                    </td>
			<td>
            <table style="width: 70%; height: 237px;" class='back'  ><tr>
								<td><strong><u>News Updates</u></strong></td></tr>
                           <tr><td>     

                           <marquee onmouseover='this.stop();' onmouseout='this.start();' direction='up' scrollamount='2'>  

                               <asp:Repeater ID="Repeater1" runat="server" DataSourceID="LAW">
                             <ItemTemplate>
                              <ul style="list-style-type:square">
                                <li>   <asp:Label ID="lblnews" runat="server" Text='<%# Eval("title") %>'></asp:Label></li></ul>
                                   </ItemTemplate>
                             
                             
                             
                               </asp:Repeater></marquee>
                                <asp:SqlDataSource ID="LAW" runat="server" 
                                   ConnectionString="<%$ ConnectionStrings:LAWConnectionString2 %>" 
                                   SelectCommand="SELECT [title] FROM [news]"></asp:SqlDataSource>


                                </td>
                                </tr>
                                </table></td>
            </td>
				
				</tr>
				<tr>
					<td>
						
						

						</td>
				</tr>

			
		</table>

			
			
			
			</td>

			<!-- centre column end-->
			<!-- Right column start-->
				<td width='20%' style="vertical-align:top;padding-top:4px">
				<table style="width: 91%" class='back'  ><tr><td ><a href='emergency.aspx'><img border="0"
					src="img/general/siren1.gif"  width="60" height="64"/></a>
					<h3 id='emergency'>
					
					Make An Emergency Complaint
					</h3>
					</td></tr></table><center>
                    <asp:DataList ID="datalist1" runat="server">
                    <ItemTemplate>
                    <table style="width: 91%" class='back'  ><tr>
								<td><strong><u>Wanted Criminals</u></strong></td>
							</tr><tr><td ><a href='#'>
                        
                           <img border="0" src="<%#Eval("image") %>"                            
                               style="height: 190px; width: 136px;"/></a>
                   </tr> 

                   <tr><td><b>Name: </b></td><td>

					<%#Eval("name") %>
					</td></tr><tr><td><b>Reward: </b></td><td>"<%#Eval("reward") %>"</td></tr><tr><td colspan=2>Report about this criminal to your nearest police station.</td></tr>
                  </table></ItemTemplate>  </asp:DataList></center>

					
				<table class='back'  border='0' style="width: 90%;" >
					<tr><td> Site was last updated on <br/> March 5, 2016 </td></tr>
				</table>
									<!--1 end -->
								</td>
								
							</tr>
						</table>
				</td>
			<!-- Right column end-->
			</tr>
			
		</table>
			
		<!-- content end -->





</asp:Content>