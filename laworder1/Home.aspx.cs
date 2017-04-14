using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace laworder1
{
    public partial class Home : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataAdapter da;
        DataTable tbl;
        protected void Page_Load(object sender, EventArgs e)
        {
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

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);
            da = new SqlDataAdapter("select * from user_login where userid='" + txtEmailId.Text + "' and password='" + txtPassword.Text + "'and IsActive='1'", con);
            tbl = new DataTable();
            da.Fill(tbl);
            if (tbl.Rows.Count > 0)
            {
                da = new SqlDataAdapter("select syscode,roletype from user_login where userid='" + txtEmailId.Text + "'", con);
                tbl = new DataTable();
                da.Fill(tbl);
                if ((tbl.Rows[0]["roletype"].ToString() == "1"))
                {
                    Session["login"] = tbl.Rows[0]["syscode"].ToString();
                    Response.Redirect("citizen/Default.aspx");
                }
                else
                {
                    Session["error"] = "Your User Id or Password is not correct OR your acccount is still not active.";
                    Response.Redirect("UserLogin.aspx");
                }
            }
            else
            {
                Session["error"] = "Your User Id or Password is not correct OR your acccount is still not active.";
                Response.Redirect("UserLogin.aspx");
            }
            


        }
       
    }
}