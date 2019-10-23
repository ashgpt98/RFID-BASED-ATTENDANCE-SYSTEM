<%@ Page Title="" Language="C#" MasterPageFile="~/RFID.Master" AutoEventWireup="true" CodeBehind="HOME1.aspx.cs" Inherits="RFIDPRJ.HOME1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .style14
        {
            width: 380px;
            height: 137px;
        }
        .style15
        {
            width: 380px;
        }
        .style16
        {
            width: 397px;
        }
        .style17
        {
            width: 397px;
        }
    </style>

</asp:Content>
    <asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
        <table class="style1">
            
               
                <tr>
                    <td class="style4" bgcolor="#4ABDAC" colspan="2">
                        <table class="style9" style="height: 564px; width: 96%">
                            <tr>
                                <td class="style14">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" BackColor="#F7B733" ForeColor="White" 
                                        Height="46px" style="font-weight: 700; font-style: italic" Text="HOME" 
                                        Width="233px" onclick="Button1_Click" />
                                </td>
                                <td class="style16" rowspan="2">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Image ID="Image1" runat="server" Height="229px" 
                                      
                            ImageUrl="~/product-overview-time-attendace.png" Width="283px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style15">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button2" runat="server" BackColor="#F7B733" ForeColor="White" 
                                        Height="46px" style="font-weight: 700; font-style: italic" Text="LOGIN" 
                                        Width="237px" onclick="Button2_Click1" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style15">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button3" runat="server" BackColor="#F7B733" ForeColor="White" 
                                        Height="46px" style="font-weight: 700; font-style: italic" Text="ABOUT US" 
                                        Width="234px" onclick="Button3_Click1" />
                                </td>
                                <td class="style17" bgcolor="#4ABDAC">
                    <h1>
                            <strong>&nbsp;&nbsp; 
                            <span class="style11"><em> RFID BASED ATTENDANCE &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SYSTEM&nbsp;&nbsp; </em></span></strong></h1>
                        &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style15">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button4" runat="server" BackColor="#F7B733" ForeColor="White" 
                                        Height="46px" style="font-weight: 700; font-style: italic" Text="CONTACT " 
                                        Width="234px" onclick="Button4_Click1" />
                                </td>
                                <td class="style17">
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
               
               
            </table>
        </asp:Content>

    