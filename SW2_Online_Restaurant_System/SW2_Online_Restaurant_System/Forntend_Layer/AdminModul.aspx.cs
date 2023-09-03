using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using SW2_Online_Restaurant_System.BusinessLayer;

namespace SW2_Online_Restaurant_System.Forntend_Layer
{
    public partial class AdminModul : System.Web.UI.Page
    {
        Admin admin;
        String y;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                btnubdate.Enabled = false;
                btndelete.Enabled = false;
                btnadd.Enabled = true;
                admin = new Admin();
                y = admin.Create_User_ID();
                TXT_ID.Text = y;
                TXT_ID.Enabled = false;
               


            }

        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            Admin x = new Admin();
            admin = new Admin();
            x.USER_ID = TXT_ID.Text;
            x.FIRST_NAME = TXT_FIRST_NAME.Text;
            x.LAST_NAME = TXT_LAST_NAME.Text;
            x.AGE = int.Parse(TXT_AGE.Text);
            x.ADDRESS = TXT_ADDRESS.Text;
            x.EMAIL = TXT_EMAIL.Text;
            x.PHONE = TXT_PHONE.Text;
            String y = TXT_USERNAME.Text;
            if (admin.Check_User(y).Equals("2"))
            {
            x.USERNAME = TXT_USERNAME.Text;
            }
            else
            {

                Response.Write("<script type='text/javascript'>");
                Response.Write("alert('username_is_used');");
                Response.Write("</script>");
            }
            x.PASSWORD = TXT_PASSWORD.Text;
            x.USER_TYPE = DropDownList1.Text;
            admin.Add_User(x);
            Clear();
              

        }

        public void Clear()
        {
            admin = new Admin();
             TXT_FIRST_NAME.Text = TXT_LAST_NAME.Text = TXT_AGE.Text = "";
            TXT_ADDRESS.Text = TXT_EMAIL.Text = TXT_PHONE.Text = "";
            TXT_USERNAME.Text = TXT_PASSWORD.Text = SearchById.Text = "";
            btnubdate.Enabled = false;
            btndelete.Enabled = false;
            y = admin.Create_User_ID();
            TXT_ID.Text = y;
            btnadd.Enabled = true;
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
        Admin x = new Admin();
        admin = new Admin();
        x.USER_ID = TXT_ID.Text;
        admin.DeleteUser(x);
        Clear();
        btnadd.Enabled = true;
        }

        protected void btnclear_Click(object sender, EventArgs e)
        {
            Clear();
        }

        protected void btnubdate_Click(object sender, EventArgs e)
        {
            Admin x = new Admin();
            admin = new Admin();
            x.USER_ID = TXT_ID.Text;
            x.FIRST_NAME = TXT_FIRST_NAME.Text;
            x.LAST_NAME = TXT_LAST_NAME.Text;
            x.AGE = int.Parse(TXT_AGE.Text);
            x.ADDRESS = TXT_ADDRESS.Text;
            x.EMAIL = TXT_EMAIL.Text;
            x.PHONE = TXT_PHONE.Text;
            x.USERNAME = TXT_USERNAME.Text;
            x.PASSWORD = TXT_PASSWORD.Text;
            x.USER_TYPE = DropDownList1.Text;
            admin.Update_User(x);
            Clear();
            btnadd.Enabled = true;
        }

        protected void btnshow_Click(object sender, EventArgs e)
        {
            Admin x = new Admin();
            admin = new Admin();
            DataTable dtb1 = new DataTable();
            x.USER_ID = SearchById.Text;
            string s = SearchById.Text;
            string m = admin.Check_USERr(s);
            if (m.Equals("1"))
            {
                dtb1 = admin.ContactViewByID(x);
                TXT_ID.Enabled = true;
                TXT_ID.Text = dtb1.Rows[0]["USER_ID"].ToString();
                TXT_ID.Enabled = false;
                TXT_FIRST_NAME.Text = dtb1.Rows[0]["FIRST_NAME"].ToString();
                TXT_LAST_NAME.Text = dtb1.Rows[0]["LAST_NAME"].ToString();
                TXT_AGE.Text = dtb1.Rows[0]["AGE"].ToString();
                TXT_ADDRESS.Text = dtb1.Rows[0]["ADDRESS"].ToString();
                TXT_EMAIL.Text = dtb1.Rows[0]["EMAIL"].ToString();
                TXT_PHONE.Text = dtb1.Rows[0]["PHONE"].ToString();
                TXT_USERNAME.Text = dtb1.Rows[0]["USERNAME"].ToString();
                TXT_PASSWORD.Text = dtb1.Rows[0]["PASSWORD"].ToString();
                DropDownList1.DataTextFormatString = dtb1.Rows[0]["USER_TYPE"].ToString();
                btnubdate.Enabled = true;
                btndelete.Enabled = true;
                btnadd.Enabled = false;
            }
            else
            {

                Response.Write("<script type='text/javascript'>");
                Response.Write("alert('USER_ID Not Found or incaild');");
                Response.Write("</script>");
            }
        }


    }
}