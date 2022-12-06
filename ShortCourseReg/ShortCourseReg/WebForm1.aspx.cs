using System;
using System.Collections.Generic;
using System.Configuration;
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
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DB"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        DataSet dataSet;
        int count = 0;

        public string mm(int i)
        {
            //foreach (DataRow row in dataSet.Tables[0].Rows)
            //{
            //    if ((int)row[0] == i )
            //    {
            //        Debug.WriteLine("count "+count);
            //        Debug.WriteLine("row "+row[0]);
            //        count++;
            //    }
                    
            //}
            byte[] imag = (byte[])(dataSet.Tables[0].Rows[count]["ItemImage"]);
            count++;
            string imge_string = Convert.ToBase64String(imag);
            string im = "data:Image/png;base64," + imge_string;
            return im;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string SQL_Command = "SELECT * from Items ";
                con.Open();
                cmd = new SqlCommand(SQL_Command, con);
                SqlDataAdapter adb = new SqlDataAdapter(cmd);

                dataSet = new DataSet();
                adb.Fill(dataSet);
                DataList1.DataSource = dataSet;
                DataList1.DataBind();
                con.Close();
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            //    Process p = new Process();
            //    p.StartInfo.FileName = "C:\\Users\\alaze\\Desktop\\DCC Term 3\\CIT215-Programming II\\Programming project\\programming project v2\\programming project\\bin\\Debug\\programming project.exe";
            //    p.Start();
            Response.Redirect("https://www.dcc.kfupm.edu.sa/");
        }

        

        protected void submet_Click(object sender, EventArgs e)
        {
            
            Button button = (Button)sender;
            DataListItem dd = (DataListItem)button.NamingContainer;

            Label lbl = dd.FindControl("Label1") as Label;
            Response.Redirect("");
            Debug.WriteLine(lbl.Text);
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Debug.WriteLine("nljgjgf");
        }
    }
}