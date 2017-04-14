using System;
using System.Data;
using System.Data.SqlClient;

using System.Text;
using System.Configuration;

namespace laworder1.citizen
{
    public partial class myhistory : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataAdapter da;
        DataTable tbl;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login"] != null)
            {
                con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);

                da = new SqlDataAdapter("select * from users where userid='" + Convert.ToInt64(Session["login"].ToString()) + "'", con);
                tbl = new DataTable();
                da.Fill(tbl);
                lblUserName.Text = tbl.Rows[0]["name"].ToString();
              
                //  lblEmail.Text = tbl.Rows[0]["email"].ToString();
               
            }
            else
            {
                Session["error"] = "You need to login to use our services";
                Response.Redirect("../UserLogin.aspx");
            }


        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session["error1"] = "You have successfully logged out!";
            Response.Redirect("../UserLogin.aspx");
        }

       
        public string getLoudData()
        {

            string htmlStr = "";
            
            con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);
            SqlCommand command = con.CreateCommand();
            command.CommandText = "select CreatedOn,description,IsActive,comments from license_applied where applied_by='" + Convert.ToInt64(Session["login"].ToString()) + "' and type='Loud Speaker'";
            con.Open();
           SqlDataReader reader = command.ExecuteReader();
         
            String IsActive="";
            String comments = "";
            while (reader.Read())
        {
           
            string AppliedOn = reader["CreatedOn"].ToString();
            string Description = reader["description"].ToString();
            if (Convert.ToBoolean(reader["IsActive"].ToString()) == true)
                IsActive = "Not Approved";
            else
                IsActive = "Approved";
            if (reader["comments"] == DBNull.Value)
                comments = "Not Comments";
            else
                comments = reader["comments"].ToString();
            htmlStr += "<tr><td>" + AppliedOn + "</td><td>" + Description + "</td><td>" + IsActive + "</td><td>" + comments + "</td></tr>";                
        }
            con.Close();
        return htmlStr;

        }
        public string getMassData()
        {

            string htmlStr = "";

            con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);
            SqlCommand command = con.CreateCommand();
            command.CommandText = "select CreatedOn,description,IsActive,comments from license_applied where applied_by='" + Convert.ToInt64(Session["login"].ToString()) + "' and type='Mass Meeting'";
            con.Open();
            SqlDataReader reader = command.ExecuteReader();

            String IsActive = "";
            String comments = "";
            while (reader.Read())
            {

                string AppliedOn = reader["CreatedOn"].ToString();
                string Description = reader["description"].ToString();
                if (Convert.ToBoolean(reader["IsActive"].ToString()) == true)
                    IsActive = "Not Approved";
                else
                    IsActive = "Approved";
                if (reader["comments"] == DBNull.Value)
                    comments = "Not Comments";
                else
                    comments = reader["comments"].ToString();
                htmlStr += "<tr><td>" + AppliedOn + "</td><td>" + Description + "</td><td>" + IsActive + "</td><td>" + comments + "</td></tr>";
            }
            con.Close();
            return htmlStr;

        }
        public string getComplaintData()
        {

            string htmlStr = "";

            con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);
            SqlCommand command = con.CreateCommand();
            command.CommandText = "select CreatedOn,decription,complaintid,complainttype from complaints where userid='" + Convert.ToInt64(Session["login"].ToString()) + "' and crimetype='n'";
            con.Open();
            SqlDataReader reader = command.ExecuteReader();

            String ComplaintId = "";
            String comments = "";
            while (reader.Read())
            {

                string AppliedOn = reader["CreatedOn"].ToString();
                string Description = reader["decription"].ToString();
               // if (Convert.ToBoolean(reader["complainttype"].ToString()) == false)
                ComplaintId = reader["complaintid"].ToString();
              //  else
               //     IsActive = "Approved";
                if (reader["complainttype"] == DBNull.Value)
                    comments = "Pending";
                else
                {
                    if (reader["complainttype"].ToString() == "FIR")
                        comments = "Filed FIR";
                    else
                        if (reader["complainttype"].ToString() == "petty")
                            comments = "Filed Petty Case";
                        else
                            if (reader["complainttype"].ToString() == "non")
                                comments = "Filed Non-Cognizable";
                }
              //      comments = reader["description"].ToString();
                htmlStr += "<tr><td>" + AppliedOn + "</td><td>" + Description + "</td><td>" + ComplaintId + "</td><td>" + comments + "</td></tr>";
            }
            con.Close();
            return htmlStr;

        }
        public string getPersonData()
        {

            string htmlStr = "";

            con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);
            SqlCommand command = con.CreateCommand();
            command.CommandText = "select CreatedOn,missing_name,complaintid,IsActive from missing where complained_by='" + Convert.ToInt64(Session["login"].ToString()) + "'";
            con.Open();
            SqlDataReader reader = command.ExecuteReader();

            String ComplaintId = "";
            String status = "";
            while (reader.Read())
            {

                string AppliedOn = reader["CreatedOn"].ToString();
                string Description = reader["missing_name"].ToString();
                // if (Convert.ToBoolean(reader["complainttype"].ToString()) == false)
                ComplaintId = reader["complaintid"].ToString();
                //  else
                //     IsActive = "Approved";
                if (Convert.ToBoolean(reader["IsActive"].ToString()) == true)
                    status = "In Progress";
                else
                    status = "Found";
                
                //      comments = reader["description"].ToString();
                htmlStr += "<tr><td>" + AppliedOn + "</td><td>" + Description + "</td><td>" + ComplaintId + "</td><td>" + status + "</td></tr>";
            }
            con.Close();
            return htmlStr;

        }
        public string getValuableData()
        {

            string htmlStr = "";

            con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);
            SqlCommand command = con.CreateCommand();
            command.CommandText = "select CreatedOn,name,complaintid,foundstatus from missingvaluable where complained_by='" + Convert.ToInt64(Session["login"].ToString()) + "'";
            con.Open();
            SqlDataReader reader = command.ExecuteReader();

            String ComplaintId = "";
            String status = "";
            while (reader.Read())
            {

                string AppliedOn = reader["CreatedOn"].ToString();
                string name = reader["name"].ToString();
                // if (Convert.ToBoolean(reader["complainttype"].ToString()) == false)
                ComplaintId = reader["complaintid"].ToString();
                //  else
                //     IsActive = "Approved";
                if (reader["foundstatus"].ToString() == "0")
                    status = "Not Found";
                else
                    status = "Found";

                //      comments = reader["description"].ToString();
                htmlStr += "<tr><td>" + AppliedOn + "</td><td>" + name + "</td><td>" + ComplaintId + "</td><td>" + status + "</td></tr>";
            }
            con.Close();
            return htmlStr;

        }
    }
    



}