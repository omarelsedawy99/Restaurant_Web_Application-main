using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using SW2_Online_Restaurant_System.BusinessLayer;

namespace SW2_Online_Restaurant_System.Forntend_Layer
{
    public partial class All_User : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Admin obj = new Admin();
            GridView1.DataSource = obj.All_Team();
            GridView1.DataBind();
        }
    }
}