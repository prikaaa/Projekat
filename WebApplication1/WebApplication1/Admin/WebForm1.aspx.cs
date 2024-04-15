using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Admin
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            {



                try
                {

                    TextBox1.CssClass = "form-control";
                    TextBox2.CssClass = "form-control";
                    TextBox3.CssClass = "form-control";
                    TextBox4.CssClass = "form-control";
                    TextBox5.CssClass = "form-control";
                    TextBox6.CssClass = "form-control";
                    TextBox7.CssClass = "form-control";
                    TextBox8.CssClass = "form-control";


                    if (Page.IsValid)
                    {
                        Label9.ForeColor = System.Drawing.Color.DarkGreen;
                        Label9.Text = "Page Valid!";

                        string conn = Konekcija();

                        SqlConnection con = new SqlConnection(conn);


                        int id = int.Parse(TextBox1.Text);
                        string naziv = TextBox2.Text.Trim();
                        string proizvodjac = TextBox3.Text.Trim();
                        string model = TextBox4.Text.Trim();
                        int godinaproizvodnje = int.Parse(TextBox5.Text);
                        float cena = float.Parse(TextBox6.Text);
                        int kolicina = int.Parse(TextBox7.Text);
                        string kategorija = TextBox8.Text.Trim();

                        UbaciDelove(con, id, naziv,proizvodjac,model,godinaproizvodnje,cena,kolicina,kategorija);



                        Response.Redirect("~/Admin/WebForm1", false);
                    }
                    else
                    {


                        if (RequiredFieldValidator1.IsValid == false || RegularExpressionValidator1.IsValid == false)
                            TextBox1.CssClass += " alert-danger textbox-warning";
                        if (RequiredFieldValidator2.IsValid == false)
                            TextBox2.CssClass += " alert-danger textbox-warning";
                        if (RequiredFieldValidator3.IsValid == false || RegularExpressionValidator3.IsValid == false)
                            TextBox3.CssClass += " alert-danger textbox-warning";
                        if (RequiredFieldValidator4.IsValid == false || RegularExpressionValidator4.IsValid == false)
                            TextBox4.CssClass += " alert-danger textbox-warning";
                        if (TextBox5.Text.Trim().Equals("") || (int.Parse(TextBox5.Text) < 1970 || int.Parse(TextBox5.Text) > 2024))
                            TextBox5.CssClass += " alert-danger textbox-warning";
                        if (RequiredFieldValidator6.IsValid == false || RegularExpressionValidator5.IsValid == false)
                            TextBox6.CssClass += " alert-danger textbox-warning";
                        if (RequiredFieldValidator7.IsValid == false || RegularExpressionValidator6.IsValid == false)
                            TextBox7.CssClass += " alert-danger textbox-warning";
                        if (RequiredFieldValidator8.IsValid == false)
                            TextBox8.CssClass += " alert-danger textbox-warning";


                        Label9.ForeColor = System.Drawing.Color.Red;
                        Label9.Text = "Page Invalid!";

                    }

                }
                catch (Exception ex)
                {
                    ErrorLabel.Text = "SERVER ERROR";
                    ErrorLabel.ForeColor = System.Drawing.Color.Red;
                    System.Diagnostics.Debug.WriteLine("Exception Message: " + ex.Message);
                    System.Diagnostics.Debug.WriteLine("Stack Trace: " + ex.StackTrace);
                }
            }

            string Konekcija()
            {
                return "Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=Delovi;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            }

            void UbaciDelove(SqlConnection con, int id, string naziv, string proizvodjac, string model, int godinaproizvodnje, float cena, int kolicina, string kategorija)
            {
                try
                {
                    using (con)
                    {
                        con.Open();

                        SqlParameter p1 = new SqlParameter();
                        SqlParameter p2 = new SqlParameter();
                        SqlParameter p3 = new SqlParameter();
                        SqlParameter p4 = new SqlParameter();
                        SqlParameter p5 = new SqlParameter();
                        SqlParameter p6 = new SqlParameter();
                        SqlParameter p7 = new SqlParameter();
                        SqlParameter p8 = new SqlParameter();

                        p1.Value = id;
                        p2.Value = naziv;
                        p3.Value = proizvodjac;
                        p4.Value = model;
                        p5.Value = godinaproizvodnje;
                        p6.Value = cena;
                        p7.Value = kolicina;
                        p8.Value = kategorija;

                        p1.ParameterName = "@ID";
                        p2.ParameterName = "@Naziv";
                        p3.ParameterName = "@Proizvodjac";
                        p4.ParameterName = "@Model";
                        p5.ParameterName = "@GodinaProizvodnje";
                        p6.ParameterName = "@Cena";
                        p7.ParameterName = "@Kolicina";
                        p8.ParameterName = "@Kategorija";

                        string query = "INSERT INTO DeloviAutomobila (id, naziv, proizvodjac, model, godina_proizvodnje, cena, kolicina_na_skladistu, kategorija) " +
                                        "VALUES (@ID, @Naziv, @Proizvodjac, @Model, @Cena, @GodinaProizvodnje, @Kolicina, @Kategorija)";

                        SqlCommand command = new SqlCommand(query, con);

                        command.Parameters.Add(p1);
                        command.Parameters.Add(p2);
                        command.Parameters.Add(p3);
                        command.Parameters.Add(p4);
                        command.Parameters.Add(p5);
                        command.Parameters.Add(p6);
                        command.Parameters.Add(p7);
                        command.Parameters.Add(p8);

                        command.ExecuteNonQuery();
                    }

                }
                catch (Exception ex)
                {
                    ErrorLabel.Text = "SERVER ERROR";
                    ErrorLabel.ForeColor = System.Drawing.Color.Red;
                    System.Diagnostics.Debug.WriteLine("Exception Message: " + ex.Message);
                    System.Diagnostics.Debug.WriteLine("Stack Trace: " + ex.StackTrace);
                }
            }
        }
    }
}