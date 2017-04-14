using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace laworder1.admin
{
    public partial class message : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["msg"] != null)
            {
                lblMsg.Text = Session["msg"].ToString();

            }
            if (Session["msg1"] != null)
            {
                lblMsg1.Text = Session["msg1"].ToString();

            }
            if (Session["err"] != null)
            {
                lblErr.Text = Session["err"].ToString();

            }
            if (Session["err1"] != null)
            {
                lblErr2.Text = Session["err1"].ToString();

            }

        }
    }
}