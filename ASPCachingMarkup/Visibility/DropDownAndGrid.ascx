<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DropDownAndGrid.ascx.cs" Inherits="ASPCachingMarkup.Visibility.DropDownAndGrid" %>

 <div>
    
         <asp:DropDownList ID="ddlRoles" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlRoles_SelectedIndexChanged">
            <asp:ListItem>Select</asp:ListItem>
            <asp:ListItem>Admin</asp:ListItem>
            <asp:ListItem>Manager</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
        <br />
        <br />
        Server Time :
        <asp:Label ID="lblServerTime" runat="server" Text="Label"></asp:Label>
        <br />
        Client Time :
        <script type="text/javascript">
            document.write(Date());
        </script>
    </div>