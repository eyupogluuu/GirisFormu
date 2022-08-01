using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace GirisFormu
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection("Data Source=DESKTOP-2PU1K7L\\SQLEXPRESS;Initial Catalog=admingiris;Integrated Security=True");
            baglanti.Open();
            SqlCommand komut = new SqlCommand("select * from admin where kullaniciadi=@p1 and sifre=@p2", baglanti);
            komut.Parameters.AddWithValue("@p1", Textkuladi.Text);
            komut.Parameters.AddWithValue("@p2", Textsifre.Text);
            SqlDataReader dr = komut.ExecuteReader();
            if (dr.Read())
            {
                Response.Redirect("veriler.aspx");
            }
            else
            {
                Response.Write("Hatalı Kullanıcı Adı veya Şifre Girişi");
            }
        }
    }
}