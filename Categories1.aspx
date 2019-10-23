<%@ Page Title="" Language="C#" MasterPageFile="~/RFID.Master" AutoEventWireup="true" CodeBehind="Categories1.aspx.cs" Inherits="RFIDPRJ.Categories1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style21
        {
            text-align: left;
            color: #FFFFFF;
        }
        .style22
        {
            width: 54px;
            height: 37px;
        }
        .style23
        {
            width: 54px;
            height: 77px;
        }
        .style24
        {
            width: 54px;
            height: 86px;
        }
        .style25
        {
            width: 54px;
            height: 80px;
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
                            ImageUrl="~/product-overview-time-attendace.png" Width="234px" />
                        
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
                                <td class="style24">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button1" runat="server" BackColor="#F7B733" ForeColor="White" 
                                        Height="46px" style="font-weight: 700; font-style: italic" Text="HOME" 
                                        Width="233px" onclick="Button1_Click" />
                                </td>
                                <td class="style10" rowspan="4">
                                   &nbsp; &nbsp;&nbsp;
                                    <br />
                                    <br />
                                    <h2 class="style21">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CATEGORIES</h2>
                                    <br />
                                    <asp:Image ID="Image2" runat="server" BackColor="#4ABDAC" ForeColor="#4ABDAC" 
                                        Height="30px" ImageUrl="~/hand.png" style="margin-top: 1px" Width="47px" />
&nbsp;&nbsp;
                                    <asp:Button ID="Button5" runat="server" Height="56px" Text="TODAY'S ATTENDANCE" 
                                        Width="382px" BackColor="#FFCE00" onclick="Button5_Click" />
                                    <br />
                                    <br />
                                    <br />
                                    
                                    <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/hand.png" 
                                        Width="48px" />
                                        &nbsp;&nbsp;
                                    <asp:Button ID="Button6" runat="server" Height="53px" Text="DATEWISE ATTENDANCE" 
                                        Width="383px" BackColor="#FFCE00" onclick="Button6_Click" />
                                    <br />
                                    <br />
                                    <br />
                                    
                                    <asp:Image ID="Image4" runat="server" Height="29px" ImageUrl="~/hand.png" 
                                        Width="48px" />
                                        &nbsp;&nbsp;
                                    <asp:Button ID="Button7" runat="server" onclick="Button7_Click" 
                                        Text="DEFAULTER LIST" BackColor="#FFCE00" Height="53px" Width="383px" />
                                    <br />
                                    <br />
                                    <br />
                                   
                                    <asp:Image ID="Image5" runat="server" Height="30px" ImageUrl="~/hand.png" 
                                        Width="48px" />
                                        &nbsp;&nbsp;
                                    <asp:Button ID="Button8" runat="server" Text="MONTHLY ATTENDANCE" 
                                        BackColor="#FFCE00" Height="53px" onclick="Button8_Click" Width="384px" />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />

                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                        <asp:LoginStatus ID="LoginStatus1" runat="server" style="font-size: large" 
                                        LogoutAction="RedirectToLoginPage" LogoutPageUrl="~/login1.aspx" />
                        <br />
                                    </td>
                            </tr>
                            <tr>
                                <td class="style22">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button2" runat="server" BackColor="#F7B733" ForeColor="White" 
                                        Height="46px" style="font-weight: 700; font-style: italic" Text="LOGIN" 
                                        Width="237px" onclick="Button2_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style23">
                                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button3" runat="server" BackColor="#F7B733" ForeColor="White" 
                                        Height="46px" style="font-weight: 700; font-style: italic" Text="ABOUT US" 
                                        Width="234px" onclick="Button3_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style25">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button4" runat="server" BackColor="#F7B733" ForeColor="White" 
                                        Height="46px" style="font-weight: 700; font-style: italic" Text="CONTACT " 
                                        Width="234px" onclick="Button4_Click" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
               
               
            </table>
        </asp:Content>


