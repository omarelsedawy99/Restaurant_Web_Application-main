using SW2_Online_Restaurant_System.BusinessLayer;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SW2_Online_Restaurant_System.Forntend_Layer
{
    public partial class All_orders : System.Web.UI.Page
    {
        private Orders or;
        int counter;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                counter = 0;
                ViewState["c"] = counter;
                DataTable dt = new DataTable();
                or = new Orders();
                dt = or.FillGridWithOreders();
                DataList1.DataSource = dt;
                DataList1.DataBind();
            }
           
        }
        protected void btn_img_Click(object sender, DataListCommandEventArgs e)
        {
            string y = (e.CommandArgument.ToString());
            DataRowView drv = e.Item.DataItem as DataRowView;

            GridView innerDataList = e.Item.FindControl("GridView2") as GridView;
            DataTable dt = new DataTable();
            or = new Orders();
            dt = or.FillGridWithordrmeals(y);
            innerDataList.DataSource = dt;
            innerDataList.DataBind();
            counter = (int)ViewState["c"];
            counter++;
            ViewState["c"] = counter;
            if (counter % 2 == 0)
            {
               
                innerDataList.Visible = false;
            }
            else
            {
                innerDataList.Visible = true;
            }
          
        }
    }
}