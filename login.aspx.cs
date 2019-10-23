using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RFIDPRJ
{
    public partial class login1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("login1.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Aboutus1.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Contactus1.aspx");
        }

       

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("HOME1.aspx");
        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Aboutus1.aspx");
        }

        protected void Button4_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Contactus1.aspx");
        }
    }
}