using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using SW2_Online_Restaurant_System.BusinessLayer;

namespace SW2_Online_Restaurant_System.DatabaseLayer
{
    public class Manage_MealsDb
    {
        private SqlConnection sqlCon;
        private SqlConnection con;
        private SqlCommand cmd;
        public void DeleteMeal(string Meal_Id)
        {
            con = new SqlConnection(@"Data Source=.;Initial Catalog=SW2_RESTAURANT_ONLINE_SYSTEM;Integrated Security=true;");
            con.Open();
            SqlCommand sqlCmd = new SqlCommand("DELETE_MEAL", con);
            sqlCmd.CommandType = CommandType.StoredProcedure;
            sqlCmd.Parameters.Add("@MEAL_ID", Meal_Id);
            sqlCmd.ExecuteNonQuery();
            con.Close();
        }
        public void UpdateMeal(Meals MealObj, string user_name)
        {
            con = new SqlConnection(@"Data Source=.;Initial Catalog=SW2_RESTAURANT_ONLINE_SYSTEM;Integrated Security=true;");
            con.Open();
            SqlCommand sqlCmd = new SqlCommand("UPDATE_MEAL", con);
            sqlCmd.CommandType = CommandType.StoredProcedure;
            sqlCmd.Parameters.Add("@MEAL_ID", SqlDbType.VarChar).Value = MealObj.MEAL_ID;
            sqlCmd.Parameters.Add("@MEAL_NAME", SqlDbType.VarChar).Value = MealObj.MEAL_NAME;
            sqlCmd.Parameters.Add("@MEAL_PRICR", SqlDbType.Float).Value = MealObj.MEAL_PRICR;
            sqlCmd.Parameters.Add("@MEAL_DESCRIPTION", SqlDbType.VarChar).Value = MealObj.MEAL_DESCRIPTION;
            sqlCmd.Parameters.Add("@USERNAME", SqlDbType.VarChar).Value = user_name;
            sqlCmd.ExecuteNonQuery();
            con.Close();
        }
        public void Add_Meal(Meals meal,string username)
        {
            con = new SqlConnection(@"Data Source=.;Initial Catalog=SW2_RESTAURANT_ONLINE_SYSTEM;Integrated Security=true;");
            cmd = new SqlCommand("ADD_MEAL", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@MEAL_ID", SqlDbType.VarChar, 20).Value = meal.MEAL_ID;
            cmd.Parameters.Add("@MEAL_NAME", SqlDbType.VarChar, 100).Value = meal.MEAL_NAME;
            cmd.Parameters.Add("@MEAL_PRICR", SqlDbType.Float).Value = meal.MEAL_PRICR;
            cmd.Parameters.Add("@MEAL_DESCRIPTION", SqlDbType.VarChar, 2000).Value = meal.MEAL_DESCRIPTION;
            cmd.Parameters.Add("@MEAL_IMAGE", SqlDbType.VarChar, 20000).Value = meal.MEAL_IMAGE;
            cmd.Parameters.Add("@USERNAME", SqlDbType.VarChar, 20).Value = username;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
        public DataTable FillGridWithMeals()
        {
            SqlConnection sqlCon = new SqlConnection(@"Data Source=.;Initial Catalog=SW2_RESTAURANT_ONLINE_SYSTEM;Integrated Security=true;");
            sqlCon.Open();
            SqlCommand sqlCmd = new SqlCommand("SELECT * FROM MEALS; ", sqlCon);
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(sqlCmd);
            da.Fill(dt);
            sqlCon.Close();
            return dt;
        }
        public string Create_Meal_Id()
        {
            SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=SW2_RESTAURANT_ONLINE_SYSTEM;Integrated Security=true;");
            cmd = new SqlCommand("CREATE_MEAL_ID", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@MEAL_ID", SqlDbType.VarChar, 20);
            cmd.Parameters["@MEAL_ID"].Direction = ParameterDirection.Output;
            con.Open();
            cmd.ExecuteNonQuery();
            string id = cmd.Parameters["@MEAL_ID"].Value.ToString();
            con.Close();
            return id;
        }
        public DataTable search_meals(string s)
        {
            sqlCon = new SqlConnection(@"Data Source=.;Initial Catalog=SW2_RESTAURANT_ONLINE_SYSTEM;Integrated Security=true;");
            sqlCon.Open();
            SqlDataAdapter sqlDa = new SqlDataAdapter("SEARCH_MEAL_BYNAME", sqlCon);
            sqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;
            sqlDa.SelectCommand.Parameters.AddWithValue("@MEAL_NAME",s + "%");
            DataTable dtbl = new DataTable();
            sqlDa.Fill(dtbl);
            sqlCon.Close();
            return dtbl;
        }

    }
}
