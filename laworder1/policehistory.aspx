<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Main.Master" CodeBehind="policehistory.aspx.cs" Inherits="laworder1.policehistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Menu Start -->
	<script type="text/javascript">	    loadmenu("police");</script>
<!-- Menu End -->
<table width='100%' border="0">
<tr>
	<td width='23%' valign='top'>
	
<!-- Left column start-->

			<table cellspacing='5' cellpadding='5' class='back' style='text-align:left;' width='70%' >

<tr><td></td><td><span><a href='policeorganisation.aspx'>Organisation</a></span></td></tr>
	<tr><td></td><td><span><a href='policehistory.aspx'>History</a></span></td></tr>
	<tr><td></td><td><span><a href='policedepartment.aspx'>About Us</a></span></td></tr>
	<tr><td></td><td><span><a href='caseprogress.aspx'>Case Progress</a></span></td></tr>
	<tr><td></td><td><span><a href='policephotos.aspx'>Photos</a></span></td></tr>
	
</table>
</td>
<!-- Left column end -->

<!--content column start -->
<td width='70%' valign="top">
<table width='95%' border="0" >
	<tr><td align="center"></td></tr>
	<tr><td>
	
            <br/><br/>
             <h1 align="center">History Of Police</h1>

              <p  class=>On the pattern of the colonial Irish constabulary, 
              Sir Charles Napier established a police system in Sindh in 1843. 
              The British Army Officers closely supervised and controlled forces which
               were resultantly more disciplined, efficient and not corrupt. Influenced by 
               the success of Napier’s police, the Court of Directors of the East India Company 
               suggested that a common system of police be established on the pattern of Irish Constabulary.</p>
             
              <p  >The British Indian Government set up a Police Commission headed by
               Mr. H. M. Court in 1860. One of the policy directives to the Police Commission of 1860 was that
                "though the duties of the police should be entirely civil, not military, the organization and discipline 
                of the police should be similar to those of a military body". The present police system in our country has 
                been established under this Charcter.</p>

              <p  >The Punjab Police Rules were framed in 1934, which still govern the police organisations in the north
               Indian States of Punjab, Himachal Pradesh, Delhi, Chandigarh and Haryana.</p>
              <p  >The State of Haryana was carved out of Punjab on 1st of November, 1966.
</p>
              <p  >At that time it comprised of one police Range and 6 districts and had a strength of 12165 personnel. Today, the 
              State is divided into 4 Ranges, 3 Police Commissionerates - Gurgaon, Faridabad, Ambala-Panchkula and 17 districts besides the Railway Police district.</p>
              <p style="color: #FF0000; font-size: x-large;"  >Now, Haryana Police has a total strength of 56979 
              (Gazetted Officers/355, Inspectors/800, Sub Inspectors/2006, Assistant Sub Inspectors/4595, Head Constables/9230, Constables/39993). </p>

              
              
              <p align="left" class="style34">&nbsp;</p>
              
			</td>
            </tr>

</table></td>


</tr>
<jsp:include page="../bottom.jsp" flush="false"></jsp:include>
</table>
<!--content column end -->

















</asp:Content>