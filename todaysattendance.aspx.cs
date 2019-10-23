using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;
using System.Data;

namespace RFIDPRJ
{
    public partial class todaysattendance : System.Web.UI.Page
    {
        string today = DateTime.Now.ToShortDateString();
        //private DateTime today = TodaysDate 
        StringBuilder table = new StringBuilder();
        SqlConnection con1 = new SqlConnection(@"Data Source=DESKTOP-LURS3AC\SQLEXPRESS;Initial Catalog=Attendance;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        public DataTable DisplayPresent()
        {
            String str1 = "select * from MasterAttend where date='" + today + "'";
            SqlDataAdapter Adp = new SqlDataAdapter(str1, con1);
            DataTable Dt = new DataTable();
            Adp.Fill(Dt);
            GridView1.DataSource = Dt;
            GridView1.DataBind();
            return Dt;
        }

      /*  public DataTable DisplayRecord2()
        {
            String str2 = "select * from Sachin where date='" + today + "'";
            SqlDataAdapter Adp = new SqlDataAdapter(str2, con1);
            DataTable Dt = new DataTable();
            Adp.Fill(Dt);
            GridView2.DataSource = Dt;
            GridView2.DataBind();
            return Dt;
        }

        public DataTable DisplayRecord3()
        {
            String str3 = "select * from Sanjana where date='" + today + "'";
            SqlDataAdapter Adp = new SqlDataAdapter(str3, con1);
            DataTable Dt = new DataTable();
            Adp.Fill(Dt);
            GridView3.DataSource = Dt;
            GridView3.DataBind();
            return Dt;
        }
        */
        public DataTable DisplayAbsent()
        {
            String str1 = "select * from Student where name not in(select name from MasterAttend where date='" + today + "')";
            //String str1 = "select Student.id, Student.name, Student.rollno, Student.class,Lecture.lec from Student,Lecture where Student.id = Lecture.id";

            SqlDataAdapter Adp = new SqlDataAdapter(str1, con1);
            DataTable Dt = new DataTable();
            Adp.Fill(Dt);
            GridView1.DataSource = Dt;
            GridView1.DataBind();
            return Dt;
        }
        /*
        public DataTable DisplayAbsent2()
        {
            String str2 = "select * from Sachin where date not in(select name from Adata where date='" + today + "')";
            SqlDataAdapter Adp = new SqlDataAdapter(str2, con1);
            DataTable Dt = new DataTable();
            Adp.Fill(Dt);
            GridView2.DataSource = Dt;
            GridView2.DataBind();
            return Dt;
        }

        public DataTable DisplayAbsent3()
        {
            String str3 = "select * from Sanjana where date not in(select name from Adata where date='" + today + "')";
            SqlDataAdapter Adp = new SqlDataAdapter(str3, con1);
            DataTable Dt = new DataTable();
            Adp.Fill(Dt);
            GridView3.DataSource = Dt;
            GridView3.DataBind();
            return Dt;
        }
        */
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

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("categories.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
           
                DisplayPresent();
               
                
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            DisplayAbsent();
            
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}