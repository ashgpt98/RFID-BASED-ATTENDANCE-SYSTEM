using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RFIDPRJ
{
    public partial class HOME : System.Web.UI.Page
    {
       // string a;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("HOME.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("aboutus.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("contact.aspx");
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            //a = Convert.ToString(Calendar1.SelectedDate.ToShortDateString());
            //TextBox1.Text = a;
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {

        }
    }
}