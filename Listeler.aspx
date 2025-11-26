<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Listeler.aspx.cs" Inherits="Cinescope.Listeler" %>

<!DOCTYPE html>
<html lang="tr">
<head runat="server">
    <meta charset="utf-8" />
    <title>Cinescope - Listeler</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/site.css" rel="stylesheet" />

    <style>


        .list-menu-wrapper {
            margin: 50px 100px 0 50px;
            border-bottom: 2px solid white;
        }

        .list-menu {
            display: flex;
            gap: 40px;
            padding-bottom: 5px;
        }

        .menu-item {
            color: white;
            text-decoration: none;
            font-size: 20px;
            position: relative;
            padding-bottom: 5px;
        }

        .menu-item:hover::after,
        .menu-item.active::after {
            content: "";
            position: absolute;
            bottom: -2px;
            left: 0;
            width: 100%;
            height: 3px;
            background-color: white;
            border-radius: 2px;
        }

        .liste-baslik {
            font-size: 20px;
            font-weight: bold;
            margin: 40px 0 10px 50px;
            border-bottom: 2px solid white;
            width: fit-content;
            padding-bottom: 5px;
        }

        .liste-poster-container {
            display: flex;
            gap: 20px;
            flex-wrap: wrap;
            margin: 20px 0 100px 50px;
        }

        .list-movie-poster img {
            width: 160px;
            height: 240px;
            border-radius: 10px;
            object-fit: cover;
            transition: transform 0.3s;
        }

        .list-movie-poster img:hover {
            transform: scale(1.05);
        }

        
    </style>
</head>

<body class="listeler-page">
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

        
        <div class="list-menu-wrapper">
            <div class="list-menu">
                <a href="Listeler.aspx" class="menu-item active">Listelerim</a>
                <a href="Favoriler.aspx" class="menu-item">Favoriler</a>
                <a href="Listeolustur.aspx" class="menu-item">Liste Oluştur</a>
            </div>
        </div>

        
        <div class="liste-baslik">Komik Filmler</div>
        <div class="liste-poster-container">
            <div class="list-movie-poster"><img src="Gorsel/avatar.jpg" /></div>
            <div class="list-movie-poster"><img src="Gorsel/kehanet.jpg" /></div>
            <div class="list-movie-poster"><img src="Gorsel/silbastan.jpg" /></div>
            <div class="list-movie-poster"><img src="Gorsel/hayaletavcilari.jpg" /></div>
            <div class="list-movie-poster"><img src="Gorsel/avatar.jpg" /></div>
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
                <a href="#">Gizlilik</a>
            </div>
            <div class="footer-section">
                <h3>Sosyal</h3>
                <a href="#">Instagram</a>
                <a href="#">Twitter</a>
            </div>
        </footer>
        <div class="footer-bottom">© 2025 CineScope</div>

    </form>
</body>
</html>
