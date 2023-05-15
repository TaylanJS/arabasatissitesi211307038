using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using araba_satis_sitesi.Classes;
namespace araba_satis_sitesi
{
    public partial class Mesajlar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToBoolean(Session["IsUserAdmin"]) == true) { 
                SqlCommand cmd = new SqlCommand("Select * from tblIletisim",SqlConnetionClass.connection);
            SqlConnetionClass.CheckConnetion();
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