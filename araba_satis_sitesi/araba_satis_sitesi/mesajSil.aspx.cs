using araba_satis_sitesi.Classes;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace araba_satis_sitesi
{
    public partial class mesajSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int secileniSil = Convert.ToInt32(Request.QueryString["id"]);
            SqlCommand cmd = new SqlCommand("Delete from tblIletisim where iletisimID=@aIletisim",SqlConnetionClass.connection);
            SqlConnetionClass.CheckConnetion();
            cmd.Parameters.AddWithValue("@aIletisim", secileniSil);
            cmd.ExecuteNonQuery();
            Response.Redirect("Mesajlar.aspx");
        }
    }
}