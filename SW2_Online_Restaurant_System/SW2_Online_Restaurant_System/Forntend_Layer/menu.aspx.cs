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
    
    public partial class menu : System.Web.UI.Page
    {
        private Meals meal;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Page.IsPostBack == false)
            {
                DataTable dt = new DataTable();
                Meals mealb = new Meals();
                dt = mealb.FillGridWithMeals();
                DataList1.DataSource = dt;
                DataList1.DataBind();
                ViewState["savamels"] = Createdt();
                lbl_count.Text = "0";
                lbl_count2.Text = "0";
               
               
            }
        }
        public DataTable Createdt()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add(new DataColumn("MEAL_ID", typeof(string)));
            dt.Columns.Add(new DataColumn("MEAL_IMAGE", typeof(string)));
            dt.Columns.Add(new DataColumn("MEAL_NAME", typeof(string)));
            dt.Columns.Add(new DataColumn("Meal_Qut", typeof(int)));
            dt.Columns.Add(new DataColumn("Total_Price", typeof(float)));
            dt.Columns.Add(new DataColumn("Meal_Price", typeof(float)));
            dt.Columns["MEAL_ID"].Unique = true;
            return dt;

        }
            
        protected void btn_Search_Click(object sender, EventArgs e)
        {
              meal=new Meals();
             DataTable dtt=new DataTable();
             string s=TXT_Search_Meal.Text;
             dtt=meal.search_meals(s);
             int l=dtt.Rows.Count;
            DataList1.DataSource = dtt;
            DataList1.DataBind();
            

        }

        protected void Button1_Click(object sender, DataListCommandEventArgs e)
        {
            string order = (e.CommandArgument.ToString());
            (e.Item.FindControl("Button1") as Button).Enabled = false;
            (e.Item.FindControl("Button1") as Button).Text = "Added";

            string[] x = new string[6];
            x = order.Split(',');
            DataTable dt = (DataTable)ViewState["savamels"];
            DataRow dr = null;
            dr = dt.NewRow();
            dr["MEAL_ID"] = x[0];
            dr["MEAL_IMAGE"] = x[1];
            dr["MEAL_NAME"] = x[2];
            dr["Meal_Qut"] = 1;
            dr["Total_Price"] = float.Parse(x[4]);
            dr["Meal_Price"] = float.Parse(x[4]);
            dt.Rows.Add(dr);
            ViewState["savamels"] = dt;
            int m = dt.Rows.Count;
            lbl_count.Text = m.ToString();
            lbl_count2.Text = m.ToString();
            Session["Order_Table"] = dt;

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Shopping Cart.aspx");

        }

   
    }
}

