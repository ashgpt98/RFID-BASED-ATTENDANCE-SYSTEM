using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Text;

namespace RFIDPRJ
{
    public partial class datewise : System.Web.UI.Page
    {

        StringBuilder table = new StringBuilder();
        SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-LURS3AC\SQLEXPRESS;Initial Catalog=Attendance;Integrated Security=True");
        string a;
        DateTime now = DateTime.Now;
        string b = DateTime.Now.ToString("hh:mm");
            
        
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

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("categories.aspx");
        }

        public void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            
             a =Convert.ToString( Calendar1.SelectedDate.ToShortDateString());
             TextBox1.Text=a;


        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            DateRecord();
            Absent();

        }
        public DataTable DateRecord()
        {
            //conn.Open();
            string today = TextBox1.Text;
            String str= "select * from MasterAttend where date='" + today + "'";
            //SqlCommand cmd = new SqlCommand(str, conn);
            SqlDataAdapter Adp = new SqlDataAdapter(str, conn);
            //SqlDataReader rd = cmd.ExecuteReader();
            DataTable Dt = new DataTable();
            Adp.Fill(Dt);
            GridView1.DataSource = Dt;
            GridView1.DataBind();
            return Dt;
            
        }
        public DataTable Absent()
        {
            //conn.Open();
            string today = TextBox1.Text;
           // String str = "select * from Adata where date='" + today + "'";
            String str1 = "select * from Student where name not in(select name from MasterAttend where date='" + today + "')";
            //SqlCommand cmd = new SqlCommand(str, conn);
            SqlDataAdapter Adp = new SqlDataAdapter(str1, conn);
            //SqlDataReader rd = cmd.ExecuteReader();
            DataTable Dt = new DataTable();
            Adp.Fill(Dt);
            GridView2.DataSource = Dt;
            GridView2.DataBind();
            return Dt;

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}