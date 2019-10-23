<%@ Page Title="" Language="C#" MasterPageFile="~/RFID.Master" AutoEventWireup="true" CodeBehind="defaulter.aspx.cs" Inherits="RFIDPRJ.defaulter" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style9
        {
            text-align: center;
            font-size: x-large;
        }
        .style10
        {
            text-decoration: underline;
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
                        <strong><span class="style10">DEFAULTER&#39;S LIST</span><br />
                        <br />
                        <asp:Button ID="Button6" runat="server" Height="33px" onclick="Button6_Click" 
                            Text="show data" Width="119px" />
                        <br />
                        <br />
                        <br />
                        <asp:GridView ID="GridView1" runat="server" BackColor="LightGoldenrodYellow" 
                            BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" 
                            GridLines="None" style="font-size: large">
                            <AlternatingRowStyle BackColor="PaleGoldenrod" />
                            <FooterStyle BackColor="Tan" />
                            <HeaderStyle BackColor="Tan" Font-Bold="True" />
                            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                                HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                            <SortedAscendingCellStyle BackColor="#FAFAE7" />
                            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                            <SortedDescendingCellStyle BackColor="#E1DB9C" />
                            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                        </asp:GridView>
                        <asp:GridView ID="GridView2" runat="server" BackColor="LightGoldenrodYellow" 
                            BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" 
                            GridLines="None" style="font-size: large">
                            <AlternatingRowStyle BackColor="PaleGoldenrod" />
                            <FooterStyle BackColor="Tan" />
                            <HeaderStyle BackColor="Tan" Font-Bold="True" />
                            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                                HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                            <SortedAscendingCellStyle BackColor="#FAFAE7" />
                            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                            <SortedDescendingCellStyle BackColor="#E1DB9C" />
                            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                        </asp:GridView>
                        <asp:GridView ID="GridView3" runat="server" BackColor="LightGoldenrodYellow" 
                            BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" 
                            GridLines="None" style="font-size: large">
                            <AlternatingRowStyle BackColor="PaleGoldenrod" />
                            <FooterStyle BackColor="Tan" />
                            <HeaderStyle BackColor="Tan" Font-Bold="True" />
                            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                                HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                            <SortedAscendingCellStyle BackColor="#FAFAE7" />
                            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                            <SortedDescendingCellStyle BackColor="#E1DB9C" />
                            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                        </asp:GridView>
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <asp:Button ID="Button5" runat="server" Height="34px" onclick="Button5_Click" 
                            Text="Back to Categories" Width="150px" />
                        <br />
                        <br />
                        <asp:LoginStatus ID="LoginStatus1" runat="server" style="font-size: large" />
                        </strong></td>
                </tr>
            </table>
        </asp:Content>


