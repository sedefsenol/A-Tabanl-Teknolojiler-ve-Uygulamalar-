<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bildirim.aspx.cs" Inherits="Cinescope.Bildirim" %>

<!DOCTYPE html>
<html lang="tr">
<head runat="server">
    <meta charset="utf-8" />
    <title>CineScope</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/site.css" rel="stylesheet" />

    
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
