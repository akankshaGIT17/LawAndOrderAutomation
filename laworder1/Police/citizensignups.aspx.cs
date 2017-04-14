using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.Net.Mail;

namespace laworder1.Police
{
    public partial class citizensignups : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataAdapter da;
        DataTable tbl;
        String police = "";
        string policearea = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["policemsg"] != null)
            {
                lblPolice.Text = Session["policemsg"].ToString();
            }
           
            if (Session["login"] != null)
            {
                con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);
                da = new SqlDataAdapter("select name,email,area from users where userid='" + Convert.ToInt64(Session["login"].ToString()) + "'", con);
                tbl = new DataTable();
                da.Fill(tbl);
                //   lblUserName.Text = tbl.Rows[0]["name"].ToString();
                //   Response.Redirect("default.aspx", true);
                this.Master.UserName = tbl.Rows[0]["name"].ToString();
               police = tbl.Rows[0]["email"].ToString();
               policearea = tbl.Rows[0]["area"].ToString();
            }
            else
            {
                Session["error"] = "Admin. Please provide your credentials again.";
                Response.Redirect("../UserLogin.aspx");

            }

        }
        public string getPendingData()
        {

            string htmlStr = "";
            try
            {
                

                    con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);
                    SqlCommand command = con.CreateCommand();
                    command.CommandText = "select u.CreatedOn,u.occupation,u.gender,u.email,u.fathername,u.name,u.idproof,u.adderess,u.area from user_login as ul inner join users as u on ul.syscode=u.userid where ul.IsActive='False' and ul.roletype='1' and u.area='"+policearea+"'";
                    con.Open();
                    SqlDataReader reader = command.ExecuteReader();
                    // String userid = reader["CreatedOn"].ToString();

                    String CreatedOn = "";
                    String Occupation = "";
                    String Gender = "";
                    String Email = "";
                    String Fathername = "";
                    String name = "";
                    String adderess = "";
                    String idproof = "";
                    String area="";
                    while (reader.Read())
                    {

                        CreatedOn = reader["CreatedOn"].ToString();
                        Occupation = reader["occupation"].ToString();
                        Gender = reader["gender"].ToString();
                        Email = reader["email"].ToString();
                        Fathername = reader["fathername"].ToString();
                        name = reader["name"].ToString();
                        adderess = reader["adderess"].ToString();
                        idproof = reader["idproof"].ToString();
                         area = reader["area"].ToString();
                        htmlStr += "<tr><td>" + name + "</td><td>" + CreatedOn + "</td><td>" + Occupation + "</td><td>" + Gender + "</td><td>" + Email + "</td><td>" + area + "</td><td>" + Fathername + "</td>" + "<td>" + adderess + "</td><td><a href='../uploads/" + idproof + "'>" + idproof + "</a></td></tr>";
                    }
                    con.Close();
                    return htmlStr;
               
            }
            catch (Exception e)
            {
                String ex = "No signups from your area.";
                return ex;
            }
        }
        public string getAcceptedData()
        {

            string htmlStr = "";
            try
            {


                con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);
                SqlCommand command = con.CreateCommand();
                command.CommandText = "select u.CreatedOn,u.occupation,u.gender,u.email,u.fathername,u.name,u.idproof,u.adderess,u.area from user_login as ul inner join users as u on ul.syscode=u.userid where ul.IsActive='True' and ul.roletype='1' and u.area='" + policearea + "'";
                con.Open();
                SqlDataReader reader = command.ExecuteReader();
                // String userid = reader["CreatedOn"].ToString();

                String CreatedOn = "";
                String Occupation = "";
                String Gender = "";
                String Email = "";
                String Fathername = "";
                String name = "";
                String adderess = "";
                String idproof = "";
                String area = "";
                while (reader.Read())
                {

                    CreatedOn = reader["CreatedOn"].ToString();
                    Occupation = reader["occupation"].ToString();
                    Gender = reader["gender"].ToString();
                    Email = reader["email"].ToString();
                    Fathername = reader["fathername"].ToString();
                    name = reader["name"].ToString();
                    adderess = reader["adderess"].ToString();
                    idproof = reader["idproof"].ToString();
                    area = reader["area"].ToString();
                    htmlStr += "<tr><td>" + name + "</td><td>" + CreatedOn + "</td><td>" + Occupation + "</td><td>" + Gender + "</td><td>" + Email + "</td><td>" + area + "</td><td>" + Fathername + "</td>" + "<td>" + adderess + "</td><td><a href='../uploads/" + idproof + "'>" + idproof + "</a></td></tr>";
                }
                con.Close();
                return htmlStr;

            }
            catch (Exception e)
            {
                String ex = "No signups from your area.";
                return ex;
            }
        }
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            if (ddlAccept.SelectedItem.Text == "Accept")
            {
                con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);
                da = new SqlDataAdapter("update user_login set IsActive='1',ModifiedBy='" + Convert.ToInt64(Session["login"].ToString()) + "'where userid='" + txtUserMail.Text + "'", con);
                tbl = new DataTable();
                da.Fill(tbl);
                da = new SqlDataAdapter("update users set ModifiedBy='" + Convert.ToInt64(Session["login"].ToString()) + "'where email='" + txtUserMail.Text + "'", con);
                tbl = new DataTable();
                da.Fill(tbl);
                LawMailer(txtUserMail.Text.ToString());
                Session["policemsg"] = "Updated!Account has been approved for id :+" + txtUserMail.Text + ".";

                Response.Redirect("citizensignups.aspx");
            }

            if (ddlAccept.SelectedItem.Text == "Reject")
            {
                con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);
                da = new SqlDataAdapter("update user_login set IsActive='0',ModifiedBy='" + Convert.ToInt64(Session["login"].ToString()) + "'where userid='" + txtUserMail.Text + "'", con);
                tbl = new DataTable();
                da.Fill(tbl);
                da = new SqlDataAdapter("update users set ModifiedBy='" + Convert.ToInt64(Session["login"].ToString()) + "'where email='" + txtUserMail.Text + "'", con);
                tbl = new DataTable();
                da.Fill(tbl);
                Session["policemsg"] = "Rejected!Account has been rejected for id :+" + txtUserMail.Text + ".";

                Response.Redirect("citizensignups.aspx");
            }
        }
        public bool LawMailer(string UserPassword)
        {
            bool mailStatus;
            NetworkCredential loginInfo = new NetworkCredential("lawandorder.gov@gmail.com", "laworder@1");
            MailMessage msg = new MailMessage();
            msg.From = new MailAddress("lawandorder.gov@gmail.com");
            msg.To.Add(new MailAddress(txtUserMail.Text.Trim()));
            msg.Subject = "Welcome to Law & Order Automation!";

            msg.IsBodyHtml = true;

            string strBody = "<html>";
            strBody += "<p>Welcome to law and order automation!";
            strBody += "<table cellpadding=\"1px\" cellspacing=\"1px\" border=\"0px\" width=\"100%\">";
            strBody += "<tr><td colspan='2' style=\"text-align:center\"><b>Law and Order Automation</b></td></tr><tr><td style=\"width:40%; font-family:Verdana;  font-size:12px; text-transform:uppercase; height:25px\" >Email to be used as user id: </td><td style=\"width:60%; font-family:Verdana;  font-size:12px;\">" + UserPassword + "</td></tr><tr><td colspan='2'> Police officer has reviewed your profile and your profile is now <b>ACTIVE.</b></td></tr><tr><td colspan='2'> You can nw use our services.<br>Thank you for registering with us.<br>Admin</td></tr>.";
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
                Session["policemsg"] = "Updated!Account has been approved and mail hase been send to id :+" + txtUserMail.Text + ".";

                Response.Redirect("citizensignups.aspx");
            }
            catch (SmtpException ex)
            {
                mailStatus = false;
                Session["policemsg"] = ex.ToString();

                Response.Redirect("citizensignups.aspx");
            }
            return mailStatus;
        }
    }

       
    }
