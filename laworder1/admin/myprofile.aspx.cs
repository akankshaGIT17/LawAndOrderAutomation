using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace laworder1.admin
{
    public partial class myprofile : System.Web.UI.Page
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
                //   lblUserName.Text = tbl.Rows[0]["name"].ToString();
                //   Response.Redirect("default.aspx", true);
                this.Master.UserName = tbl.Rows[0]["name"].ToString();
               
                lblName.Text = tbl.Rows[0]["name"].ToString(); ;
                lblFatherName.Text = tbl.Rows[0]["fathername"].ToString(); ;
                //  lblDOB.Text = tbl.Rows[0]["dob"].ToString(); ;
                lblArea.Text = tbl.Rows[0]["area"].ToString(); ;
                lblContact.Text = tbl.Rows[0]["contact"].ToString();
                lblAdderess.Text = tbl.Rows[0]["adderess"].ToString(); ;
                lblPassword.Text = tbl.Rows[0]["password"].ToString(); ;
                lblOccupation.Text = tbl.Rows[0]["occupation"].ToString(); ;
                lblMarriage.Text = tbl.Rows[0]["maritialstatus"].ToString(); ;
                lblBlood.Text = tbl.Rows[0]["bloodgroup"].ToString(); ;
                lblEmail.Text = tbl.Rows[0]["email"].ToString(); ;
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
            Session["msg1"] = "Your password is updated successfully. Now you can login with you updated password.";
            Response.Redirect("message.aspx");
        }

        protected void btnProfile_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);
            string Query = "update users set name='" + txtName.Text + "',fathername='" + txtFatherName.Text + "',maritialstatus='" + rbtMaritialStatus.SelectedItem.Text + "',contact=" + txtMobileNo.Text + ",adderess='" + txtAddress1.Text + "',area='" + ddlPinCode.SelectedItem.Text + "',state='Haryana',bloodgroup='" + ddlBloodGroup.SelectedItem.Text + "' where userid='" + Convert.ToInt64(Session["login"].ToString()) + "'";
            da = new SqlDataAdapter(Query, con);
            da.Fill(tbl);

            Session["msg"] = "Profile updated!";
            Session["msg1"] = "Your profile is updated successfully.";
            Response.Redirect("message.aspx");
        }

        protected void txtPinCode_TextChanged(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);
            da = new SqlDataAdapter("Select name from area where pincode='" + txtPinCode.Text + "'", con);
            tbl = new DataTable();
            da.Fill(tbl);
            ddlPinCode.DataSource = tbl;
            ddlPinCode.DataTextField = "name";
            ddlPinCode.DataBind();
            ddlPinCode.Items.Insert(0, "Select Area");
        }

        protected void ddlPinCode_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}