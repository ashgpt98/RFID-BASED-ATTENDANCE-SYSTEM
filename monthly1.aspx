<%@ Page Title="" Language="C#" MasterPageFile="~/RFID.Master" AutoEventWireup="true" CodeBehind="monthly1.aspx.cs" Inherits="RFIDPRJ.monthly1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style15
        {
            color: #FFFFFF;
            text-align: left;
        }
        .style16
        {
            width: 294px;
            text-align: left;
        }
        .style17
        {
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
                            ImageUrl="~/product-overview-time-attendace.png" Width="241px" />
                        
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
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" 
                                        runat="server" BackColor="#F7B733" ForeColor="White" 
                                        Height="46px" style="font-weight: 700; font-style: italic" Text="HOME" 
                                        Width="234px" onclick="Button1_Click" />
                                </td>
                                <td class="style16" rowspan="4">
                                    <h2>
                                        &nbsp;</h2>
                                    <h2 class="style15">
                                        <strong>MONTHLY ATTENDANCE</strong></h2>
                                    <div class="style17">
                                    <br />
                                    <br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    SELECT MONTH :-&nbsp;&nbsp;
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="40px" 
                            style="margin-top: 0px" Width="100px" AutoPostBack="True" 
                            onselectedindexchanged="DropDownList1_SelectedIndexChanged" BackColor="#FFCE00">
                            <asp:ListItem>Select Month</asp:ListItem>
                            <asp:ListItem>JANUARY</asp:ListItem>
                            <asp:ListItem>FEBRUARY</asp:ListItem>
                            <asp:ListItem>MARCH</asp:ListItem>
                            <asp:ListItem>APRIL</asp:ListItem>
                            <asp:ListItem>MAY</asp:ListItem>
                            <asp:ListItem>JUNE</asp:ListItem>
                            <asp:ListItem>JULY</asp:ListItem>
                            <asp:ListItem>AUGUST</asp:ListItem>
                            <asp:ListItem>SEPTEMBER</asp:ListItem>
                            <asp:ListItem>OCTOBER</asp:ListItem>
                            <asp:ListItem>NOVEMBER</asp:ListItem>
                            <asp:ListItem>DECEMBER</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <br />
                        <br />
                        <br />
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:Button ID="Button6" runat="server" Height="32px" Text="SHOW DATA" 
                            Width="132px" onclick="Button6_Click" BackColor="#FFCE00" />
                        <br />
                                    <br />
                                    <br />
                                    <br />
                                    </div>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:GridView ID="GridView1" runat="server" 
                            onselectedindexchanged="GridView1_SelectedIndexChanged" 
                            CellPadding="4" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" />
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" 
                                HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                            <SelectedRowStyle BackColor="#D1DDF1" ForeColor="#333333" Font-Bold="True" />
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                        </asp:GridView>
                    
                                    <div class="style17">
                                        <br />
                                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                        <asp:Button ID="Button5" runat="server" Height="36px" onclick="Button5_Click" 
                            Text="Back to Categories" Width="188px" BackColor="#FFCE00" />
                                        <br />
                                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:LoginStatus ID="LoginStatus1" runat="server" 
                                            LogoutAction="RedirectToLoginPage" LogoutPageUrl="~/login1.aspx" />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="style13">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button2" runat="server" BackColor="#F7B733" ForeColor="White" 
                                        Height="46px" style="font-weight: 700; font-style: italic" Text="LOGIN" 
                                        Width="234px" onclick="Button2_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style13">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button3" runat="server" BackColor="#F7B733" ForeColor="White" 
                                        Height="46px" style="font-weight: 700; font-style: italic" Text="ABOUT US" 
                                        Width="234px" onclick="Button3_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style13">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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


