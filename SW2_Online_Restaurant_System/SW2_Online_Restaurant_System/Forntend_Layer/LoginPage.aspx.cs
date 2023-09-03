using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SW2_Online_Restaurant_System.BusinessLayer;
namespace SW2_Online_Restaurant_System.Forntend_Layer
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["USERNAME"] = null;
            Session["PASSWORD"] = null;
            Session["UserType"] = null;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            USER UserObj = new USER();
            String use = TXT_Usernane.Text;
            String pass = TXT_Password.Text;
            String UserReturnType = UserObj.Login(use, pass);
            if (UserReturnType == "Admin")
            {
                Session["USERNAME"] = use;
                Session["PASSWORD"] = pass;
                Session["UserType"] = UserReturnType;
                Response.Redirect("~/Forntend_Layer/Home.aspx");
            }
            else if (UserReturnType == "Emp")
            {
                Session["USERNAME"] = use;
                Session["PASSWORD"] = pass;
                Session["UserType"] = UserReturnType;
                Response.Redirect("~/Forntend_Layer/Home.aspx");
            }
            else if (UserReturnType == "Customer")
            {
                Session["USERNAME"] = use;
                Session["PASSWORD"] = pass;
                Session["UserType"] = UserReturnType;
                Response.Redirect("~/Forntend_Layer/Home.aspx");
            }
            else
            {
                TXT_Usernane.Text = "";
                TXT_Password.Text = "";
                Response.Write("<script>alert('Invaild Username or Password')</script>");
            }

        }
    }
}