using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace laworder1.admin
{
    public partial class crimereport : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataAdapter da;
        DataTable tbl;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login"] != null)
            {
                con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);
                da = new SqlDataAdapter("select name from users where userid='" + Convert.ToInt64(Session["login"].ToString()) + "'", con);
                tbl = new DataTable();
                da.Fill(tbl);
                //   lblUserName.Text = tbl.Rows[0]["name"].ToString();
                //   Response.Redirect("default.aspx", true);
                this.Master.UserName = tbl.Rows[0]["name"].ToString();
                showReport();
            }
            else
            {
                Session["error"] = "Admin. Please provide your credentials again.";
                Response.Redirect("../UserLogin.aspx");

            }


        }
        private void showReport()
        {

            con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);
            SqlCommand cmd = new SqlCommand("select * from criminals",con);
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            GridView1.DataSource = rdr;
            GridView1.DataBind();
            
        }


    }
}