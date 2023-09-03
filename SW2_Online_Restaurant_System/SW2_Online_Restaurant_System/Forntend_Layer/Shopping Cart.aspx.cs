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
    public partial class Shopping_Cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Order_Table"] == null)
            {
                Response.Redirect("menu.aspx");

            }
            else
            {
                if (!IsPostBack)
                {
                    DataTable dt = (DataTable)Session["Order_Table"];
                    FillGrid(dt);
                    if (Session["UserType"].ToString().Equals("Emp") || Session["UserType"].ToString().Equals("Admin"))
                    Submit_button.Enabled = false;
                }
            }
        }
        protected void FillGrid(DataTable dt)
        {
            DataTable NewDT = new DataTable();

            DataColumn Ncol0 = new DataColumn();
            Ncol0.DataType = typeof(String);
            Ncol0.ColumnName = "Meal_Image";
            NewDT.Columns.Add(Ncol0);


            DataColumn Ncol1 = new DataColumn();
            Ncol1.DataType = typeof(String);
            Ncol1.ColumnName = "Meal_Name";
            NewDT.Columns.Add(Ncol1);

            DataColumn Ncol2 = new DataColumn();
            Ncol2.DataType = typeof(int);
            Ncol2.ColumnName = "Meal_Qut";
            NewDT.Columns.Add(Ncol2);


            DataColumn Ncol3 = new DataColumn();
            Ncol3.DataType = typeof(float);
            Ncol3.ColumnName = "Meal_Price";
            NewDT.Columns.Add(Ncol3);

            DataColumn Ncol4 = new DataColumn();
            Ncol4.DataType = typeof(float);
            Ncol4.ColumnName = "Total_Price";
            NewDT.Columns.Add(Ncol4);

            DataColumn Ncol5 = new DataColumn();
            Ncol5.DataType = typeof(String);
            Ncol5.ColumnName = "Meal_Id";
            NewDT.Columns.Add(Ncol5);

            float total_Price = 0;
            int numofrows = dt.Rows.Count;
            for (int i = 0; i < numofrows; i++)
            {
                DataRow nrow = dt.Rows[i];
                String mealimage = dt.Rows[i]["Meal_Image"].ToString();
                String mealname = dt.Rows[i]["Meal_Name"].ToString();
                int mealqut = int.Parse(dt.Rows[i]["Meal_Qut"].ToString());
                float mealprice = float.Parse(dt.Rows[i]["Meal_Price"].ToString());
                String mealid = dt.Rows[i]["Meal_Id"].ToString();
                NewDT.Rows.Add(mealimage, mealname, mealqut, mealprice, mealprice * mealqut, mealid);
                total_Price += mealprice * mealqut;
            }
            Txt_to_price.Text = total_Price.ToString();
            GridView1.DataSource = NewDT;
            GridView1.DataBind();
            ViewState["ordertable"] = NewDT;
        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            DataTable DT = (DataTable)ViewState["ordertable"];
            int row = e.RowIndex;
            // string s = DT.Rows[row]["Meal_Name"].ToString();
            DT.Rows.RemoveAt(row);
            GridView1.DataSource = DT;
            GridView1.DataBind();
            ViewState["ordertable"] = DT;
            float total = calculate_price();
            Txt_to_price.Text = calculate_price().ToString();
            if (total <= 0)
            {
                Response.Redirect("menu.aspx");
            }

        }
        protected void TXT_Meal_Qut_TextChanged(object sender, EventArgs e)
        {
            float total_Price = 0;
            DataTable ndt = (DataTable)ViewState["ordertable"];
            ndt.Clear();
            foreach (GridViewRow x in GridView1.Rows)
            {
                string mealid = (x.FindControl("Meal_Id") as TextBox).Text;
                string mealimage = (x.FindControl("image_name") as TextBox).Text;
                string mealname = (x.FindControl("Meal_Name") as Label).Text;
                int mealqut = 1;
                string value = (x.FindControl("TXT_Meal_Qut") as TextBox).Text;

                if (value.Length <= 3 && value != "" && int.Parse(value) != 0)
                {
                    mealqut = int.Parse((x.FindControl("TXT_Meal_Qut") as TextBox).Text);
                }
                else if (value.Length > 3)
                {
                    string val = value[0] + "" + value[1] + "" + value[2];
                    if (int.Parse(val) != 0)
                        mealqut = int.Parse(val);

                }

                float mealprice = float.Parse((x.FindControl("Meal_Price") as Label).Text);
                float totalprice = mealprice * mealqut;
                ndt.Rows.Add(mealimage, mealname, mealqut, mealprice, totalprice, mealid);
                total_Price += totalprice;
            }
            Txt_to_price.Text = total_Price.ToString();
            GridView1.DataSource = ndt;
            GridView1.DataBind();
            ViewState["ordertable"] = ndt;
        }
        float calculate_price()
        {
            float total_price = 0;
            DataTable dt = (DataTable)ViewState["ordertable"];
            foreach (DataRow x in dt.Rows)
            {

                total_price += float.Parse(x["Total_Price"].ToString());
            }
            return total_price;

        }
        protected void Submit_button_Click(object sender, EventArgs e)
        {
            DataTable finaldt = new DataTable();
            finaldt = (DataTable)ViewState["ordertable"];
            Customer x = new Customer();
            Orders addedorder = new Orders();
            if (Session["USERNAME"] == null)
            {
               Response.Redirect("RegisterationWMP.aspx");
            }
            else
            {
                string us_name = Session["USERNAME"].ToString();
                if (x.CheckUser(us_name).Equals("1"))
                {

                    addedorder.CUSTOMER_ID = x.Id_By_Username(us_name);
                    addedorder.ORDER_TOTAL_PRICE = float.Parse(Txt_to_price.Text);
                    addedorder.ORDER_ID = "0";
                    x.MakeOrder(addedorder, finaldt);
                    Session["Order_Table"] = null;
                    ViewState["ordertable"] = null;
                    Response.Redirect("menu.aspx");
                }
                else
                {
                    Response.Redirect("RegisterationWMP.aspx");
                } 
            }

        }

        protected void add_more_Click(object sender, EventArgs e)
        {
            Session["Order_Table"] = null;
            ViewState["ordertable"] = null;

            Response.Redirect("menu.aspx");
        }
    }
}