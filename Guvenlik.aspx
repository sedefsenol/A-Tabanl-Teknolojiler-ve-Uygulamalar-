<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Guvenlik.aspx.cs" Inherits="Cinescope.Guvenlik" %>

<!DOCTYPE html>
<html lang="tr">
<head runat="server">
    <meta charset="utf-8" />
    <title>CineScope</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/site.css" rel="stylesheet" />
    <style>
   
   .kutucuk { 
    padding: 10px; 
    border-radius: 5px; 
    border: 1px solid #555; 
    margin-top: 5px; 
    background-color: #2c2c2c; 
    color: #fff;
    transition: border-color 0.3s, box-shadow 0.3s;
}

.kutucuk:focus {
    background-color: #2c2c2c; 
    color: #fff; 
    border-color: #fff; 
    box-shadow: 0 0 5px rgba(255,255,255,0.5);
}

.kutucuk::placeholder {
    color: #ccc; 
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
                        <li class="nav-item">
                            <asp:LinkButton ID="btnHesap" runat="server" CssClass="nav-link" OnClick="btnHesap_Click">
                                Hesap
                            </asp:LinkButton>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

    
        <h2 class="mt-5 ms-5 fs-4">Hesap Ayarları</h2>
        <div class="d-flex align-items-center border-bottom border-white pb-2 mt-4 ms-5 me-5">
            <div class="d-flex gap-4">
                <a href="HesapAyarlari.aspx" class="text-light fs-5 text-decoration-none">Profil</a>
                <a href="Guvenlik.aspx" class="text-light fs-5">Güvenlik</a>
            </div>
        </div>

      
        <div class="edit mt-5 mb-5 ms-5 me-5">
            <div class="field mb-3">
                <span>Mevcut Şifre</span>
                <input type="text" class="kutucuk form-control" placeholder="Mevcut Şifrenizi Giriniz">
            </div>
            <div class="field mb-3">
                <span>Yeni Şifre</span>
                <input type="text" class="kutucuk form-control" placeholder="Yeni Şifrenizi Giriniz">
            </div>
            <div class="field mb-3">
                <span>Tekrar Yeni Şifre</span>
                <input type="text" class="kutucuk form-control" placeholder="Tekrar Yeni Şifrenizi Giriniz">
            </div>
        </div>

        
        <div class="footer-wrapper">
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
        </div>

    </form>
</body>
</html>
