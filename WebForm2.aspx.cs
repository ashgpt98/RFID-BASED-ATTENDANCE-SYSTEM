using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Collections.Specialized;
using System.IO;
using System.ComponentModel;
using System.Text;

namespace RFIDPRJ
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
         String result;
        string Number = TextBox1.Text;
        string Message = TextBox2.Text;

        String url = "http://api.fast2sms.com/sms.php?token=3omJXF69TW8ld9TRLEShq3lUM0xfBbWJuFcr7xbESg8ANcno0HAZYzXt1MRm&mob=" + TextBox1.Text + "&mess=" + TextBox2.Text + "&sender=FSTSMS&route=0";
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
			// ex.Message;
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

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
        
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
        
        }

        
        }
    }
