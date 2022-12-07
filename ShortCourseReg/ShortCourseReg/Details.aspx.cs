using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;
using FreeTextBoxControls;
using System.Drawing;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Configuration;

namespace ShortCourseReg
{
    public partial class Details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string ID = Convert.ToString(HttpContext.Current.Request.QueryString["ID"]);
            if (ID != "")
            {
                Display_Data(Convert.ToInt32(ID));
            }

        }
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DB"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        private void Display_Data(int ID)
        {
            try
            {
                string SQL_Command = "SELECT * from Items where ItemID = @ItemID";
                con.Open();
                cmd = new SqlCommand(SQL_Command, con);
                cmd.Parameters.AddWithValue("@ItemID", ID);
                SqlDataReader R = cmd.ExecuteReader();
                if (R.Read())
                {
                    Name.Text = Convert.ToString(R["ItemName"]);
                    Description.Text = Convert.ToString(R["ItemDescription"]);
                    Software.Text = Convert.ToString(R["ItemCategory"]);
                    Developer.Text = Convert.ToString(R["ItemCreator"]);
                    string imge_string = Convert.ToBase64String((byte[])R["ItemImage"]);
                    string imge = "data:Image/png;base64," + imge_string;
                    Image1.ImageUrl = imge;
                }
                con.Close();
            }
            catch (Exception ex)
            {
                Debug.WriteLine("Error, " + ex);
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx");
        }
    }
}