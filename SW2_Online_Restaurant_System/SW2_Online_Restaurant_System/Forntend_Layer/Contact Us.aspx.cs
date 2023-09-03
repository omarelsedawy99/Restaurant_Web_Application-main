using SW2_Online_Restaurant_System.BusinessLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SW2_Online_Restaurant_System.Forntend_Layer
{
    public partial class Contact_Us : System.Web.UI.Page
    {
        private Messages message;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Btn_Send_Click(object sender, EventArgs e)
        {
            Messages x = new Messages();
            x.SENDER_NAME = TXT_Name.Text;
            x.SENDER_MAIL = Txt_Email.Text;
            x.MESSAGE_DATA = TXT_Message.Text;

            message = new Messages();
            message.Send_Message(x);
           
            TXT_Name.Text = "";
            TXT_Message.Text = "";
            Txt_Email.Text = "";
           
        }

 
    }
}