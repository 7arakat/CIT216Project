using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShortCourseReg
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
            string Table_name = null;
            string user_name = null;
            string user_Pass = null;
            if (Login1.UserName.IndexOf("A") != -1)
            {
                Table_name = "Admin";
                user_name = "AdminID";
                user_Pass = "AdminPassword";
            }else if(Login1.UserName.IndexOf("I") != -1)
            {
                Table_name = "Instructors";
                user_name = "InstructorsID";
                user_Pass = "InstructorsPassword";
            }else if(Login1.UserName.IndexOf("S") != -1)
            {
                Table_name = "Students";
                user_name = "NationalID";
                user_Pass = "Password";
            }


            string SQL = "SELECT * FROM " + Table_name + "WHERE " + user_name + "= @UserName AND " + user_Pass + "= @UserPassword";
            SqlCommand cmd = new SqlCommand(SQL, con);
            SqlParameter p1 = new SqlParameter("UserName", Login1.UserName);
            SqlParameter p2 = new SqlParameter("UserPassword", Login1.Password);
            cmd.Parameters.Add(p1);
            cmd.Parameters.Add(p2);
            con.Open();
            SqlDataReader DR = cmd.ExecuteReader();
            if (DR.HasRows)
            {
                DR.Read();
                FormsAuthentication.RedirectFromLoginPage(Login1.UserName, true);
                Response.Redirect("Admin/Admin.aspx");
            }
            else
            {
                Login1.FailureText = "Invalid username or password.";
            }
            con.Close();
        }
    }
}