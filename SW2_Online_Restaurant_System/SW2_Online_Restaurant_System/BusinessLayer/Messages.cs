using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using SW2_Online_Restaurant_System.DatabaseLayer;
using System.Data;

namespace SW2_Online_Restaurant_System.BusinessLayer
{
    public class Messages
    {
        MessagesDb MsDb;
        public Messages()
        {

        }
        private string _MESSAGE_ID;

        public string MESSAGE_ID
        {
            get { return _MESSAGE_ID; }
            set { _MESSAGE_ID = value; }
        }
        private string _SENDER_NAME;

        public string SENDER_NAME
        {
            get { return _SENDER_NAME; }
            set { _SENDER_NAME = value; }
        }
        private string _SENDER_MAIL;

        public string SENDER_MAIL
        {
            get { return _SENDER_MAIL; }
            set { _SENDER_MAIL = value; }
        }
        private string _MESSAGE_DATA;

        public string MESSAGE_DATA
        {
            get { return _MESSAGE_DATA; }
            set { _MESSAGE_DATA = value; }
        }

        public void Send_Message(Messages message)
        {
            MsDb = new MessagesDb();
            MsDb.Send_Message(message);
        }

        public DataTable All_Messages()
        {
            DataTable AllMessage = new DataTable();


            MessagesDb Mess = new MessagesDb();
            try
            {
                AllMessage = Mess.All_Messages();
                return AllMessage;
            }
            catch (Exception ex)
            {
                return AllMessage;
                Console.Write(ex);
            }
        }

    }
}