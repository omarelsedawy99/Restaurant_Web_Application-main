using SW2_Online_Restaurant_System.DatabaseLayer;
using System.Text.RegularExpressions;

namespace SW2_Online_Restaurant_System.BusinessLayer
{

    public class Validation
    {
        public bool IsEmpty(string x)
        {
            if (x.Trim() == "")
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        public bool IsUsernameValid(string x)
        {
            Manage_EmployeesDB db = new Manage_EmployeesDB();
            x = x.Trim();
            if (x.Length >= 6)
                if (!x.Contains("!") && !x.Contains("$") && !x.Contains("@") && !x.Contains("%") && !x.Contains("^") && !x.Contains("*") && !x.Contains("*") && !x.Contains("(") && !x.Contains(")"))
                    if (db.Check_USERNAME(x).Equals("1"))
                        return true;
                    else
                        return false;
            return false;
        }
        public bool IsPhoneValid(string x)
        {
            x = x.Trim();
            // bool flag=false;
            /*
             string pattern = @"\+?\d{1,4}?[-.\s]?\(?\d{1,3}?\)?[-.\s]?\d{1,4}[-.\s]?\d{1,4}[-.\s]?\d{1,9}";

                 foreach (Match m in Regex.Matches(x, pattern))
                 {
                     flag = true;
                 }
             return flag;*/
            return Regex.IsMatch(x, @"\+?\d{1,4}?[-.\s]?\(?\d{1,3}?\)?[-.\s]?\d{1,4}[-.\s]?\d{1,4}[-.\s]?\d{1,9}");
        }
        public bool IsEmailValid(string x)
        {
            x = x.Trim();
            return Regex.IsMatch(x, @"^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$");
        }
        public bool IsPasswordValid(string x)
        {
            x = x.Trim();
            return Regex.IsMatch(x, @"^((?=\S*?[A-Z])(?=\S*?[a-z])(?=\S*?[0-9]).{6,})\S");
        }
    }
}

