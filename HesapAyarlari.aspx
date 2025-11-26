<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HesapAyarlari.aspx.cs" Inherits="Cinescope.HesapAyarlari" %>

<!DOCTYPE html>
<html lang="tr">
<head runat="server">
    <meta charset="utf-8" />
    <title>CineScope - Hesap Ayarları</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/site.css" rel="stylesheet" />

    <style>
        .field { 
            margin-top:20px; 
            display: flex; 
            flex-direction: column; 
            width: 400px; 
            margin-bottom: 15px;
        }
        .kutucuk { 
            padding: 10px; 
            border-radius: 5px; 
            border: none; 
            margin-top: 5px; 
            background-color: #2c2c2c;
            color: #fff;
        }
        .btn-kaydet { 
            width: 150px; 
            margin-top: 10px; 
        }
        .text-msg { 
            margin-top: 10px; 
            color: lightgreen; 
        }
        .edit {
            margin-bottom: 100px;
            margin-left: 80px;
        }
        .nav-links {
            margin-top: 60px; 
            margin-left: 80px; 
            margin-right: 110px; 
            border-bottom: 2px solid white; 
            padding-bottom: 5px;
        }
        .nav-links a {
            gap: 20px;
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
                            <asp:LinkButton ID="btnHesap" runat="server" CssClass="nav-link" OnClick="btnHesap_Click">Hesap</asp:LinkButton>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

       
                 <h2 class="mt-5 ms-5 fs-4">Hesap Ayarları</h2>
        <div class="d-flex align-items-center border-bottom border-white pb-2 mt-4 ms-5 me-5">
            <div class="d-flex gap-4">
                <a href="HesapAyarlari.aspx" class="text-light fs-5 ">Profil</a>
                <a href="Guvenlik.aspx" class="text-light fs-5 text-decoration-none">Güvenlik</a>
            </div>
        </div>
      
        <div class="edit">
         
            <div class="field">
                <span>Kullanıcı Adı</span>
                <asp:TextBox ID="txtKullaniciAdi" runat="server" CssClass="kutucuk"></asp:TextBox>
            </div>

            
            <div class="field">
                <span>E-mail</span>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="kutucuk"></asp:TextBox>
            </div>

           
            <div class="field">
                <span>Hakkımda</span>
                <asp:TextBox ID="txtHakkimda" runat="server" CssClass="kutucuk" TextMode="MultiLine" Rows="4"></asp:TextBox>
            </div>

            
            <div class="field">
                <asp:Button ID="btnKaydet" runat="server" CssClass="btn btn-light btn-kaydet" Text="Kaydet" OnClick="btnKaydet_Click" />
                <asp:Label ID="lblMesaj" runat="server" CssClass="text-msg"></asp:Label>
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
            <div class="footer-bottom mt-2">
                © 2025 CineScope — Tüm Hakları Saklıdır.
            </div>
        </div>

    </form>
</body>
</html>
