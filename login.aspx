<%@ Page Title="" Language="C#" MasterPageFile="~/RFID.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="RFIDPRJ.login1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style13
        {
            width: 66px;
        }
        .style15
        {
            text-align: left;
        }
        .style16
        {
            text-align: center;
            color: #FFFFFF;
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
                            ImageUrl="~/product-overview-time-attendace.png" Width="240px" />
                        
                    </td>
                    <td class="style3" bgcolor="#4ABDAC">
                    <h1>
                            <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            <span class="style11"><em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RFID BASED ATTENDANCE SYSTEM&nbsp;&nbsp; </em></span></strong></h1>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style4" bgcolor="#4ABDAC" colspan="2">
                        <table class="style9" style="width: 100%">
                            <tr>
                                <td class="style13">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button1" runat="server" BackColor="#F7B733" ForeColor="White" 
                                        Height="46px" style="font-weight: 700; font-style: italic" Text="HOME" 
                                        Width="233px" onclick="Button1_Click" />
                                </td>
                                
                                <td class="style10" rowspan="4" colspan="4" bgcolor="#4ABDAC" align="center">
                                    <div class="style15">
                                        <br />
                                        <h2 class="style16">
                                            <strong>LOGIN</strong></h2>
                                        <br />
                                        <br />
                                        <br />
                                    </div>
                        <asp:Login ID="Login2" runat="server" BackColor="#FFCE00" BorderColor="#B5C7DE" 
                            BorderStyle="Solid" BorderWidth="1px" DestinationPageUrl="~/categories1.aspx" 
                            Font-Names="Verdana" Font-Size="0.8em" BorderPadding="4" ForeColor="#333333" 
                                        Height="199px" Width="383px">
                            <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                            <LoginButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" 
                                BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" />
                            <TextBoxStyle Font-Size="0.8em" />
                            <TitleTextStyle BackColor="#507CD1" Font-Bold="True" ForeColor="#FFFFFF" 
                                Font-Size="0.9em" />
                        </asp:Login>
                    
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style13">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button2" runat="server" BackColor="#F7B733" ForeColor="White" 
                                        Height="46px" style="font-weight: 700; font-style: italic" Text="LOGIN" 
                                        Width="237px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style13">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button3" runat="server" BackColor="#F7B733" ForeColor="White" 
                                        Height="46px" style="font-weight: 700; font-style: italic" Text="ABOUT US" 
                                        Width="234px" onclick="Button3_Click1" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style13">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button4" runat="server" BackColor="#F7B733" ForeColor="White" 
                                        Height="46px" style="font-weight: 700; font-style: italic" Text="CONTACT " 
                                        Width="234px" onclick="Button4_Click1" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
               
               
            </table>
        </asp:Content>


