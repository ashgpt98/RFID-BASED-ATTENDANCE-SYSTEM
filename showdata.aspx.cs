using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;

namespace RFIDPRJ
{
    public partial class showdata : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            StringBuilder table = new StringBuilder();
              SqlConnection con1=new SqlConnection(@"Data Source=DESKTOP-LURS3AC\SQLEXPRESS;Initial Catalog=insertdata;Integrated Security=True");
                con1.Open();
                String str1="SELECT * FROM RFID";
                SqlCommand cmd=new SqlCommand(str1,con1);
                SqlDataReader rd = cmd.ExecuteReader();
                Response.AppendHeader("refresh","2");
                table.Append("<table border='1'>");
                table.Append("<th>id</th><th>date</th>");
                if (rd.Read())
                {
                    while (rd.Read())
                    {
                        table.Append("<tr>");
                        table.Append("<td>"+ rd[0]+"<td>");
                        table.Append("<td>" + rd[1] + "<td>");
                        table.Append("<tr>");

                    }
                }
                table.Append("</table>");
                rd.Close();
                rd.Dispose();
                con1.Close();
        }
    }
}