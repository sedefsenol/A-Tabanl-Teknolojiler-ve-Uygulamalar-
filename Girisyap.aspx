<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Girisyap.aspx.cs" Inherits="Cinescope.Girisyap" %>

<!DOCTYPE html>
<html lang="tr">
<head runat="server">
    <meta charset="utf-8" />
    <title>CineScope - Giriş Yap</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/site.css?v=2" rel="stylesheet" />

    <style>
        .login-card {
            background-color: #262626;
             width: 50%;
            margin: 100px auto;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 0 15px rgba(0,0,0,0.4);
        }

        .form-control {
            background-color: #3a3a3a;
            border: 1px solid #555;
            color: #fff;
        }

        .form-control:focus {
            border-color: #999;
            box-shadow: none;
            color: #fff;
            background-color: #3a3a3a;
        }

        .btn-login {
            width: 100%;
            margin-top: 15px;
        }

        .login-card h2 {
            text-align: center;
            margin-bottom: 30px;
            color: #fff;
        }
    </style>
</head>

<body>
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

        
        <div class="login-card">
            <h2>CineScope Giriş</h2>

            <asp:Label ID="lblMesaj" runat="server" CssClass="text-danger mb-3 d-block text-center"></asp:Label>

            <div class="mb-3">
                <asp:TextBox ID="txtKullaniciAdi" runat="server" CssClass="form-control" Placeholder="Kullanıcı Adı"></asp:TextBox>
            </div>
            <div class="mb-3">
                <asp:TextBox ID="txtSifre" runat="server" CssClass="form-control" TextMode="Password" Placeholder="Şifre"></asp:TextBox>
            </div>
            <div class="d-grid">
                <asp:Button ID="btnGirisYap" runat="server" Text="Giriş Yap" CssClass="btn btn-primary btn-login" OnClick="btnGirisYap_Click" />
            </div>

            <div class="text-center mt-3">
                <small>Hesabınız yok mu? <a href="Kayitol.aspx" style="color:#fff;">Kayıt Ol</a></small>
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

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
