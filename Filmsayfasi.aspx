<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Filmsayfasi.aspx.cs" Inherits="Cinescope.Filmsayfasi" %>

<!DOCTYPE html>
<html lang="tr">
<head runat="server">
    <meta charset="utf-8" />
    <title>CineScope - Film Detay</title>
    <link href="Content/site.css?v=2" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Stack+Sans+Text:wght@400;700&display=swap" rel="stylesheet">

    <style>
        .navbar {
    background-color: #262626;
    height: 75px;
    padding-left: 50px;
    display: flex;
    align-items: center;
}
.navbar {
    background-color: #262626;
    height: 75px;
    padding-left: 50px;
    display: flex;
    align-items: center;
}

.navbar-brand {
    display: flex;
    align-items: flex-start;
    gap: 10px;
    padding-top: 10px;
    font-weight: 700;
    color: #ffffff;
    text-decoration: none;
}

    .navbar-brand img {
        margin: 0;
        display: block;
        width: 50px;
        height: 50px;
    }

    .navbar-brand .brand-text {
        display: inline-block;
        margin-top: 12px;
        line-height: 1;
        font-size: 1.6rem;
    }

.navbar-nav .nav-item {
    margin-top: 10px;
    margin-right: 30px;
}

.collapse.navbar-collapse {
    align-items: center;
}
        body {
            background-color: #444444;
            color: #ffffff;
           
        }

        .movie-detail {
            display: flex;
            flex-wrap: wrap;
            gap: 30px;
            margin: 80px 80px 0 80px;
            max-width: 1200px;
        }

        .movie-poster {
            width: 300px;
            border-radius: 6px;
        }

        .movie-overview {
            flex: 1;
            font-size: 1rem;
            max-width: 500px;
        }

        #movieTitle {
            font-family: 'Stack Sans Text', sans-serif;
            font-size: 2rem;
            font-weight: 700;
            margin-bottom: 20px;
        }

        .movie-actions {
            display: flex;
            flex-direction: column;
            gap: 15px;
            margin-left: auto;
        }

        .btn-watch,
        .btn-favorite,
        .btn-later {
            background-color: #666;
            color: white;
            border: none;
            border-radius: 6px;
            padding: 7px 15px;
            font-weight: 600;
            cursor: pointer;
        }

        .btn-watch:hover,
        .btn-favorite:hover,
        .btn-later:hover {
            background-color: #777;
        }

        .rating {
            display: flex;
            gap: 5px;
            margin-top: 10px;
        }

        .rating span {
            font-size: 1.5rem;
            cursor: pointer;
            color: #777;
        }

        .rating span:hover,
        .rating span.selected {
            color: gold;
        }

        .cast-container {
            display: flex;
            justify-content: flex-start;
            flex-wrap: wrap;
            gap: 20px;
            max-height: 380px;
            overflow: hidden;
            align-items: flex-start;
        }

        .cast-member {
            position: relative;
            width: 100px;
            cursor: pointer;
            overflow: hidden;
            border-radius: 6px;
            transition: transform 0.2s;
        }

        .cast-member img {
            width: 100%;
            height: 150px;
            object-fit: cover;
            display: block;
        }

        .cast-info {
            position: absolute;
            bottom: 0;
            left: 0;
            right: 0;
            background-color: rgba(0, 0, 0, 0.8);
            color: #ffffff;
            padding: 5px;
            font-size: 0.8rem;
            text-align: center;
            opacity: 0;
            transition: opacity 0.3s;
            pointer-events: none;
        }

        .cast-member:hover .cast-info {
            opacity: 1;
        }

        .section-header {
            font-family: 'Stack Sans Text', sans-serif;
            font-size: 1.5rem;
            margin-bottom: 5px;
            border-bottom: 2px solid white;
            padding-bottom: 5px;
            display: block;
            width: 100%;
        }

        .genre-display {
            margin-bottom: 40px;
            font-size: 1.5rem;
            color: #ffffff;
            font-weight: 600;
        }

        .genre-display strong {
            font-weight: 700;
            margin-right: 5px;
        }

        .genre-display span {
            font-weight: 400;
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

        
        <div class="movie-detail">
            <img id="posterImg" class="movie-poster" src="" alt="Film Posteri" />

            <div class="movie-overview">
                <div class="title-row">
                    <h2 id="movieTitle"></h2>
                </div>
                <p id="movieOverview"></p>
            </div>

            <div class="movie-actions">
                <button type="button" class="btn-watch">İzledim</button>
                <button type="button" class="btn-watch">Yarım Bıraktım</button>
                <button type="button" class="btn-favorite">Favorilere Ekle</button>
                <button type="button" class="btn-later">Daha Sonra İzle</button>

                <div class="rating">
                    <span data-value="1">★</span>
                    <span data-value="2">★</span>
                    <span data-value="3">★</span>
                    <span data-value="4">★</span>
                    <span data-value="5">★</span>
                </div>
            </div>
        </div>

     
        <div class="movie-section" style="margin-left:80px; margin-top:80px; max-width:1200px;">
            <div id="movieGenres" class="genre-display" style="margin-top: 15px; margin-bottom: 40px;"></div>
        </div>

        <div class="movie-section" style="margin-left:80px; margin-top:40px; max-width:1200px;">
            <h3 class="section-header">Oyuncular</h3>
            <div id="castList" class="cast-container" style="margin-top: 20px;"></div>
        </div>

        
        <div class="movie-section" style="margin-left:80px; margin-top:40px; margin-bottom: 80px; max-width:1200px;">
            <h3 class="section-header">Eleştiriler</h3>
            <div id="reviewsList" style="margin-top: 20px; color:#ddd;"></div>
        </div>

        
        <footer class="footer mt-5" style="margin-top:150px;">
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

        <div class="footer-bottom">© 2025 CineScope — Tüm Hakları Saklıdır.</div>
    </form>

    <script>
        const IMAGE_BASE_URL = 'https://image.tmdb.org/t/p/w500';
        const API_KEY = '02f7a3e84e6acce9ce0b5583deffb717';

        const urlParams = new URLSearchParams(window.location.search);
        const movieTitle = urlParams.get('title');
        const movieOverview = urlParams.get('overview');
        const moviePoster = urlParams.get('poster');
        const movieId = urlParams.get('id');

        document.getElementById('movieTitle').innerText = movieTitle || 'Film Bulunamadı';
        document.getElementById('movieOverview').innerText = movieOverview || 'Açıklama yok';
        document.getElementById('posterImg').src = moviePoster ? IMAGE_BASE_URL + moviePoster : 'https://via.placeholder.com/150x225?text=Poster+Yok';

        
        const stars = document.querySelectorAll('.rating span');
        stars.forEach(star => {
            star.addEventListener('click', function () {
                const value = this.getAttribute('data-value');
                stars.forEach(s => s.classList.remove('selected'));
                for (let i = 0; i < value; i++) stars[i].classList.add('selected');
            });
        });

        
        async function fetchMovieDetails(movieId) {
            if (!movieId) {
                document.getElementById('movieGenres').innerHTML = "<span style='color:red;'>Film ID'si eksik!</span>";
                return;
            }

            const detailsUrl = `https://api.themoviedb.org/3/movie/${movieId}?api_key=${API_KEY}&language=tr-TR`;
            const genresElement = document.getElementById('movieGenres');

            try {
                const response = await fetch(detailsUrl);
                if (!response.ok) throw new Error(`API Hatası: ${response.status}`);

                const data = await response.json();
                const genres = data.genres;

                if (genres && genres.length > 0) {
                    let genreLinksHtml = genres.map(genre =>
                        `<a href="#" class="genre-link" style="color: #ffffff; text-decoration: none; margin-right: 5px;">${genre.name}</a>`
                    ).join(', ');
                    genresElement.innerHTML = `<strong>Kategori:</strong> <span>${genreLinksHtml}</span>`;
                } else {
                    genresElement.innerHTML = 'Kategori bilgisi bulunamadı.';
                }

            } catch (error) {
                console.error('Film detayları alınamadı', error);
                genresElement.innerHTML = '<span style="color:red;">Kategoriler yüklenirken bir hata oluştu.</span>';
            }
        }

        
        async function fetchCastWithImages(movieId) {
            if (!movieId) {
                document.getElementById('castList').innerHTML = "<p style='color:red;'>Film ID'si eksik!</p>";
                return;
            }

            const creditsUrl = `https://api.themoviedb.org/3/movie/${movieId}/credits?api_key=${API_KEY}&language=tr-TR`;
            const castListElement = document.getElementById('castList');
            castListElement.innerHTML = '<p>Oyuncular yükleniyor...</p>';

            try {
                const response = await fetch(creditsUrl);
                if (!response.ok) throw new Error(`API Hatası: ${response.status}`);

                const data = await response.json();
                const cast = data.cast.slice(0, 10);

                if (cast.length > 0) {
                    let castHtml = '';
                    cast.forEach(member => {
                        const profilePath = member.profile_path ? IMAGE_BASE_URL + member.profile_path : 'https://via.placeholder.com/100x150?text=Foto+Yok';
                        castHtml += `
                            <div class="cast-member" title="${member.name}">
                                <img src="${profilePath}" alt="${member.name}">
                                <div class="cast-info">${member.name}</div>
                            </div>
                        `;
                    });
                    castListElement.innerHTML = castHtml;
                } else {
                    castListElement.innerHTML = '<p>Bu film için oyuncu bilgisi bulunamadı.</p>';
                }

            } catch (error) {
                console.error('Oyuncular alınamadı', error);
                castListElement.innerHTML = '<p style="color:red;">Oyuncu listesi yüklenirken bir hata oluştu.</p>';
            }
        }

        
        fetchMovieDetails(movieId);
        fetchCastWithImages(movieId);
    </script>
</body>
</html>
