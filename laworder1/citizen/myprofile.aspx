<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/citizen/Citizen.Master" CodeBehind="myprofile.aspx.cs" Inherits="laworder1.citizen.myprofile" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style4
        {
            width: 136px;
        }
        </style>
</asp:Content>
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
		 					<td colspan='2'  style="font-weight: bold;padding-bottom:3px"  id='station'>Security Tip of the day</td>
		 				</tr>
						<tr >
							<td style="text-align:left;" >There are timer mechanisms available in market, which control lights. If you are planning to be away from home for some days, install one of these gadgets.</td>
						</tr>
						
				
					</table></td>
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
<!-- Left column end -->

<!--content column start -->
<td width='80%' valign="top">
    <table width='100%' border="0">
        <tr>
            <td>
                <table width='97%' cellspacing='5' cellpadding="5" class='back' style='text-align: left;
                    vertical-align: top'>
                    <tr>
                        <td colspan="2" class='colour' style='text-align: center'>
                            <h2>
                                Your Profile
                            </h2>
                                </span>
                        </td>
                        
                    </tr>
                    <tr>
                        <td colspan="2">
                            <strong>Login Information</strong>
                            
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Email<span class='style3'>*</span>
                        </td>
                        <td>
                            <asp:Label ID="lblEmail" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Password<span class='style3'>*</span>
                        </td>
                        <td>
                            <asp:Label ID="lblPassword" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    
                </table>
                <table width='97%' class="back" cellspacing='5' cellpadding="5" style='text-align: center;
                    vertical-align: top'>
                    <tr>
                        <td width="25%">
                            &nbsp;
                        </td>
                        <td colspan=2 >
                           <a href="updatepassword.aspx">Update Password</a> 
                        </td>
                        <td>
                            
                        </td>
                        <td width="25%">
                            &nbsp;
                        </td>
                    </tr>
                </table>
                <table width='97%' cellspacing='5' cellpadding="5" class='back' style='text-align: left;
                    vertical-align: top'>
                    <tr class="colour">
                        <td colspan="4">
                            <b>Personal Information</b>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Name :<span class='style3'>*</span>
                        </td>
                        <td>
                            <asp:Label ID="lblName" runat="server" Text=""></asp:Label>
                        </td>
                        <td>
                            Father Name<span class='style3'>*</span>
                        </td>
                        <td>
                            <asp:Label ID="lblFatherName" runat="server" Text=""></asp:Label>
                        
                        
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                          <%--       <asp:RangeValidator runat="server" id="rvDOB" controltovalidate="txtDOB" type="Date" minimumvalue="01-01-1998" maximumvalue="12-31-1890" errormessage="You must be 18 or above to register on this site!" Display="None" />--%>
                            <%--<asp:DropDownList ID="ddlYear" runat="server">
                                <asp:ListItem Selected="True">Year</asp:ListItem>
                                <asp:ListItem Enabled="True">1990</asp:ListItem>
                                <asp:ListItem Enabled="True">1989</asp:ListItem>
                                <asp:ListItem Enabled="True">1988</asp:ListItem>
                                <asp:ListItem Enabled="True">1987</asp:ListItem>
                                <asp:ListItem Enabled="True">1986</asp:ListItem>
                                <asp:ListItem Enabled="True">1985</asp:ListItem>
                                <asp:ListItem Enabled="True">1984</asp:ListItem>
                                <asp:ListItem Enabled="True">1983</asp:ListItem>
                                <asp:ListItem Enabled="True">1982</asp:ListItem>
                                <asp:ListItem Enabled="True">1981</asp:ListItem>
                                <asp:ListItem Enabled="True">1980</asp:ListItem>
                                <asp:ListItem Enabled="True">1979</asp:ListItem>
                                <asp:ListItem Enabled="True">1978</asp:ListItem>
                                <asp:ListItem Enabled="True">1977</asp:ListItem>
                                <asp:ListItem Enabled="True">1976</asp:ListItem>
                                <asp:ListItem Enabled="True">1975</asp:ListItem>
                                <asp:ListItem Enabled="True">1974</asp:ListItem>
                                <asp:ListItem Enabled="True">1973</asp:ListItem>
                                <asp:ListItem Enabled="True">1972</asp:ListItem>
                                <asp:ListItem Enabled="True">1971</asp:ListItem>
                                <asp:ListItem Enabled="True">1970</asp:ListItem>
                                <asp:ListItem Enabled="True">1969</asp:ListItem>
                                <asp:ListItem Enabled="True">1968</asp:ListItem>
                                <asp:ListItem Enabled="True">1967</asp:ListItem>
                                <asp:ListItem Enabled="True">1966</asp:ListItem>
                                <asp:ListItem Enabled="True">1965</asp:ListItem>
                                <asp:ListItem Enabled="True">1964</asp:ListItem>
                                <asp:ListItem Enabled="True">1963</asp:ListItem>
                                <asp:ListItem Enabled="True">1962</asp:ListItem>
                                <asp:ListItem Enabled="True">1961</asp:ListItem>
                                <asp:ListItem Enabled="True">1960</asp:ListItem>
                                <asp:ListItem Enabled="True">1959</asp:ListItem>
                                <asp:ListItem Enabled="True">1958</asp:ListItem>
                                <asp:ListItem Enabled="True">1957</asp:ListItem>
                                <asp:ListItem Enabled="True">1956</asp:ListItem>
                                <asp:ListItem Enabled="True">1955</asp:ListItem>
                                <asp:ListItem Enabled="True">1954</asp:ListItem>
                                <asp:ListItem Enabled="True">1953</asp:ListItem>
                                <asp:ListItem Enabled="True">1952</asp:ListItem>
                                <asp:ListItem Enabled="True">1951</asp:ListItem>
                                <asp:ListItem Enabled="True">1950</asp:ListItem>
                                <asp:ListItem Enabled="True">1949</asp:ListItem>
                                <asp:ListItem Enabled="True">1948</asp:ListItem>
                                <asp:ListItem Enabled="True">1947</asp:ListItem>
                                <asp:ListItem Enabled="True">1946</asp:ListItem>
                                <asp:ListItem Enabled="True">1945</asp:ListItem>
                                <asp:ListItem Enabled="True">1944</asp:ListItem>
                                <asp:ListItem Enabled="True">1943</asp:ListItem>
                                <asp:ListItem Enabled="True">1942</asp:ListItem>
                                <asp:ListItem Enabled="True">1941</asp:ListItem>
                                <asp:ListItem Enabled="True">1940</asp:ListItem>
                                <asp:ListItem Enabled="True">1939</asp:ListItem>
                                <asp:ListItem Enabled="True">1938</asp:ListItem>
                                <asp:ListItem Enabled="True">1937</asp:ListItem>
                                <asp:ListItem Enabled="True">1936</asp:ListItem>
                                <asp:ListItem Enabled="True">1935</asp:ListItem>
                                <asp:ListItem Enabled="True">1934</asp:ListItem>
                                <asp:ListItem Enabled="True">1933</asp:ListItem>
                                <asp:ListItem Enabled="True">1932</asp:ListItem>
                                <asp:ListItem Enabled="True">1931</asp:ListItem>
                                <asp:ListItem Enabled="True">1930</asp:ListItem>
                                <asp:ListItem Enabled="True">1929</asp:ListItem>
                                <asp:ListItem Enabled="True">1928</asp:ListItem>
                                <asp:ListItem Enabled="True">1927</asp:ListItem>
                                <asp:ListItem Enabled="True">1926</asp:ListItem>
                                <asp:ListItem Enabled="True">1925</asp:ListItem>
                                <asp:ListItem Enabled="True">1924</asp:ListItem>
                                <asp:ListItem Enabled="True">1923</asp:ListItem>
                                <asp:ListItem Enabled="True">1922</asp:ListItem>
                                <asp:ListItem Enabled="True">1921</asp:ListItem>
                                <asp:ListItem Enabled="True">1920</asp:ListItem>
                                <asp:ListItem Enabled="True">1919</asp:ListItem>
                                <asp:ListItem Enabled="True">1918</asp:ListItem>
                                <asp:ListItem Enabled="True">1917</asp:ListItem>
                                <asp:ListItem Enabled="True">1916</asp:ListItem>
                                <asp:ListItem Enabled="True">1915</asp:ListItem>
                                <asp:ListItem Enabled="True">1914</asp:ListItem>
                                <asp:ListItem Enabled="True">1913</asp:ListItem>
                                <asp:ListItem Enabled="True">1912</asp:ListItem>
                                <asp:ListItem Enabled="True">1911</asp:ListItem>
                                <asp:ListItem Enabled="True">1910</asp:ListItem>
                                <asp:ListItem Enabled="True">1909</asp:ListItem>
                                <asp:ListItem Enabled="True">1908</asp:ListItem>
                                <asp:ListItem Enabled="True">1907</asp:ListItem>
                                <asp:ListItem Enabled="True">1906</asp:ListItem>
                                <asp:ListItem Enabled="True">1905</asp:ListItem>
                                <asp:ListItem Enabled="True">1904</asp:ListItem>
                                <asp:ListItem Enabled="True">1903</asp:ListItem>
                                <asp:ListItem Enabled="True">1902</asp:ListItem>
                                <asp:ListItem Enabled="True">1901</asp:ListItem>
                                <asp:ListItem Enabled="True">1900</asp:ListItem>
                            </asp:DropDownList>
                            <asp:DropDownList ID="ddlMonth" runat="server">
                                <asp:ListItem Selected="True">Month</asp:ListItem>
                                <asp:ListItem Enabled="True">January</asp:ListItem>
                                <asp:ListItem Enabled="True">February</asp:ListItem>
                                <asp:ListItem Enabled="True">March</asp:ListItem>
                                <asp:ListItem Enabled="True">April</asp:ListItem>
                                <asp:ListItem Enabled="True">May</asp:ListItem>
                                <asp:ListItem Enabled="True">June</asp:ListItem>
                                <asp:ListItem Enabled="True">July</asp:ListItem>
                                <asp:ListItem Enabled="True">August</asp:ListItem>
                                <asp:ListItem Enabled="True">September</asp:ListItem>
                                <asp:ListItem Enabled="True">October</asp:ListItem>
                                <asp:ListItem Enabled="True">November</asp:ListItem>
                                <asp:ListItem Enabled="True">December</asp:ListItem>
                            </asp:DropDownList>
                            <span id="dateselDIV">
                                <asp:DropDownList ID="ddlDate" runat="server">
                                    <asp:ListItem Selected="True">Date</asp:ListItem>
                                    <asp:ListItem Enabled="True">January</asp:ListItem>
                                    <asp:ListItem Enabled="True">February</asp:ListItem>
                                    <asp:ListItem Enabled="True">March</asp:ListItem>
                                    <asp:ListItem Enabled="True">April</asp:ListItem>
                                    <asp:ListItem Enabled="True">May</asp:ListItem>
                                    <asp:ListItem Enabled="True">June</asp:ListItem>
                                    <asp:ListItem Enabled="True">July</asp:ListItem>
                                    <asp:ListItem Enabled="True">August</asp:ListItem>
                                    <asp:ListItem Enabled="True">September</asp:ListItem>
                                    <asp:ListItem Enabled="True">October</asp:ListItem>
                                    <asp:ListItem Enabled="True">November</asp:ListItem>
                                    <asp:ListItem Enabled="True">December</asp:ListItem>
                                </asp:DropDownList>--%>
                            
                        </td>
                        <td>
                            Occupation<span class='style3'>*</span>
                        </td>
                        <td>
                           <asp:Label ID="lblOccupation" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            Maritial Status:<span class='style3'>*</span>
                        </td>
                        <td>
                            <asp:Label ID="lblMarriage" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Mobile No.
                        </td>
                        <td>
                            <asp:Label ID="lblContact" runat="server" Text=""></asp:Label>
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td>
                            
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                    </tr>
                
                    <tr class="colour">
                        <td colspan="4">
                            <b>Adderess Information</b>
                        </td>
                    </tr>
                    <tr>
                        <td class="style4">
                            Adderess: <span class='style3'>*</span>
                        </td>
                        <td>
                            <asp:Label ID="lblAdderess" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style4">
                        </td>
                        <td>
                            
                        </td>
                    </tr>
                    <tr>
                        
                        <td>
                            Area: <span class='style3'>*</span>
                        </td>
                        <td>
                            <asp:Label ID="lblArea" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style4">
                            State:<span class='style3'>*</span>
                        </td>
                        <td>
                            <asp:Label ID="lblState" runat="server" Text="Haryana"></asp:Label>
                        </td>
                        <td style="height: 26px">
                            Blood Group
                        </td>
                        <td style="height: 26px">
                            <asp:Label ID="lblBlood" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                </table>
              <table width='97%' class="back" cellspacing='5' cellpadding="5" style='text-align: center;
                    vertical-align: top'>
                    <tr>
                        <td width="25%">
                            &nbsp;
                        </td>
                        <td colspan=2 >
                           <a href="updateprofile.aspx">Update Profile</a> 
                        </td>
                        <td>
                            
                        </td>
                        <td width="25%">
                            &nbsp;
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table></td></tr></table>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="true" ShowSummary="false" />
</asp:Content>
