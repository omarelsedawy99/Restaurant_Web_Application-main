using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System;
using SW2_Online_Restaurant_System.BusinessLayer;
using SW2_Online_Restaurant_System.DatabaseLayer;

namespace SW2_Online_Restaurant_System.DatabaseLayer
{
    public class OrderDb
    {
        private SqlConnection conn;

        public void Create_Order(Orders order, DataTable dt)
        {
            conn = new SqlConnection(@"Data Source=.;Initial Catalog=SW2_RESTAURANT_ONLINE_SYSTEM;Integrated Security=true;");
            conn.Open();
            SqlCommand sqlCmd = new SqlCommand("ADD_NEW_ORDER", conn);
            sqlCmd.CommandType = CommandType.StoredProcedure;
            //sqlCmd.Parameters.Add("@ORDER_ID", SqlDbType.VarChar,20).Value = order.ORDER_ID;
            sqlCmd.Parameters.Add("@CUSTOMER_ID", SqlDbType.VarChar, 20).Value = order.CUSTOMER_ID;
            sqlCmd.Parameters.Add("@ORDER_TOTAL_PRICE", SqlDbType.Float).Value = order.ORDER_TOTAL_PRICE;
            sqlCmd.Parameters.Add("@RETURN_ORDER_ID", SqlDbType.VarChar, 20);
            sqlCmd.Parameters["@RETURN_ORDER_ID"].Direction = ParameterDirection.Output;
            sqlCmd.ExecuteNonQuery();
            string id = sqlCmd.Parameters["@RETURN_ORDER_ID"].Value.ToString();
            conn.Close();

            int numofrows = dt.Rows.Count;
            for (int i = 0; i < numofrows; i++)
            {
                DataRow nrow = dt.Rows[i];
                String meal_id = dt.Rows[i]["Meal_Id"].ToString();
                int mealqut = int.Parse(dt.Rows[i]["Meal_Qut"].ToString());
                float mealprice = float.Parse(dt.Rows[i]["Meal_Price"].ToString());
                String mealimage = dt.Rows[i]["Meal_Image"].ToString();
                SqlCommand sqlcmd2 = new SqlCommand("ADD_DETAILS_OF_ORDER", conn);
                sqlcmd2.CommandType = CommandType.StoredProcedure;
                sqlcmd2.Parameters.Add("@ORDER_ID", SqlDbType.VarChar, 20).Value = id;
                sqlcmd2.Parameters.Add("@MEAL_ID", SqlDbType.VarChar, 20).Value = meal_id;
                sqlcmd2.Parameters.Add("@MEAL_QUANTITY", SqlDbType.Int).Value = mealqut;
                sqlcmd2.Parameters.Add("@MEAL_PRICE", SqlDbType.Float).Value = mealprice;
                conn.Open();
                sqlcmd2.ExecuteNonQuery();
                conn.Close();

            }
        }
         public DataTable FillGridWithOreders()
        {
      
            SqlConnection sqlCon = new SqlConnection(@"Data Source=.;Initial Catalog=SW2_RESTAURANT_ONLINE_SYSTEM;Integrated Security=true;");
            sqlCon.Open();
            SqlCommand sqlCmd = new SqlCommand("SELECT * FROM ORDERS;", sqlCon);
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(sqlCmd);
            da.Fill(dt);
            sqlCon.Close();
            return dt;
        }
         public DataTable FillGridWithordrmeals(string S)
        {

            conn = new SqlConnection(@"Data Source=.;Initial Catalog=SW2_RESTAURANT_ONLINE_SYSTEM;Integrated Security=true;");
            conn.Open();
            SqlDataAdapter sqlDa = new SqlDataAdapter("MEALS_BY_ORDERS", conn);
            sqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;
            sqlDa.SelectCommand.Parameters.AddWithValue("@ORDER_ID", S);
            DataTable dtbl = new DataTable();
            sqlDa.Fill(dtbl);
            conn.Close();
            return dtbl;
        }
         public DataTable FillGridMy_Oreders(string x)
         {
             conn = new SqlConnection(@"Data Source=.;Initial Catalog=SW2_RESTAURANT_ONLINE_SYSTEM;Integrated Security=true;");
             conn.Open();
             SqlDataAdapter sqlDa = new SqlDataAdapter("My_Orders_By_custID", conn);
             sqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;
             sqlDa.SelectCommand.Parameters.AddWithValue("@CUSTOMER_ID", x);
             DataTable dtbl = new DataTable();
             sqlDa.Fill(dtbl);
             conn.Close();
             return dtbl;
 
         }
               
      }
        

   }
