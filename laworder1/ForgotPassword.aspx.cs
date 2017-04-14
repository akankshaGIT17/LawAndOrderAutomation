using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.Net.Mail;


namespace laworder1
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataAdapter da;
        DataTable tbl;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSendPassword_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);
            con.Open();

            da = new SqlDataAdapter("Select password from user_login Where userid='" + txtUserId.Text.Trim() + "'", con);
            tbl = new DataTable();
            da.Fill(tbl);
            if (tbl.Rows.Count > 0)
            {
                LawMailer(tbl.Rows[0][0].ToString());
                lblGreen.Text = "Password has been sent to: " + txtUserId.Text;
            }
            else
            {
                lblRed.Text = "User Id is not valid !";
            }
            con.Dispose();
            con.Close();
        }

        public bool LawMailer(string UserPassword)
        {
            bool mailStatus;
            NetworkCredential loginInfo = new NetworkCredential("lawandorder.gov@gmail.com", "laworder@1");
            MailMessage msg = new MailMessage();
            msg.From = new MailAddress("lawandorder.gov@gmail.com");
            msg.To.Add(new MailAddress(txtUserId.Text.Trim()));
            msg.Subject = "Law and order automation password recovery.";

            msg.IsBodyHtml = true;

            string strBody = "<html>";
            strBody += "<p>You forgot your password!. Here we are reminding you with your present password.";
            strBody += "<table cellpadding=\"1px\" cellspacing=\"1px\" border=\"1px\" width=\"100%\">";
            strBody += "<tr><td colspan='2' style=\"text-align:center\"><b>Law and Order Automation</b></td></tr><tr><td style=\"width:40%; font-family:Verdana;  font-size:12px; text-transform:uppercase; height:25px\" >Password: </td><td style=\"width:60%; font-family:Verdana;  font-size:12px;\">" + UserPassword + "</td></tr>";
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
            }
            catch (SmtpException ex)
            {
                mailStatus = false;
                lblRed.Text = ex.ToString();//"Unable to recover now !";
            }
            return mailStatus;
        }
    }
}