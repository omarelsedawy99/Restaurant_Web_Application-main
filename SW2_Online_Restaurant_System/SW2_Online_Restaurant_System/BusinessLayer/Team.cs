using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using SW2_Online_Restaurant_System.DatabaseLayer;

namespace SW2_Online_Restaurant_System.BusinessLayer
{
    public class Team : USER
    {
        Manage_EmployeesDB Em;
        Messages ME = new Messages();
        Meals meal = new Meals();
        Orders OR = new Orders();
        public DataTable All_Customers()
        {
            DataTable AllUser = new DataTable();


            Em = new Manage_EmployeesDB();
            try
            {
                AllUser = Em.All_Customers();
                return AllUser;
            }
            catch (Exception ex)
            {
                return AllUser;
                Console.Write(ex);
            }
        }

        public DataTable AllMessages()
        {
            DataTable AllMessage = new DataTable();

            try
            {
                AllMessage = ME.All_Messages();
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

            meal.Add_Meal(meal, user_name);
        }
        public void DeleteMeal(string Meal_id)
        {

            try
            {
                meal.DeleteMeal(Meal_id);
            }
            catch (Exception ex)
            {
                Console.Write(ex);
            }
        }
        public DataTable search_meals(string s)
        {
            DataTable dtt = new DataTable();

            dtt = meal.search_meals(s);
            return dtt;
        }
        public void UpdateMeal(Meals MealObj, string user_name)
        {

            try
            {
                meal.UpdateMeal(MealObj, user_name);
            }
            catch (Exception ex)
            {
                Console.Write(ex);
            }
        }
        public DataTable FillGridWithOreders()
        {
            
            return OR.FillGridWithOreders();
        }
        public DataTable FillGridMy_Oreders(string x)
        {
            
            return OR.FillGridMy_Oreders(x);
        }


    }
}

