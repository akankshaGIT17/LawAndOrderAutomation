<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Police/Police.Master" CodeBehind="Complaints.aspx.cs" Inherits="laworder1.Police.Complaints" %>

<%@ MasterType VirtualPath="~/Police/Police.Master" %> 

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<table width="800px" class="back">

                <tr >
                <td colspan=2><center><h2>FIR/Petty Case Form</h2></center></td>
                
                
                
                </tr>
                <tr>
                <td>
                    &nbsp;</td>
                <td>
                
                    <asp:Label ID="lblPolice" runat="server" Font-Size="Large" ForeColor="#009900"></asp:Label>
                    </td>
                </tr>
                <tr>
                <td>Complaint Id:</td><td>
                    <asp:TextBox ID="txtUserMail" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEmailId" runat="server" 
                                ControlToValidate="txtUserMail" ErrorMessage="Enter Email Id" Display="None"
                                SetFocusOnError="True" ></asp:RequiredFieldValidator>
                             </td>
                </tr>
                <tr>
                <td>
                Complaint Type:
                </td>
                <td>
                
                    <asp:DropDownList ID="ddlAccept" runat="server" Height="23px" 
                    Width="128px" style="margin-left: 0px">
                                <asp:ListItem Selected="True">Select</asp:ListItem>
                                <asp:ListItem Enabled="True" >FIR</asp:ListItem>
                                <asp:ListItem Enabled="True" >Petty Case</asp:ListItem>
                                <asp:ListItem Enabled="True" >Reject</asp:ListItem>
                                
                               
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="ddlAccept" 
                                ErrorMessage="Please select action for complaint" Display="None"
                                SetFocusOnError="True" InitialValue="Select" ></asp:RequiredFieldValidator>
			
                </td>
                </tr>
                <tr>
                <td>&nbsp;</td><td>
                    &nbsp;</td>
                </tr>
                <tr><td colspan=2>
                    <asp:Button ID="btnUpdate" runat="server" Text="Update" 
                        onclick="btnUpdate_Click" /></td></tr>
                </table>

                <table width="1000px" class="back">
		<tr>
        <td colspan=14><center><h2>Complaints Registered</h2></center></td></tr>
                     <tr>
                        <td colspan="4">
                          <h3>Recent Complaints</h3> 
                            
                        </td>
                    </tr>
                    <tr>
                     <td class="style3" style="text-align: center;border-style: groove; border-width: thin"><b> Name</b></td>            
            <td style="text-align: center;border-style: groove; border-width: thin" class="style18"><b> Description</b></td>
            <td style="text-align: center;border-style: groove; border-width: thin" class="style20">
                <b> &nbsp;Area </b></td> 
            <td style="text-align: center;border-style: groove; border-width: thin" class="style21"><b> Gender </b></td>
            <td style="text-align: center;border-style: groove; border-width: thin" class="style22"><b> Occupation </b></td> 
             <td style="text-align: center;border-style: groove; border-width: thin" class="style23"><b> Complaint On </b></td> 
             <td style="text-align: center;border-style: groove; border-width: thin" class="style23"><b> Date of occurence </b></td>
              <td style="text-align: center;border-style: groove; border-width: thin" class="style22"><b> 
                  Crime Area </b></td> 
              <td style="text-align: center;border-style: groove; border-width: thin" class="style22"><b> IP Adderess </b></td> 
               <td style="text-align: center;border-style: groove; border-width: thin" class="style24"><b> Gender </b></td>
              
             
                <td style="text-align: center;border-style: groove; border-width: thin" class="style18"><b> Email </b></td>
                 <td style="text-align: center;border-style: groove; border-width: thin" 
                            class="style25"><b> Complainee Area </b></td> 
                 <td style="text-align: center;border-style: groove; border-width: thin" 
                            class="style26"><b> Complaint Id </b></td>
                 
                  <td style="text-align: center;border-style: groove; border-width: thin" 
                            class="style27"><b> Contact </b></td> 
                
            <td style="text-align: center;border-style: groove; border-width: thin" class="style20">
                <b> Adderess</b></td>
                <td style="text-align: center;border-style: groove; border-width: thin" class="style4">
                <b> ID Proof</b></td> </tr>    
                  <%=getCrimeData()%>
                 
                    <tr>
                        <td colspan="4">
                          
                        </td>
                    </tr>
                
                    
                </table>
                <table width="1000px" class="back">
		
                        <td colspan="4">
                          <h3>FIR Registered Complaints</h3> 
                            
                        </td>
                    </tr>
                    <tr>
                     <td class="style3" style="text-align: center;border-style: groove; border-width: thin"><b> Name</b></td>            
            <td style="text-align: center;border-style: groove; border-width: thin" class="style18"><b> Description</b></td>
            <td style="text-align: center;border-style: groove; border-width: thin" class="style20">
                <b> &nbsp;Area </b></td> 
            <td style="text-align: center;border-style: groove; border-width: thin" class="style21"><b> Gender </b></td>
            <td style="text-align: center;border-style: groove; border-width: thin" class="style22"><b> Occupation </b></td> 
             <td style="text-align: center;border-style: groove; border-width: thin" class="style23"><b> Complaint On </b></td> 
             <td style="text-align: center;border-style: groove; border-width: thin" class="style23"><b> Date of occurence </b></td>
              <td style="text-align: center;border-style: groove; border-width: thin" class="style22"><b> 
                  Crime Area </b></td> 
              <td style="text-align: center;border-style: groove; border-width: thin" class="style22"><b> IP Adderess </b></td> 
               <td style="text-align: center;border-style: groove; border-width: thin" class="style24"><b> Gender </b></td>
              
             
                <td style="text-align: center;border-style: groove; border-width: thin" class="style18"><b> Email </b></td>
                 <td style="text-align: center;border-style: groove; border-width: thin" 
                            class="style25"><b> Complainee Area </b></td> 
                 <td style="text-align: center;border-style: groove; border-width: thin" 
                            class="style26"><b> Complaint Id </b></td>
                 
                  <td style="text-align: center;border-style: groove; border-width: thin" 
                            class="style27"><b> Contact </b></td> 
                
            <td style="text-align: center;border-style: groove; border-width: thin" class="style20">
                <b> Adderess</b></td>
                <td style="text-align: center;border-style: groove; border-width: thin" class="style4">
                <b> ID Proof</b></td> </tr>    
                  <%=getFIRData()%>
                 
                    <tr>
                        <td colspan="4">
                          <%--   <asp:GridView ID="GridView1" runat="server" 
                                onselectedindexchanged="GridView1_SelectedIndexChanged" Width="351px">
                            </asp:GridView>--%>
                        </td>
                    </tr>
                
                    
                </table>
                
                <table width="1000px" class="back">
		
                        <td colspan="4">
                          <h3>Petty Case Registered Complaints</h3> 
                            
                        </td>
                    </tr>
                    <tr>
                     <td class="style3" style="text-align: center;border-style: groove; border-width: thin"><b> Name</b></td>            
            <td style="text-align: center;border-style: groove; border-width: thin" class="style18"><b> Description</b></td>
            <td style="text-align: center;border-style: groove; border-width: thin" class="style20">
                <b> &nbsp;Area </b></td> 
            <td style="text-align: center;border-style: groove; border-width: thin" class="style21"><b> Gender </b></td>
            <td style="text-align: center;border-style: groove; border-width: thin" class="style22"><b> Occupation </b></td> 
             <td style="text-align: center;border-style: groove; border-width: thin" class="style23"><b> Complaint On </b></td> 
             <td style="text-align: center;border-style: groove; border-width: thin" class="style23"><b> Date of occurence </b></td>
              <td style="text-align: center;border-style: groove; border-width: thin" class="style22"><b> 
                  Crime Area </b></td> 
              <td style="text-align: center;border-style: groove; border-width: thin" class="style22"><b> IP Adderess </b></td> 
               <td style="text-align: center;border-style: groove; border-width: thin" class="style24"><b> Gender </b></td>
              
             
                <td style="text-align: center;border-style: groove; border-width: thin" class="style18"><b> Email </b></td>
                 <td style="text-align: center;border-style: groove; border-width: thin" 
                            class="style25"><b> Complainee Area </b></td> 
                 <td style="text-align: center;border-style: groove; border-width: thin" 
                            class="style26"><b> Complaint Id </b></td>
                 
                  <td style="text-align: center;border-style: groove; border-width: thin" 
                            class="style27"><b> Contact </b></td> 
                
            <td style="text-align: center;border-style: groove; border-width: thin" class="style20">
                <b> Adderess</b></td>
                <td style="text-align: center;border-style: groove; border-width: thin" class="style4">
                <b> ID Proof</b></td> </tr>    
                  <%=getPETTYData()%>
                 
                    <tr>
                        <td colspan="4">
                          <%--   <asp:GridView ID="GridView1" runat="server" 
                                onselectedindexchanged="GridView1_SelectedIndexChanged" Width="351px">
                            </asp:GridView>--%>
                        </td>
                    </tr>
                
                    
                </table><asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="true" ShowSummary="false" />
               








</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .style4
        {
            width: 142px;
        }
        .style18
        {
            width: 200px;
        }
        .style20
        {
            width: 274px;
        }
        .style21
        {
            width: 238px;
        }
        .style22
        {
            width: 258px;
        }
        .style23
        {
            width: 253px;
        }
        .style24
        {
            width: 268px;
        }
        .style25
        {
            width: 283px;
        }
        .style26
        {
            width: 242px;
        }
        .style27
        {
            width: 240px;
        }
    </style>
</asp:Content>
