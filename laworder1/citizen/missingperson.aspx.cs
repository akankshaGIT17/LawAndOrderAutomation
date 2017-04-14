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
namespace laworder1.citizen
{
    public partial class missingperson : System.Web.UI.Page
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
                Session["error"] = "You need to login to use our services";
                Response.Redirect("../UserLogin.aspx");
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

        protected void ddlPinCode_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                if (FileUpload1.PostedFile != null && FileUpload1.PostedFile.ContentLength > 0)
                {
                    string fileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
                    string fileExtension = Path.GetExtension(FileUpload1.PostedFile.FileName);
                    string fileSavePath = Server.MapPath("../uploads");
                    if (!Directory.Exists(fileSavePath))
                        Directory.CreateDirectory(fileSavePath);
                    fileSavePath = fileSavePath + "//" + fileName;
                    FileUpload1.PostedFile.SaveAs(fileSavePath);
                    FileInfo fileInfo = new FileInfo(fileSavePath);


                    String description = "-Color :" + ddlColor.SelectedItem.Text + " -DOB :" + txtDOB.Text + " -Height :" + txtHieght.Text + " -Weight :" + txtWeight.Text + " -Place :" + txtPlace.Text + " -Area :" + ddlPinCode.SelectedItem.Value + " -Time :" + txtTime.Text + " -Dress :" + txtDress.Text + " -Willingly Gone :" + txtYesWilling.Text + " -Kidnapped :" + txtYesKidnap.Text;
                    var dateAsString = DateTime.Today.ToString("yyyy-mm-dd");
                    con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);
                    da = new SqlDataAdapter("insert into missing(description,complained_by,complained_on,area,photo,missing_name,amount,gender) values('" + description + "','" + Convert.ToInt64(Session["login"].ToString()) + "','" + dateAsString + "','" + ddlPinCode.SelectedItem.Value + "','" + fileSavePath + "','" + txtMissingName.Text + "','"+txtReward.Text+"','" + rbtGender.SelectedItem.Text + "')", con);
                    tbl = new DataTable();
                    da.Fill(tbl);
                    da = new SqlDataAdapter("select max(missing_id) from missing ", con);
                    tbl = new DataTable();
                    da.Fill(tbl);

                    Session["msg"] = "Your Complaint id is : " + DateTime.Now.Year.ToString() + txtPinCode.Text + tbl.Rows[0][0].ToString().PadLeft(4, '0') + " .";
                    Session["msg1"] = " Please record your complaint id for further reference.";
                    da = new SqlDataAdapter("update missing set complaintid='" + DateTime.Now.Year.ToString() + txtPinCode.Text + tbl.Rows[0][0].ToString().PadLeft(4, '0') + "'where complained_by=" + Convert.ToInt64(Session["login"].ToString()) + " and area='" + ddlPinCode.SelectedItem.Value + "'", con);
                    tbl = new DataTable();

                    da.Fill(tbl);
                    Response.Redirect("message.aspx");
                }
            }
            catch
            {
            //    Session["msg"] = err;
              //  Session["failmsg"] = "Mail not sent";
            //    Response.Redirect("missingperson.aspx");
            }
           
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session["error1"] = "You have successfully logged out!";

            Response.Redirect("../UserLogin.aspx");
        }
    }
}