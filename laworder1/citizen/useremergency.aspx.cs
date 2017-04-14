using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web;
namespace laworder1.citizen
{
    public partial class useremergency : System.Web.UI.Page
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
                da = new SqlDataAdapter("select name from users where userid='" + Convert.ToInt64(Session["login"].ToString()) + "'", con);
                tbl = new DataTable();
                da.Fill(tbl);
                lblUserName.Text = tbl.Rows[0]["name"].ToString();
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
                txtIp.Text = ip.ToString();
                lblIP.Text = ip.ToString();
            }


        }

        protected void btnSubmitH_Click(object sender, EventArgs e)
        {
            var dateAsString = DateTime.Today.ToString("yyyy-MM-dd");
            con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);
            da = new SqlDataAdapter("insert into complaints(loc,decription,crimetype,cdate,ip) values('" + ddlPinCodeH.SelectedItem.Value + "','" + txtComplaint.Text + "','e'," + dateAsString + ",'" + txtIp.Text + "')", con);
            tbl = new DataTable();
            da.Fill(tbl);
            da = new SqlDataAdapter("select max(cid) from complaints ", con);
            tbl = new DataTable();
            da.Fill(tbl);

            Session["msg"] = "Your Complaint id is : " + DateTime.Now.Year.ToString() + txtPinCodeH.Text + tbl.Rows[0][0].ToString().PadLeft(4, '0') + " Please record your complaint id for further reference.";
            da = new SqlDataAdapter("update complaints set complaintid='" + DateTime.Now.Year.ToString() + txtPinCodeH.Text + tbl.Rows[0][0].ToString().PadLeft(4, '0') + "'where cid=" + Convert.ToInt32(tbl.Rows[0][0].ToString()) + "", con);
            tbl = new DataTable();

            da.Fill(tbl);


           // Session["msg"] = "Your complaint is registered with us successfully. Please record your complaint id for further reference.";
            Response.Redirect("useremergency.aspx");
        }

        protected void btnLogout_Click1(object sender, EventArgs e)
        {
            Session["error1"] = "You have successfully logged out!";

            Response.Redirect("../UserLogin.aspx");
        }

        protected void txtPinCodeH_TextChanged1(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);
            da = new SqlDataAdapter("Select name from area where pincode=" + txtPinCodeH.Text + "order by name", con);
            tbl = new DataTable();
            da.Fill(tbl);
            ddlPinCodeH.DataSource = tbl;

            ddlPinCodeH.DataTextField = "name";


            ddlPinCodeH.DataBind();

            ddlPinCodeH.Items.Insert(0, "Select Area");
        }
    }
}