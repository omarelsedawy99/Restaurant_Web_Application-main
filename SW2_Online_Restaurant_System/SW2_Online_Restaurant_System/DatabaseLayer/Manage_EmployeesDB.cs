using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System;
using SW2_Online_Restaurant_System.BusinessLayer;
using SW2_Online_Restaurant_System.DatabaseLayer;


/// <summary>
/// Summary description for Manage_EmployeesDB
/// </summary>
namespace SW2_Online_Restaurant_System.DatabaseLayer
{
    public class Manage_EmployeesDB
    {
        public Manage_EmployeesDB()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        private SqlConnection sqlCon;

        public void Add_User(USER x)
        {
            sqlCon = new SqlConnection(@"Data Source=.;Initial Catalog=SW2_RESTAURANT_ONLINE_SYSTEM;Integrated Security=true;");
            sqlCon.Open();
            SqlCommand sqlCmd = new SqlCommand("AddUser", sqlCon);
            sqlCmd.CommandType = CommandType.StoredProcedure;
            sqlCmd.Parameters.Add("@USER_ID", SqlDbType.VarChar).Value = x.USER_ID;

            sqlCmd.Parameters.Add("@FIRST_NAME", SqlDbType.VarChar).Value = x.FIRST_NAME;

            sqlCmd.Parameters.Add("@LAST_NAME", SqlDbType.VarChar).Value = x.LAST_NAME;

            sqlCmd.Parameters.Add("@AGE", SqlDbType.Int).Value = x.AGE;

            sqlCmd.Parameters.Add("@ADDRESS", SqlDbType.VarChar).Value = x.ADDRESS;

            sqlCmd.Parameters.Add("@EMAIL", SqlDbType.VarChar).Value = x.EMAIL;

            sqlCmd.Parameters.Add("@PHONE", SqlDbType.VarChar).Value = x.PHONE;

            sqlCmd.Parameters.Add("@USERNAME", SqlDbType.VarChar).Value = x.USERNAME;

            sqlCmd.Parameters.Add("@PASSWORD", SqlDbType.VarChar).Value = x.PASSWORD;

            sqlCmd.Parameters.Add("@USER_TYPE", SqlDbType.VarChar).Value = x.USER_TYPE;
            sqlCmd.ExecuteNonQuery();
            sqlCon.Close();
        }
        public void DeleteUser(USER x)
        {
            sqlCon = new SqlConnection(@"Data Source=.;Initial Catalog=SW2_RESTAURANT_ONLINE_SYSTEM;Integrated Security=true;");
            sqlCon.Open();
            SqlCommand sqlCmd = new SqlCommand("DeleteUser", sqlCon);
            sqlCmd.CommandType = CommandType.StoredProcedure;
            sqlCmd.Parameters.Add("@USER_ID", SqlDbType.VarChar).Value = x.USER_ID;
            sqlCmd.ExecuteNonQuery();
            sqlCon.Close();
        }
        public void UpdateUser(USER x)
        {
            sqlCon = new SqlConnection(@"Data Source=.;Initial Catalog=SW2_RESTAURANT_ONLINE_SYSTEM;Integrated Security=true;");
            sqlCon.Open();
            SqlCommand sqlCmd = new SqlCommand("UpdateUser", sqlCon);
            sqlCmd.CommandType = CommandType.StoredProcedure;
            sqlCmd.Parameters.Add("@USER_ID", SqlDbType.VarChar).Value = x.USER_ID;

            sqlCmd.Parameters.Add("@FIRST_NAME", SqlDbType.VarChar).Value = x.FIRST_NAME;

            sqlCmd.Parameters.Add("@LAST_NAME", SqlDbType.VarChar).Value = x.LAST_NAME;

            sqlCmd.Parameters.Add("@AGE", SqlDbType.Int).Value = x.AGE;

            sqlCmd.Parameters.Add("@ADDRESS", SqlDbType.VarChar).Value = x.ADDRESS;

            sqlCmd.Parameters.Add("@EMAIL", SqlDbType.VarChar).Value = x.EMAIL;

            sqlCmd.Parameters.Add("@PHONE", SqlDbType.VarChar).Value = x.PHONE;

            sqlCmd.Parameters.Add("@USERNAME", SqlDbType.VarChar).Value = x.USERNAME;

            sqlCmd.Parameters.Add("@PASSWORD", SqlDbType.VarChar).Value = x.PASSWORD;

            sqlCmd.Parameters.Add("@USER_TYPE", SqlDbType.VarChar).Value = x.USER_TYPE;
            sqlCmd.ExecuteNonQuery();
            sqlCon.Close();
        }
        public DataTable ContactViewByID(USER x)
        {
            sqlCon = new SqlConnection(@"Data Source=.;Initial Catalog=SW2_RESTAURANT_ONLINE_SYSTEM;Integrated Security=true;");
            sqlCon.Open();
            SqlDataAdapter sqlDa = new SqlDataAdapter("ContactViewByID", sqlCon);
            sqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;
            sqlDa.SelectCommand.Parameters.AddWithValue("@USER_ID", x.USER_ID);
            DataTable dtbl = new DataTable();
            sqlDa.Fill(dtbl);
            sqlCon.Close();
            return dtbl;
        }
        public string Check_USERR(string z)
        {
            sqlCon = new SqlConnection(@"Data Source=.;Initial Catalog=SW2_RESTAURANT_ONLINE_SYSTEM;Integrated Security=true;");
            sqlCon.Open();
            SqlCommand sqlCmd = new SqlCommand("CHECK-USER", sqlCon);
            sqlCmd.CommandType = CommandType.StoredProcedure;
            sqlCmd.Parameters.Add("@USER_ID", SqlDbType.VarChar).Value = z;
            sqlCmd.Parameters.Add("@ID", SqlDbType.Int);
            sqlCmd.Parameters["@ID"].Direction = ParameterDirection.Output;
            sqlCmd.ExecuteNonQuery();
            string y = sqlCmd.Parameters["@ID"].Value.ToString();   
            sqlCon.Close();
            return y;
        }
        public string Check_USERNAME(string z)
        {
            sqlCon = new SqlConnection(@"Data Source=.;Initial Catalog=SW2_RESTAURANT_ONLINE_SYSTEM;Integrated Security=true;");
            sqlCon.Open();
            SqlCommand sqlCmd = new SqlCommand("CHECK-USERNAME", sqlCon);
            sqlCmd.CommandType = CommandType.StoredProcedure;
            sqlCmd.Parameters.Add("@USERNAME", SqlDbType.VarChar).Value = z;
            sqlCmd.Parameters.Add("@ID", SqlDbType.Int);
            sqlCmd.Parameters["@ID"].Direction = ParameterDirection.Output;
            sqlCmd.ExecuteNonQuery();
            string y = sqlCmd.Parameters["@ID"].Value.ToString();
            sqlCon.Close();
            return y;
        }
        public string Create_User_ID()
        {
            sqlCon = new SqlConnection(@"Data Source=.;Initial Catalog=SW2_RESTAURANT_ONLINE_SYSTEM;Integrated Security=true;");
            SqlCommand cmd = new SqlCommand("CREATE_USER_ID", sqlCon);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@ID", SqlDbType.VarChar, 20);
            cmd.Parameters["@ID"].Direction = ParameterDirection.Output;
            sqlCon.Open();
            cmd.ExecuteNonQuery();
            string id = cmd.Parameters["@ID"].Value.ToString();
            sqlCon.Close();
            return id;
        }
        public DataTable ContactViewByUs_Ps(USER x)
        {
            sqlCon = new SqlConnection(@"Data Source=.;Initial Catalog=SW2_RESTAURANT_ONLINE_SYSTEM;Integrated Security=true;");
            sqlCon.Open();
            SqlDataAdapter sqlDa = new SqlDataAdapter("ContactViewByUs_Ps", sqlCon);
            sqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;
            sqlDa.SelectCommand.Parameters.AddWithValue("@USERNAME", x.USERNAME);
            sqlDa.SelectCommand.Parameters.AddWithValue("@PASSWORD", x.PASSWORD);
            DataTable dtbl = new DataTable();
            sqlDa.Fill(dtbl);
            sqlCon.Close();
            return dtbl;
        }
        public String Login(String userName, String passWord)
        {
            String UserReturnType;
            sqlCon = new SqlConnection(@"Data Source=.;Initial Catalog=SW2_RESTAURANT_ONLINE_SYSTEM;Integrated Security=true;");
            sqlCon.Open();
            SqlCommand sqlCmd = new SqlCommand("LoginUser", sqlCon);
            sqlCmd.Connection = sqlCon;
            sqlCmd.CommandType = CommandType.StoredProcedure;
            sqlCmd.Parameters.Add("@USERNAME", SqlDbType.VarChar).Value = userName;
            sqlCmd.Parameters.Add("@PASSWORD", SqlDbType.VarChar).Value = passWord;
            SqlDataReader da = sqlCmd.ExecuteReader();
            da.Read();
            UserReturnType = da["USER_TYPE"].ToString();
            sqlCon.Close();
            return UserReturnType;
        }
        public string Id_By_Username(string us_name)
        {
            sqlCon = new SqlConnection(@"Data Source=.;Initial Catalog=SW2_RESTAURANT_ONLINE_SYSTEM;Integrated Security=true;");
            sqlCon.Open();
            SqlDataAdapter sqlDa = new SqlDataAdapter("VIEW_ID_USERNAME", sqlCon);
            sqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;
            sqlDa.SelectCommand.Parameters.AddWithValue("@USERNAME", us_name);            
            DataTable dtbl = new DataTable();
            sqlDa.Fill(dtbl);
            sqlCon.Close();
            string X = dtbl.Rows[0]["USER_ID"].ToString();
            return X;
        }
        public DataTable All_Team()
        {
            sqlCon = new SqlConnection(@"Data Source=.;Initial Catalog=SW2_RESTAURANT_ONLINE_SYSTEM;Integrated Security=true;");
            sqlCon.Open();
            SqlCommand sqlCmd = new SqlCommand("SELECT * FROM USERS WHERE USER_TYPE !='Customer'; ", sqlCon);
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(sqlCmd);
            da.Fill(dt);
            sqlCon.Close();
            return dt;
        }
        public DataTable All_Customers()
        {
            sqlCon = new SqlConnection(@"Data Source=.;Initial Catalog=SW2_RESTAURANT_ONLINE_SYSTEM;Integrated Security=true;");
            sqlCon.Open();
            SqlCommand sqlCmd = new SqlCommand("SELECT * FROM USERS WHERE USER_TYPE ='Customer'; ", sqlCon);
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(sqlCmd);
            da.Fill(dt);
            sqlCon.Close();
            return dt;
        }
    }
}
