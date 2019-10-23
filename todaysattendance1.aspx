<%@ Page Title="" Language="C#" MasterPageFile="~/RFID.Master" AutoEventWireup="true" CodeBehind="todaysattendance1.aspx.cs" Inherits="RFIDPRJ.todaysattendance1" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style14
        {
            color: #FFFFFF;
            text-align: left;
        }
        .style15
        {
            text-align: left;
        }
        .style16
        {
            width: 294px;
            text-align: left;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
            <table class="style1">
            
                <tr>
                    <td class="style12" bgcolor="#4ABDAC">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        
                        <asp:Image ID="Image1" runat="server" Height="195px" 
                            ImageUrl="~/product-overview-time-attendace.png" Width="243px" />
                        
                    </td>
                    <td class="style3" bgcolor="#4ABDAC">
                    <h1>
                            <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            <span class="style11"><em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RFID BASED ATTENDANCE SYSTEM&nbsp;&nbsp; </em></span></strong></h1>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style4" bgcolor="#4ABDAC" colspan="2">
                        <table class="style9">
                            <tr>
                                <td class="style13">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button1" runat="server" BackColor="#F7B733" ForeColor="White" 
                                        Height="46px" style="font-weight: 700; font-style: italic" Text="HOME" 
                                        Width="233px" onclick="Button1_Click" />
                                </td>
                                <td class="style16" rowspan="4">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <br />
                                    <h2 class="style14">
&nbsp;&nbsp;&nbsp; TODAY&#39;S ATTENDANCE</h2>
                                    <div class="style15">
                                        <br />
                                        <br />
                                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button5" runat="server" BackColor="#FFCE00" Height="25px" 
                                        onclick="Button5_Click" Text="PRESENT" Width="93px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button6" runat="server" BackColor="#FFCE00" Height="25px" 
                                        onclick="Button6_Click" Text="ABSENT" Width="93px" />
                                    <br />
                                    <br />
                                    <br />
&nbsp;&nbsp;
                                    </div>
                                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                                        GridLines="None" onselectedindexchanged="GridView1_SelectedIndexChanged" 
                                        style="text-align: center">
                                        <AlternatingRowStyle BackColor="White" />
                                        <EditRowStyle BackColor="#2461BF" />
                                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                        <RowStyle BackColor="#EFF3FB" />
                                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                    </asp:GridView>
                                    <div class="style15">
                                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button7" runat="server" BackColor="#FFCE00" 
                                        onclick="Button7_Click" Text="BACK TO CATEGORIES" Height="45px" />
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                        <asp:LoginStatus ID="LoginStatus1" runat="server" BackColor="#FFCE00" 
                                            LogoutAction="Redirect" LogoutPageUrl="~/login1.aspx" />
                                        <br />
&nbsp;
                                    <br />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </div>
                                    </td>
                            </tr>
                            <tr>
                                <td class="style13">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button2" runat="server" BackColor="#F7B733" ForeColor="White" 
                                        Height="46px" style="font-weight: 700; font-style: italic" Text="LOGIN" 
                                        Width="237px" onclick="Button2_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style13">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button3" runat="server" BackColor="#F7B733" ForeColor="White" 
                                        Height="46px" style="font-weight: 700; font-style: italic" Text="ABOUT US" 
                                        Width="234px" onclick="Button3_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style13">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button4" runat="server" BackColor="#F7B733" ForeColor="White" 
                                        Height="46px" style="font-weight: 700; font-style: italic" Text="CONTACT " 
                                        Width="234px" onclick="Button4_Click" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
               
               
            </table>
        </asp:Content>


