<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Caching.aspx.cs" Inherits="ASPCachingMarkup.Caching" %>
<%--<%@ OutputCache Duration="60" VaryByParam="None" %>--%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <%--<asp:DropDownList ID="ddlRoles" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlRoles_SelectedIndexChanged">
        </asp:DropDownList>--%>
        <br />
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
    </form>
</body>
</html>
