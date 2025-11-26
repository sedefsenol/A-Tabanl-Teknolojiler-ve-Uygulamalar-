<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Hesap.aspx.cs" Inherits="Cinescope.Hesap" %>

<!DOCTYPE html>
<html lang="tr">
<head runat="server">
    <meta charset="utf-8" />
    <title>CineScope - Hesap</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/site.css?v=2" rel="stylesheet" />

    <style>
        .kullanici { 
            margin-left: 80px; 
            margin-top: 80px; 
            display: flex; 
            align-items: center; 
            gap: 60px; 
        }
        .profil-foto { 
            width: 180px; 
            height: 180px; 
            border-radius: 50%; 
            overflow: hidden; 
        }
        .profil-foto img { 
            width: 100%; 
            height: 100%; 
            object-fit: cover; 
            display: block; 
        }
        .bilgiler { 
            display: flex; 
            flex-direction: column; 
            gap: 8px; 
        }
        .duzenle-btn { 
            display: flex; 
            flex-direction: column; 
            gap: 10px; 
            margin-left: 500px; 
        }
        .hakkimda { 
            margin-top: 40px; 
        }
        .hakkimda-baslik { 
            margin-left: 60px; 
            margin-bottom: 10px; 
            font-weight: bold; 
        }
        .hakkimda-yazisi { 
            margin-left: 60px; 
            margin-top: 10px; 
            margin-right: 10px; 
            width: 70%; 
            height: 100px; 
            background-color: #2c2c2c; 
            color: white; 
            border: none; 
            padding: 10px; 
            border-radius: 5px; 
        }

        .hesap-elestiriler {
    margin-top: 50px;
    margin-left: 60px;
}
.elestiri {
    padding-bottom: 10px;
    border-bottom: 2px solid white;  
    margin-bottom: 15px;              
}
.elestiri-baslik {
    color: white;
    font-weight: bold;
    margin-bottom: 20px;
}

.elestiri-kart {
    display: flex;
    align-items: flex-start;
    gap: 15px;
    margin-bottom: 25px;
    padding-bottom: 20px;
    border-bottom: 1px solid white; 
    width: 70%;
}

.elestiri-avatar {
    width: 120px;
    height: 160px;
    border-radius: 5px; 
    object-fit: cover;
}

.elestiri-yazi {
    color: #e6e6e6;
    font-size: 15px;
    line-height: 1.5;
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

        <div class="kullanici">
            <div class="profil-foto">
                <asp:Image ID="imgProfil" runat="server" ImageUrl="Gorsel/pp.png" />
            </div>

            <div class="bilgiler">
                <h2>
                    <asp:Label ID="lblKullaniciAdi" runat="server" Text="KullaniciAdi"></asp:Label>
                </h2>
                <div class="mt-2">
                    <span style="font-weight:bold;">
                        <asp:Label ID="lblTakipci" runat="server" Text="0"></asp:Label>
                    </span> Takipçi
                    <span style="font-weight:bold; margin-left:30px;">
                        <asp:Label ID="lblTakipEdilen" runat="server" Text="0"></asp:Label>
                    </span> Takip Edilen
                </div>
            </div>

            <div class="duzenle-btn">
                <button class="profil-duzenle-btn">
                    <a href="HesapAyarlari.aspx" class="text-dark fs-5 text-decoration-none">Hesap Ayarları</a>
                </button>
            </div>
        </div>

        <span class="d-block text-light fs-5 mt-3 ms-4 me-5 border-bottom border-white pb-2"></span>

        
        <div class="hakkimda">
            <h2 class="hakkimda-baslik">Hakkımda</h2>
            <br />
            <asp:Label ID="lblHakkimda" runat="server" CssClass="hakkimda-yazisi" Text=""></asp:Label>
        </div>

        
        <div class="hesap-elestiriler">
    <h2 class="elestiri-baslik">Eleştirilerim</h2>

    <div class="elestiri-kart">
        <img src="Gorsel/avatar.jpg" class="elestiri-avatar" />
        <p class="elestiri-yazi">
            Bu film gerçekten görsel bir şölen sunuyor. Atmosferi ve çekim açıları harikaydı!
        </p>
    </div>

    <div class="elestiri-kart">
        <img src="Gorsel/avatar.jpg" class="elestiri-avatar" />
        <p class="elestiri-yazi">
            Oyunculuklar çok başarılıydı, özellikle başrol karakteri filmi bambaşka bir seviyeye taşımış.
        </p>
    </div>

    <div class="elestiri-kart">
        <img src="Gorsel/avatar.jpg" class="elestiri-avatar" />
        <p class="elestiri-yazi">
            Konusu biraz yavaş ilerlese de finali kesinlikle izlemeye değerdi.
        </p>
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
