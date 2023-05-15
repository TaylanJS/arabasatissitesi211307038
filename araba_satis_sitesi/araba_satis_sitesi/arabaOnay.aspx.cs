using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using araba_satis_sitesi.Classes;
using System.Data.SqlClient;

namespace araba_satis_sitesi
{
    public partial class arabaOnay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToBoolean(Session["IsUserAdmin"])==true) {
                SqlCommand cmd = new SqlCommand("Select * from tblArabaBilgi where arabaOnay=@aOnay", SqlConnetionClass.connection);
                SqlConnetionClass.CheckConnetion();
                cmd.Parameters.AddWithValue("@aOnay", false);
                SqlDataReader dr = cmd.ExecuteReader();
                DataList1.DataSource = dr;
                DataList1.DataBind();
                dr.Close();
            }
            else
            {
                Response.Redirect("girisYap.aspx");
            }
        }
    }
}