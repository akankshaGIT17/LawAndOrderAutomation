using System;
using System.Data;
using System.IO;

using System.Data.SqlClient;
using System.Configuration;

namespace laworder1.Police
{
    public partial class Crminals : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataAdapter da;
        DataTable tbl;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["crime"] != null)
            {
                lblMsg.Text = Session["crime"].ToString();
            }
            if (Session["login"] != null)
            {
                con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);
                da = new SqlDataAdapter("select name from users where userid='" + Convert.ToInt64(Session["login"].ToString()) + "'", con);
                tbl = new DataTable();
                da.Fill(tbl);
                
                this.Master.UserName = tbl.Rows[0]["name"].ToString();
                
               
            }
            else
            {
                Session["error"] = "Admin. Please provide your credentials again.";
                Response.Redirect("../UserLogin.aspx");

            }

        }

        protected void btnSignUp_Click1(object sender, EventArgs e)
        {
            try
            {
                if (FileUpload2.PostedFile != null && FileUpload2.PostedFile.ContentLength > 0)
                {
                    string fileName = Path.GetFileName(FileUpload2.PostedFile.FileName);
                    string fileExtension = Path.GetExtension(FileUpload2.PostedFile.FileName);
                    string fileSavePath = Server.MapPath("uploads");
                    if (!Directory.Exists(fileSavePath))
                        Directory.CreateDirectory(fileSavePath);
                    fileSavePath = fileSavePath + "//" + fileName;
                    FileUpload2.PostedFile.SaveAs(fileSavePath);
                    FileInfo fileInfo = new FileInfo(fileSavePath);
                    con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);
                    if (ddlStatus.SelectedItem.Text =="1")
                    {
                        da = new SqlDataAdapter("update criminals set status='0'", con);
                        tbl = new DataTable();
                        da.Fill(tbl);
                        da = new SqlDataAdapter("insert into criminals(name,aliasname,DOB,adderess,reward,status,image,IsActive,CreatedBy)  values('" + txtName.Text + "','" + txtAlias.Text + "','" + txtDOB.Text + "','" + txtAdderess.Text + "','" + txtReward.Text + "','" + ddlStatus.SelectedItem.Text + "','" + fileSavePath + "','1','" + Convert.ToInt64(Session["login"].ToString()) + "')", con);
                        tbl = new DataTable();
                        da.Fill(tbl);
                    }
                    if (ddlStatus.SelectedItem.Text == "0")
                    {
                        
                        da = new SqlDataAdapter("insert into criminals(name,aliasname,DOB,adderess,reward,status,image,IsActive,CreatedBy)  values('" + txtName.Text + "','" + txtAlias.Text + "','" + txtDOB.Text + "','" + txtAdderess.Text + "','" + txtReward.Text + "','" + ddlStatus.SelectedItem.Text + "','" + fileSavePath + "','0','" + Convert.ToInt64(Session["login"].ToString()) + "')", con);
                        tbl = new DataTable();
                        da.Fill(tbl);
                    }
                    Session["crime"] = "Data for criminal is saved!";

                    Response.Redirect("Crminals.aspx");
                }
            }
            
            catch (Exception ex)
            {

                Session["crime"] = "Data for criminal is saved!";
               
                Response.Redirect("Crminals.aspx");//"Unable to recover now !";
            }
        }
    }
}