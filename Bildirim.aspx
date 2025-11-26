<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Elestiriler.aspx.cs" Inherits="Cinescope.Elestiriler" %>


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
                <a href="Bildirim.aspx" class="text-light fs-5 ">Bildirimler</a>
                <a href="Onerilenler.aspx" class="text-light fs-5 text-decoration-none">Önerilenler</a>
            </div>
        </div>


<div style="margin:40px 110px 120px 80px;">

    <div class="bildirim-satir">
        <i class="fa-solid fa-user-plus"></i>
        <span><b>Ali</b> seni takip etmeye başladı.</span>
    </div>

    <div class="bildirim-satir">
        <i class="fa-solid fa-heart"></i>
        <span><b>Ayşe</b> oluşturduğun film listesini beğendi.</span>
    </div>

    <div class="bildirim-satir">
        <i class="fa-solid fa-comment"></i>
        <span><b>Mehmet</b> yaptığın yoruma cevap yazdı.</span>
    </div>

    <div class="bildirim-satir">
        <i class="fa-solid fa-film"></i>
        <span><b>Elif</b> seninle aynı filmi izledi.</span>
    </div>

    <div class="bildirim-satir">
        <i class="fa-solid fa-star"></i>
        <span><b>Burak</b> bir filmi favorilerine ekledi.</span>
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
