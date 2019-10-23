<%@ Page Title="" Language="C#" MasterPageFile="~/RFID.Master" AutoEventWireup="true" CodeBehind="Contactus1.aspx.cs" Inherits="RFIDPRJ.Contactus1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style14
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
                            ImageUrl="~/product-overview-time-attendace.png" Width="235px" />
                        
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
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" BackColor="#F7B733" ForeColor="White" 
                                        Height="46px" style="font-weight: 700; font-style: italic" Text="HOME" 
                                        Width="233px" onclick="Button1_Click" />
                                </td>
                                <td class="style10" rowspan="4">
                                    <h1 class="style14">
                            <strong style="text-align: left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CONTACT US</strong></h1>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                    <asp:Image ID="Image2" runat="server" Height="29px" ImageUrl="~/phone.jpg" 
                                        Width="35px" />
&nbsp;<strong>84249-52953/90047-74410</strong></h2>
                        <h2>
&nbsp;&nbsp;
                            <asp:Image ID="Image3" runat="server" Height="28px" ImageUrl="~/email-icon.png" 
                                Width="47px" />
&nbsp;<a href="mailto:yashgupta0311@gmail.com">yashgupta0311@gmail.com</a></h2>
                                    <h2>
&nbsp;&nbsp;

                            <asp:Image ID="Image4" runat="server" Height="28px" ImageUrl="~/email-icon.png" 
                                Width="47px" />
&nbsp;<a href="mailto:sachinsharma8424@gmail.com">sachinsharma8424@gmail.com</a></h2>
                        <p>
                            &nbsp;</p>
                        &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style13">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button2" runat="server" BackColor="#F7B733" ForeColor="White" 
                                        Height="46px" style="font-weight: 700; font-style: italic" Text="LOGIN" 
                                        Width="237px" onclick="Button2_Click" />
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


