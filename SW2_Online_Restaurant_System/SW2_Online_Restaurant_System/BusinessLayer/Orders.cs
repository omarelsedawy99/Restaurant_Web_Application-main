using SW2_Online_Restaurant_System.DatabaseLayer;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace SW2_Online_Restaurant_System.BusinessLayer
{
    public class Orders
    {
        private OrderDb ordb;
        private string _ORDER_ID;
        public string ORDER_ID
        {
            get { return _ORDER_ID; }
            set { _ORDER_ID = value; }
        }
        private string _CUSTOMER_ID;
        public string CUSTOMER_ID
        {
            get { return _CUSTOMER_ID; }
            set { _CUSTOMER_ID = value; }
        }
        private float _ORDER_TOTAL_PRICE;
        public float ORDER_TOTAL_PRICE
        {
            get { return _ORDER_TOTAL_PRICE; }
            set { _ORDER_TOTAL_PRICE = value; }
        }


        public void Add_New_Order(Orders order, DataTable dt)
        {
            ordb = new OrderDb();
            ordb.Create_Order(order, dt);
        }
        public DataTable FillGridWithOreders()
        {
            ordb = new OrderDb();
            return ordb.FillGridWithOreders();
        }
        public DataTable FillGridMy_Oreders(string x)
        {
            ordb = new OrderDb();
            return ordb.FillGridMy_Oreders(x);
        }
       public DataTable FillGridWithordrmeals(string S)
        {
            ordb = new OrderDb();
            return ordb.FillGridWithordrmeals(S);
        }
    }
}

