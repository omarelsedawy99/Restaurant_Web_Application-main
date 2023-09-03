using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using SW2_Online_Restaurant_System.DatabaseLayer;


namespace SW2_Online_Restaurant_System.BusinessLayer
{
    public class Emp:Team
    {
        Manage_EmployeesDB Em;
        Team TE = new Team();
        public DataTable All_Customers()
        {
            DataTable AllUser = new DataTable();
            try
            {
                AllUser = TE.All_Customers();
                return AllUser;
            }
            catch (Exception ex)
            {
                return AllUser;
                Console.Write(ex);
            }
        }
        public void Edit_profile(USER x)
        {

            try
            {
                this.UpdateUser(x);
            }
            catch (Exception ex)
            {
                Console.Write(ex);
            }
        }
        public DataTable AllMessages()
        {
            DataTable AllMessage = new DataTable();

            try
            {
                AllMessage = TE.AllMessages();
                return AllMessage;
            }
            catch (Exception ex)
            {
                return AllMessage;
                Console.Write(ex);

            }

        }
        public void Add_Meal(Meals meal, string user_name)
        {

            TE.Add_Meal(meal, user_name);
        }
        public DataTable FillGridWithOreders()
        {

            return TE.FillGridWithOreders();
        }
        public DataTable FillGridMy_Oreders(string x)
        {

            return TE.FillGridMy_Oreders(x);
        }
        public void DeleteMeal(string Meal_id)
        {

            try
            {
                TE.DeleteMeal(Meal_id);
            }
            catch (Exception ex)
            {
                Console.Write(ex);
            }
        }
        public DataTable search_meals(string s)
        {
            DataTable dtt = new DataTable();

            dtt = TE.search_meals(s);
            return dtt;
        }
        public void UpdateMeal(Meals MealObj, string user_name)
        {

            try
            {
                TE.UpdateMeal(MealObj, user_name);
            }
            catch (Exception ex)
            {
                Console.Write(ex);
            }
        }
     
    }
}