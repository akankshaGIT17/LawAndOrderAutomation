using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace laworder1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataAdapter da;
        DataTable tbl;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["error1"] != null)
                {
                    lblError1.Text = Session["error1"].ToString();
                    Session.Abandon();

                }
            }
            if (Session["error"] != null)
            {
                lblLoginError.Text = Session["error"].ToString();

            }
                
                

           
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);
            da = new SqlDataAdapter("select * from user_login where userid='"+txtUserId.Text+"' and password='"+txtPassword.Text+"' and IsActive='1'", con);
            tbl = new DataTable();
            da.Fill(tbl);
            if (tbl.Rows.Count > 0)
            {
                da = new SqlDataAdapter("select syscode,roletype from user_login where userid='" + txtUserId.Text + "'", con);
                tbl = new DataTable();
                da.Fill(tbl);
                if((tbl.Rows[0]["roletype"].ToString()=="1")){
                Session["login"] = tbl.Rows[0]["syscode"].ToString();
                //ViewState["login"] = tbl.Rows[0]["syscode"].ToString();
                Response.Redirect("citizen/Default.aspx");}
               
                    if((tbl.Rows[0]["roletype"].ToString()=="3")){
                Session["login"] = tbl.Rows[0]["syscode"].ToString();
                
                Response.Redirect("admin/default.aspx");
                    }
                    if ((tbl.Rows[0]["roletype"].ToString() == "2"))
                    {
                        Session["login"] = tbl.Rows[0]["syscode"].ToString();
                        
                        Response.Redirect("police/default.aspx");
                    }
            }
            else
            {
                Session["error"] = "Your User Id or Password is not correct!.Please try again.";
                Response.Redirect("UserLogin.aspx");
            }

        }
    }
}