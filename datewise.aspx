<%@ Page Title="" Language="C#" MasterPageFile="~/RFID.Master" AutoEventWireup="true" CodeBehind="datewise.aspx.cs" Inherits="RFIDPRJ.datewise" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style9
        {
            height: 90px;
            width: 240px;
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
                    <td class="style9" align="center" bgcolor="#CCCCCC">
                        <asp:Button ID="Button4" runat="server" Height="55px" Text="CONTACT" 
                            Width="216px" onclick="Button4_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="4" bgcolor="#FFFFCC" align="center">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        <br />
                        <br />
&nbsp;
                        <asp:Calendar ID="Calendar1" runat="server" style="text-align: center" 
                            CaptionAlign="Top" Height="82px" 
                            onselectionchanged="Calendar1_SelectionChanged" Width="117px" >
                            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
    <OtherMonthDayStyle ForeColor="#999999" />
    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
    <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
    <TodayDayStyle BackColor="#CCCCCC" VerticalAlign="Middle" HorizontalAlign="Center" />
                        </asp:Calendar>
                        <br />
                        <asp:TextBox ID="TextBox1" runat="server" Height="33px" Width="140px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button6" runat="server" 
                            Height="31px" Text="SHOW DATA" Width="97px" onclick="Button6_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        <br />
                        &nbsp;<br />
                        <br />
                        PRESENT STUDENTS<asp:GridView ID="GridView1" runat="server" 
                            style="text-align: left" 
                            onselectedindexchanged="GridView1_SelectedIndexChanged" 
                            BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                            CellPadding="2" ForeColor="Black" GridLines="None">
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
                        &nbsp;<br />
                        <br />
                        ABSENT STUDENTS<br />
                        <asp:GridView ID="GridView2" runat="server" style="text-align:right" 
                            BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                            CellPadding="2" ForeColor="Black" GridLines="None" >
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
                        <asp:Button ID="Button5" runat="server" Height="33px" onclick="Button5_Click" 
                            Text="Back to Categories" Width="136px" />
                        <br />
                        <br />
                        <asp:LoginStatus ID="LoginStatus1" runat="server" style="font-size: large" />
                        <br />
                    </td>
                </tr>
            </table>
        </asp:Content>

