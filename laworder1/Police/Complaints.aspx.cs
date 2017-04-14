using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.Net.Mail;


namespace laworder1.Police
{
    public partial class Complaints : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataAdapter da;
        DataTable tbl;
        String ps_id = "";
        String crimeid = "";
        String crimeuserid = "";
        String police = "";
        string policearea = "";
        String CreatedOn = "";
        String Occupation = "";
        String Gender = "";
        String Email = "";
        String contact = "";
        String name = "";
        String adderess = "";
        String idproof = "";
        String area = "";
        String crimeloc = "";
        String crimedesc = "";
        String complaintid = "";
        String complainton = "";
        String crimedate = "";
        String IP = "";
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
               
                da = new SqlDataAdapter("select ps_id from police_officer where email='" + police + "'", con);
                tbl = new DataTable();
                da.Fill(tbl);
                ps_id = tbl.Rows[0]["ps_id"].ToString();
            }
            else
            {
                Session["error"] = "Admin. Please provide your credentials again.";
                Response.Redirect("../UserLogin.aspx");

            }
        }
        public string getCrimeData()
        {

            string htmlStr = "";
            try
            {


                con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);
                SqlCommand command = con.CreateCommand();
                command.CommandText = "select u.occupation,u.contact,u.gender,u.email,u.name,u.idproof,u.adderess,u.area,c.* from users as u inner join complaints as c on u.userid=c.userid where c.IsActive='False' and c.loc='" + policearea + "' and c.crimetype='n'";
                con.Open();
                SqlDataReader reader = command.ExecuteReader();
                // String userid = reader["CreatedOn"].ToString();

                
                while (reader.Read())
                {
                    IP = reader["ip"].ToString(); ;
                    CreatedOn = reader["CreatedOn"].ToString();
                    Occupation = reader["occupation"].ToString();
                    Gender = reader["gender"].ToString();
                    Email = reader["email"].ToString();
                    contact = reader["contact"].ToString();
                    name = reader["name"].ToString();
                    adderess = reader["adderess"].ToString();
                    idproof = reader["idproof"].ToString();
                    area = reader["area"].ToString();
                    crimeloc = reader["loc"].ToString();
                    crimedesc = reader["decription"].ToString();
                    complaintid = reader["complaintid"].ToString();
                    //complainton = reader["cdate"].ToString();
                     crimedate = reader["cdate"].ToString();
                    crimeid = reader["cid"].ToString();
                    crimeuserid = complainton = reader["userid"].ToString();
                    htmlStr += "<tr><td>" + name + "</td><td>" + crimedesc + "</td><td>" + crimeloc + "</td><td>" + Gender + "</td><td>" + Occupation + "</td><td>" + CreatedOn + "</td><td>" + crimedate + "</td><td>" + area + "</td><td>" + IP + "</td><td>" + Gender + "</td><td>" + Email + "</td><td>" + area + "</td><td>" + complaintid + "</td><td>" + contact + "</td><td>" + adderess + "</td><td><a href='../uploads/" + idproof + "'>" + idproof + "</a></td></tr>";
                }
                con.Close();
                return htmlStr;

            }
            catch (Exception e)
            {
                string ex = "";

                Session["policemsg"] = e.ToString(); ;

                Response.Redirect("citizensignups.aspx");
                return ex;
            }
        }
        public string getFIRData()
        {

            string htmlStr = "";
            try
            {


                con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);
                SqlCommand command = con.CreateCommand();
                command.CommandText = "select u.occupation,u.contact,u.gender,u.email,u.name,u.idproof,u.adderess,u.area,c.* from users as u inner join complaints as c on u.userid=c.userid where c.IsActive='True' and c.loc='" + policearea + "' and c.complainttype='FIR'";
                con.Open();
                SqlDataReader reader = command.ExecuteReader();
                // String userid = reader["CreatedOn"].ToString();


                while (reader.Read())
                {
                   
                    IP = reader["ip"].ToString(); ;
                    CreatedOn = reader["CreatedOn"].ToString();
                    Occupation = reader["occupation"].ToString();
                    Gender = reader["gender"].ToString();
                    Email = reader["email"].ToString();
                    contact = reader["contact"].ToString();
                    name = reader["name"].ToString();
                    adderess = reader["adderess"].ToString();
                    idproof = reader["idproof"].ToString();
                    area = reader["area"].ToString();
                    crimeloc = reader["loc"].ToString();
                    crimedesc = reader["decription"].ToString();
                    complaintid = reader["complaintid"].ToString();
                    //complainton = reader["cdate"].ToString();
                    crimedate = reader["cdate"].ToString();
                    crimeid = reader["cid"].ToString();
                    crimeuserid = complainton = reader["userid"].ToString();
                    htmlStr += "<tr><td>" + name + "</td><td>" + crimedesc + "</td><td>" + crimeloc + "</td><td>" + Gender + "</td><td>" + Occupation + "</td><td>" + CreatedOn + "</td><td>" + crimedate + "</td><td>" + area + "</td><td>" + IP + "</td><td>" + Gender + "</td><td>" + Email + "</td><td>" + area + "</td><td>" + complaintid + "</td><td>" + contact + "</td><td>" + adderess + "</td><td><a href='../uploads/" + idproof + "'>" + idproof + "</a></td></tr>";
                }
                con.Close();
                return htmlStr;

            }
            catch (Exception e)
            {
                string ex = "";

                Session["policemsg"] = e.ToString(); ;

                Response.Redirect("citizensignups.aspx");
                return ex;
            }
        }
        public string getPETTYData()
        {

            string htmlStr = "";
            try
            {


                con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);
                SqlCommand command = con.CreateCommand();
                command.CommandText = "select u.occupation,u.contact,u.gender,u.email,u.name,u.idproof,u.adderess,u.area,c.* from users as u inner join complaints as c on u.userid=c.userid where c.IsActive='True' and c.loc='" + policearea + "' and c.complainttype='PETTY'";
                con.Open();
                SqlDataReader reader = command.ExecuteReader();
                // String userid = reader["CreatedOn"].ToString();


                while (reader.Read())
                {

                    IP = reader["ip"].ToString(); ;
                    CreatedOn = reader["CreatedOn"].ToString();
                    Occupation = reader["occupation"].ToString();
                    Gender = reader["gender"].ToString();
                    Email = reader["email"].ToString();
                    contact = reader["contact"].ToString();
                    name = reader["name"].ToString();
                    adderess = reader["adderess"].ToString();
                    idproof = reader["idproof"].ToString();
                    area = reader["area"].ToString();
                    crimeloc = reader["loc"].ToString();
                    crimedesc = reader["decription"].ToString();
                    complaintid = reader["complaintid"].ToString();
                    //complainton = reader["cdate"].ToString();
                    crimedate = reader["cdate"].ToString();
                    crimeid = reader["cid"].ToString();
                    crimeuserid = complainton = reader["userid"].ToString();
                    htmlStr += "<tr><td>" + name + "</td><td>" + crimedesc + "</td><td>" + crimeloc + "</td><td>" + Gender + "</td><td>" + Occupation + "</td><td>" + CreatedOn + "</td><td>" + crimedate + "</td><td>" + area + "</td><td>" + IP + "</td><td>" + Gender + "</td><td>" + Email + "</td><td>" + area + "</td><td>" + complaintid + "</td><td>" + contact + "</td><td>" + adderess + "</td><td><a href='../uploads/" + idproof + "'>" + idproof + "</a></td></tr>";
                }
                con.Close();
                return htmlStr;

            }
            catch (Exception e)
            {
                string ex = "";

                Session["policemsg"] = e.ToString(); ;

                Response.Redirect("citizensignups.aspx");
                return ex;
            }
        }
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            if (ddlAccept.SelectedItem.Text == "FIR")
            {
                con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);
                da = new SqlDataAdapter( "select u.occupation,u.contact,u.gender,u.email,u.name,u.idproof,u.adderess,u.area,c.* from users as u inner join complaints as c on u.userid=c.userid where c.IsActive='False' and c.loc='" + policearea + "' and c.crimetype='n' and c.complaintid='"+txtUserMail.Text+"'",con);
                tbl = new DataTable();
                da.Fill(tbl);
                IP = tbl.Rows[0]["ip"].ToString();//reader["ip"].ToString(); ;
                CreatedOn = tbl.Rows[0]["CreatedOn"].ToString();//reader["CreatedOn"].ToString();
                Occupation = tbl.Rows[0]["occupation"].ToString();//reader["occupation"].ToString();
                Gender = tbl.Rows[0]["gender"].ToString();//reader["gender"].ToString();
                Email = tbl.Rows[0]["email"].ToString();//reader["email"].ToString();
                contact = tbl.Rows[0]["contact"].ToString();//reader["contact"].ToString();
                name = tbl.Rows[0]["name"].ToString();//reader["name"].ToString();
                adderess = tbl.Rows[0]["adderess"].ToString();//reader["adderess"].ToString();
                idproof = tbl.Rows[0]["idproof"].ToString();//reader["idproof"].ToString();
                area = tbl.Rows[0]["area"].ToString();
                crimeloc = tbl.Rows[0]["loc"].ToString();
                crimedesc = tbl.Rows[0]["decription"].ToString();
                complaintid = tbl.Rows[0]["complaintid"].ToString();
                //complainton = reader["cdate"].ToString();
                crimedate = tbl.Rows[0]["cdate"].ToString();
                crimeid = tbl.Rows[0]["cid"].ToString();
                da = new SqlDataAdapter("update complaints set complainttype='FIR',ModifiedBy='" + Convert.ToInt64(Session["login"].ToString()) + "',IsActive='1' where complaintid='" + txtUserMail.Text + "'", con);
                tbl = new DataTable();
                da.Fill(tbl);
                String summary = "IP :"+IP+"Crime_Description :"+crimedesc+" Complaint_ID :"+complaintid+" Crime_date:"+crimedate;
                da = new SqlDataAdapter("insert into fir_details(fir_id,summary,applicantdtl,psid,CreatedBy)  values('FIR" + crimeuserid + DateTime.Now.Year.ToString() + crimeid + "','"+summary+"','"+crimeuserid+"','" + ps_id + "','" + Convert.ToInt64(Session["login"].ToString()) + "')", con);
                tbl = new DataTable();
                da.Fill(tbl);
               // LawMailer(txtUserMail.Text.ToString());
                da = new SqlDataAdapter("select * from fir_details where applicantdtl='"+crimeuserid+"'", con);
                tbl = new DataTable();
                da.Fill(tbl);
                String mail1 = "<b>FIR</b> has been lodged for your complaint. Police found your complaint to be applicable for FIR action. You may hear from police officers personaly for further enquiry. We are attcahing the description that you provided.";
                String mail2 = "Please co-operate with law to bring currupted and criminals to justice and let India be a crime free country.";
                 LawMailer(tbl.Rows[0]["fir_id"].ToString(),summary,Email,mail1 ,mail2);
                 Session["policemsg"] = "FIR has been lodged with ID" + tbl.Rows[0]["fir_id"].ToString() + ".An email is send to: "+Email;

                Response.Redirect("Complaints.aspx");
            }
            if (ddlAccept.SelectedItem.Text == "Petty Case")
            {
                con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);
                da = new SqlDataAdapter("select u.occupation,u.contact,u.gender,u.email,u.name,u.idproof,u.adderess,u.area,c.* from users as u inner join complaints as c on u.userid=c.userid where c.IsActive='False' and c.loc='" + policearea + "' and c.crimetype='n' and c.complaintid='" + txtUserMail.Text + "'", con);
                tbl = new DataTable();
                da.Fill(tbl);
                IP = tbl.Rows[0]["ip"].ToString();;
                CreatedOn = tbl.Rows[0]["CreatedOn"].ToString();
                Occupation = tbl.Rows[0]["occupation"].ToString();
                Gender = tbl.Rows[0]["gender"].ToString();
                Email = tbl.Rows[0]["email"].ToString();
                contact = tbl.Rows[0]["contact"].ToString();
                name = tbl.Rows[0]["name"].ToString();
                adderess = tbl.Rows[0]["adderess"].ToString();
                idproof = tbl.Rows[0]["idproof"].ToString();
                area = tbl.Rows[0]["area"].ToString();
                crimeloc = tbl.Rows[0]["loc"].ToString();
                crimedesc = tbl.Rows[0]["decription"].ToString();
                complaintid = tbl.Rows[0]["complaintid"].ToString();
               
                crimedate = tbl.Rows[0]["cdate"].ToString();
                crimeid = tbl.Rows[0]["cid"].ToString();
                da = new SqlDataAdapter("update complaints set complainttype='PETTY',ModifiedBy='" + Convert.ToInt64(Session["login"].ToString()) + "',IsActive='1' where complaintid='" + txtUserMail.Text + "'", con);
                tbl = new DataTable();
                da.Fill(tbl);
                String summary = "IP :" + IP + "Crime_Description :" + crimedesc + " Complaint_ID :" + complaintid + " Crime_date:" + crimedate;
                da = new SqlDataAdapter("insert into petty_case(petty_id,summary,applicantdtl,psid,CreatedBy)  values('PETTY" + crimeuserid + DateTime.Now.Year.ToString() + crimeid + "','" + summary + "','" + Convert.ToInt64(crimeuserid) + "','" + ps_id + "','" + Convert.ToInt64(Session["login"].ToString()) + "')", con);
                tbl = new DataTable();
                da.Fill(tbl);
                
                da = new SqlDataAdapter("select * from petty_case where applicantdtl='" + crimeuserid + "'", con);
                tbl = new DataTable();
                da.Fill(tbl);
                String mail1 = "<b>Petty Case</b> has been lodged for your complaint. Police found your complaint to be applicable for Petty Case action. You may hear from police officers personaly for further enquiry. We are attcahing the description that you provided.";
                String mail2 = "Please co-operate with law to bring currupted and criminals to justice and let India be a crime free country.";
                LawMailer(tbl.Rows[0]["petty_id"].ToString(), summary, Email, mail1, mail2);
                Session["policemsg"] = "FIR has been lodged with ID" + tbl.Rows[0]["petty_id"].ToString() + ".An email is send to: " + Email;

                Response.Redirect("Complaints.aspx");
            }
            if (ddlAccept.SelectedItem.Text == "Reject")
            {
                con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);
                da = new SqlDataAdapter("select u.occupation,u.contact,u.gender,u.email,u.name,u.idproof,u.adderess,u.area,c.* from users as u inner join complaints as c on u.userid=c.userid where c.IsActive='False' and c.loc='" + policearea + "' and c.crimetype='n' and c.complaintid='" + txtUserMail.Text + "'", con);
                tbl = new DataTable();
                da.Fill(tbl);
                IP = tbl.Rows[0]["ip"].ToString();//reader["ip"].ToString(); ;
                CreatedOn = tbl.Rows[0]["CreatedOn"].ToString();//reader["CreatedOn"].ToString();
                Occupation = tbl.Rows[0]["occupation"].ToString();//reader["occupation"].ToString();
                Gender = tbl.Rows[0]["gender"].ToString();//reader["gender"].ToString();
                Email = tbl.Rows[0]["email"].ToString();//reader["email"].ToString();
                contact = tbl.Rows[0]["contact"].ToString();//reader["contact"].ToString();
                name = tbl.Rows[0]["name"].ToString();//reader["name"].ToString();
                adderess = tbl.Rows[0]["adderess"].ToString();//reader["adderess"].ToString();
                idproof = tbl.Rows[0]["idproof"].ToString();//reader["idproof"].ToString();
                area = tbl.Rows[0]["area"].ToString();
                crimeloc = tbl.Rows[0]["loc"].ToString();
                crimedesc = tbl.Rows[0]["decription"].ToString();
                complaintid = tbl.Rows[0]["complaintid"].ToString();
                //complainton = reader["cdate"].ToString();
                crimedate = tbl.Rows[0]["cdate"].ToString();
                crimeid = tbl.Rows[0]["cid"].ToString();
                da = new SqlDataAdapter("update complaints set complainttype='CANCEL',ModifiedBy='" + Convert.ToInt64(Session["login"].ToString()) + "',IsActive='1' where complaintid='" + txtUserMail.Text + "'", con);
                tbl = new DataTable();
                da.Fill(tbl);
                String summary = "IP :" + IP + "Crime_Description :" + crimedesc + " Complaint_ID :" + complaintid + " Crime_date:" + crimedate;
                
                // LawMailer(txtUserMail.Text.ToString());
                
                String mail1 = "<b>Complaint Cancelled</b>. Police found your complaint to be applicable for Cancelling. Either the details you provided were fake or not enough tobe categorised for a case.Please provide valid information to police, we strive to protect the citizens of this country.";
                String mail2 = "Please co-operate with law to bring currupted and criminals to justice and let India be a crime free country.";
                LawMailer(txtUserMail.Text, summary, Email, mail1, mail2);
                Session["policemsg"] = "FIR has been lodged with ID" + tbl.Rows[0]["fir_id"].ToString() + ".An email is send to: " + Email;

                Response.Redirect("Complaints.aspx");
            }
        }
        public bool LawMailer(string fir, string desc, string email, string mail1, string mail2)
        {
            bool mailStatus;
            NetworkCredential loginInfo = new NetworkCredential("lawandorder.gov@gmail.com", "laworder@1");
            MailMessage msg = new MailMessage();
            msg.From = new MailAddress("lawandorder.gov@gmail.com");
            msg.To.Add(new MailAddress(Email));
            msg.Subject = "LAW & ORDER AUTOMATION: Update regarding your complaint.";

            msg.IsBodyHtml = true;

            string strBody = "<html>";
            strBody += "<p>LAW & ORDER AUTOMATION!</p>";
            strBody += "<p>"+mail1+"</p>";
            strBody += "<table cellpadding=\"1px\" cellspacing=\"1px\" border=\"0px\" width=\"100%\">";
            strBody += "<tr><td colspan='2' style=\"text-align:center\"><b>Law and Order Automation</b></td></tr><tr><td style=\"width:40%; font-family:Verdana;  font-size:12px; text-transform:uppercase; height:25px\" > Case Id: "+fir+" </td></tr><tr><td colspan='2'>"+desc+"<br><br>"+mail2+"<br><br>Thank you<br>Admin</td></tr>.";
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
                Session["policemsg"] = "Updated Case status for case id: " + txtUserMail.Text + ".";

                Response.Redirect("Complaints.aspx");
            }
            catch (SmtpException ex)
            {
                mailStatus = false;
                Session["policemsg"] = ex.ToString();

                Response.Redirect("Complaints.aspx");
            }
            return mailStatus;
        }
    }
}