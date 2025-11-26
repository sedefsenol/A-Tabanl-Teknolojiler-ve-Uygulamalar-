<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Onerilenler.aspx.cs" Inherits="Cinescope.Onerilenler" %>


<!DOCTYPE html>
<html lang="tr">
<head runat="server">
    <meta charset="utf-8" />
    <title>CineScope</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/site.css" rel="stylesheet" />

    <style>
        .bildirim-satir {
            padding: 14px 8px;
            color: white;
            border-bottom: 1px solid rgba(255,255,255,0.2);
            font-size: 16px;
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .bildirim-satir i {
            font-size: 18px;
            opacity: .9;
        }
    </style>

</head>
<body class="anasayfa-sayfasi">
    <form id="form1" runat="server">

        
                <nav class="navbar navbar-expand-lg navbar-dark">
    <div class="container-fluid">
        <a class="navbar-brand fw-bold" href="anasayfa.aspx">
            <img src="Gorsel/cinescope.png" alt="Logo">
            <span class="brand-text">Cinescope</span>
        </a>
        <div class="collapse navbar-collapse">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link" href="Filmler.aspx">Filmler</a></li>
                <li class="nav-item"><a class="nav-link" href="Elestiriler.aspx">Eleştiriler</a></li>
                <li class="nav-item"><a class="nav-link" href="Listeler.aspx">Listeler</a></li>
                <li class="nav-item"><a class="nav-link" href="Mesajlar.aspx">Mesajlar</a></li>
                <li class="nav-item"><a class="nav-link" href="Bildirim.aspx">Bildirim</a></li>

                <!-- Hesap linki -->
                <li class="nav-item">
                    <asp:LinkButton ID="btnHesap" runat="server" CssClass="nav-link" OnClick="btnHesap_Click">
                        Hesap
                    </asp:LinkButton>
                </li>
            </ul>
        </div>
    </div>
</nav>


        <div class="d-flex align-items-center"
             style="margin-top:60px; margin-left:80px; margin-right:110px; border-bottom: 2px solid white; padding-bottom: 5px;">
            <div class="d-flex gap-4">
                <a href="Bildirim.aspx" class="text-light fs-5 text-decoration-none">Bildirimler</a>
                <a href="Onerilenler.aspx" class="text-light fs-5 ">Önerilenler</a>
            </div>
        </div>
       
        <div style="margin: 40px 80px 120px 80px;">

    <div class="bildirim-satir">
        <img src="Gorsel/pp.png" style="width:50px; height:50px; border-radius:50%; object-fit:cover;">
        <div>
            <span><b>Ali</b> ile <b>%87</b> uyumlusun.</span><br>
            <small style="opacity:.8;">İkiniz de aynı filmi izlediniz.</small>
        </div>
    </div>

    <div class="bildirim-satir">
        <img src="Gorsel/pp.png" style="width:50px; height:50px; border-radius:50%; object-fit:cover;">
        <div>
            <span><b>Ayşe</b> ile <b>%92</b> uyumlusun.</span><br>
            <small style="opacity:.8;">Benzer film türlerini beğeniyorsunuz.</small>
        </div>
    </div>

    <div class="bildirim-satir">
        <img src="Gorsel/pp.png" style="width:50px; height:50px; border-radius:50%; object-fit:cover;">
        <div>
            <span><b>Mehmet</b> ile <b>%74</b> uyumlusun.</span><br>
            <small style="opacity:.8;">Son izlenen filmleriniz benzer.</small>
        </div>
    </div>

    <div class="bildirim-satir">
        <img src="Gorsel/pp.png" style="width:50px; height:50px; border-radius:50%; object-fit:cover;">
        <div>
            <span><b>İlayda</b> ile <b>%81</b> uyumlusun.</span><br>
            <small style="opacity:.8;">Aynı favori yönetmeni takip ediyorsunuz.</small>
        </div>
    </div>

    <div class="bildirim-satir">
        <img src="Gorsel/pp.png" style="width:50px; height:50px; border-radius:50%; object-fit:cover;">
        <div>
            <span><b>Emre</b> ile <b>%69</b> uyumlusun.</span><br>
            <small style="opacity:.8;">Listelerinizde ortak filmler var.</small>
        </div>
    </div>

</div>


        
       <footer class="footer">
    <div class="footer-left">
        <h2 class="logo">CineScope</h2>
        <p>Film keşfet, eleştirini paylaş.</p>
    </div>

    <div class="footer-section">
        <h3>Hakkımızda</h3>
        <a href="#">Hakkımızda</a>
        <a href="#">İletişim</a>
        <a href="#">Gizlilik Politikası</a>
    </div>

    <div class="footer-section">
        <h3>Bizi Takip Edin</h3>
        <a href="#">Instagram</a>
        <a href="#">Twitter</a>
        <a href="#">YouTube</a>
    </div>
</footer>

<div class="footer-bottom">
    © 2025 CineScope — Tüm Hakları Saklıdır.
</div>


    </form>
</body>
</html>

