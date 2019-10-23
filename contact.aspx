<%@ Page Title="" Language="C#" MasterPageFile="~/RFID.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="RFIDPRJ.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style9
        {
            text-align: center;
            font-family: Arial;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
            <table class="style1">
                <tr>
                    <td class="style3" bgcolor="#CCCCCC">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Image ID="Image1" runat="server" Height="154px" ImageUrl="~/logo.png" 
                            Width="190px" />
                    </td>
                    <td class="style5" colspan="3" bgcolor="#999999">
                        <h1>
                            <strong>RFID BASED ATTENDANCE SYSTEM</strong></h1>
                    </td>
                </tr>
                <tr>
                    <td class="style4" bgcolor="#CCCCCC">
                        <asp:Button ID="Button1" runat="server" Height="55px" style="margin-left: 14px" 
                            Text="HOME" Width="213px" onclick="Button1_Click" />
                    </td>
                    <td class="style8" align="center" bgcolor="#CCCCCC">
                    &nbsp;
                        <asp:Button ID="Button2" runat="server" Height="53px" Text="LOGIN" 
                            Width="207px" onclick="Button2_Click" />
                    </td>
                    <td class="style7" align="center" bgcolor="#CCCCCC">
                        <asp:Button ID="Button3" runat="server" Height="55px" Text="ABOUT" 
                            Width="193px" onclick="Button3_Click" />
                    </td>
                    <td class="style2" align="center" bgcolor="#CCCCCC">
                        <asp:Button ID="Button4" runat="server" Height="55px" Text="CONTACT" 
                            Width="216px" onclick="Button4_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="4" bgcolor="#FFFFCC" class="style9">
                        <h1>
                            <strong>CONTACT US</strong></h1>
                        <h2>
&nbsp;<asp:Image ID="Image2" runat="server" Height="21px" ImageUrl="~/phone.png" Width="17px" />
&nbsp;84249-52953/90047-74410</h2>
                        <h2>
                            <asp:Image ID="Image3" runat="server" Height="28px" ImageUrl="~/email.png" 
                                Width="47px" />
&nbsp;<a href="mailto:yashgupta0311@gmail.com">yashgupta0311@gmail.com</a></h2>
                        <h2>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Image ID="Image4" runat="server" Height="28px" ImageUrl="~/email.png" 
                                Width="47px" />
&nbsp;<a href="mailto:sachinsharma8424@gmail.com">sachinsharma8424@gmail.com</a></h2>
                        <p>
                            &nbsp;</p>
                    </td>
                </tr>
            </table>
        </asp:Content>


