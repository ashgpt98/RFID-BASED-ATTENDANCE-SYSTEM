using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO.Ports;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Net;
using System.Text;


namespace RFIDPRJ
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SerialPort sps = new SerialPort();
        private SerialPort myport;
        private string input;
        private string na;
        private string id;
        private string rollno;
        public string month = DateTime.Now.ToString("m");
        string today = DateTime.Now.ToShortDateString();
        DateTime now = DateTime.Now;
        string b = DateTime.Now.ToString("hh:mm");
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-LURS3AC\SQLEXPRESS;Initial Catalog=Attendance;Integrated Security=True");
        SqlDataAdapter da;
        DataTable dtt = new DataTable();
        DataRow dr;
        

        protected void Page_Load(object sender, EventArgs e)
        {
            Response.AppendHeader("Refresh", "3");
            
            myport = new SerialPort();
            myport.BaudRate = 9600;
            myport.PortName = "COM3";
            myport.Parity = Parity.None;
            myport.DataBits = 8;
            myport.StopBits = StopBits.One;
            myport.DataReceived += myport_DataReceived;
            
            
           // Response.Redirect("Insertbycom.aspx");
           // setTimeout("window.location.reload()",3000);

            try
            {
                myport.Open();
                TextBox1.Text = "Connect";
            }
            catch (Exception ex)
            {
                TextBox1.Text = ex.Message + "error";
            }
            
             String result;
             da = new SqlDataAdapter("select * from Student where name not in(select name from MasterAttend where date='" + today + "')", con);
            da.Fill(dtt);
            dr = dtt.Rows[0];
        string Na = Convert.ToString(dr[1]);
        string nu=Convert.ToString(dr[4]);
        string Number = "9004774410";
        string Message ="your child was Absent today";
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
			 TextBox2.Text=ex.Message;
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

        private void setTimeout(string p, int p_2)
        {
            throw new NotImplementedException();
        }

        void myport_DataReceived(object sender, SerialDataReceivedEventArgs e)
        {
            try
            {
                //id = myport.ReadLine();
                input = myport.ReadLine();
                string v = input.ToString();
                //if(v[0]==35)
                //{
                while (input!=null)
                {
                    string[] data = v.Split('.');
                    id = data[0];
                    na = data[1];
                    rollno = data[2];
                    input = "";

                    string[] date = month.Split(' ','\t');
                    string dat = date[0];
                    string mon = date[1];
                    //TextBox2.Text = mon;
                    con.Open();
                    if (na == "Yash")
                    {
                        TimeSpan start = TimeSpan.Parse("07:30"); // 10 PM
                        TimeSpan warning = TimeSpan.Parse("07:45"); // max time
                        TimeSpan end = TimeSpan.Parse("09:10");   // 2 AM
                        //lec 2
                        TimeSpan start2 = TimeSpan.Parse("09:30"); // 10 PM
                        TimeSpan warning2 = TimeSpan.Parse("09:45"); // max time
                        TimeSpan end2 = TimeSpan.Parse("11:10");
                        //lec 3
                        TimeSpan start3 = TimeSpan.Parse("11:11"); // 10 PM
                        TimeSpan warning3 = TimeSpan.Parse("11:25"); // max time
                        TimeSpan end3 = TimeSpan.Parse("12:50");
                        TimeSpan now = DateTime.Now.TimeOfDay;

                        if (start <= end)
                        {
                            string lec = "SQA";
                            string time = "07:30-09:10";
                            // start and stop times are in the same day
                     

                            if (now >= start && now<=warning)// current time is between start and late warning 
                            {
                                
                                //String str = "INSERT INTO Adata(id,name,rollno,date,time,month) VALUES('" + id + "','" + na + "','" + rollno + "','" + today + "','" + b + "','" + month + "')";
                                String str = "INSERT INTO MasterAttend(id,lectime,lec,name,time,date,month) VALUES('" + id + "','" + time + "','" + lec + "','"+na+"','" + b + "','" + today + "','" + mon + "')";
                                SqlCommand cmd = new SqlCommand(str, con);
                                cmd.ExecuteNonQuery();
                            }
                            if (now > warning && now <= end)// currentime is between warning and end
                            {
                                String str = "INSERT INTO Late(id,name,lectime,lec,time,date,month) VALUES('" + id + "','"+na+"','" + time + "','" + lec + "','" + b + "','" + today + "','" + mon + "')";
                                SqlCommand cmd = new SqlCommand(str, con);
                                cmd.ExecuteNonQuery();
                            }

                        }
                        if (start2 <= end2)
                        {
                            string lec = "EN";
                            string time = "09:30-11:10";
                            // start and stop times are in the same day
                            if (now >= start2 && now <= warning2)// current time is between start and late warning 
                            {

                                //String str = "INSERT INTO Adata(id,name,rollno,date,time,month) VALUES('" + id + "','" + na + "','" + rollno + "','" + today + "','" + b + "','" + month + "')";
                                String str = "INSERT INTO MasterAttend(id,lectime,lec,name,time,date,month) VALUES('" + id + "','" + time + "','" + lec + "','" + na + "','" + b + "','" + today + "','" + mon + "')";
                                SqlCommand cmd = new SqlCommand(str, con);
                                cmd.ExecuteNonQuery();
                            }
                            if (now > warning2 && now <= end2)// currentime is between warning and end
                            {
                                String str = "INSERT INTO Late(id,name,lectime,lec,time,date,month) VALUES('" + id + "','" + na + "','" + time + "','" + lec + "','" + b + "','" + today + "','" + mon + "')";
                                SqlCommand cmd = new SqlCommand(str, con);
                                cmd.ExecuteNonQuery();
                            }

                        }
                        if (start3 <= end3)
                        {
                            string lec = "BI";
                            string time = "11:10-12:50";
                            // start and stop times are in the same day
                            if (now >= start3 && now <= warning3)// current time is between start and late warning 
                            {

                                //String str = "INSERT INTO Adata(id,name,rollno,date,time,month) VALUES('" + id + "','" + na + "','" + rollno + "','" + today + "','" + b + "','" + month + "')";
                                String str = "INSERT INTO MasterAttend(id,lectime,lec,name,time,date,month) VALUES('" + id + "','" + time + "','" + lec + "','" + na + "','" + b + "','" + today + "','" + mon + "')";
                                SqlCommand cmd = new SqlCommand(str, con);
                                cmd.ExecuteNonQuery();
                            }
                            if (now > warning3 && now <= end3)// currentime is between warning and end
                            {
                                String str = "INSERT INTO Late(id,name,lectime,lec,time,date,month) VALUES('" + id + "','" + na + "','" + time + "','" + lec + "','" + b + "','" + today + "','" + mon + "')";
                                SqlCommand cmd = new SqlCommand(str, con);
                                cmd.ExecuteNonQuery();
                            }

                        }
                       /* else
                        {
                            // start and stop times are in different days
                            if (now >= start || now <= end)
                            {
                                // current time is between start and stop
                            }
                        }*/

                        /*string lec = "SQA";
                        string time = "07:30-9:10";
                        //String str = "INSERT INTO Adata(id,name,rollno,date,time,month) VALUES('" + id + "','" + na + "','" + rollno + "','" + today + "','" + b + "','" + month + "')";
                        String str = "INSERT INTO Yash(id,lectime,lec,time,date,month) VALUES('" + id + "','" + time + "','" + lec + "','" + today + "','" + b + "','" + month + "')";
                        SqlCommand cmd = new SqlCommand(str, con);
                        cmd.ExecuteNonQuery();*/
                    }
                    else if(na=="Sachin")
                    {
                        TimeSpan start = TimeSpan.Parse("07:30"); // 10 PM
                        TimeSpan warning = TimeSpan.Parse("07:45"); // max time
                        TimeSpan end = TimeSpan.Parse("9:10");   // 2 AM
                        //lec 2
                        TimeSpan start2 = TimeSpan.Parse("09:30"); // 10 PM
                        TimeSpan warning2 = TimeSpan.Parse("09:45"); // max time
                        TimeSpan end2 = TimeSpan.Parse("11:10");
                        //lec 3
                        TimeSpan start3 = TimeSpan.Parse("11:11"); // 10 PM
                        TimeSpan warning3 = TimeSpan.Parse("11:25"); // max time
                        TimeSpan end3 = TimeSpan.Parse("12:50");
                      
                        TimeSpan now = DateTime.Now.TimeOfDay;

                        if (start <= end)
                        {
                            string lec = "SQA";
                            string time = "07:30-09:10";
                            // start and stop times are in the same day
                            if (now >= start && now <= warning)// current time is between start and late warning 
                            {

                                //String str = "INSERT INTO Adata(id,name,rollno,date,time,month) VALUES('" + id + "','" + na + "','" + rollno + "','" + today + "','" + b + "','" + month + "')";
                                String str = "INSERT INTO MasterAttend(id,lectime,lec,name,time,date,month) VALUES('" + id + "','" + time + "','" + lec + "','" + na + "','" + b + "','" + today + "','" + mon + "')";
                                SqlCommand cmd = new SqlCommand(str, con);
                                cmd.ExecuteNonQuery();
                            }
                            if (now > warning && now <= end)// currentime is between warning and end
                            {
                                String str = "INSERT INTO Late(id,name,lectime,lec,time,date,month) VALUES('" + id + "','" + na + "','" + time + "','" + lec + "','" + b + "','" + today + "','" + mon + "')";
                                SqlCommand cmd = new SqlCommand(str, con);
                                cmd.ExecuteNonQuery();
                            }
                        }
                         if (start2 <= end2)
                        {
                            string lec = "EN";
                            string time = "09:30-11:10";
                            // start and stop times are in the same day
                            if (now >= start2 && now <= warning2)// current time is between start and late warning 
                            {

                                //String str = "INSERT INTO Adata(id,name,rollno,date,time,month) VALUES('" + id + "','" + na + "','" + rollno + "','" + today + "','" + b + "','" + month + "')";
                                String str = "INSERT INTO MasterAttend(id,lectime,lec,name,time,date,month) VALUES('" + id + "','" + time + "','" + lec + "','" + na + "','" + b + "','" + today + "','" + mon + "')";
                                SqlCommand cmd = new SqlCommand(str, con);
                                cmd.ExecuteNonQuery();
                            }
                            if (now > warning2 && now <= end2)// currentime is between warning and end
                            {
                                String str = "INSERT INTO Late(id,name,lectime,lec,time,date,month) VALUES('" + id + "','" + na + "','" + time + "','" + lec + "','" + b + "','" + today + "','" + mon + "')";
                                SqlCommand cmd = new SqlCommand(str, con);
                                cmd.ExecuteNonQuery();
                            }

                        }
                        if (start3 <= end3)
                        {
                            string lec = "BI";
                            string time = "11:10-12:50";
                            // start and stop times are in the same day
                            if (now >= start3 && now <= warning3)// current time is between start and late warning 
                            {

                                //String str = "INSERT INTO Adata(id,name,rollno,date,time,month) VALUES('" + id + "','" + na + "','" + rollno + "','" + today + "','" + b + "','" + month + "')";
                                String str = "INSERT INTO MasterAttend(id,lectime,lec,name,time,date,month) VALUES('" + id + "','" + time + "','" + lec + "','" + na + "','" + b + "','" + today + "','" + mon + "')";
                                SqlCommand cmd = new SqlCommand(str, con);
                                cmd.ExecuteNonQuery();
                            }
                            if (now > warning3 && now <= end3)// currentime is between warning and end
                            {
                                String str = "INSERT INTO Late(id,name,lectime,lec,time,date,month) VALUES('" + id + "','" + na + "','" + time + "','" + lec + "','" + b + "','" + today + "','" + mon + "')";
                                SqlCommand cmd = new SqlCommand(str, con);
                                cmd.ExecuteNonQuery();
                            }

                        }
                       
                    }
                    else if (na == "Sanjana")
                    {
                        TimeSpan start = TimeSpan.Parse("07:30"); // 10 PM
                        TimeSpan warning = TimeSpan.Parse("07:45"); // max time
                        TimeSpan end = TimeSpan.Parse("12:50");   // 2 AM

                        //lec 2
                        TimeSpan start2 = TimeSpan.Parse("09:30"); // 10 PM
                        TimeSpan warning2 = TimeSpan.Parse("09:45"); // max time
                        TimeSpan end2 = TimeSpan.Parse("11:10");
                        //lec 3
                        TimeSpan start3 = TimeSpan.Parse("11:11"); // 10 PM
                        TimeSpan warning3 = TimeSpan.Parse("11:25"); // max time
                        TimeSpan end3 = TimeSpan.Parse("12:50");
                      

                        TimeSpan now = DateTime.Now.TimeOfDay;

                        if (start <= end)
                        {
                            string lec = "SQA";
                            string time = "07:30-09:10";
                            // start and stop times are in the same day
                            if (now >= start && now <= warning)// current time is between start and late warning 
                            {

                                //String str = "INSERT INTO Adata(id,name,rollno,date,time,month) VALUES('" + id + "','" + na + "','" + rollno + "','" + today + "','" + b + "','" + month + "')";
                                String str = "INSERT INTO MasterAttend(id,lectime,lec,name,time,date,month) VALUES('" + id + "','" + time + "','" + lec + "','" + na + "','" + b + "','" + today + "','" + mon + "')";
                                SqlCommand cmd = new SqlCommand(str, con);
                                cmd.ExecuteNonQuery();
                            }
                            if (now > warning && now <= end)// currentime is between warning and end
                            {
                                String str = "INSERT INTO Late(id,name,lectime,lec,time,date,month) VALUES('" + id + "','" + na + "','" + time + "','" + lec + "','" + b + "','" + today + "','" + mon + "')";
                                SqlCommand cmd = new SqlCommand(str, con);
                                cmd.ExecuteNonQuery();
                            }
                        }
                        if (start2 <= end2)
                        {
                            string lec = "EN";
                            string time = "09:30-11:10";
                            // start and stop times are in the same day
                            if (now >= start2 && now <= warning2)// current time is between start and late warning 
                            {

                                //String str = "INSERT INTO Adata(id,name,rollno,date,time,month) VALUES('" + id + "','" + na + "','" + rollno + "','" + today + "','" + b + "','" + month + "')";
                                String str = "INSERT INTO MasterAttend(id,lectime,lec,name,time,date,month) VALUES('" + id + "','" + time + "','" + lec + "','" + na + "','" + b + "','" + today + "','" + mon + "')";
                                SqlCommand cmd = new SqlCommand(str, con);
                                cmd.ExecuteNonQuery();
                            }
                            if (now > warning2 && now <= end2)// currentime is between warning and end
                            {
                                String str = "INSERT INTO Late(id,name,lectime,lec,time,date,month) VALUES('" + id + "','" + na + "','" + time + "','" + lec + "','" + b + "','" + today + "','" + mon + "')";
                                SqlCommand cmd = new SqlCommand(str, con);
                                cmd.ExecuteNonQuery();
                            }

                        }
                        if (start3 <= end3)
                        {
                            string lec = "BI";
                            string time = "11:10-12:50";
                            // start and stop times are in the same day
                            if (now >= start3 && now <= warning3)// current time is between start and late warning 
                            {

                                //String str = "INSERT INTO Adata(id,name,rollno,date,time,month) VALUES('" + id + "','" + na + "','" + rollno + "','" + today + "','" + b + "','" + month + "')";
                                String str = "INSERT INTO MasterAttend(id,lectime,lec,name,time,date,month) VALUES('" + id + "','" + time + "','" + lec + "','" + na + "','" + b + "','" + today + "','" + mon + "')";
                                SqlCommand cmd = new SqlCommand(str, con);
                                cmd.ExecuteNonQuery();
                            }
                            if (now > warning3 && now <= end3)// currentime is between warning and end
                            {
                                String str = "INSERT INTO Late(id,name,lectime,lec,time,date,month) VALUES('" + id + "','" + na + "','" + time + "','" + lec + "','" + b + "','" + today + "','" + mon + "')";
                                SqlCommand cmd = new SqlCommand(str, con);
                                cmd.ExecuteNonQuery();
                            }

                        }

                    }
                    /* int OBJ = Convert.ToInt32(cmd.ExecuteNonQuery());
                     if(OBJ>0)
                     {//success
                     }
                     else
                     {
                         //error
                     }*/
                }
                    con.Close();
               
            }
            catch (Exception ex)
            {
                
            }
            //}

            
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    
public  string SQA { get; set; }}
}