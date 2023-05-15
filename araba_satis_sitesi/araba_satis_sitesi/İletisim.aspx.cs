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
    public partial class İletisim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGonder_Click(object sender, EventArgs e)
        {
            SqlCommand cmdEkle = new SqlCommand("insert into tblIletisim (mesaj,mail,isim) values (@aMesaj,@aMail,@aIsim)", SqlConnetionClass.connection);
            SqlConnetionClass.CheckConnetion();
           
            cmdEkle.Parameters.AddWithValue("@aMesaj",txtMesaj.Text);
            cmdEkle.Parameters.AddWithValue("@aMail", txtMail.Text);
            cmdEkle.Parameters.AddWithValue("@aIsim", txtİsim.Text);
            cmdEkle.ExecuteNonQuery();
        }
    }
}