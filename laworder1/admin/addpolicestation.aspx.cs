using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace laworder1.admin
{
    public partial class addpolicestation : System.Web.UI.Page
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
            //getPoliceMail();
            txtEmails.Text = getPoliceMail();
        }
        
        protected void ddlPolice_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        public string getPoliceMail()
        {
            string htmlStr = "";
            con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);
            SqlCommand command = con.CreateCommand();
            command.CommandText = ("Select * from police_officer where area ='" + ddlPinCode.SelectedItem.Value + "'");
            con.Open();
            SqlDataReader reader = command.ExecuteReader();

            while (reader.Read())
            {
                string PoliceMails = reader["email"].ToString();

                htmlStr += "" + PoliceMails + " ; ";
            } con.Close();
            return htmlStr;
        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            try
            {
                con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);
                da = new SqlDataAdapter("insert into police_stations(name,city,state) values('" + txtStation.Text + "','" + ddlPinCode.SelectedItem.Text + "','Haryana')", con);
                tbl = new DataTable();
                da.Fill(tbl);

                if (txtPolice1.Text != string.Empty)
                {
                    da = new SqlDataAdapter("update police_officer set ps_id='" + getStation() + "'where email='" + txtPolice1.Text + "'", con);
                    tbl = new DataTable();
                    da.Fill(tbl);
                }
                if (txtPolice2.Text != string.Empty)
                {
                    da = new SqlDataAdapter("update police_officer set ps_id='" + getStation() + "'where email='" + txtPolice2.Text + "'", con);
                    tbl = new DataTable();
                    da.Fill(tbl);
                }
                if (txtPolice3.Text != string.Empty)
                {
                    da = new SqlDataAdapter("update police_officer set ps_id='" + getStation() + "'where email='" + txtPolice3.Text + "'", con);
                    tbl = new DataTable();
                    da.Fill(tbl);
                }
                Session["msg"] = "Police Station Added";
                Session["msg1"] = "Police station is added and respective police officers have been assigned to station: " + txtStation.Text;
                Response.Redirect("message.aspx");
            }
            catch (Exception ex)
            {
                
              //  Session["err"] = "Error!";
             //   Session["err1"] = ex.ToString();
             //   Response.Redirect("message.aspx");//"Unable to recover now !";
            }
        }//%=getComplaintData()%>
        public int getStation()
        {
            con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);

            da = new SqlDataAdapter("select max(ps_id) from police_stations where name='" + txtStation.Text + "'", con);
            tbl = new DataTable();
            da.Fill(tbl);
            return Convert.ToInt32(tbl.Rows[0][0].ToString());
        }
        
    }
    
}