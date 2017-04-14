using System;
using System.Data;
using System.IO;

using System.Data.SqlClient;
using System.Configuration;


namespace laworder1.Police
{
    public partial class Casefiles : System.Web.UI.Page
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

                this.Master.UserName = tbl.Rows[0]["name"].ToString();


            }
            else
            {
                Session["error"] = "Admin. Please provide your credentials again.";
                Response.Redirect("../UserLogin.aspx");

            }
        }

       
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            if (ddlAccept.SelectedItem.Text == "FIR")
            {
                con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);
                da = new SqlDataAdapter("select f.fir_id,f.summary,f.CreatedOn,u.name,u.contact,u.adderess,u.area,u.email from fir_details as f inner join users as u on f.applicantdtl=u.userid where f.fir_id='"+txtUserMail.Text+"'", con);
                tbl = new DataTable();
                da.Fill(tbl);
                lblname.Text=tbl.Rows[0]["name"].ToString();
                lblDesc.Text = tbl.Rows[0]["summary"].ToString();
                lblArea.Text = tbl.Rows[0]["area"].ToString();
                lblCreated.Text = tbl.Rows[0]["CreatedOn"].ToString();
                lblEmail.Text = tbl.Rows[0]["email"].ToString();
                lblContact.Text = tbl.Rows[0]["contact"].ToString();
                lblAdd.Text = tbl.Rows[0]["adderess"].ToString();
            }
            if (ddlAccept.SelectedItem.Text == "Petty Case")
            {
                con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);
                
                da = new SqlDataAdapter("select p.petty_id,p.summary,p.CreatedOn,u.name,u.contact,u.adderess,u.area,u.email from petty_case as p inner join users as u on p.applicantdtl=u.userid where p.petty_id='" + txtUserMail.Text + "'", con);
                tbl = new DataTable();
                da.Fill(tbl);
                lblname.Text = tbl.Rows[0]["name"].ToString();
                lblDesc.Text = tbl.Rows[0]["summary"].ToString();
                lblArea.Text = tbl.Rows[0]["area"].ToString();
                lblCreated.Text = tbl.Rows[0]["CreatedOn"].ToString();
                lblEmail.Text = tbl.Rows[0]["email"].ToString();
                lblContact.Text = tbl.Rows[0]["contact"].ToString();
                lblAdd.Text = tbl.Rows[0]["adderess"].ToString();
            }
        }
    }
}