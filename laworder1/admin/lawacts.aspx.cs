using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace laworder1.admin
{
    public partial class lawacts : System.Web.UI.Page
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

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);
            da = new SqlDataAdapter("insert into law_modules(name,section,description,CreatedBy) values('" + txtName.Text + "','" + txtSection.Text + "','" + txtDescription.Text + "'," + Convert.ToInt64(Session["login"].ToString()) + ")", con);
            tbl = new DataTable();
            da.Fill(tbl);
            Session["msg"] = "Act :"+txtSection.Text+" has been added!";
            Session["msg1"] = txtSection.Text+" Has been udated with title " + txtName.Text + ".";
            Response.Redirect("message.aspx");
        }

        protected void txtAct_TextChanged(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);
            SqlCommand command = con.CreateCommand();
           da = new SqlDataAdapter( "select name,description from law_modules where section='" + txtAct.Text + "'",con);
           tbl = new DataTable();
           da.Fill(tbl);
           if (tbl.Rows.Count > 0)
           {
               txtName2.Text = tbl.Rows[0]["name"].ToString();
               txtDescrition2.Text = tbl.Rows[0]["description"].ToString();
           }
           else
           { txtName2.Text = "NO SUCH ACT FOUND"; }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);
            da = new SqlDataAdapter("update law_modules set name='" + txtName2.Text + "',description='" + txtDescrition2.Text + "'where  section='" + txtAct.Text + "'", con);
            tbl = new DataTable();
            da.Fill(tbl);
            Session["msg"] = "Act: " + txtAct.Text + " Updated!";
            Session["msg1"] = "Act has been updated with title :" + txtName2.Text + ".";
            Response.Redirect("message.aspx");
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);
            Session["msg"] = "Act: " + txtAct.Text + " Deleted!";
            Session["msg1"] = "Act has been deleted with title :" + txtName2.Text + ".";
            da = new SqlDataAdapter("delete from law_modules where  section='" + txtAct.Text + "'", con);
            tbl = new DataTable();
            da.Fill(tbl);
           // Session["msg"] = "Act: " + txtAct.Text + " Updated!";
           // Session["msg1"] = "Act has been updated with title :" + txtName2.Text + ".";
            Response.Redirect("message.aspx");

        }
    }
}