using araba_satis_sitesi.Classes;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace araba_satis_sitesi
{
    public partial class girisYap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnKayit_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select * from tblUyeler where uyeMail=@aMail and uyeParola=@aParola",SqlConnetionClass.connection);
            SqlConnetionClass.CheckConnetion();
            string donusmusParola = Sha256Donusturucu.ComputeSha256Hash(txtParola.Text);
            cmd.Parameters.AddWithValue("@aMail",txtMail.Text);
            cmd.Parameters.AddWithValue("@aParola", donusmusParola);

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            if (dt.Rows.Count>0)
            {
                if (txtMail.Text=="taylan@gmail.com")
                {
                    Session["IsUserAdmin"] = true;
                    Response.Redirect("adminPanel.aspx");
                }
                else
                {
                    Session["IsUserOnline"] = true;
                    Response.Redirect("arabaListele.aspx");
                }
            }
            else
            {
                Response.Write("Mail adresi yada parola hatalı");
            }
        }
    }
}