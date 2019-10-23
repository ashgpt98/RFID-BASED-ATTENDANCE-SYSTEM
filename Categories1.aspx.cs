using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RFIDPRJ
{
    public partial class Categories1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
         protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("HOME1.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Aboutus1.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Contactus1.aspx");
        }
        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("defaulter1.aspx");
        }
        

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("todaysattendance1.aspx");
        }

       

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("datewise1.aspx");
        }

        protected void Button8_Click(object sender, EventArgs e)
        {

            Response.Redirect("monthly1.aspx");
        }

        
    }
}