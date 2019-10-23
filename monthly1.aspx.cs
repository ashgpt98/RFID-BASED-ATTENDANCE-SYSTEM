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
    public partial class monthly1 : System.Web.UI.Page
    {
        string str1;
        StringBuilder table = new StringBuilder();
        SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-LURS3AC\SQLEXPRESS;Initial Catalog=Attendance;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            present();
        }
        public DataTable present()
        {
            //conn.Open();
            string today = DropDownList1.SelectedIndex.ToString();
            string m = DropDownList1.SelectedItem.ToString();
            //String str= "select * from Adata where month='" + today + "'";
            String str = "select date,lectime,lec,name,count(date) as Present from MasterAttend where month='" + m + "' group by name,lec,lectime,date";
            //SqlCommand cmd = new SqlCommand(str, conn);
            SqlDataAdapter Adp = new SqlDataAdapter(str, conn);
            //SqlDataReader rd = cmd.ExecuteReader();
            DataTable Dt = new DataTable();
            Adp.Fill(Dt);
            GridView1.DataSource = Dt;
            GridView1.DataBind();
            return Dt;
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Categories1.aspx");
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
    }
}