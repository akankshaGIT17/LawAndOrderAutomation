using System.Web;
using System.Data;
using System;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.Net.Mail;
namespace laworder1
{
    public partial class emergency : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataAdapter da;
        DataTable tbl;
        protected void Page_Load(object sender, EventArgs e)
        {
            String ip = HttpContext.Current.Request.ServerVariables["HTTP_X_FORWARDED_FOR"];

            if (string.IsNullOrEmpty(ip))
            {
                ip = HttpContext.Current.Request.ServerVariables["REMOTE_ADDR"];
                txtIp.Text = ip.ToString();
                lblIP.Text = ip.ToString();
            }

            
        }

        

        protected void ddlPinCodeH_SelectedIndexChanged(object sender, EventArgs e)
        {
           
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

        protected void btnSubmitH_Click(object sender, EventArgs e)
        {
            var dateAsString = DateTime.Today.ToString("yyyy-MM-dd"); 
            con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);
            da = new SqlDataAdapter("insert into complaints(loc,decription,crimetype,cdate,ip) values('" + ddlPinCodeH.SelectedItem.Value + "','" + txtComplaint.Text + "','e',"+dateAsString+",'"+txtIp.Text+"')", con);
            tbl = new DataTable();
            da.Fill(tbl);
            da = new SqlDataAdapter("select max(cid) from complaints ", con);
            tbl = new DataTable();
            da.Fill(tbl);
         
            Session["suc"] = "Your Complaint id is : "+DateTime.Now.Year.ToString() + txtPinCodeH.Text + tbl.Rows[0][0].ToString().PadLeft(4, '0');
            da = new SqlDataAdapter("update complaints set complaintid='" + DateTime.Now.Year.ToString() + txtPinCodeH.Text + tbl.Rows[0][0].ToString().PadLeft(4, '0') + "'where cid=" + Convert.ToInt32(tbl.Rows[0][0].ToString()) + "", con);
            tbl = new DataTable();
           
            da.Fill(tbl);
            da = new SqlDataAdapter("select email from police_officer where area='" + ddlPinCodeH.SelectedItem.Value + "'", con);
            tbl = new DataTable();
            da.Fill(tbl);
            if (tbl.Rows.Count > 0)
            {
                LawMailer(tbl.Rows[0][0].ToString(),txtComplaint.Text,txtIp.Text);
                // lblGreen.Text = "Password has been sent to: " + txtUserId.Text;
            }
           
            Session["sucmsg"] = "Your complaint is registered with us successfully. Please record your complaint id for further reference.";
            Response.Redirect("error.aspx");

        }
        public bool LawMailer(string UserPassword, string complaint, string ip)
        {
            bool mailStatus;
            NetworkCredential loginInfo = new NetworkCredential("lawandorder.gov@gmail.com", "laworder@1");
            MailMessage msg = new MailMessage();
            msg.From = new MailAddress("lawandorder.gov@gmail.com");
            msg.To.Add(new MailAddress(UserPassword));
            msg.Subject = "EMERGENCY COMPLAINT :Law & Order Automation!";

            msg.IsBodyHtml = true;

            string strBody = "<html>";
            strBody += "<pThere has been an emergency complaint in your area.";
            strBody += "<table cellpadding=\"1px\" cellspacing=\"1px\" border=\"0px\" width=\"100%\">";
            strBody += "<tr><td colspan='2' style=\"text-align:center\"><b>Law and Order Automation</b></td></tr><tr><td style=\"width:40%; font-family:Verdana;  font-size:12px; text-transform:uppercase; height:25px\" >Complaint: </td><td style=\"width:60%; font-family:Verdana;  font-size:12px;\">" + complaint + "</td><td style=\"width:60%; font-family:Verdana;  font-size:12px;\">IP Adderess noted :</td><td style=\"width:60%; font-family:Verdana;  font-size:12px;\">'" + ip + "'</td></tr><tr><td colspan='2'> Please look into the complaint personally.</td></tr><tr><td colspan='2'> Thank you for your cooperation.</td><td>Admin</td></tr>.";
            strBody += "</table>";
            strBody += "</body>";
            strBody += "</html>";

            msg.Body = strBody;


            SmtpClient client = new SmtpClient();
            client.Port = 587;
            client.Host = "smtp.gmail.com";
            client.EnableSsl = true;
            client.UseDefaultCredentials = false;
            client.Credentials = loginInfo;
            try
            {
                client.Send(msg);
                mailStatus = true;
                Session["suc"] = "You are Registered with us!";
                Session["sucmsg"] = "An email has been send to your id :" + UserPassword + ".Your account will be soon activated!";
                Response.Redirect("error.aspx");
            }
            catch (SmtpException ex)
            {
                mailStatus = false;
                Session["fail"] = "Error!";
                Session["failmsg"] = ex.ToString();
                Response.Redirect("error.aspx");//"Unable to recover now !";
            }
            return mailStatus;
        }

        protected void txtIp_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnResetH_Click(object sender, EventArgs e)
        {
            txtIp.Text = "";
            txtComplaint.Text = "";
            txtPinCodeH.Text = "";
        }

        
    }
}