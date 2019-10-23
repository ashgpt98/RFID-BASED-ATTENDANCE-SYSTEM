using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RFIDPRJ
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime now = DateTime.Now;
            int days = DateTime.DaysInMonth(2019, 1);
            //DateTime utc=DateTime.UtcNow;
            TextBox1.Text = days.ToString() ;
           // TextBox2.Text = Convert.ToString(now.);
           // TextBox1.Text=Convert.ToString(string.Format("{0:HH:mm}",utc));
        }
        public static void main()
        { 
           
           // Label1= now.ToString("F");
            
        }

        public int month { get; set; }

        public int year { get; set; }
    }
}