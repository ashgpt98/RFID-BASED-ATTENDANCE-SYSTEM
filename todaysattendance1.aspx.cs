using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;
using System.Data;
using System.IO;
using System.Net;
using System.Net.Mail;

namespace RFIDPRJ
{
    public partial class todaysattendance1 : System.Web.UI.Page
    {
        string today = DateTime.Now.ToShortDateString();
        //private DateTime today = TodaysDate 
        StringBuilder table = new StringBuilder();
        SqlConnection con1 = new SqlConnection(@"Data Source=DESKTOP-LURS3AC\SQLEXPRESS;Initial Catalog=Attendance;Integrated Security=True");
        SqlDataAdapter da;
        DataTable dtt = new DataTable();
        DataRow dr;

        protected void Page_Load(object sender, EventArgs e)
        {
            SmtpClient smtpserver = new SmtpClient();
            MailMessage mail = new MailMessage();
            smtpserver.Credentials = new System.Net.NetworkCredential("attendancesystemit@gmail.com", "attendance@1234");
            smtpserver.Port = 465;
            smtpserver.EnableSsl = true;
            smtpserver.Host = "smtp.gmail.com";
            mail = new MailMessage();
            mail.From = new MailAddress("attendancesystemit@gmail.com");
            mail.To.Add("yashgupta0311@gmail.com");
            mail.Subject = "Attendance Details";
            mail.Body = "Attendance" + "\n" + "Student is Present";
            smtpserver.Send(mail);

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
        public void email()
        {
            SmtpClient smtpserver = new SmtpClient();
            MailMessage mail = new MailMessage();
            smtpserver.Credentials = new System.Net.NetworkCredential("attendancesystemit@gmail.com", "attendance@1234");
            smtpserver.Port = 587;
            smtpserver.EnableSsl = true;
            smtpserver.Host = "smtp.gmail.com";
            mail = new MailMessage();
            mail.From = new MailAddress("attendancesystemit@gmail.com");
            mail.To.Add("yashgupta0311@gmail.com");
            mail.Subject = "Attendance Details";
            mail.Body = "Attendance" + "\n" + "Student is Present";
            smtpserver.Send(mail);
           
        }

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
        public void notify()
        {

            String result;
            da = new SqlDataAdapter("select * from Student where name not in(select name from MasterAttend where date='" + today + "')", con1);
            da.Fill(dtt);
            dr = dtt.Rows[0];
            string Na = Convert.ToString(dr[1]);
            string nu = Convert.ToString(dr[4]);
            string Number = "9004774410";
            string Message = "'" + Na + "' was Absent today";
            //String str1 = "select * from Student where name not in(select name from MasterAttend where date='" + today + "')";
            String url = "http://api.fast2sms.com/sms.php?token=3omJXF69TW8ld9TRLEShq3lUM0xfBbWJuFcr7xbESg8ANcno0HAZYzXt1MRm&mob=" + Number + "&mess=" + Message + "&sender=FSTSMS&route=0";
            //refer to parameters to complete correct url string

            StreamWriter myWriter = null;
            HttpWebRequest objRequest = (HttpWebRequest)WebRequest.Create(url);

            objRequest.Method = "POST";
            objRequest.ContentLength = Encoding.UTF8.GetByteCount(url);
            objRequest.ContentType = "application/x-www-form-urlencoded";
            try
            {

                myWriter = new StreamWriter(objRequest.GetRequestStream());
                myWriter.Write(url);

            }
            catch (Exception ex)
            {
                //TextBox2.Text = ex.Message;
                // MessageBox.Show(null,);
            }
            finally
            {
                myWriter.Close();
            }

            HttpWebResponse objResponse = (HttpWebResponse)objRequest.GetResponse();
            using (StreamReader sr = new StreamReader(objResponse.GetResponseStream()))
            {
                result = sr.ReadToEnd();
                // Close and clean up the StreamReader
                sr.Close();
            }
            //return   result;


        }
        protected void Button5_Click(object sender, EventArgs e)
        {
            DisplayPresent();
            email();
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            DisplayAbsent();
            notify();
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
            Response.Redirect("Categories1.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

       
    }
}