using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading.Tasks;
using System.IO.Ports;

namespace RFIDPRJ
{
  


        public partial class datatransmit : System.Web.UI.Page
        {
            protected void Page_Load(object sender, EventArgs e)
            {
                SerialPort myport = new SerialPort();
                myport.BaudRate = 9600;
                myport.PortName = "COM3(Arduino/Genuino Uno)";
                myport.Open();

                while (true)
                {
                    string data_rx = myport.ReadLine();
                    Label1.Text = data_rx;
                }
            }
        }
}
