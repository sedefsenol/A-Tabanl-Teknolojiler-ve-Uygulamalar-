<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Favoriler.aspx.cs" Inherits="Cinescope.Favoriler" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>CineScope - Favoriler</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/site.css?v=2" rel="stylesheet" />
    <style>

        .favoriler-page .list-menu-wrapper {
            margin-top: 50px;
            margin-left: 50px;
            margin-right: 100px;
            border-bottom: 2px solid white;
        }

        .favoriler-page .list-menu {
            display: flex;
            gap: 40px;
            padding-bottom: 5px;
        }

        .favoriler-page .menu-item {
            color: white;
            text-decoration: none;
            font-size: 20px;
            position: relative;
            padding-bottom: 5px;
        }

        .favoriler-page .menu-item:hover::after,
        .favoriler-page .menu-item.active::after {
            content: "";
            position: absolute;
            bottom: -2px;
            left: 0;
            width: 100%;
            height: 3px;
            background-color: white;
            border-radius: 2px;
        }

        .favoriler-page .menu-edit {
            margin-left: auto;
            cursor: pointer;
        }

        .favoriler-page .favori-container {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            margin: 40px 50px;
        }

        .favoriler-page .favori-item {
            position: relative;
        }

        .favoriler-page .favori-item img {
            width: 180px;
            height: 260px;
            object-fit: cover;
            border-radius: 10px;
            transition: transform .3s ease;
        }

        .favoriler-page .favori-item img:hover {
            transform: scale(1.05);
            cursor: pointer;
        }

        .favoriler-page .delete-btn {
            display: none;
            position: absolute;
            top: 5px;
            right: 5px;
            background: rgba(255,255,255,0.8);
            color: red;
            font-weight: bold;
            border-radius: 50%;
            width: 25px;
            height: 25px;
            text-align: center;
            line-height: 25px;
            cursor: pointer;
            z-index: 10;
        }

        .favoriler-page .favori-item.edit-mode .delete-btn {
            display: block;
        }
    </style>
</head>

<body class="favoriler-page">
    <form runat="server">

       
        <nav class="navbar navbar-expand-lg navbar-dark">
            <div class="container-fluid">
                <a class="navbar-brand fw-bold" href="anasayfa.aspx">
                    <img src="Gorsel/cinescope.png" alt="Logo"/>
                    <span class="brand-text">Cinescope</span>
                </a>
                <div class="collapse navbar-collapse">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item"><a class="nav-link" href="Filmler.aspx">Filmler</a></li>
                        <li class="nav-item"><a class="nav-link" href="Elestiriler.aspx">Eleştiriler</a></li>
                        <li class="nav-item"><a class="nav-link" href="Listeler.aspx">Listeler</a></li>
                        <li class="nav-item"><a class="nav-link" href="Mesajlar.aspx">Mesajlar</a></li>
                        <li class="nav-item"><a class="nav-link" href="Bildirim.aspx">Bildirim</a></li>
                        <li class="nav-item"><a class="nav-link" href="Hesap.aspx">Hesap</a></li>
                    </ul>
                </div>
            </div>
        </nav>

       
        <div class="list-menu-wrapper">
            <div class="list-menu">
                <a href="Listeler.aspx" class="menu-item">Listelerim</a>
                <a href="Favoriler.aspx" class="menu-item active">Favoriler</a>
                <a href="Listeolustur.aspx" class="menu-item">Liste Oluştur</a>
                <span class="menu-item menu-edit">Düzenle</span>
            </div>
        </div>

      
        <div class="favori-container" style="margin-bottom:100px;">
            <div class="favori-item"><img src="Gorsel/avatar.jpg" /><span class="delete-btn">&times;</span></div>
            <div class="favori-item"><img src="Gorsel/kehanet.jpg" /><span class="delete-btn">&times;</span></div>                 
            <div class="favori-item"><img src="Gorsel/silbastan.jpg" /><span class="delete-btn">&times;</span></div>
            <div class="favori-item"><img src="Gorsel/hayaletavcilari.jpg" /><span class="delete-btn">&times;</span></div>
            <div class="favori-item"><img src="Gorsel/avatar.jpg" /><span class="delete-btn">&times;</span></div>
            <div class="favori-item"><img src="Gorsel/kehanet.jpg" /><span class="delete-btn">&times;</span></div>
            <div class="favori-item"><img src="Gorsel/avatar.jpg" /><span class="delete-btn">&times;</span></div>
            <div class="favori-item"><img src="Gorsel/kehanet.jpg" /><span class="delete-btn">&times;</span></div>   
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

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(function () {
           
            $(".menu-edit").click(function () {
                $(".favori-item").toggleClass("edit-mode");
            });

           
            $(".delete-btn").click(function () {
                $(this).closest(".favori-item").remove();
            });
        });
    </script>
</body>
</html>
