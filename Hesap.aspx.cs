using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cinescope
{
    public partial class Hesap : Page
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

        private void LoadKullanici()
        {
            int kullaniciId = Convert.ToInt32(Session["KullaniciID"]);

            using (SqlConnection conn = new SqlConnection(BaglantiDizesi))
            {
                string sql = "SELECT KullaniciAdi, Hakkimda FROM Kullanici WHERE ID=@id";
                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("@id", kullaniciId);

                conn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    lblKullaniciAdi.Text = dr["KullaniciAdi"].ToString();
                    lblHakkimda.Text = dr["Hakkimda"].ToString();
                }
                conn.Close();
            }
        }

        protected void btnHesap_Click(object sender, EventArgs e)
        {
            Response.Redirect("HesapAyarlari.aspx");
        }
    }
}
