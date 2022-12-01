using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Windows.Forms;
using FreeTextBoxControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using static System.Windows.Forms.LinkLabel;
using System.Xml.Linq;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.ListView;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;
using System.Web.Security;
using System.Diagnostics;
using System.Reflection.Emit;
//using static System.Net.WebRequestMethods;


namespace ShortCourseReg
{
    public partial class AddImahe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DB"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        byte[] imag_byte = null;
        bool file_type = false; 
        protected void Save_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                HttpPostedFile posted_File = FileUpload1.PostedFile;
                string File_Name = Path.GetFileName(posted_File.FileName);
                string File_Extension = Path.GetExtension(File_Name);
                if (File_Extension.ToLower() == ".jpg" || File_Extension.ToLower() == ".gif" || File_Extension.ToLower() == ".png" || File_Extension.ToLower() == ".bmp")
                {
                    file_type = true;
                    Stream stream = posted_File.InputStream;
                    BinaryReader br = new BinaryReader(stream);
                    byte[] imag_byte = br.ReadBytes((int)stream.Length);
                }
            }

            if (file_type)
            {
                try
                {
                    string SQL_Command1 = "SELECT ItemID from Items ";
                    con.Open();
                    cmd = new SqlCommand(SQL_Command1, con);
                    SqlDataReader R = cmd.ExecuteReader();
                    if (R.Read())
                    {
                        Name.Text = Convert.ToString(R["ItemName"]);

                    }

                    string SQL_Command2 = "insert into Items(ItemName, ItemDescription, ItemCategory, ItemCreator, ItemImage) Values(@ItemName, @ItemDescription, @ItemCategory, @ItemCreator, @ItemImage)";
                    cmd = new SqlCommand(SQL_Command2, con);
                    cmd.Parameters.AddWithValue("@ItemName", Name.Text);
                    cmd.Parameters.AddWithValue("@ItemDescription", Description.Text);
                    cmd.Parameters.AddWithValue("@ItemCategory", Category.Text);
                    cmd.Parameters.AddWithValue("@ItemCreator", Creator.Text);
                    cmd.Parameters.AddWithValue("@ItemImage", imag_byte);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    saved.Text = "Saved successfully";
                }
                catch (Exception ex)
                {
                    saved.Text = "Error, " + ex;
                }
            }
        }
         protected void Edit_Click(object sender, EventArgs e)
         {
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("UPDATE Login set ItemDescription =@ItemDescription, ItemCategory =@ItemCategory, ItemCreator =@ItemCreator, ItemImage =@ItemImage  where ItemName= @ItemName", con);
                cmd.Parameters.AddWithValue("@ItemName", Name.Text);
                cmd.Parameters.AddWithValue("@ItemDescription", Description.Text);
                cmd.Parameters.AddWithValue("@ItemCategory", Category.Text);
                cmd.Parameters.AddWithValue("@ItemCreator", Creator.Text);
                cmd.Parameters.AddWithValue("@ItemImage", imag_byte);
                cmd.ExecuteNonQuery();
            con.Close();
                saved.Text = "--- Table Updated Successfully ---";
            }
            catch (Exception ex)
            {
                saved.Text = "Error, " + ex;
            }
        }

        protected void View_Click(object sender, EventArgs e)
        {
            try
            {
                string SQL_Command = "SELECT * from Items where ItemName = @ItemName";
                con.Open();
                cmd = new SqlCommand(SQL_Command, con);
                cmd.Parameters.AddWithValue("@ItemName", Name.Text);
                SqlDataReader R = cmd.ExecuteReader();
                if (R.Read())
                {
                    Name.Text = Convert.ToString(R["ItemName"]);
                    Description.Text = Convert.ToString(R["ItemDescription"]);
                    Category.Text = Convert.ToString(R["ItemCategory"]);
                    Creator.Text = Convert.ToString(R["ItemCreator"]);
                    byte[] imag_byte = (byte[])R["ItemImage"];
                    string imge_string = Convert.ToBase64String(imag_byte);
                    string imge = "data:Image/png;base64," + imge_string;
                    Image1.ImageUrl = imge;
                }
                con.Close();
            }
            catch (Exception ex)
            {
                saved.Text = "Error, " + ex;
            }
        }

        protected void Delete_Click(object sender, EventArgs e)
        {
            try
            {

                string SQL_Command = "DELETE from Items where ItemName = @ItemName";
                con.Open();
                cmd = new SqlCommand(SQL_Command, con);
                cmd.Parameters.AddWithValue("@ItemName", Name.Text);
                cmd.ExecuteNonQuery();
                con.Close();
                saved.Text = "Deleted successfully";
            }
            catch (Exception ex)
            {
                saved.Text = "Error, " + ex;
            }
        }


       

        public void Show_Image_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile) {
                HttpPostedFile posted_File = FileUpload1.PostedFile;
                string File_Name = Path.GetFileName(posted_File.FileName);
                string File_path = Path.GetFullPath(posted_File.FileName);
                string File_Extension = Path.GetExtension(File_Name);

                if (File_Extension.ToLower() == ".jpg" || File_Extension.ToLower() == ".gif" || File_Extension.ToLower() == ".png" || File_Extension.ToLower() == ".bmp")
                {
                    file_type = true;
                    Stream stream = posted_File.InputStream;
                    BinaryReader br = new BinaryReader(stream);
                    imag_byte = br.ReadBytes((int)stream.Length);
                }
            }
            if (file_type)
            {
                string imge_string = Convert.ToBase64String(imag_byte);
                string imge = "data:Image/png;base64," + imge_string;
                Image1.ImageUrl = imge;
            }
        }

        
    }

}