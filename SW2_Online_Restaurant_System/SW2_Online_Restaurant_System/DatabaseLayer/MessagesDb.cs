using SW2_Online_Restaurant_System.BusinessLayer;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Data;

namespace SW2_Online_Restaurant_System.DatabaseLayer
{
    public class MessagesDb
    {
        private SqlConnection con;
        private SqlCommand cmd;

         public void Send_Message(Messages message)
        {
            con = new SqlConnection(@"Data Source=.;Initial Catalog=SW2_RESTAURANT_ONLINE_SYSTEM;Integrated Security=true;");
            cmd = new SqlCommand("SEND_MESSAGE", con);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.Add("@SENDER_NAME", SqlDbType.VarChar, 100).Value = message.SENDER_NAME;
            cmd.Parameters.Add("@SENDER_MAIL", SqlDbType.VarChar, 100).Value = message.SENDER_MAIL;
            cmd.Parameters.Add("@MESSAGE_DATA", SqlDbType.VarChar, 2000).Value = message.MESSAGE_DATA;
         
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

        }

         public DataTable All_Messages()
         {
             con = new SqlConnection(@"Data Source=.;Initial Catalog=SW2_RESTAURANT_ONLINE_SYSTEM;Integrated Security=true;");
             con.Open();
             SqlCommand sqlCmd = new SqlCommand("SELECT * FROM ALL_MESSAGES; ", con);
             DataTable dt = new DataTable();
             SqlDataAdapter da = new SqlDataAdapter(sqlCmd);
             da.Fill(dt);
             con.Close();
             return dt;
         }
    }
}