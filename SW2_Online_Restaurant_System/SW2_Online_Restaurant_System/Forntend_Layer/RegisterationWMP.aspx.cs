using SW2_Online_Restaurant_System.BusinessLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SW2_Online_Restaurant_System.Forntend_Layer
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        USER user = new USER();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Btn_Add_Click(object sender, EventArgs e)
        {
            Customer cust = new Customer();
            Customer x = new Customer();
            Validation valid = new Validation();

            x.USER_ID = x.Create_User_ID();

            x.FIRST_NAME = TXT_FIRST_NAME.Text;

            x.LAST_NAME = TXT_LAST_NAME.Text;

            if (TXT_AGE.Text.Equals(""))
                return;
            else
                x.AGE = int.Parse(TXT_AGE.Text);

            x.ADDRESS = TXT_ADDRESS.Text;

            ////Checking Email Address
            if (valid.IsEmailValid(TXT_EMAIL.Text))
                x.EMAIL = TXT_EMAIL.Text;
            else
            {
                //Response.Write("Invalid Email Address");
                ErrorLabel.Text = "INVALID EMAIL ADDRESS, RE ENTER IT";
                return;
            }
            ////Checking Phone Number
            if (valid.IsPhoneValid(TXT_PHONE.Text))
                x.PHONE = TXT_PHONE.Text;
            else
            {
                //Response.Write("Invalid Phone Number!");
                ErrorLabel.Text = "INVALID PHONE NUMBER!, RE ENTER IT";
                return;
            }
            ////Checking Username
            if (cust.CheckUser(TXT_USERNAME.Text).Equals("2"))
                x.USERNAME = TXT_USERNAME.Text;
            else
            {
                //Response.Write("INVALID USERNAME!");
                ErrorLabel.Text = "INVALID USERNAME!, RE ENTER IT";
                return;
            }



            if (!TXT_PASSWORD.Text.Equals(""))
                x.PASSWORD = TXT_PASSWORD.Text;
            else
            {
                //Response.Write("Invalid Passowrd!, Enter a more complicated password");
                ErrorLabel.Text = "Invalid Password!, Enter a more complicated password";
                return;
            }
            x.USER_TYPE = "Customer";
            cust.Add_User(x);
            Response.Redirect("~/Forntend_Layer/LoginPage.aspx");
            //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
        }
    }
}