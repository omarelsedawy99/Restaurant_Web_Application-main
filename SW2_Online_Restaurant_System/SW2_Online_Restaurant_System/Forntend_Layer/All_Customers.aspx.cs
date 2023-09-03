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
    public partial class All_Customers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Team obj = new Team();
            GridView1.DataSource = obj.All_Customers();
            GridView1.DataBind();
        }
    }
}