using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cinescope
{
    public partial class HesapAyarlari : System.Web.UI.Page
    {
        private const string BaglantiDizesi = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=CineScopeDB;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["KullaniciID"] != null)
                {
                    LoadKullanici();
                }
                else
                {
                    Response.Redirect("Girisyap.aspx");
                }
            }
        }
        protected void btnHesap_Click(object sender, EventArgs e)
        {

            if (Session["KullaniciID"] == null)
            {
                Response.Redirect("Girisyap.aspx");
            }
            else
            {
                Response.Redirect("Hesap.aspx");
            }
        }
        private void LoadKullanici()
        {
            int kullaniciId = Convert.ToInt32(Session["KullaniciID"]);

            using (SqlConnection conn = new SqlConnection(BaglantiDizesi))
            {
                string sql = "SELECT KullaniciAdi, Email, Hakkimda FROM Kullanici WHERE ID=@id";
                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("@id", kullaniciId);

                conn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    txtKullaniciAdi.Text = dr["KullaniciAdi"].ToString();
                    txtEmail.Text = dr["Email"].ToString();
                    txtHakkimda.Text = string.IsNullOrEmpty(dr["Hakkimda"].ToString())
                                       ? "CineScope kullanıcısı"
                                       : dr["Hakkimda"].ToString();
                }
                conn.Close();
            }
        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            int kullaniciId = Convert.ToInt32(Session["KullaniciID"]);

            string kullaniciAdi = txtKullaniciAdi.Text.Trim();
            string email = txtEmail.Text.Trim();
            string hakkimda = txtHakkimda.Text.Trim();
            if (string.IsNullOrEmpty(hakkimda))
                hakkimda = "CineScope kullanıcısı";

            using (SqlConnection conn = new SqlConnection(BaglantiDizesi))
            {
                string sql = "UPDATE Kullanici SET KullaniciAdi=@kadi, Email=@email, Hakkimda=@hakkimda WHERE ID=@id";
                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("@kadi", kullaniciAdi);
                cmd.Parameters.AddWithValue("@email", email);
                cmd.Parameters.AddWithValue("@hakkimda", hakkimda);
                cmd.Parameters.AddWithValue("@id", kullaniciId);

                conn.Open();
                int etkilenen = cmd.ExecuteNonQuery();
                conn.Close();

                lblMesaj.Text = etkilenen > 0
                                ? "Bilgiler başarıyla güncellendi!"
                                : "Güncelleme sırasında bir hata oluştu!";
            }
        }
    }
}
