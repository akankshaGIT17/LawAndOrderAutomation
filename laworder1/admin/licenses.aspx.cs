using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace laworder1.admin
{
    public partial class licenses : System.Web.UI.Page
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
        public string getLoudData()
        {

            string htmlStr = "";

            con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);
            SqlCommand command = con.CreateCommand();
            command.CommandText = "select l.CreatedOn,l.description,l.IsActive,l.applied_by,u.name,u.idproof,u.email from license_applied as l inner join users as u on l.applied_by=u.userid where l.IsActive='True' and l.type='Loud Speaker' ";
            con.Open();
            SqlDataReader reader = command.ExecuteReader();
           // String userid = reader["CreatedOn"].ToString();
           
            String appliedby = "";
            String idproof = "";
            while (reader.Read())
            {

                string AppliedOn = reader["CreatedOn"].ToString();
                string Description = reader["description"].ToString();
                appliedby = reader["name"].ToString();
                idproof = reader["idproof"].ToString();
              string  email = reader["email"].ToString();
              htmlStr += "<tr><td>" + AppliedOn + "</td><td>" + Description + "</td><td>" + appliedby + "</td><td>" + email + "</td><td><a href='../uploads/" + idproof + "'>" + idproof + "</a></td></tr>";
            }
            con.Close();
            return htmlStr;

        }
        public string getMassData()
        {

            string htmlStr = "";

            con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);
            SqlCommand command = con.CreateCommand();
            command.CommandText = "select l.CreatedOn,l.description,l.IsActive,l.applied_by,u.name,u.idproof,u.email from license_applied as l inner join users as u on l.applied_by=u.userid where l.IsActive='True' and l.type='Mass Meeting' ";
            con.Open();
            SqlDataReader reader = command.ExecuteReader();
            // String userid = reader["CreatedOn"].ToString();

            String appliedby = "";
            String idproof = "";
            while (reader.Read())
            {

                string AppliedOn = reader["CreatedOn"].ToString();
                string Description = reader["description"].ToString();
                appliedby = reader["name"].ToString();
                idproof = reader["idproof"].ToString();
                string email = reader["email"].ToString();
                htmlStr += "<tr><td>" + AppliedOn + "</td><td>" + Description + "</td><td>" + appliedby + "</td><td>" + email + "</td><td><a href='../uploads/" + idproof + "'>" + idproof + "</a></td></tr>";
            }
            con.Close();
            return htmlStr;

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);
            if (ddlLicense.SelectedItem.Text == "Loud Speaker")
            {
                if (ddlAccept.SelectedItem.Text == "Accept")
                {
                    da = new SqlDataAdapter("update license_applied set IsActive='0',ModifiedBy='" + Convert.ToInt64(Session["login"].ToString()) + "',comments='" + txtComment.Text + "' from license_applied as l join users as u on l.applied_by=u.userid where l.type='Loud Speaker'and u.email='" + txtUserMail.Text + "'", con);
                    tbl = new DataTable();
                    da.Fill(tbl);
                    Session["msg"] = "Updated!";
                    Session["msg1"] = "License has been approved for :" + txtUserMail.Text + ".";
                    Response.Redirect("message.aspx");
                }
                else
                {
                    
                    Session["msg"] = "Updated!";
                    Session["msg1"] = "License has been rejected for :" + txtUserMail.Text + ".";
                    Response.Redirect("message.aspx");
                }
            }
            if (ddlLicense.SelectedItem.Text == "Mass Meeting")
            {
                if (ddlAccept.SelectedItem.Text == "Accept")
                {
                    da = new SqlDataAdapter("update license_applied set IsActive='0',ModifiedBy='" + Convert.ToInt64(Session["login"].ToString()) + "',comments='" + txtComment.Text + "' from license_applied as l join users as u on l.applied_by=u.userid where l.type='Mass Meeting'and u.email='" + txtUserMail.Text + "'", con);
                    tbl = new DataTable();
                    da.Fill(tbl);
                    Session["msg"] = "Updated!";
                    Session["msg1"] = "License has been approved for :" + txtUserMail.Text + ".";
                    Response.Redirect("message.aspx");
                }
                else
                {

                    Session["msg"] = "Updated!";
                    Session["msg1"] = "License has been rejected for :" + txtUserMail.Text + ".";
                    Response.Redirect("message.aspx");
                }
            }
            
           
        }


    }
}