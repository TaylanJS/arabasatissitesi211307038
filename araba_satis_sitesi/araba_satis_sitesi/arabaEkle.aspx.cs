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
    public partial class arabaEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToBoolean(Session["IsUserOnline"]) == true)
            {
                if (Page.IsPostBack == false)
                {
                    SqlCommand cmdList = new SqlCommand("Select * from tblMarka", SqlConnetionClass.connection);
                    SqlConnetionClass.CheckConnetion();
                    SqlDataReader dr = cmdList.ExecuteReader();
                    combobox.DataTextField = "markaAdi";
                    combobox.DataValueField = "markaID";
                    combobox.DataSource = dr;
                    combobox.DataBind();
                    dr.Close();
                }
            }
            else
            {
                Response.Redirect("girisYap.aspx");
            }

        }

        protected void btnIlanYolla_Click(object sender, EventArgs e)
        {
            SqlCommand cmdEkle = new SqlCommand("insert into tblArabaBilgi (arabaModel,arabaMarkasiID,arabaYakitTipi,arabaAciklamasi,arabaIletisim,arabaSaticisi,arabaResim,arabaFiyati) values (@aModel,@aMarkaID,@aYakit,@aAciklama,@aIletisim,@aSatici,@aResim,@aFiyat)",SqlConnetionClass.connection);
            SqlConnetionClass.CheckConnetion();
            cmdEkle.Parameters.AddWithValue("@aModel",txtModel.Text);
            cmdEkle.Parameters.AddWithValue("@aMarkaID", Convert.ToInt32(combobox.SelectedValue));
            cmdEkle.Parameters.AddWithValue("@aYakit", txtYakit.Text);
            cmdEkle.Parameters.AddWithValue("@aAciklama", txtAciklama.Text);
            cmdEkle.Parameters.AddWithValue("@aIletisim", txtNumara.Text);
            cmdEkle.Parameters.AddWithValue("@aSatici", txtSatici.Text);
            cmdEkle.Parameters.AddWithValue("@aResim", txtFotograf.Text);
            cmdEkle.Parameters.AddWithValue("@aFiyat",Convert.ToInt32(txtFiyat.Text));
            cmdEkle.ExecuteNonQuery();

        }
    }
}