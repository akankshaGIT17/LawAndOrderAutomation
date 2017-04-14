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
                lblUserName.Text = tbl.Rows[0]["name"].ToString();
                lblName.Text = tbl.Rows[0]["name"].ToString(); ;
                lblFatherName.Text = tbl.Rows[0]["fathername"].ToString(); ;
              //  lblDOB.Text = tbl.Rows[0]["dob"].ToString(); ;
                lblArea.Text = tbl.Rows[0]["area"].ToString(); ;
                lblContact.Text = tbl.Rows[0]["contact"].ToString();
                lblAdderess.Text = tbl.Rows[0]["adderess"].ToString(); ;
                lblPassword.Text=tbl.Rows[0]["password"].ToString(); ;
                lblOccupation.Text=tbl.Rows[0]["occupation"].ToString(); ;
                lblMarriage.Text=tbl.Rows[0]["maritialstatus"].ToString(); ;
                lblBlood.Text = tbl.Rows[0]["bloodgroup"].ToString(); ;
                lblEmail.Text = tbl.Rows[0]["email"].ToString(); ;
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
        }
    }
