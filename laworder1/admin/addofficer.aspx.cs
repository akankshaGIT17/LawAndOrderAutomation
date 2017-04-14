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
using System.Net;
using System.Net.Mail;

namespace laworder1.admin
{
    public partial class addofficer : System.Web.UI.Page
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
                //   lblUserName.Text = tbl.Rows[0]["name"].ToString();
                //   Response.Redirect("default.aspx", true);
                this.Master.UserName = tbl.Rows[0]["name"].ToString();
            }
            else
            {
                Session["error"] = "Admin. Please provide your credentials again.";
                Response.Redirect("../UserLogin.aspx");

            }
            FillCapctha();
            // txtPassword.Text= Session["captcha"].ToString() ;


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
                txtPassword.Text = captcha.ToString();
                //imgCaptcha.ImageUrl = "../captcha.aspx?" + DateTime.Now.Ticks.ToString();
            }
            catch
            {

                throw;
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

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            try
            {
                if (FileUpload1.PostedFile != null && FileUpload1.PostedFile.ContentLength > 0)
                {
                    string fileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
                    string fileExtension = Path.GetExtension(FileUpload1.PostedFile.FileName);
                    string fileSavePath = Server.MapPath("uploads");
                    if (!Directory.Exists(fileSavePath))
                        Directory.CreateDirectory(fileSavePath);
                    fileSavePath = fileSavePath + "//" + fileName;
                    FileUpload1.PostedFile.SaveAs(fileSavePath);
                    FileInfo fileInfo = new FileInfo(fileSavePath);

                    con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);
                    da = new SqlDataAdapter("select email from police_officer where email='" + txtEmail.Text + "'", con);

                    tbl = new DataTable();
                    da.Fill(tbl);
                    if (tbl.Rows.Count > 0)
                    {
                        Session["err"] = "Error!";
                        Session["err1"] = "The Email Id you entered, already exist in our database. Please select another email id and try again.";
                        Response.Redirect("message.aspx");

                    }

                    else
                    {
                        da = new SqlDataAdapter("insert into police_officer(dob,email,password,contact,designation,area,adderess) values('" + txtDOB.Text + "','" + txtEmail.Text + "','" + txtPassword.Text + "','" + txtContact.Text + "','" + ddlDesignation.SelectedItem.Text + "','" + ddlPinCode.SelectedItem.Text + "','" + txtAdderess.Text + "')", con);
                        tbl = new DataTable();
                        da.Fill(tbl);
                        da = new SqlDataAdapter("insert into user_login(userid,password,roletype,IsActive) values('" + txtEmail.Text + "','" + txtPassword.Text + "',2,1)", con);
                        tbl = new DataTable();
                        da.Fill(tbl);
                        da = new SqlDataAdapter("select max(syscode) from user_login where userid='" + txtEmail.Text + "'", con);
                        tbl = new DataTable();
                        da.Fill(tbl);

                        string Query = "insert into users(userid,email,password,name,dob,fathername,occupation,gender,maritialstatus,contact,adderess,area,state,bloodgroup,idproof) values(" + Convert.ToInt64(tbl.Rows[0][0].ToString()) + ",'" + txtEmail.Text + "','" + txtPassword.Text + "','" + txtName.Text + "','" + txtDOB.Text + "','" + txtFatherName.Text + "','" + ddlDesignation.SelectedItem.Text + "','" + rbtGender.SelectedItem.Text + "','" + rbtMaritialStatus.SelectedItem.Text + "'," + txtContact.Text + ",'" + txtAdderess.Text + "','" + ddlPinCode.SelectedItem.Text + "','Haryana','" + ddlBloodGroup.SelectedItem.Text + "', '" + fileName + "')";
                        da = new SqlDataAdapter(Query, con);
                        da.Fill(tbl);
                        da = new SqlDataAdapter("select userid from user_login where userid='" + txtEmail.Text.Trim() + "'", con);
                        tbl = new DataTable();
                        da.Fill(tbl);
                        if (tbl.Rows.Count > 0)
                        {
                            LawMailer(tbl.Rows[0][0].ToString(), txtPassword.Text, ddlDesignation.SelectedItem.Text);
                            // lblGreen.Text = "Password has been sent to: " + txtUserId.Text;
                        }
                        else
                        {
                            //  lblRed.Text = "User Id is not valid !";
                        }
                        con.Dispose();
                        con.Close();
                    }
                }
                else
                {
                    //   lblUpload.Text = "Error: Please select a file to upload!";
                }
            }
            catch (SmtpException ex)
            {
                //mailStatus = false;
                Session["err"] = "Error!";
                Session["err1"] = ex.ToString();
                Response.Redirect("message.aspx");//"Unable to recover now !";
            }


        }
        public bool LawMailer(string UserId, string UserPassword, string Designation)
        {
            bool mailStatus;
            NetworkCredential loginInfo = new NetworkCredential("lawandorder.gov@gmail.com", "laworder@1");
            MailMessage msg = new MailMessage();
            msg.From = new MailAddress("lawandorder.gov@gmail.com");
            msg.To.Add(new MailAddress(txtEmail.Text.Trim()));
            msg.Subject = "YOU ARE APPOINTED TO Law & Order Automation!";

            msg.IsBodyHtml = true;

            string strBody = "<html>";
            strBody += "<p><center><h2>Welcome to law and order automation!</h2></center></p>";
            strBody += "<p>Congratulations! On being appointed as employee of Law & Order Automation.</p>";
            strBody += "<table cellpadding=\"1px\" cellspacing=\"1px\" border=\"0px\" width=\"100%\">";
            strBody += "<tr><td colspan='2' style=\"text-align:center\"><b>Your Credentials</b></td></tr><tr><td style=\"width:40%; font-family:Verdana;  font-size:12px; text-transform:uppercase; height:25px\" >Designation: </td><td style=\"width:60%; font-family:Verdana;  font-size:12px;\">" + Designation + "</td></tr><tr><td style=\"width:40%; font-family:Verdana;  font-size:12px; text-transform:uppercase; height:25px\" >User Name: </td><td style=\"width:60%; font-family:Verdana;  font-size:12px;\">" + UserId + "</td></tr><tr><td style=\"width:40%; font-family:Verdana;  font-size:12px; text-transform:uppercase; height:25px\" >Password: </td><td style=\"width:60%; font-family:Verdana;  font-size:12px;\">" + UserPassword + "</td></tr>";
            strBody += "</table>";
            strBody += "<p>You can update your password after signing in with above credentials.</p><br><br>";
            strBody += "<p>Thank you.</p>";
            strBody += "<p>Admin.</p>";
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
                Session["msg"] = "User has been appointed!";
                Session["msg1"] = "An email has been send to id :" + UserId + ".";
                Response.Redirect("message.aspx");
            }
            catch (SmtpException ex)
            {
                mailStatus = false;
                Session["err"] = "Error!";
                Session["err1"] = ex.ToString();
                Response.Redirect("message.aspx");//"Unable to recover now !";
            }
            return mailStatus;
        }

        protected void TextEmail2_TextChanged(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);
            SqlCommand command = con.CreateCommand();
            da = new SqlDataAdapter("select * from users where email='" + TextEmail2.Text + "'", con);
            tbl = new DataTable();
            da.Fill(tbl);
            if (tbl.Rows.Count > 0)
            {
                lblOccupation.Text = tbl.Rows[0]["occupation"].ToString();
                lblArea.Text = tbl.Rows[0]["area"].ToString();
                txtPassword2.Text = tbl.Rows[0]["password"].ToString();
                txtName2.Text = tbl.Rows[0]["name"].ToString();
              //  txtPassword2.Text = tbl.Rows[0]["name"].ToString();
                txtFname2.Text = tbl.Rows[0]["fathername"].ToString();
                txtDOB2.Text = tbl.Rows[0]["dob"].ToString();
                txtContact2.Text = tbl.Rows[0]["contact"].ToString();
                txtAdderess2.Text = tbl.Rows[0]["adderess"].ToString();
               // txtFname2.Text = tbl.Rows[0]["password"].ToString();
                lblMarried.Text = tbl.Rows[0]["maritialstatus"].ToString();
                lblProof.Text = "<a href='uploads/" + tbl.Rows[0]["idproof"].ToString() + "'>" + tbl.Rows[0]["idproof"].ToString() + "</a>";
            }
            else
            {
                lblMsg.Text = "NO SUCH OFFICER FOUND";
            }

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            da = new SqlDataAdapter("update police_officer set dob='" + txtDOB2.Text + "',contact='" + txtContact2.Text + "',designation='" + ddlDesignation2.SelectedItem.Text + "',area='" + ddlArea2.SelectedItem.Text + "',adderess='"+txtAdderess2.Text+"' where email='"+TextEmail2.Text+"'", con);
            tbl = new DataTable();
            da.Fill(tbl);
            da = new SqlDataAdapter("update users set dob='" + txtDOB2.Text + "',contact='" + txtContact2.Text + "',occupation='" + ddlDesignation2.SelectedItem.Text + "',area='" + ddlArea2.SelectedItem.Text + "',adderess='" + txtAdderess2.Text + "',maritialstatus='" + rbtnStatus2.SelectedItem.Text + "' where email='" + TextEmail2.Text + "'", con);
            tbl = new DataTable();
            da.Fill(tbl);
            Session["msg"] = "Updated!";
            Session["msg1"] = "Officer account is Updated" + TextEmail2.Text + ".";
            Response.Redirect("message.aspx");
        }

        protected void txtPinCode2_TextChanged(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);
            da = new SqlDataAdapter("Select name from area where pincode=" + txtPinCode2.Text + "order by name", con);
            tbl = new DataTable();
            da.Fill(tbl);
            ddlArea2.DataSource = tbl;

            ddlArea2.DataTextField = "name";


            ddlArea2.DataBind();

            ddlArea2.Items.Insert(0, "Select Area");
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);
            Session["msg"] = "Employee Id :" + TextEmail2.Text + "-- Deleted!";
            Session["msg1"] = "The employee has been removed from our database. Name " + txtName2.Text + ".";
            da = new SqlDataAdapter("delete from police_officer  where email='" + TextEmail2.Text + "'", con);
            tbl = new DataTable();
            da.Fill(tbl);
            da = new SqlDataAdapter("delete from users  where email='" + TextEmail2.Text + "'", con);
            tbl = new DataTable();
            da.Fill(tbl);
            da = new SqlDataAdapter("delete from user_login  where userid='" + TextEmail2.Text + "'", con);
            tbl = new DataTable();
            da.Fill(tbl);
            // Session["msg"] = "Act: " + txtAct.Text + " Updated!";
            // Session["msg1"] = "Act has been updated with title :" + txtName2.Text + ".";
            Response.Redirect("message.aspx");
        }
    }
    }
