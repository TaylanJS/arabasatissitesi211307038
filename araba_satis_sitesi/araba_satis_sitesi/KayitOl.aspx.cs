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
    public partial class KayitOl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnKayit_Click(object sender, EventArgs e)
        {
            SqlCommand cmdEkle = new SqlCommand("insert into tblUyeler (uyeMail,uyeParola) values (@aMail,@aParola)", SqlConnetionClass.connection);
            SqlConnetionClass.CheckConnetion();

            string parolaDonustur = Sha256Donusturucu.ComputeSha256Hash(txtParola.Text);

            cmdEkle.Parameters.AddWithValue("@aMail", txtMail.Text);
            cmdEkle.Parameters.AddWithValue("@aParola", parolaDonustur);
            cmdEkle.ExecuteNonQuery();
        }
    }
}