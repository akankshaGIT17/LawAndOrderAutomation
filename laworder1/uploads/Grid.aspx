<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Grid.aspx.cs" Inherits="Grid" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 192px">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" OnRowEditing="GridView1_RowEditing"
            OnRowCancelingEdit="GridView1_RowCancelingEdit" 
            onrowupdating="GridView1_RowUpdating">
            <Columns>
                <asp:TemplateField HeaderText="State Code">
                    <ItemTemplate>
                        <asp:Label ID="lblScode" runat="server" Text='<%# bind ("StateCode") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="State Name">
                    <ItemTemplate>
                        <a href ="Default.aspx"><asp:Label ID="lblSName" runat="server" Text='<%# bind ("StateName") %>'></asp:Label></a>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtSName" runat="server" Text='<%# bind("StateName") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Button ID="btnEdit" runat="server" Text="Edit" CommandName="Edit" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:Button ID="btnSave" runat="server" Text="Save" CommandName="Update" />
                        <asp:Button ID="btnCancel" runat="server" Text="Cancel" CommandName="Cancel" />
                    </EditItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </div>
    </form>
</body>
</html>
