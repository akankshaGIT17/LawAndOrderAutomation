using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace laworder1.admin
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        SqlConnection con;
        SqlDataAdapter da;
        DataTable tbl;
        protected void Page_Load(object sender, EventArgs e)
        {
           
            

        }
        public string UserName
        {
            get
            {
                return lblUserName.Text;
            }
            set
            {
                lblUserName.Text = value;
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            
        }
    }
}