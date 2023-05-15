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
    public partial class arabaKabul : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int secileniOnayla = Convert.ToInt32(Request.QueryString["id"]);
            SqlCommand cmd = new SqlCommand("update tblArabaBilgi set arabaOnay=@aOnay where arabaID = @aid" , SqlConnetionClass.connection);
            SqlConnetionClass.CheckConnetion();
            cmd.Parameters.AddWithValue("@aOnay", true);
            cmd.Parameters.AddWithValue("@aid", secileniOnayla);
            cmd.ExecuteNonQuery();
            Response.Redirect("arabaOnay.aspx");
        }
    }
}