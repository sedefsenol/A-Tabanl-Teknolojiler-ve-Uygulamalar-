using System;
using System.Web.UI;

namespace Cinescope
{
    public partial class Listeler : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Sayfa yüklendiğinde yapılacak işlemler
        }

        protected void btnHesap_Click(object sender, EventArgs e)
        {
            Response.Redirect("Hesap.aspx");
        }
    }
}
