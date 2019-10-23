<%@ Page Title="" Language="C#" MasterPageFile="~/RFID.Master" AutoEventWireup="true" CodeBehind="aboutus.aspx.cs" Inherits="RFIDPRJ.aboutus" %>
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
                            <strong>ABOUT US</strong></h1>
                        <p>
                            <span lang="EN-US" 
                                style="font-size: 12.0pt; line-height: 150%; mso-ascii-font-family: &quot;Times New Roman&quot;; mso-hansi-font-family: &quot;Times New Roman&quot;; mso-bidi-font-family: &quot;Times New Roman&quot;">
                            <strong>The main objective is to make the attendance system automatic and easy 
                            with the help of RFID based Attendance System. The RFID Attendance System will 
                            help to save a lot of time and paperwork. Another main objective of the proposed 
                            project is that the parents will be notified about their children attending 
                            lectures or not. It will help to maintain a good record of attendance without 
                            any errors. This is help to save the both teachers and students time and 
                            efforts. </strong> <o:p></o:p>
                            </span>
                        </p>
                        <p class="MsoNormal">
                            <span lang="EN-US" 
                                style="font-size: 12.0pt; line-height: 150%; mso-ascii-font-family: &quot;Times New Roman&quot;; mso-hansi-font-family: &quot;Times New Roman&quot;; mso-bidi-font-family: &quot;Times New Roman&quot;">
                            <strong>The application of the project is that attendance is marked 
                            automatically no need of paper. This product can be used in all school and 
                            colleges or even in offices. This will reduce the usage of paper and manpower 
                            required. The analyzing of data that takes lot of time. There will be no longer 
                            waiting time for taking attendance and wasting time. Student can just swap the 
                            card and attendance will be recorded. This project is very useful for the 
                            colleges as it will eliminate use of paper and save cost and make the process of 
                            storage and metrical easy.</strong><o:p></o:p></span></p>
                        <p class="MsoNormal">
                            <span lang="EN-US" 
                                style="font-size: 12.0pt; line-height: 150%; mso-ascii-font-family: &quot;Times New Roman&quot;; mso-hansi-font-family: &quot;Times New Roman&quot;; mso-bidi-font-family: &quot;Times New Roman&quot;">
                            <strong>The project can be implemented in small or big colleges. Our project 
                            will help to reduce the papers and for maintaining the attendance record and 
                            also the work required to analyzing the records of attendance. It will make the 
                            process of attendance and maintaining for particular school/colleges. The RFID 
                            cards are easy to carry in wallets or bags. They are very light weight. Student 
                            can just punch the cards and their attendance will be recorded. It will help 
                            both student and teachers and reduce time and paper wastage.</strong><o:p></o:p></span></p>
                        <p class="MsoNormal">
                            <o:p></o:p>
                        </p>
                        <p>
                            <o:p></o:p>
                        </p>
                        <p>
                            &nbsp;</p>
                    </td>
                </tr>
            </table>
        </asp:Content>


