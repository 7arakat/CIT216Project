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
//using static System.Net.WebRequestMethods;


namespace ShortCourseReg
{
    public partial class AddImahe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        
        protected void B_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;

            HttpPostedFile posted_File = FileUpload1.PostedFile;
            string File_Name = Path.GetFileName(posted_File.FileName);
            string File_Extension = Path.GetExtension(File_Name);

            if (File_Extension.ToLower() == ".jpg" || File_Extension.ToLower() == ".gif" || File_Extension.ToLower() == ".png" || File_Extension.ToLower() == ".bmp")
            {
                Stream stream = posted_File.InputStream;
                BinaryReader br = new BinaryReader(stream);
                byte[] Image = br.ReadBytes((int)stream.Length);



            }
        }

        

        protected void Button1_Click(object sender, EventArgs e)
        {

            HttpPostedFile posted_File = FileUpload1.PostedFile;
            string File_Name = Path.GetFileName(posted_File.FileName);
            string File_path = Path.GetFullPath(posted_File.FileName);
            string File_Extension = Path.GetExtension(File_Name);

            if (File_Extension.ToLower() == ".jpg" || File_Extension.ToLower() == ".gif" || File_Extension.ToLower() == ".png" || File_Extension.ToLower() == ".bmp")
            {
                saved.Text = File_path;
                Image1.ImageUrl = File_path;
            }
        }
    }
}