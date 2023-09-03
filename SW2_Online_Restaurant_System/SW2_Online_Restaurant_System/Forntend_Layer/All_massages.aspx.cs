using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SW2_Online_Restaurant_System.BusinessLayer;
using System.Net;
using System.Net.Mail;
using SW2_Online_Restaurant_System.BusinessLayer;

namespace SW2_Online_Restaurant_System.Forntend_Layer
{
    public partial class All_massages : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Messages obj = new Messages();
            DataList1.DataSource = obj.All_Messages();
            DataList1.DataBind();


        }

        protected void buttonclick(object sender, EventArgs e)
        {

            try
            {
                SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
                client.EnableSsl = true;
                client.DeliveryMethod = SmtpDeliveryMethod.Network;
                client.UseDefaultCredentials = false;
                client.Credentials = new NetworkCredential("pmido56789.gmail.com", "asgsgs");
                MailMessage MsObj = new MailMessage();
                MsObj.To.Add("Replay for your message");
                MsObj.From = new MailAddress(DataList1.SelectedItem.Controls[2].ToString());
                MsObj.Subject = "Replay for a message";
                MsObj.Body = DataList1.SelectedItem.FindControl("TextBox").ToString();
                client.Send(MsObj);
                ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('the message send successfully')", true);
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Could not send the message !!!')</script>");
            }


        }
    }
}