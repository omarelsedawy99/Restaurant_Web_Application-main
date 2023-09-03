using SW2_Online_Restaurant_System.DatabaseLayer;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace SW2_Online_Restaurant_System.BusinessLayer
{
    public class Customer : USER
    {
        //Start of attributes
        Manage_EmployeesDB Em;
        Orders xorder;
        //End of attributes

        public string CheckUser(string z)
        {

            Em = new Manage_EmployeesDB();
            return Em.Check_USERNAME(z);

        }
        public void AddUser(Customer x)
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
        public string Create_UserID()
        {
            return this.Create_User_ID();
        }
        public void MakeOrder(Orders order, DataTable dt)
        {
            xorder = new Orders();
            try
            {
                xorder.Add_New_Order(order, dt);
            }
            catch(Exception ex)
            {
                Console.Write(ex);
            }
        }
        public string  Id_By_Username(string us_name)
        {
            Em = new Manage_EmployeesDB();
            return Em.Id_By_Username(us_name);
        }
        public DataTable FillGridMy_Oreders(string x)
        {
            xorder = new Orders();
            return xorder.FillGridMy_Oreders(x);
        }
       public DataTable FillGridWithordrmeals(string x)
        {
            xorder = new Orders();
            return xorder.FillGridWithordrmeals(x);
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
    }
}