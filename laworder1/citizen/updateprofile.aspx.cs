using System;
using System.Data;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data.SqlClient;
using System.Configuration;
namespace laworder1.citizen
{
    public partial class updateprofile : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataAdapter da;
        DataTable tbl;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillCapctha();

            }
           
            if (Session["login"] != null)
            {
                con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);

                da = new SqlDataAdapter("select * from users where userid='" + Convert.ToInt64(Session["login"].ToString()) + "'", con);

                tbl = new DataTable();
                da.Fill(tbl);
                if (tbl.Rows.Count > 0)
                {
                    lblUserName.Text = tbl.Rows[0]["name"].ToString();

                }
            }
            else
            {
                Session["error"] = "Sorry! Your session has expired. Please login again.";
                Response.Redirect("../UserLogin.aspx");
            }
        }
        void FillCapctha()
        {
            try
            {
                Random random = new Random();
                string combination = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
                StringBuilder captcha = new StringBuilder();
                for (int i = 0; i < 6; i++)
                    captcha.Append(combination[random.Next(combination.Length)]);
                Session["captcha"] = captcha.ToString();
                imgCaptcha.ImageUrl = "../captcha.aspx?" + DateTime.Now.Ticks.ToString();
            }
            catch
            {

                throw;
            }

        }



        protected void btnSignUp_Click1(object sender, EventArgs e)
        {

            if (Session["captcha"].ToString() != txtCaptcha.Text)
            {

                Session["msg"] = "You entered wrong captcha!";
                Session["msg1"] = "Your profile is was not updated.";
                Response.Redirect("message.aspx");

            }
            else
            {

            } FillCapctha();

            con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);
            
            {


               
                string Query = "update users set name='" + txtName.Text + "',fathername='" + txtFatherName.Text + "',occupation='" + ddlOccupation.SelectedItem.Text + "',maritialstatus='" + rbtMaritialStatus.SelectedItem.Text + "',contact=" + txtMobileNo.Text + ",adderess='" + txtAddress1.Text + "',area='" + ddlPinCode.SelectedItem.Text + "',state='Haryana',bloodgroup='" + ddlBloodGroup.SelectedItem.Text + "' where userid='" + Convert.ToInt64(Session["login"].ToString()) + "'";
                da = new SqlDataAdapter(Query, con);
                da.Fill(tbl);

                Session["msg"] = "Profile updated!";
                Session["msg1"] = "Your profile is updated successfully.";
                Response.Redirect("message.aspx");
            }


        }

        protected void ddlPinCode_SelectedIndexChanged(object sender, EventArgs e)
        {

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

        protected void btnRefresh_Click1(object sender, EventArgs e)
        {
            FillCapctha();
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session["error1"] = "You have successfully logged out!";
            Response.Redirect("../UserLogin.aspx");
        }
    }
}