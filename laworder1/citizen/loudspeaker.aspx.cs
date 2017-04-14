using System;
using System.Data;
using System.Data.SqlClient;

using System.Configuration;

namespace laworder1.citizen
{
    public partial class loudspeaker : System.Web.UI.Page
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
                lblNameL.Text = tbl.Rows[0]["name"].ToString(); ;
                lblFatherNameL.Text = tbl.Rows[0]["fathername"].ToString(); ;
                lblDOBL.Text = tbl.Rows[0]["dob"].ToString(); ;
                lblAreaL.Text = tbl.Rows[0]["area"].ToString(); ;
                lblContactL.Text = tbl.Rows[0]["contact"].ToString();
                lblAddressL.Text = tbl.Rows[0]["adderess"].ToString(); ;
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

        protected void txtPinCode_TextChanged(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);
            da = new SqlDataAdapter("Select name from area where pincode=" + txtPinCodeL.Text + "order by name", con);
            tbl = new DataTable();
            da.Fill(tbl);
            ddlPinCodeL.DataSource = tbl;

            ddlPinCodeL.DataTextField = "name";


            ddlPinCodeL.DataBind();

            ddlPinCodeL.Items.Insert(0, "Select Area");
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            String description = "-Name :" + txtNameL.Text + " -Reason:" + txtReasonL.Text + " -Start Day:" + txtStartDateL.Text + " -End Date:" + txtEndDateL.Text + " -Time" + txtEndTimeL.Text + " -Area:" + ddlPinCodeL.SelectedItem.Value;
            con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);
            da = new SqlDataAdapter("insert into license_applied(type,description,applied_by) values('Loud Speaker','" + description + "','" + Convert.ToInt64(Session["login"].ToString()) + "')", con);
            tbl = new DataTable();
            da.Fill(tbl);
            
            Session["msg"] = "Your application is registerd";
            Session["msg1"] = "Please check your history page to check updates";
            Response.Redirect("message.aspx");
        }

        protected void ddlPinCode_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}