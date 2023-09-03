using SW2_Online_Restaurant_System.DatabaseLayer;
using System;
using System.Data;

namespace SW2_Online_Restaurant_System.BusinessLayer
{
    public class Admin : Team
    {
        //start of attributes
        Manage_EmployeesDB Em;
        Team TE = new Team();
        //end of attributes

        public void DeleteUser(USER x)
        {
            Em = new Manage_EmployeesDB();
            try
            {
                Em.DeleteUser(x);
            }
            catch (Exception ex)
            {
                Console.Write(ex);
            }
        }
        public DataTable ContactViewByID(USER x)
        {
            DataTable m = new DataTable();
            Em = new Manage_EmployeesDB();
            try
            {
                m = Em.ContactViewByID(x);

            }
            catch (Exception ex)
            {
                Console.Write(ex);
            }
            return m;
        }
        public string Check_USERr(string z)
        {
            Em = new Manage_EmployeesDB();
            return Em.Check_USERR(z);
        }
        public void AddUser(USER x)
        {
            try
            {
                this.Add_User(x);
            }
            catch (Exception ex)
            {
                Console.Write(ex);
            }
        }
        public void Update_User(USER x)
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
        public string Create_UserID()
        {
            return this.Create_User_ID();
        }
        public DataTable All_Team()
        {
            DataTable AllUser = new DataTable();


            Em = new Manage_EmployeesDB();
            try
            {
                AllUser = Em.All_Team();
                return AllUser;
            }
            catch (Exception ex)
            {
                return AllUser;
                Console.Write(ex);
            }
        }
        public string Check_User(string z)
        {
            return this.CheckUser(z);

        }
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

        public void Add_Meal(Meals meal, string user_name)
        {

            TE.Add_Meal(meal, user_name);
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
        public DataTable FillGridWithOreders()
        {

            return TE.FillGridWithOreders();
        }
        public DataTable FillGridMy_Oreders(string x)
        {

            return TE.FillGridMy_Oreders(x);
        }
    }
}