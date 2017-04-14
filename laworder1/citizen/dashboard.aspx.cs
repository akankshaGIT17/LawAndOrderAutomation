using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace laworder1.citizen
{
    public partial class WebForm1 : System.Web.UI.Page
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
                lblUserName.Text = tbl.Rows[0]["name"].ToString();
            }
            else
            {
                Session["error"] = "Sorry! Your session has expired. Please login again.";
                Response.Redirect("../UserLogin.aspx");
            }
            con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select image,name,reward from criminals where status='1'";
            cmd.ExecuteNonQuery();
            tbl = new DataTable();
            da = new SqlDataAdapter(cmd);
            da.Fill(tbl);
            datalist1.DataSource = tbl;
            datalist1.DataBind();

        }

        

        protected void btnLogout_Click1(object sender, EventArgs e)
        {
            Session["error1"] = "You have successfully logged out!";

            Response.Redirect("../UserLogin.aspx");
        }
    }
}