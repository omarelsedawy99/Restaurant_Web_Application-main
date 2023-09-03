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
    public partial class Manage_Meals : System.Web.UI.Page
    {
        int counter;
        private Meals meal;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Page.IsPostBack == false)
            {
                counter = 0;
                ViewState["c"] = counter;
                Create_ID();
                fillMyGrid();
            }
            else
            {
                TXT_Meal_Id.Text = ViewState["ID"].ToString();
            }
        }
        private void fillMyGrid()
        {
            DataTable dt = new DataTable();
            Meals mealb = new Meals();
            dt = mealb.FillGridWithMeals();
            MyGrid.DataSource = dt;
            MyGrid.DataBind();

            ViewState["DT"] = dt;

        }
        private void Create_ID()
        {
            Meals x = new Meals();
            String id = x.Create_Meal_Id();
            TXT_Meal_Id.Text = id;
            ViewState["ID"] = id;
        }
        protected void btn_clear_Click(object sender, EventArgs e)
        {
            TXT_Meal_Name.Text = "";
            TXT_Meal_Price.Text = "";
            TXT_Meal_discription.Text = "";
        }
        protected void btn_add_html_Click1(object sender, ImageClickEventArgs e)
        {
            counter = (int)ViewState["c"];
            counter++;
            ViewState["c"] = counter;
            if (counter % 2 == 0)
            {

                Hidden.Style.Add("display", "none");
            }
            else
            {
                Hidden.Style.Add("display", "block");
            }
        }
        protected void btn_ADD_Click(object sender, EventArgs e)
        {
            fileupload_image.SaveAs(Request.PhysicalApplicationPath + "./photos/" + fileupload_image.FileName.ToString());
            Meals x = new Meals();
            x.MEAL_ID = TXT_Meal_Id.Text;
            x.MEAL_NAME = TXT_Meal_Name.Text;
            x.MEAL_PRICR = float.Parse(TXT_Meal_Price.Text);
            x.MEAL_DESCRIPTION = TXT_Meal_discription.Text;
            x.MEAL_IMAGE = fileupload_image.FileName.ToString();
            string us_name = Session["USERNAME"].ToString();
            meal = new Meals();
            meal.Add_Meal(x, us_name);
            fillMyGrid();
            TXT_Meal_Id.Text = "";
            TXT_Meal_Name.Text = "";
            TXT_Meal_Price.Text = "";
            TXT_Meal_discription.Text = "";
            Create_ID();
        }
        protected void MyGrid_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

            Meals MealObj = new Meals();
            MealObj.MEAL_ID = MyGrid.DataKeys[e.RowIndex].Value.ToString();
            MealObj.MEAL_NAME = (MyGrid.Rows[e.RowIndex].FindControl("TXT_Meal_Name") as TextBox).Text;
            MealObj.MEAL_PRICR = float.Parse((MyGrid.Rows[e.RowIndex].FindControl("TXT_Meal_Price") as TextBox).Text);
            MealObj.MEAL_DESCRIPTION = (MyGrid.Rows[e.RowIndex].FindControl("TXT_Meal_Description") as TextBox).Text;
            string us_name = Session["USERNAME"].ToString();
            MealObj.UpdateMeal(MealObj, us_name);
            MyGrid.EditIndex = -1;
            fillMyGrid();

        }

        protected void MyGrid_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            DataTable DT = new DataTable();
            DT = (DataTable)ViewState["DT"];

            int index = e.RowIndex;//2
            string s;
            s = DT.Rows[index]["MEAL_ID"].ToString();
            Meals MealObj = new Meals();
            MealObj.DeleteMeal(s);
            fillMyGrid();
            Create_ID();



        }

        protected void MyGrid_RowEditing(object sender, GridViewEditEventArgs e)
        {
            DataTable dt = (DataTable)ViewState["DT"];
            MyGrid.EditIndex = e.NewEditIndex;
            MyGrid.DataSource = dt;
            MyGrid.DataBind();
            ViewState["ds"] = dt;
        }

        protected void MyGrid_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            DataTable dt = (DataTable)ViewState["DT"];
            MyGrid.EditIndex = -1;
            //fillMyGrid();
            MyGrid.DataSource = dt;
            MyGrid.DataBind();
            ViewState["ds"] = dt;
        }

    }
}