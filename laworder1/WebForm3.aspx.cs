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


namespace laworder1
{

    public partial class WebForm3 : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataAdapter da;
        DataTable tbl;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillCapctha();
                // BindGridviewFileData();
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
                imgCaptcha.ImageUrl = "captcha.aspx?" + DateTime.Now.Ticks.ToString();
            }
            catch
            {

                throw;
            }
        }
        protected void txtEmail_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            //   con = new SqlConnection("Server=[local]; UID=SA; PWD=;Initial Catalog=LAW; Integrated Security=True");
            //    da=new SqlDataAdapter("insert into user_login(userid,password,roletype) values('"+txtEmail.Text+"','"+txtPassword.Text+"',1)",con);
            //     tbl=new DataTable();
            //    da.Fill(tbl);
            //    lblMsg.Text = "Data saved in 1 table!";
            //  da = new SqlDataAdapter("insert into users(userid,password,roletype) values('" + txtEmail.Text + "','" + txtPassword.Text + "',1)", con);

        }

        protected void btnSignUp_Click1(object sender, EventArgs e)
        {
            //  lblMsg.Text = "Data saved in 1 table!";
            if (Session["captcha"].ToString() != txtCaptcha.Text)
            {
             //   Session["fail"] = "Error!";
                Session["fail"] = "You entered wrong captcha!";
                Response.Redirect("error.aspx");
                // Response.Write("Invalid Captcha Code");
            }
            else
            {
                
            } FillCapctha();
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
                    da = new SqlDataAdapter("select userid from user_login where userid='"+txtEmail.Text+"'", con);

                    tbl = new DataTable();
                    da.Fill(tbl);
                    if (tbl.Rows.Count > 0)
                    {
                       Session["fail"] = "Error!";
                        Session["failmsg"] = "The Email Id you entered, already exist in our database. Please select another email id and try again.";
                        Response.Redirect("error.aspx");

                    }

                    else
                    {
                        da = new SqlDataAdapter("insert into user_login(userid,password,roletype) values('" + txtEmail.Text + "','" + txtPassword.Text + "',1)", con);
                        tbl = new DataTable();
                        da.Fill(tbl);
                        da = new SqlDataAdapter("select max(syscode) from user_login where userid='"+txtEmail.Text+"'", con);
                        tbl = new DataTable();
                        da.Fill(tbl);

                        string Query = "insert into users(userid,email,password,name,dob,fathername,occupation,gender,maritialstatus,contact,adderess,area,state,bloodgroup,idproof) values(" + Convert.ToInt64(tbl.Rows[0][0].ToString()) + ",'" + txtEmail.Text + "','" + txtPassword.Text + "','" + txtName.Text + "','" + txtDOB.Text + "','" + txtFatherName.Text + "','" + ddlOccupation.SelectedItem.Text + "','" + rbtGender.SelectedItem.Text + "','" + rbtMaritialStatus.SelectedItem.Text + "'," + txtMobileNo.Text + ",'" + txtAddress1.Text + "','" + ddlPinCode.SelectedItem.Text + "','Haryana','" + ddlBloodGroup.SelectedItem.Text + "', '" + fileName + "')";
                        da = new SqlDataAdapter(Query, con);
                        da.Fill(tbl);
                        da = new SqlDataAdapter("select userid from user_login where userid='" + txtEmail.Text.Trim() + "'", con);
                        tbl = new DataTable();
                        da.Fill(tbl);
                        if (tbl.Rows.Count > 0)
                        {
                            LawMailer(tbl.Rows[0][0].ToString());
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
                Session["fail"] = "Error!";
                Session["failmsg"] = ex.ToString();
                Response.Redirect("error.aspx");//"Unable to recover now !";
            }
           
        
        }

        protected void ddlPinCode_SelectedIndexChanged(object sender, EventArgs e)
        {

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
        public bool LawMailer(string UserPassword)
        {
            bool mailStatus;
            NetworkCredential loginInfo = new NetworkCredential("lawandorder.gov@gmail.com", "laworder@1");
            MailMessage msg = new MailMessage();
            msg.From = new MailAddress("lawandorder.gov@gmail.com");
            msg.To.Add(new MailAddress(txtEmail.Text.Trim()));
            msg.Subject = "Welcome to Law & Order Automation!";

            msg.IsBodyHtml = true;

            string strBody = "<html>";
            strBody += "<p>Welcome to law and order automation!";
            strBody += "<table cellpadding=\"1px\" cellspacing=\"1px\" border=\"0px\" width=\"100%\">";
            strBody += "<tr><td colspan='2' style=\"text-align:center\"><b>Law and Order Automation</b></td></tr><tr><td style=\"width:40%; font-family:Verdana;  font-size:12px; text-transform:uppercase; height:25px\" >Email to be used as user id: </td><td style=\"width:60%; font-family:Verdana;  font-size:12px;\">" + UserPassword + "</td></tr><tr><td colspan='2'> A police officer will soon verify your account and you can access our services then.</td></tr><tr><td colspan='2'> Thank you for registering with us.</td></tr>.";
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

        protected void txtEmail_TextChanged1(object sender, EventArgs e)
        {

        }

        protected void btnRefresh_Click(object sender, EventArgs e)
        {

        }

        protected void btnRefresh_Click1(object sender, EventArgs e)
        {
            FillCapctha();
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {

        }

    }
}