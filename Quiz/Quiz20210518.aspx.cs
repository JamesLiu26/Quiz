using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Quiz
{
    public partial class Quiz20210518 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string scon = "Data Source=(localdb)\\ProjectsV13;" +
            "Initial Catalog=Test;" +
            "Integrated Security=True;" +
            "Connect Timeout=30;Encrypt=False;" +
            "TrustServerCertificate=False;" +
            "ApplicationIntent=ReadWrite;MultiSubnetFailover=False;" +
            "User ID = sa; Password = 12345";

            try
            {
                SqlConnection dbcon = new SqlConnection(scon);
                SqlCommand com = new SqlCommand("INSERT INTO Users(Id,Name,Birthday) VALUES(3,N'雅每每','2021/11/11')",dbcon);
                dbcon.Open();
                int reader = com.ExecuteNonQuery();
                if (reader==1)
                    Response.Write("Insert a data successfully!");
                else
                    Response.Write("Failed!");
                dbcon.Close();
            }
            catch(Exception exc)
            {
                Response.Write(exc.ToString());
            }
        }
    }
}