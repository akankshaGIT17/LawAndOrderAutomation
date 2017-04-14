using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace laworder1
{
    public partial class error : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["sucmsg"] != null)
            {
                lblSuccessMessage.Text = Session["sucmsg"].ToString();
                if(Session["suc"]!=null)
                    lblSuccess.Text = Session["suc"].ToString();
            }
            if (Session["failmsg"] != null)
            {
                lblFailMessage.Text = Session["failmsg"].ToString();
                if (Session["fail"] != null)
                    lblFail.Text = Session["fail"].ToString();
            }

        //    lblSuccess.Text = Session["suc"].ToString();
           // lblSuccessMessage.Text = Session["sucmsg"].ToString();
        //    lblFail.Text = Session["fail"].ToString();
          //  lblFailMessage.Text = Session["failmsg"].ToString();
        }
    }
}