using System;
using System.Data;
using System.IO;

using System.Data.SqlClient;
using System.Configuration;
namespace laworder1.admin
{
    public partial class casereport : System.Web.UI.Page
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
                //showReport();
            }
            else
            {
                Session["error"] = "Admin. Please provide your credentials again.";
                Response.Redirect("../UserLogin.aspx");

            }
        }
       

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            
                con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);
                SqlCommand cmd = new SqlCommand("select f.fir_id,f.summary,f.CreatedOn,u.name,u.contact,u.adderess,u.area,u.email from fir_details as f inner join users as u on f.applicantdtl=u.userid where f.fir_id='" + txtUserMail.Text + "'", con);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                GridView1.DataSource = rdr;
                GridView1.DataBind();
           
            
             
        }
    }
}