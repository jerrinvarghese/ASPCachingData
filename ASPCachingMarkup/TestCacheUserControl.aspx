<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestCacheUserControl.aspx.cs" Inherits="ASPCachingMarkup.TestCacheUserControl" %>

<%@ Register Src="~/Visibility/DropDownAndGrid.ascx" TagPrefix="uc1" TagName="DropDownAndGrid" %>








<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <uc1:DropDownAndGrid runat="server" ID="DropDownAndGrid" />
    </div>
    </form>
</body>
</html>
