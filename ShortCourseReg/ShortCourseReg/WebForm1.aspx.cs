using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShortCourseReg
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        DataSet dataSet;
         public string mm(int i)
        {
            byte[] imag = (byte[])(dataSet.Tables[0].Rows[i - 1]["Item_Image"]);
            string imge_string = Convert.ToBase64String(imag);
            string im = "data:Image/png;base64," + imge_string;
            return im;
        }
        
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\alaze\\Desktop\\DCC Term 3\\CIT215-Programming II\\Programming project\\programming project v2\\programming project\\Restorant_BD.mdf\";Integrated Security=True");
            string SQL_Command = "SELECT * from Foods ";
            con.Open();
            SqlCommand cmd = new SqlCommand(SQL_Command, con);
            SqlDataAdapter adb = new SqlDataAdapter(cmd);

            dataSet = new DataSet();
            adb.Fill(dataSet);
            DataList1.DataSource = dataSet;
            DataList1.DataBind();
            con.Close();


        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Process p = new Process();
            p.StartInfo.FileName = "C:\\Users\\alaze\\Desktop\\DCC Term 3\\CIT215-Programming II\\Programming project\\programming project v2\\programming project\\bin\\Debug\\programming project.exe";
            p.Start();
        }
    }
}