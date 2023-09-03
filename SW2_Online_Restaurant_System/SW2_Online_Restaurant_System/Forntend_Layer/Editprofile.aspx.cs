using System;
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
    public partial class Editprofile : System.Web.UI.Page
    {
        USER user;
        protected void Page_Load(object sender, EventArgs e)
        {
            
           if (!IsPostBack)
            {


                TXT_ID.Enabled = false;
                USER x = new USER();
                user = new USER();
                DataTable dtb1 = new DataTable();
                x.USERNAME = Session["USERNAME"].ToString();
                x.PASSWORD = Session["PASSWORD"].ToString();
                dtb1 = user.ContactViewByUs_Ps(x);
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
                TXT_PASSWORD2.Text = dtb1.Rows[0]["PASSWORD"].ToString();
                ViewState["TYBE"] = dtb1.Rows[0]["USER_TYPE"].ToString();
            }

        }

        protected void btnubdate_Click(object sender, System.EventArgs e)
        {
            USER x = new USER();
            user = new USER();
            x.USER_ID = TXT_ID.Text;
            x.FIRST_NAME = TXT_FIRST_NAME.Text;
            x.LAST_NAME = TXT_LAST_NAME.Text;
            x.AGE = int.Parse(TXT_AGE.Text);
            x.ADDRESS = TXT_ADDRESS.Text;
            x.EMAIL = TXT_EMAIL.Text;
            x.PHONE = TXT_PHONE.Text;
            x.USERNAME = TXT_USERNAME.Text;
            x.PASSWORD = TXT_PASSWORD.Text;
            x.USER_TYPE = ViewState["TYBE"].ToString();
            user.UpdateUser(x);
        }



    }

 }
