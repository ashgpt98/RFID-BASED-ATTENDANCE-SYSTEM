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
    public partial class defaulter : System.Web.UI.Page
    {
        double days = Enumerable.Range(1, DateTime.DaysInMonth(2019, 1))
                     .Select(day => new DateTime(2019, 1, day))
                     .Count(d => d.DayOfWeek != DayOfWeek.Saturday &&
                                  d.DayOfWeek != DayOfWeek.Sunday);//23
        StringBuilder table = new StringBuilder();
        int percentage;

       // DataTable Dt = new DataTable();
       
        
        SqlConnection con1 = new SqlConnection(@"Data Source=DESKTOP-LURS3AC\SQLEXPRESS;Initial Catalog=Attendance;Integrated Security=True");
        SqlDataAdapter da;
        DataTable dtt = new DataTable();
        DataRow dr;
        int Count;
        String Name;
        protected void Page_Load(object sender, EventArgs e)
        {
              
            con1.Open();

            //da = new SqlDataAdapter("select name,count(date) from Adata where month='1' group by name", con1);
            da = new SqlDataAdapter("select name,count(date) from MasterAttend group by name", con1);
            da.Fill(dtt);
            calculate1();
            calculate2();
            calculate3();
            //TextBox2.Text = Count.ToString();
        }
        //1st data
        public void calculate1()
        {

            try
            {
                         dr = dtt.Rows[0];
                         Name = Convert.ToString(dr[0]);
                         Count = Convert.ToInt32(dr[1]);
                         percentage = (int)(100 * (Count / days));
                         String ins = "update Defaulter set percentage='" + percentage + "' where name='"+Name+"'";
                         SqlCommand cmd = new SqlCommand(ins, con1);
                         cmd.ExecuteNonQuery();
                         if (percentage < 75)
                         {
                            
                            
                             //SqlDataAdapter Adp = new SqlDataAdapter(ins, con1);
                             
                             //String str1 = "select * from Student where name='" + Name + "'";
                             String str1 = "select Student.id, Student.name, Student.rollno, Student.class,Defaulter.percentage from Student,Defaulter where Student.id = Defaulter.id AND Student.name='" + Name + "'";
                             //SqlDataAdapter Adp1 = new SqlDataAdapter(str1, con1);
                             
                             SqlDataAdapter dataadapter = new SqlDataAdapter(str1, con1);
                             DataTable Dt = new DataTable();
                             DataSet ds = new DataSet();
                             Dt = ds.Tables["Student"];
                             dataadapter.Fill(ds, "Student");
                             //Adp1.Fill(Dt);
                             GridView1.DataSource = ds.Tables["Student"];
                             GridView1.DataBind();
                             //return Dt;   
                             //con1.Close();
                         }
                     

                 
                

            }
            catch (SqlException 
                )
            {
                con1.Close();
            }
            catch (Exception e2)
            {
                con1.Close();
            }
        }
       
        //2nd data
       public void calculate2()
        {

            try
            {



                
                    dr = dtt.Rows[1];
                    string Name2 = Convert.ToString(dr[0]);
                    int Count2 = Convert.ToInt32(dr[1]);
                    percentage = (int)(100 * (Count2 / days));
                    String inss = "update Defaulter set percentage='" + percentage + "' where name='" + Name2 + "'";
                    SqlCommand cmd = new SqlCommand(inss, con1);
                    cmd.ExecuteNonQuery();

                    if (percentage < 75)
                    {
                        String str2 ="select Student.id, Student.name, Student.rollno, Student.class,Defaulter.percentage from Student,Defaulter where Student.id = Defaulter.id AND Student.name='"+Name2+"'";
                        //SqlDataAdapter Adp1 = new SqlDataAdapter(str1, con1);
                        SqlDataAdapter dataadapter = new SqlDataAdapter(str2, con1);
                        DataTable Dt = new DataTable();
                        DataSet ds = new DataSet();
                        Dt = ds.Tables["Student"];
                        dataadapter.Fill(ds, "Student");
                        //Adp1.Fill(Dt);
                        GridView2.DataSource = ds.Tables["Student"];
                        GridView2.DataBind();
                        //return Dt;   
                        //con1.Close();
                    }


                


            }
            catch (SqlException e1)
            {
                con1.Close();
            }
            catch (Exception e2)
            {
                con1.Close();
            }
        }
        

        public void calculate3()
        {

            try
            {
                    dr = dtt.Rows[2];
                    string Name3 = Convert.ToString(dr[0]);
                    int Count3 = Convert.ToInt32(dr[1]);
                    percentage = (int)(100 * (Count3 / days));
                    String insss = "update Defaulter set percentage='" + percentage + "' where name='" + Name3 + "'";
                    SqlCommand cmd = new SqlCommand(insss, con1);
                    cmd.ExecuteNonQuery();

                    if (percentage < 75)
                    {
                        String str3 = "select Student.id, Student.name, Student.rollno, Student.class,Defaulter.percentage from Student,Defaulter where Student.id = Defaulter.id AND Student.name='"+Name3+"'";
                        //SqlDataAdapter Adp1 = new SqlDataAdapter(str1, con1);
                        SqlDataAdapter dataadapter = new SqlDataAdapter(str3, con1);
                        DataTable Dt = new DataTable();
                        DataSet ds = new DataSet();
                        Dt = ds.Tables["Student"];
                        dataadapter.Fill(ds, "Student");
                        //Adp1.Fill(Dt);
                        GridView3.DataSource = ds.Tables["Student"];
                        GridView3.DataBind();
                        //return Dt;   
                        con1.Close();
                    }


                


            }
            catch (SqlException e1)
            {
                con1.Close();
            }
            catch (Exception e2)
            {
                con1.Close();
            }
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

        public DataTable True { get; set; }

        public SqlConnection conn { get; set; }

        public DateTime count { get; set; }

        protected void Button6_Click(object sender, EventArgs e)
        {
            calculate1();
            calculate2();
            calculate3();                      
        }
    }
}