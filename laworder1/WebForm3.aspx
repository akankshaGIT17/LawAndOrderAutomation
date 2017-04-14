<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true"
    CodeBehind="WebForm3.aspx.cs" Inherits="laworder1.WebForm3" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="AK" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style4
        {
            width: 136px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <table width='100%' border="0">
<tr>
	<td width='25%' valign='top'>
	
<!-- Left column start-->

			<table width='100%'>

	<td valign='top'>
	<table class='back' cellspacing='5' cellpadding='5' style='text-align:left' width='100%'>
				<tr><td><center><h3>Requirements</h3></center>
				<ul><li>The Person must have a <b>valid e-mail id</b><br/>
				</li><br />
				<li>The person must have <b>completed 18 years</b> of age and must be <b>citizen of India</b></li><br />
				<li>The applicant must provide one of the <b>proof to confirm his/her address</b></li><br />
                <li>Fields marked <span class='style3'> *</span> are required to be filled.</b></li><br />
				<li style="color: #FF0000"><b>Note</b>:You must attach scanned copy of equivalent proof</li><br />
				</ul></td></tr>
			</table>
            <table class='back' cellspacing='5' cellpadding='5' style='text-align:left' width='100%'>
				<tr><td><center><h3>Benifits of having Login</h3></center>
				<ul><li>Can submit emergency/Non emergency Complaint 
				and you can check the status of the complaint, you will be alerted via Email/SMS in emergency situation<br/>
				</li><br />
				<li>Report about missing valuables/ missing persons.</li><br />
				<li>Apply for various licenses.</li><br />
				<li>View status of your complaint</li><br />
				<li><b>All the above services are completely free of cost.</b></li></ul></td></tr>
			</table>
		
</td>
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
                                Sign Up
                            </h2>
                                </span>
                        </td>
                        <tr><td style="color: #FF0000" style='text-align: center'>
                  
                        </td></tr>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <strong>Login Information</strong>
                            <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 140px">
                            EMail-Id<span class='style3'>*</span>
                        </td>
                        <td>
                            <asp:TextBox ID="txtEmail" runat="server" ontextchanged="txtEmail_TextChanged1"></asp:TextBox>Example : someone@example.com
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td>
                            <span style="color: #FF0000">Your email id will act as username for this portal. Please
                                ensure that you provide a working email adderess as you will be recieving a confirmation
                                link and that confirmation link will be sent to your email.</span>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td colspan='2'>
                            <asp:RequiredFieldValidator ID="rfvEmailId" runat="server" 
                                ControlToValidate="txtEmail" ErrorMessage="Enter Email Id" Display="None"
                                SetFocusOnError="True" ></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revEmailId" runat="server" 
                                ControlToValidate="txtEmail" ErrorMessage="Enter a valid E-mail Id" Display="None"
                                SetFocusOnError="True" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Password<span class='style3'>*</span>
                        </td>
                        <td>
                            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox><span
                                class='style3'> cAsE sEnSiTiVe (LAWS!=laws)</span>
                            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" 
                                ControlToValidate="txtPassword" ErrorMessage="Enter a password"  Display="None"
                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="cvPassowrd" runat="server" 
                                ControlToCompare="txtPassword" ControlToValidate="txtRePassword" 
                                ErrorMessage="Your Passwords do not match!"  SetFocusOnError="True" 
                                Display="None"></asp:CompareValidator>
                        <asp:RegularExpressionValidator ID="revPassword" runat="server" ControlToValidate="txtPassword"
    ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$"
    ErrorMessage="Minimum 8 characters atleast 1 Alphabet, 1 Number and 1 Special Character" Display="None" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            ReType your password<span class='style3'>*</span>
                        </td>
                        <td>
                            <asp:TextBox ID="txtRePassword" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td>
                            You will recieve an email if someone tries to break into your account by entering
                            a wrong password.
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
                            <asp:TextBox ID="txtName" runat="server" title="Please enter your first name"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvUserName" runat="server" 
                                ControlToValidate="txtName" ErrorMessage="Enter your name"  Display="None"
                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revUserName" runat="server"    
ErrorMessage="Please enter a valid name"
ControlToValidate="txtName"    
ValidationExpression="^[a-zA-Z]{5,20}$" Display="None" SetFocusOnError="True"/>
                        </td>
                        <td>
                            Father Name<span class='style3'>*</span>
                        </td>
                        <td>
                            <asp:TextBox ID="txtFatherName" runat="server" title="Please enter your last name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvFatherName" runat="server" 
                                ControlToValidate="txtFatherName" ErrorMessage="Please enter fathers name" Display="None"
                                SetFocusOnError="True" ></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revFatherName" runat="server"    
ErrorMessage="Please enter a valid father name" Display="None"
ControlToValidate="txtFatherName"    
ValidationExpression="^[a-zA-Z]{5,20}$"  />
                        
                        
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Date Of Birth<span class='style3'>*</span>
                        </td>
                        <td>
                            <asp:TextBox ID="txtDOB" runat="server"></asp:TextBox>
                            <AK:CalendarExtender ID="CalDOB" runat="server" PopupButtonID="txtDOB" PopupPosition="BottomRight"
                                TargetControlID="txtDOB">
                            </AK:CalendarExtender>
                            <asp:RequiredFieldValidator ID="rfvDOB" runat="server" 
                                ControlToValidate="txtDOB" ErrorMessage="Please enter Date Of Birth" Display="None"
                                SetFocusOnError="True" ></asp:RequiredFieldValidator>
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
                            <asp:DropDownList ID="ddlOccupation" runat="server">
                                <asp:ListItem Selected="True">Select One</asp:ListItem>
                                <asp:ListItem Enabled="True">Nil</asp:ListItem>
                                <asp:ListItem Enabled="True">Student</asp:ListItem>
                                <asp:ListItem Enabled="True">Software</asp:ListItem>
                                <asp:ListItem Enabled="True">Hardware</asp:ListItem>
                                <asp:ListItem Enabled="True">Industrialist</asp:ListItem>
                                <asp:ListItem Enabled="True">Government</asp:ListItem>
                                <asp:ListItem Enabled="True">Scholars</asp:ListItem>
                                <asp:ListItem Enabled="True">Proffessor</asp:ListItem>
                                <asp:ListItem Enabled="True">Teacher</asp:ListItem>
                                <asp:ListItem Enabled="True">Doctor</asp:ListItem>
                                <asp:ListItem Enabled="True">Engineer</asp:ListItem>
                                <asp:ListItem Enabled="True">Private Worker</asp:ListItem>
                                <asp:ListItem Enabled="True">Lawyer</asp:ListItem>
                                <asp:ListItem Enabled="True">Business</asp:ListItem>
                                <asp:ListItem Enabled="True">Artist</asp:ListItem>
                                <asp:ListItem Enabled="True">Nurse</asp:ListItem>
                                <asp:ListItem Enabled="True">Farmer</asp:ListItem>
                                <asp:ListItem Enabled="True">Labour</asp:ListItem>
                                <asp:ListItem Enabled="True">House Wife</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfvOccupation" runat="server" 
                                ControlToValidate="ddlOccupation" 
                                ErrorMessage="Please enter your occupation" Display="None"
                                SetFocusOnError="True" InitialValue="Select One" ></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Gender<span class='style3'>*</span>
                        </td>
                        <td>
                            <asp:RadioButtonList ID="rbtGender" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Selected="True">Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:RadioButtonList>
                            <asp:RequiredFieldValidator ID="rfvGender" runat="server" 
                                ControlToValidate="rbtGender" ErrorMessage="Please select a gender" Display="None"
                                SetFocusOnError="True" ></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            Maritial Status:<span class='style3'>*</span>
                        </td>
                        <td>
                            <asp:RadioButtonList ID="rbtMaritialStatus" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Selected="True">Married</asp:ListItem>
                                <asp:ListItem>Single</asp:ListItem>
                            </asp:RadioButtonList>
                            <asp:RequiredFieldValidator ID="rfvMaritialStatus" runat="server" 
                                ControlToValidate="rbtMaritialStatus" ErrorMessage="Enter your maritial status"  Display="None"
                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Mobile No.
                        </td>
                        <td>
                            <asp:TextBox ID="txtCountryCode" runat="server" MaxLength="6" value="91" Style="width: 60px"></asp:TextBox>
                            <asp:TextBox ID="txtMobileNo" runat="server" MaxLength="10" title="Enter phone no as mentioned below"
                                Style="width: 85px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvMobileNo" runat="server" 
                                ControlToValidate="txtMobileNo" ErrorMessage="Please enter your mobile Number" Display="None"
                                SetFocusOnError="True" ></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revMobileNo" runat="server"    
ErrorMessage="Enter a valid mobile number" Display="None"
ControlToValidate="txtMobileNo"    
ValidationExpression="^[0-9]{10,10}$" />
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
                            Country code + Mobile Number
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                    </tr>
                </table>
                <table width='97%' cellspacing='5' cellpadding="5" class='back' style='text-align: left;
                    vertical-align: top'>
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
                            <asp:TextBox ID="txtAddress1" runat="server"  
                                title="Enter your plot no and street address" Height="54px"
                                width="219px" TextMode="MultiLine"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvAddress" runat="server" 
                                ControlToValidate="txtAddress1" ErrorMessage="Please Enter your housing address." Display="None"
                                SetFocusOnError="True" ></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revAddress" runat="server" ErrorMessage="Address should be more than 5 characters." Display="None"
ControlToValidate="txtAddress1"    ValidationExpression="^[\s\S]{5,}$"  />
                        </td>
                    </tr>
                    <tr>
                        <td class="style4">
                        </td>
                        <td>
                            
                        </td>
                    </tr>
                    <tr>
                        <td class="style4">
                            Pin Code:<span class='style3'>*</span>
                        </td>
                        <td>
                            <asp:TextBox ID="txtPinCode" runat="server" title="Enter your pin code" 
                                AutoPostBack="True" ontextchanged="txtPinCode_TextChanged"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvPinCode" runat="server" 
                                ControlToValidate="txtPinCode" ErrorMessage="Please Enter your pin code." Display="None"
                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Pin code must contain 6 digits." Display="None"
ControlToValidate="txtPinCode"    ValidationExpression="^[0-9]{6,6}$" />
                        </td>
                        <td>
                            Area: <span class='style3'>*</span>
                        </td>
                        <td>
                            <span id='arealistDIV'>
                                <asp:DropDownList ID="ddlPinCode" runat="server" 
                                onselectedindexchanged="ddlPinCode_SelectedIndexChanged">
                                    
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RrfvPinCode" runat="server" 
                                ControlToValidate="ddlPinCode" 
                                ErrorMessage="Please select your area" Display="None"
                                SetFocusOnError="True" InitialValue="Select Area" ></asp:RequiredFieldValidator>
                                
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="style4">
                            State:<span class='style3'>*</span>
                        </td>
                        <td>
                            <input value='Haryana' readonly="readonly" />
                        </td>
                        <td style="height: 26px">
                            Blood Group
                        </td>
                        <td style="height: 26px">
                            <asp:DropDownList ID="ddlBloodGroup" runat="server">
                                <asp:ListItem Selected="True" Value='0'>Select</asp:ListItem>
                                <asp:ListItem Enabled="True" Value='1'>AB + Ve</asp:ListItem>
                                <asp:ListItem Enabled="True" Value='2'>AB - Ve</asp:ListItem>
                                <asp:ListItem Enabled="True" Value='3'>A + Ve</asp:ListItem>
                                <asp:ListItem Enabled="True" Value='4'>A - Ve</asp:ListItem>
                                <asp:ListItem Enabled="True" Value='5'>B + Ve</asp:ListItem>
                                <asp:ListItem Enabled="True" Value='6'>B - Ve</asp:ListItem>
                                <asp:ListItem Enabled="True" Value='7'>O + Ve</asp:ListItem>
                                <asp:ListItem Enabled="True" Value='8'>O - Ve</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfvBloodGroup" runat="server" 
                                ControlToValidate="ddlBloodGroup" 
                                ErrorMessage="Please select your blood group" Display="None"
                                SetFocusOnError="True" InitialValue="Select" ></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </table>
                <table width='97%' cellspacing='5' cellpadding="5" class='back' style='text-align: left;
                    vertical-align: top'>
                    <tr>
                        <td colspan="2">
                            <strong>ID Proof Information</strong>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Choose File<span class='style3'>*</span>
                        </td>
                        <td>
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                             <asp:RequiredFieldValidator ID="rfvFileUpload" runat="server" 
                                ControlToValidate="FileUpload1" ErrorMessage="Please attach a ID proof." Display="None"
                                SetFocusOnError="True" ></asp:RequiredFieldValidator>
                            <%-- <select name='proof' onchange="load(this.value)">
                                <option value='0'>Select</option>
                                <optgroup label="Only Number is enough">
                                    <option value='1'>Ration Card</option>
                                    <option value='2'>Driving License</option>
                                    <option value='3'>Voter Id</option>
                                    <option value='4'>Passport</option>
                                </optgroup>
                                <optgroup label="Attachment is required">
                                    <option value='5'>Othe Proofs</option>
                                </optgroup>
                            </select>
                            <script type='text/javascript'>
                                function load(str) {
                                    if (str == 1) {
                                        document.getElementById("leftDIV").innerHTML = "Ration Card Number <span class='style3'>*</span>";
                                        document.getElementById("rightDIV").innerHTML = "<input type='text' maxlength='25' name='proofno' /> Example : 24/W/0061813";
                                    }
                                    if (str == 2) {
                                        document.getElementById("leftDIV").innerHTML = "Driving License Number <span class='style3'>*</span>";
                                        document.getElementById("rightDIV").innerHTML = "<input type='text' maxlength='25' name='proofno' /> Example : HR5920080013369";
                                    }
                                    if (str == 3) {
                                        document.getElementById("leftDIV").innerHTML = "Voter-Id Number <span class='style3'>*</span>";
                                        document.getElementById("rightDIV").innerHTML = "<input type='text' maxlength='25' name='proofno' /> Example : HR/24/144/0168383";
                                    }
                                    if (str == 4) {
                                        document.getElementById("leftDIV").innerHTML = "Passport Number <span class='style3'>*</span>";
                                        document.getElementById("rightDIV").innerHTML = "<input type='text' maxlength='25' name='proofno' /> Example : H0533176";
                                    }
                                    if (str == 5) {
                                        document.getElementById("leftDIV").innerHTML = "Equivalent proof <span class='style3'>*</span>";
                                        document.getElementById("rightDIV").innerHTML = "<input type='file' name='proofno' />";
                                        document.getElementById("rightDIV").innerHTML += "<br/><br/>Equivalent proof may be Bank Pass Book, college Identity Card, etc <span class='style3'>where Applicant Photo,Name,Date of Birth is Provided.</span>";
                                    }

                                }
                            </script>--%><br />
&nbsp;<asp:Label ID="lblUpload" runat="server"></asp:Label>

                           
                        </td>
                    </tr>
                    <tr>
                        <td valign="top">
                            <span id="leftDIV"></span>
                        </td>
                        <td>
                            <span id="rightDIV"></span>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        <asp:UpdatePanel ID="UP1" runat="server">
                        <ContentTemplate>
                            <asp:Image ID="imgCaptcha" runat="server" /><br /></td><td>
                             <asp:Button ID="btnRefresh" runat="server" Text="Refresh" 
                                    onclick="btnRefresh_Click1" />
                              </ContentTemplate>
                    </asp:UpdatePanel>
                        </td>
                        <td>
                             <asp:TextBox ID="txtCaptcha" runat="server" Width="200px"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="rfvCaptcha" runat="server" 
                                ControlToValidate="txtCaptcha" ErrorMessage="Please enter Captcha." Display="None"
                                SetFocusOnError="True" ></asp:RequiredFieldValidator>
                            <span class="style3">Case sensitive ( LAW !=law)</span>
                        </td>
                    </tr>
                </table>
                <table width='97%' class="back" cellspacing='5' cellpadding="5" style='text-align: center;
                    vertical-align: top'>
                    <tr>
                        <td width="25%">
                            &nbsp;
                        </td>
                        <td>
                            <asp:Button ID="btnSignUp" runat="server" Text="Submit" onclick="btnSignUp_Click1" 
                                 />
                        </td>
                        <td>
                            <asp:Button ID="btnReset" runat="server" Text="Reset" />
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
