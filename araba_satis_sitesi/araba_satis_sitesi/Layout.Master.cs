using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace araba_satis_sitesi
{
    public partial class Layout : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToBoolean(Session["IsUserOnline"]) == true)
            {
                kaid.Visible = false;
                gidi.Visible = false;
                cidi.Visible = true;
            }
            else
            {
                kaid.Visible = true;
                gidi.Visible = true;
                cidi.Visible = false;
            }
        }
    }
}