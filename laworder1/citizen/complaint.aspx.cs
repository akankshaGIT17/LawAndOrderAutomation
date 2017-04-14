using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web;

namespace laworder1.citizen
{
    public partial class complaint : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataAdapter da;
        DataTable tbl;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["msg"] != null)
            {
                lblMsg.Text = Session["msg"].ToString();

            }
            if (Session["login"] != null)
            {
                con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);
                da = new SqlDataAdapter("select * from users where userid='" + Convert.ToInt64(Session["login"].ToString()) + "'", con);
                tbl = new DataTable();
                da.Fill(tbl);
                lblUserName.Text = tbl.Rows[0]["name"].ToString();
                lblNameUser.Text=tbl.Rows[0]["name"].ToString();
                lblFatherName.Text=tbl.Rows[0]["fathername"].ToString();
                lblDOB.Text=tbl.Rows[0]["dob"].ToString();
                lblContact.Text=tbl.Rows[0]["contact"].ToString();
                lblAddress.Text=tbl.Rows[0]["adderess"].ToString();
                LblArea.Text = tbl.Rows[0]["area"].ToString();
                

            }
            else
            {
                Session["error"] = "Sorry! Your session has expired. Please login again.";
                Response.Redirect("../UserLogin.aspx");
            }
            String ip = HttpContext.Current.Request.ServerVariables["HTTP_X_FORWARDED_FOR"];

            if (string.IsNullOrEmpty(ip))
            {
                ip = HttpContext.Current.Request.ServerVariables["REMOTE_ADDR"];
                txtIP.Text = ip.ToString();
                lblIP.Text = ip.ToString();
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

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            var dateAsString = DateTime.Today.ToString("yyyy-MM-dd");
            con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);
            da = new SqlDataAdapter("insert into complaints(loc,decription,crimetype,cdate,ip,userid) values('" + ddlPinCode.SelectedItem.Value + "','" + txtComplaint.Text + "','n'," + dateAsString + ",'" + txtIP.Text + "'," + Session["login"].ToString() + ")", con);
            tbl = new DataTable();
            da.Fill(tbl);
            da = new SqlDataAdapter("select max(cid) from complaints ", con);
            tbl = new DataTable();
            da.Fill(tbl);

            Session["msg"] = "Your Complaint id is : " + DateTime.Now.Year.ToString() + txtPinCode.Text + tbl.Rows[0][0].ToString().PadLeft(4, '0') + " Please record your complaint id for further reference.";
            da = new SqlDataAdapter("update complaints set complaintid='" + DateTime.Now.Year.ToString() + txtPinCode.Text + tbl.Rows[0][0].ToString().PadLeft(4, '0') + "'where cid=" + Convert.ToInt32(tbl.Rows[0][0].ToString()) + "", con);
            tbl = new DataTable();

            da.Fill(tbl);


            // Session["msg"] = "Your complaint is registered with us successfully. Please record your complaint id for further reference.";
            Response.Redirect("complaint.aspx");
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session["error1"] = "You have successfully logged out!";

            Response.Redirect("../UserLogin.aspx");
        }
    }
}