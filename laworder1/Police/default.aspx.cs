using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace laworder1.Police
{
    public partial class _default : System.Web.UI.Page
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
            }
            else
            {
                Session["error"] = "Admin. Please provide your credentials again.";
                Response.Redirect("../UserLogin.aspx");

            }
        }
        public string getFIRData()
        {

            string htmlStr = "";

            con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);
            SqlCommand command = con.CreateCommand();
            command.CommandText = "select TOP 3 fir_id from fir_details ";
            con.Open();
            SqlDataReader reader = command.ExecuteReader();



            while (reader.Read())
            {

                string firid = reader["fir_id"].ToString();

                htmlStr += "<tr><td>" + firid + "</td><td></tr>";
            }
            con.Close();
            return htmlStr;

        }
        public string getPettyData()
        {

            string htmlStr = "";

            con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);
            SqlCommand command = con.CreateCommand();
            command.CommandText = "select TOP 3 petty_id from petty_case ";
            con.Open();
            SqlDataReader reader = command.ExecuteReader();



            while (reader.Read())
            {

                string firid = reader["petty_id"].ToString();

                htmlStr += "<tr><td>" + firid + "</td><td></tr>";
            }
            con.Close();
            return htmlStr;

        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session["error1"] = "You have successfully logged out!";
            Response.Redirect("../UserLogin.aspx");
        }
    }
}