using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Account
{
    public partial class ViewDelovi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(conn());

            using (con)
            {
                try
                {

                    con.Open();

                    prikaziDelove(con);

                }
                catch (Exception ex)
                {
                    ErrorLabel.Text = "SERVER ERROR";
                    System.Diagnostics.Debug.WriteLine(ex.Message);
                    System.Diagnostics.Debug.WriteLine(ex.StackTrace);
                }
            }
        }

        string conn()
        {
            return "Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=Delovi;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
        }

        void prikaziDelove(SqlConnection con)
        {

            string query = "SELECT * FROM DeloviAutomobila";

            SqlCommand cmd = new SqlCommand(query, con);

            SqlDataReader reader = cmd.ExecuteReader();

            GridView1.DataSource = reader;

            GridView1.DataBind();
        }
    }
}