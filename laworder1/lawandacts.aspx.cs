using System;
using System.Data;
using System.Data.SqlClient;

using System.Text;
using System.Configuration;

namespace laworder1
{
    public partial class lawandacts : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataAdapter da;
        DataTable tbl;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public string getLaw()
        {

            string htmlStr = "";

            con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);
            SqlCommand command = con.CreateCommand();
            command.CommandText = "select name,section,description from law_modules";
            con.Open();
            SqlDataReader reader = command.ExecuteReader();

            
            while (reader.Read())
            {

                string section = reader["section"].ToString();
                string name = reader["name"].ToString();
                string description = reader["description"].ToString();
                htmlStr += "<table width='97%' cellspacing='5' cellpadding='5' class='back' style='text-align:left;vertical-align: top'><tr><td style='text-align:left;vertical-align: top'>" + section + "</td></tr><tr><td style='text-align:left;vertical-align: top'>" + name + "</td></tr><tr><td style='text-align:left;vertical-align: top'>" + description + "</td></tr></table>" ;
            }
            con.Close();
            return htmlStr;

        }
    }
}