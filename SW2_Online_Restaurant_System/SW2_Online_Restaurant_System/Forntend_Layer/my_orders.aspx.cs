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
    public partial class my_orders : System.Web.UI.Page
    {
        int counter;
        private Orders or;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                if (Session["USERNAME"] == null)
                {
                    Response.Redirect("RegisterationWMP.aspx");
                }
                else
                {
                    counter = 0;
                    ViewState["counter"] = counter;
                    DataTable dt = new DataTable();
                    string username = Session["USERNAME"].ToString();
                    Customer x = new Customer();
                    dt = x.FillGridMy_Oreders(x.Id_By_Username(username));
                    DataList1.DataSource = dt;
                    DataList1.DataBind();

                }

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
            counter = (int)ViewState["counter"];
            counter++;
            ViewState["counter"] = counter;
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
