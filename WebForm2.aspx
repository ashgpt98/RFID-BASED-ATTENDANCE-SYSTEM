<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="RFIDPRJ.WebForm2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:TextBox ID="TextBox1" runat="server" ontextchanged="TextBox1_TextChanged"></asp:TextBox>
    <br />
    <asp:TextBox ID="TextBox2" runat="server" ontextchanged="TextBox2_TextChanged"></asp:TextBox>
    <br />
    <br />
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
    </form>
</body>
</html>
