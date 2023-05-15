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
    public partial class arabaListele : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select arabaID,arabaModel,arabaMarkasiID,arabaYakitTipi,arabaAciklamasi,arabaIletisim,arabaSaticisi,arabaResim,arabaFiyati,arabaOnay,markaID,markaAdi from tblArabaBilgi inner join tblMarka on tblArabaBilgi.arabaMarkasiID = tblMarka.markaID where arabaOnay=@aonay",SqlConnetionClass.connection);
            SqlConnetionClass.CheckConnetion();
            cmd.Parameters.AddWithValue("@aonay",true);
            SqlDataReader dr = cmd.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();
            dr.Close();
        }
    }
}