using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cinescope
{
    public partial class Filmler : Page
    {
        protected void btnHesap_Click(object sender, EventArgs e)
        {
            if (Session["KullaniciID"] == null)
            {
                Response.Redirect("GirisYap.aspx");
            }
            else
            {
                Response.Redirect("Hesap.aspx");
            }
        }
    }
}