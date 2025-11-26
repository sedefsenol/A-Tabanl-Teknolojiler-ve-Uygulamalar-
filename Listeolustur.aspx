<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Listeolustur.aspx.cs" Inherits="Cinescope.Listeolustur" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>CineScope - Liste Oluştur</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/site.css" rel="stylesheet" />
    <style>
        body, html {
            background-color: #444;
            color: #fff;
            font-family: Arial, sans-serif;
        }

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

       
        .ozel-form-kapsayici {
            margin: 50px auto;
            width: 90%; 
            background: #333;
            border-radius: 10px;
            padding: 40px;
        }

        .koyu-input-alan {
            width: 100%;
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #555;
            background-color: #555;
            color: #fff;
        }

        #filmSonuclari {
            background: #333;
            border: 1px solid #555;
            color: #fff;
            max-height: 300px;
            overflow-y: auto;
            margin-top: 5px;
            border-radius: 5px;
        }

        .film-item:hover {
            background: #555;
            cursor: pointer;
        }

        #secilenFilmler {
            background: #222;
            border: 1px solid #555;
            min-height: 50px;
            padding: 10px;
            color: #fff;
            margin-top: 10px;
            border-radius: 5px;
        }

        .btn-olustur {
            display: block;
            margin: 30px auto 0 auto;
            width: 150px;
        }

        footer {
            margin-top: 50px;
            text-align: center;
        }
    </style>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>

<body class="listeolustur-page">


    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container-fluid">
            <a class="navbar-brand fw-bold" href="anasayfa.aspx">
                <img src="Gorsel/cinescope.png" alt="Logo" />
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
            <a href="Favoriler.aspx" class="menu-item">Favoriler</a>
            <a href="Listeolustur.aspx" class="menu-item active">Liste Oluştur</a>
        </div>
    </div>

    <div class="ozel-form-kapsayici">
        <div class="mb-3">
            <label class="form-label">İsim</label>
            <input class="koyu-input-alan" placeholder="Liste ismi girin" />
        </div>

        <div class="mb-3">
            <label class="form-label">Görünürlük</label>
            <select class="koyu-input-alan">
                <option>Herkes</option>
                <option>Arkadaşlarım</option>
                <option>Sadece Ben</option>
            </select>
        </div>

        <div class="mb-3">
            <label class="form-label">Açıklama</label>
            <textarea class="koyu-input-alan"></textarea>
        </div>

        <div class="mb-3">
            <label class="form-label">Film ekle (isim)</label>
            <input id="txtFilm" class="koyu-input-alan" placeholder="Film ismi girin" />
            <div id="filmSonuclari"></div>
        </div>

        <div class="mb-3">
            <label class="form-label">Seçilen Filmler</label>
            <div id="secilenFilmler"></div>
        </div>

        <button class="btn btn-secondary btn-olustur">Oluştur</button>
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

    <script>
        const apiKey = "02f7a3e84e6acce9ce0b5583deffb717";

        $("#txtFilm").keyup(function () {
            let q = $(this).val();
            if (q.length < 2) { $("#filmSonuclari").empty(); return; }

            $.ajax({
                url: `https://api.themoviedb.org/3/search/movie?api_key=${apiKey}&query=${encodeURIComponent(q)}&language=tr-TR`,
                method: "GET",
                success: function (data) {
                    $("#filmSonuclari").empty();
                    if (!data.results) return;

                    data.results.forEach(f => {
                        let poster = f.poster_path ?
                            "https://image.tmdb.org/t/p/w200" + f.poster_path :
                            "https://via.placeholder.com/50x70";

                        $("#filmSonuclari").append(`
                            <div class="film-item d-flex align-items-center p-1 border-bottom" onclick="filmSec('${f.title.replace(/'/g, '\\\'')}')">
                                <img src="${poster}" style="width:50px; margin-right:10px;">
                                <span>${f.title} (${f.release_date ? f.release_date.substring(0, 4) : "?"})</span>
                            </div>
                        `);
                    });
                }
            });
        });

        function filmSec(ad) {
            $("#txtFilm").val("");
            $("#filmSonuclari").empty();
            $("#secilenFilmler").append(`<div class="mb-1">${ad}</div>`);
        }
    </script>

</body>
</html>
