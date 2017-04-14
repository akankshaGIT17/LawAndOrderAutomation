using System;
using System.Data;
using System.Data.SqlClient;

using System.Configuration;

namespace laworder1.citizen
{
    public partial class missingvaluables : System.Web.UI.Page
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
                Session["error"] = "You need to login to use our services";
                Response.Redirect("../UserLogin.aspx");
            }

        }

        protected void txtPinCode_TextChanged(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);
            da = new SqlDataAdapter("Select name from area where pincode=" + txtPinCode.Text + "order by name", con);
            tbl = new DataTable();
            da.Fill(tbl);
            ddlPinCode.DataSource = tbl;

            ddlPinCode.DataTextField = "name";


            ddlPinCode.DataBind();

            ddlPinCode.Items.Insert(0, "Select Area");

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
         //   String description1 = " -Worth  " + txtWorth.Text + " -Date  " + txtDOB.Text + " -Time  " + txtTime.Text + " -Details  " + txtTheftDetail.Text;
            String values = "-Worth :" + txtWorth.Text + " -Date:" + txtDOB.Text + " -Time:" + txtTime.Text + " -Details:" + txtTheftDetail.Text;
            con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);
            da = new SqlDataAdapter("insert into missingvaluable(name,complained_by,area,description) values('" + txtMissingValuable.Text + "','" + Convert.ToInt64(Session["login"].ToString()) + "','" + ddlPinCode.SelectedItem.Value + "','" + values + "')", con);
            tbl = new DataTable();
            da.Fill(tbl);
            da = new SqlDataAdapter("select max(valuable_id) from missingvaluable ", con);
            tbl = new DataTable();
            da.Fill(tbl);

            Session["msg"] = "Your Complaint id is : " + DateTime.Now.Year.ToString() + txtPinCode.Text + tbl.Rows[0][0].ToString().PadLeft(4, '0') ;
            Session["msg1"] = " Please record your complaint id for further reference.";
            da = new SqlDataAdapter("update missingvaluable set complaintid='" + DateTime.Now.Year.ToString() + txtPinCode.Text + tbl.Rows[0][0].ToString().PadLeft(4, '0') + "'where complained_by=" + Convert.ToInt64(Session["login"].ToString()) + " and area='" + ddlPinCode.SelectedItem.Value + "'", con);
            tbl = new DataTable();

            da.Fill(tbl);
            Response.Redirect("message.aspx");
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session["error1"] = "You have successfully logged out!";

            Response.Redirect("../UserLogin.aspx");
        }

        protected void ddlPinCode_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}