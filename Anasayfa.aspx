<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Anasayfa.aspx.cs" Inherits="Cinescope.Anasayfa" %>

<!DOCTYPE html>
<html lang="tr">
<head runat="server">
    <meta charset="utf-8" />
    <title>CineScope</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/site.css?v=2" rel="stylesheet" />
    <style>
        .anasayfa-sayfasi .movie-card-container {
            display: flex;
            gap: 12px;
            justify-content: flex-start;
            padding: 20px;
            flex-wrap: wrap;
        }

        .anasayfa-sayfasi .movie-card {
            flex: 0 0 auto;
            width: 300px;
            height: 420px;
            border-radius: 12px;
            overflow: hidden;
            box-shadow: 0 6px 10px rgba(0, 0, 0, 0.35);
            transition: transform 0.3s, box-shadow 0.3s;
            cursor: pointer;
        }

        .anasayfa-sayfasi .movie-card:hover {
            transform: scale(1.00);
            box-shadow: 0 8px 14px rgba(0, 0, 0, 0.5);
        }

        .anasayfa-sayfasi .movie-card img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .anasayfa-sayfasi .reviews-section {
            padding-left: 50px;
            padding-right: 50px;
            margin-top: 50px;
        }

        .anasayfa-sayfasi .reviews-header-line {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
            padding-bottom: 5px;
            border-bottom: 2px solid white;
        }

        .anasayfa-sayfasi .reviews-header-line h2 {
            font-size: 1.25rem;
            font-weight: bold;
            margin: 0;
        }

        .anasayfa-sayfasi .review-card-clickable {
            display: flex;
            gap: 15px;
            border-bottom: 1px solid rgba(255, 255, 255, 0.2);
            padding-bottom: 15px;
            cursor: pointer;
        }

        .anasayfa-sayfasi .review-card-clickable:last-child {
            border-bottom: none;
        }

        .anasayfa-sayfasi .review-poster {
            width: 100px;
            height: 150px;
            overflow: hidden;
            border-radius: 6px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.5);
            flex-shrink: 0;
        }

        .anasayfa-sayfasi .review-poster img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            display: block;
        }

        .anasayfa-sayfasi .review-content h3 {
            font-size: 1rem;
            font-weight: bold;
            margin-bottom: 5px;
        }

        .anasayfa-sayfasi .review-content p {
            margin: 0;
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

        <div class="container mt-5 mb-5">
            <span class="d-block text-light fs-5" style="margin-top:55px; border-bottom:2px solid white; padding-bottom:5px;">
                Popüler Filmler
            </span>
            <div id="movies-container" class="movie-card-container">
                <p class="text-white">Popüler filmler yükleniyor...</p>
            </div>

            <span class="d-block text-light fs-5 mt-5" style="border-bottom:2px solid white; padding-bottom:5px;">
                Yeni Çıkan Filmler
            </span>
            <div id="latest-movies-container" class="movie-card-container">
                <p class="text-white">Yeni çıkan filmler yükleniyor...</p>
            </div>
        </div>

        <div class="reviews-section">
            <div class="reviews-header-line">
                <h2>Haftanın En Popüler Eleştirileri</h2>
                <a href="Elestiriler.aspx" style="text-decoration:none; font-weight:bold; color:white;">Tüm Eleştiriler</a>
            </div>
            <div id="reviews-list-container">
                <p class="text-white">Eleştiriler yükleniyor...</p>
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

    <script>
        const API_KEY = '02f7a3e84e6acce9ce0b5583deffb717';
        const IMAGE_BASE_URL = 'https://image.tmdb.org/t/p/w500';

        const moviesContainer = document.getElementById('movies-container');
        const latestMoviesContainer = document.getElementById('latest-movies-container');
        const reviewsListContainer = document.getElementById('reviews-list-container');

        const POPULAR_API_URL = `https://api.themoviedb.org/3/movie/popular?api_key=${API_KEY}&language=tr-TR&page=1`;
        const LATEST_API_URL = `https://api.themoviedb.org/3/movie/now_playing?api_key=${API_KEY}&language=tr-TR&page=1`;

        function displayMovies(movies, container) {
            container.innerHTML = '';
            movies.forEach(movie => {
                const card = document.createElement('div');
                card.className = 'movie-card';
                const poster = movie.poster_path ? `${IMAGE_BASE_URL}${movie.poster_path}` : 'https://via.placeholder.com/280x350?text=Poster+Yok';
                card.innerHTML = `<img src="${poster}" alt="${movie.title}">`;
                card.addEventListener('click', () => {
                    window.location.href = `Filmsayfasi.aspx?id=${movie.id}&title=${encodeURIComponent(movie.title)}&overview=${encodeURIComponent(movie.overview)}&poster=${encodeURIComponent(movie.poster_path)}&cast=`;
                });
                container.appendChild(card);
            });
        }

        async function fetchPopularMovies() {
            const res = await fetch(POPULAR_API_URL);
            const data = await res.json();
            displayMovies(data.results.slice(0, 4), moviesContainer);
        }

        async function fetchLatestMovies() {
            const res = await fetch(LATEST_API_URL);
            const data = await res.json();
            displayMovies(data.results.slice(0, 4), latestMoviesContainer);
        }

        async function fetchPopularReviews() {
            const res = await fetch(POPULAR_API_URL);
            const data = await res.json();
            const topMovies = data.results.slice(0, 3);

            reviewsListContainer.innerHTML = '';
            topMovies.forEach(movie => {
                const poster = movie.poster_path ? `${IMAGE_BASE_URL}${movie.poster_path}` : 'https://via.placeholder.com/100x150?text=Poster+Yok';
                const reviewText = "Mükemmel bir sinema deneyimi! Yönetmenin vizyonu ve oyunculuklar harikaydı. Bu filmi kaçırmayın!";

                const reviewCard = document.createElement('div');
                reviewCard.className = 'review-card-clickable';
                reviewCard.innerHTML = `
                    <div class="review-poster"><img src="${poster}" alt="${movie.title}"></div>
                    <div class="review-content">
                        <h3>${movie.title}</h3>
                        <p>${reviewText}</p>
                    </div>
                `;
                reviewCard.addEventListener('click', () => {
                    window.location.href = `Elestirisayfasi.aspx?id=${movie.id}&title=${encodeURIComponent(movie.title)}&overview=${encodeURIComponent(movie.overview)}&poster=${encodeURIComponent(movie.poster_path)}&review=${encodeURIComponent(reviewText)}`;
                });
                reviewsListContainer.appendChild(reviewCard);
            });
        }

        fetchPopularMovies();
        fetchLatestMovies();
        fetchPopularReviews();
    </script>
</body>
</html>
