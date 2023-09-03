using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SW2_Online_Restaurant_System
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {


                if (Session["UserType"] == null)
                {
                    admin.Visible = false;
                    emp.Visible = false;
                    edit_profile.Visible = false;
                    Logout.Visible = false;
                    my_orders.Visible = false;
                }
            
                else if (Session["UserType"].ToString() == "Customer")
                {
                    admin.Visible = false;
                    emp.Visible = false;
                    Login.Visible = false;
                    my_orders.Visible = true;
                }
                else if (Session["UserType"].ToString() == "Emp")
                {
                    admin.Visible = false;
                    Login.Visible = false;
                    my_orders.Visible = false;
                }
                else
                {
                    Login.Visible = false;
                    emp.Visible = false;
                    my_orders.Visible = false;
                }
            }
        
    }
}