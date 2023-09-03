using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using SW2_Online_Restaurant_System.DatabaseLayer;

/// <summary>
/// Summary description for USER
/// </summary>
namespace SW2_Online_Restaurant_System.BusinessLayer
{
    public class USER
    {
        Manage_EmployeesDB Em;
        public USER()
        {

        }
        private string _USER_ID;
        public string USER_ID
        {
            get { return _USER_ID; }
            set { _USER_ID = value; }
        }
        private string _FIRST_NAME;
        public string FIRST_NAME
        {
            get { return _FIRST_NAME; }
            set { _FIRST_NAME = value; }
        }
        private string _LAST_NAME;
        public string LAST_NAME
        {
            get { return _LAST_NAME; }
            set { _LAST_NAME = value; }
        }
        private int _AGE;
        public int AGE
        {
            get { return _AGE; }
            set { _AGE = value; }
        }
        private string _ADDRESS;
        public string ADDRESS
        {
            get { return _ADDRESS; }
            set { _ADDRESS = value; }
        }
        private string _EMAIL;
        public string EMAIL
        {
            get { return _EMAIL; }
            set { _EMAIL = value; }
        }
        private string _PHONE;
        public string PHONE
        {
            get { return _PHONE; }
            set { _PHONE = value; }
        }
        private string _USERNAME;
        public string USERNAME
        {
            get { return _USERNAME; }
            set { _USERNAME = value; }
        }
        private string _PASSWORD;
        public string PASSWORD
        {
            get { return _PASSWORD; }
            set { _PASSWORD = value; }
        }
        private string _USER_TYPE;
        public string USER_TYPE
        {
            get { return _USER_TYPE; }
            set { _USER_TYPE = value; }
        }



        public void Add_User(USER x)
        {
            Em = new Manage_EmployeesDB();
            try
            {
                Em.Add_User(x);
            }
            catch (Exception ex)
            {
                Console.Write(ex);
            }
        }
        public string Create_User_ID()
        {
            Em = new Manage_EmployeesDB();
            return Em.Create_User_ID();
        }
        public DataTable ContactViewByUs_Ps(USER x)
        {
            DataTable m = new DataTable();
            Em = new Manage_EmployeesDB();
            try
            {
                m = Em.ContactViewByUs_Ps(x);

            }
            catch (Exception ex)
            {
                Console.Write(ex);
            }
            return m;
        }
        public void UpdateUser(USER x)
        {
            Em = new Manage_EmployeesDB();
            try
            {
                Em.UpdateUser(x);
            }
            catch (Exception ex)
            {
                Console.Write(ex);
            }
        }
        public string CheckUser(string z)
        {

            Em = new Manage_EmployeesDB();
            return Em.Check_USERNAME(z);

        }
        public String Login(String userName, String passWord)
        {
            Em = new Manage_EmployeesDB();
            String UserReturnType = " ";
            try
            {
                UserReturnType = Em.Login(userName, passWord);
                return UserReturnType;
            }
            catch (Exception ex)
            {
                return UserReturnType;
                
            }

        }
        public void Edit_profile(USER x)
        {
            Em = new Manage_EmployeesDB();
            try
            {
                Em.UpdateUser(x);
            }
            catch (Exception ex)
            {
                Console.Write(ex);
            }
        }



    }
}