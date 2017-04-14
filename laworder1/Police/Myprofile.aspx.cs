using System;
using System.Data;
using System.IO;

using System.Data.SqlClient;
using System.Configuration;

namespace laworder1.Police
{
    public partial class Myprofile : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataAdapter da;
        DataTable tbl;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["msg"] != null)
            { lblMag.Text = Session["msg"].ToString(); }
            if (Session["login"] != null)
            {
                con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);
                da = new SqlDataAdapter("select name,password from users where userid='" + Convert.ToInt64(Session["login"].ToString()) + "'", con);
                tbl = new DataTable();
                da.Fill(tbl);

                this.Master.UserName = tbl.Rows[0]["name"].ToString();
                lblPassword.Text = tbl.Rows[0]["password"].ToString(); ;

            }
            else
            {
                Session["error"] = "Admin. Please provide your credentials again.";
                Response.Redirect("../UserLogin.aspx");

            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string Query1 = "update user_login set password='" + txtPassword.Text + "' where syscode='" + Convert.ToInt64(Session["login"].ToString()) + "'";
            da = new SqlDataAdapter(Query1, con);
            da.Fill(tbl);
            string Query = "update users set password='" + txtPassword.Text + "' where userid='" + Convert.ToInt64(Session["login"].ToString()) + "'";
            da = new SqlDataAdapter(Query, con);
            da.Fill(tbl);

            Session["msg"] = "Password updated!";
          
            Response.Redirect("Myprofile.aspx");
        }
    }
}