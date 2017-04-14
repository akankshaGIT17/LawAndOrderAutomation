using System;
using System.Data;
using System.Data.SqlClient;

using System.Configuration;

namespace laworder1.citizen
{
    public partial class updatepassword : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataAdapter da;
        DataTable tbl;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login"] != null)
            {
                con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);
                da = new SqlDataAdapter("select * from users where userid='" + Convert.ToInt64(Session["login"].ToString()) + "'", con);
                tbl = new DataTable();
                da.Fill(tbl);
                lblUserName.Text = tbl.Rows[0]["name"].ToString();
                lblEmail.Text = tbl.Rows[0]["email"].ToString();
            }
            else
            {
                Session["error"] = "You need to login to use our services";
                Response.Redirect("../UserLogin.aspx");
            }

        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session["error1"] = "You have successfully logged out!";

            Response.Redirect("../UserLogin.aspx");
        }

        protected void btnSignUp_Click1(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);
           
            {


                string Query1 = "update user_login set password='" + txtPassword.Text + "' where syscode='" + Convert.ToInt64(Session["login"].ToString()) + "'";
                da = new SqlDataAdapter(Query1, con);
                da.Fill(tbl);
                string Query = "update users set password='" + txtPassword.Text + "' where userid='" + Convert.ToInt64(Session["login"].ToString()) + "'";
                da = new SqlDataAdapter(Query, con);
                da.Fill(tbl);

                Session["msg"] = "Password updated!";
                Session["msg1"] = "Your password is updated successfully. Now you can login with you updated password.";
                Response.Redirect("message.aspx");
            }
        }
    }
}