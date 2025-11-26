using System;
using System.Web.UI;

namespace Cinescope
{
    public partial class Anasayfa : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (Session["KullaniciID"] == null)
            {
                btnHesap.Text = "Giriş Yap";
            }
            else
            {
                btnHesap.Text = "Hesap";
            }
        }

        protected void btnHesap_Click(object sender, EventArgs e)
        {
            // Session kontrolü burada
            if (Session["KullaniciID"] == null)
            {
                Response.Redirect("Girisyap.aspx"); 
            }
            else
            {
                Response.Redirect("Hesap.aspx"); 
            }
        }
    }
}
