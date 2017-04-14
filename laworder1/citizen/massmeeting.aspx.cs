using System;
using System.Data;
using System.Data.SqlClient;

using System.Configuration;


namespace laworder1.citizen
{
    public partial class massmeeting : System.Web.UI.Page
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
                lblName.Text=tbl.Rows[0]["name"].ToString();;
                lblFatherName.Text = tbl.Rows[0]["fathername"].ToString(); ;
                lblDOB.Text=tbl.Rows[0]["dob"].ToString();;
                lblArea.Text=tbl.Rows[0]["area"].ToString();;
                lblContact.Text=tbl.Rows[0]["contact"].ToString();
                lblAddress.Text = tbl.Rows[0]["adderess"].ToString(); ;
            }
            else
            {
                Session["error"] = "You need to login to use our services";
                Response.Redirect("../UserLogin.aspx");
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            String description = "-Reason :" + txtReason.Text + " -Place:" + txtOccurence.Text + " -Start Time:" + txtStartTime.Text + " -End Time:" + txtEndTime.Text +" -Participants"+txtParticipants.Text;
            con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);
            da = new SqlDataAdapter("insert into license_applied(type,description,applied_by) values('Mass Meeting','"+description+"','" + Convert.ToInt64(Session["login"].ToString()) + "')", con);
            tbl = new DataTable();
            da.Fill(tbl);
     //       da = new SqlDataAdapter("select max(valuable_id) from missingvaluable ", con);
            //   tbl = new DataTable();
            //   da.Fill(tbl);
            //
            //   Session["msg"] = "Your Complaint id is : " + DateTime.Now.Year.ToString() + txtPinCode.Text + tbl.Rows[0][0].ToString().PadLeft(4, '0');
            //   Session["msg1"] = " Please record your complaint id for further reference.";
            //   da = new SqlDataAdapter("update missingvaluable set complaintid='" + DateTime.Now.Year.ToString() + txtPinCode.Text + tbl.Rows[0][0].ToString().PadLeft(4, '0') + "'where complained_by=" + Convert.ToInt64(Session["login"].ToString()) + " and area='" + ddlPinCode.SelectedItem.Value + "'", con);
            //   tbl = new DataTable();

           // da.Fill(tbl);
            Session["msg"] = "Your application is registerd";
            Session["msg1"] = "Please check your history page to check updates";
            Response.Redirect("message.aspx");
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session["error1"] = "You have successfully logged out!";

            Response.Redirect("../UserLogin.aspx");
        }
    }
}