<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Elestirisayfasi.aspx.cs" Inherits="Cinescope.Elestirisayfasi" %>

<!DOCTYPE html>
<html lang="tr">
<head runat="server">
    <meta charset="utf-8" />
    <title>CineScope - Film Detay</title>
    <link href="Content/site.css?v=2" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Stack+Sans+Text:wght@400;700&display=swap" rel="stylesheet">

    <style>
       .navbar { background-color:#262626; height:75px; padding-left:50px; display:flex; align-items:center; }
.navbar-brand { display:flex; align-items:flex-start; gap:10px; padding-top:10px; font-weight:700; color:#fff; text-decoration:none; }
.navbar-brand img { margin:0; display:block; width:50px; height:50px; }
.navbar-brand .brand-text { display:inline-block; margin-top:12px; line-height:1; font-size:1.6rem; }
.navbar-nav .nav-item { margin-top:10px; margin-right:30px; }
.collapse.navbar-collapse { align-items:center; }

body { background-color:#444; color:#fff; min-height:100vh; display:flex; flex-direction:column; }
.movie-detail { display:flex; flex-wrap:wrap; gap:30px; margin:80px 80px 0 80px; max-width:1200px; }
.movie-poster { width:300px; border-radius:6px; }
.movie-overview { flex:1; font-size:1rem; max-width:500px; }
#movieTitle { font-family:'Stack Sans Text',sans-serif; font-size:2rem; font-weight:700; margin-bottom:20px; }

.movie-actions { display:flex; flex-direction:column; gap:20px; margin-left:150px; margin-top:20px; }
.btn-watch, .btn-favorite, .btn-later { background-color:#666; color:#fff; border:none; border-radius:6px; padding:7px 15px; font-weight:600; cursor:pointer; }
.btn-watch:hover, .btn-favorite:hover, .btn-later:hover { background-color:#777; }

.rating { display:flex; gap:5px; margin-top:10px; }
.rating span { font-size:1.5rem; cursor:pointer; color:#777; }
.rating span:hover, .rating span.selected { color:gold; }

.section-header { font-family:'Stack Sans Text',sans-serif; font-size:1.5rem; margin-bottom:5px; border-bottom:2px solid #fff; padding-bottom:5px; display:block; width:100%; }
.genre-display { margin-top:15px; margin-bottom:40px; font-size:1.5rem; font-weight:600; }
.cast-container { display:flex; flex-wrap:wrap; gap:20px; max-height:380px; overflow:hidden; align-items:flex-start; margin-top:20px; }
.cast-member { position:relative; width:100px; cursor:pointer; overflow:hidden; border-radius:6px; transition:transform 0.2s; }
.cast-member img { width:100%; height:150px; object-fit:cover; display:block; }
.cast-info { position:absolute; bottom:0; left:0; right:0; background-color:rgba(0,0,0,0.8); color:#fff; padding:5px; font-size:0.8rem; text-align:center; opacity:0; transition:opacity 0.3s; pointer-events:none; }
.cast-member:hover .cast-info { opacity:1; }

.reviews-header-container { display:flex; justify-content:space-between; align-items:flex-end; margin:100px 80px 20px 0; border-bottom:2px solid #fff; padding-bottom:5px; width:calc(100% - 80px); }
.main-review-wrapper { display:flex; gap:20px; padding:20px; border:1px solid #555; border-radius:6px; background-color:#333; }
.review-avatar { width:60px; height:60px; border-radius:50%; overflow:hidden; flex-shrink:0; }
.review-avatar img { width:100%; height:100%; object-fit:cover; }
.review-content-area { flex-grow:1; }
.review-actions { margin-top:15px; display:flex; gap:15px; align-items:center; }
.review-action-btn { background:none; border:none; color:#ddd; cursor:pointer; font-weight:600; padding:5px 0; transition:color 0.2s; }

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
                <h2 id="movieTitle"></h2>
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

   
        <div class="movie-section" style="margin: 40px 80px 0 80px; max-width:1200px;">
            <div id="movieGenres" class="genre-display"></div>
        </div>

      
        <div class="movie-section" style="margin: 40px 80px 0 80px; max-width:1200px;">
            <h3 class="section-header">Oyuncular</h3>
            <div id="castList" class="cast-container"></div>
        </div>

        <div class="movie-section" style="margin: 40px 80px 80px 80px; max-width:1200px;">
            <div class="reviews-header-container">
                <h3 class="section-header">Eleştiriler</h3>
                <a href="Elestiriler.aspx" style="text-decoration:none; font-weight:bold; color:white; font-size:1.1rem;">Tümü</a>
            </div>
            <div id="mainReviewContainer" class="main-review-wrapper">
                <div class="review-avatar">
                    <img src="https://www.gravatar.com/avatar/00000000000000000000000000000000?d=mp&s=60" alt="Kullanıcı Avatarı"> 
                </div>
                <div class="review-content-area">
                    <div id="reviewTextPlaceholder"><p style="margin:0; color:yellow;">Eleştiri Yükleniyor...</p></div>
                    <div class="review-actions">
                        <button type="button" class="review-action-btn">Yorum Yap</button>
                        <button type="button" class="review-action-btn">Beğen (0)</button>
                        <button type="button" class="review-action-btn">Beğenme (0)</button>
                    </div>
                </div>
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
        const mainReview = decodeURIComponent(urlParams.get('review'));

        document.getElementById('movieTitle').innerText = movieTitle || 'Film Bulunamadı';
        document.getElementById('movieOverview').innerText = movieOverview || 'Açıklama yok';
        document.getElementById('posterImg').src = moviePoster ? IMAGE_BASE_URL + moviePoster : 'https://via.placeholder.com/300x450?text=Poster+Yok';

        const reviewPlaceholder = document.getElementById('reviewTextPlaceholder');
        reviewPlaceholder.innerHTML = mainReview && mainReview !== 'null' 
            ? `<p style="margin:0;"><span style="font-weight:400;">${mainReview}</span></p>` 
            : `<p style="color:yellow; margin:0;">Eleştiri metni bulunamadı.</p>`;

        const stars = document.querySelectorAll('.rating span');
        stars.forEach(star => {
            star.addEventListener('click', function () {
                const value = this.getAttribute('data-value');
                stars.forEach(s => s.classList.remove('selected'));
                for (let i = 0; i < value; i++) stars[i].classList.add('selected');
            });
        });

        async function fetchMovieDetails(movieId) {
            if (!movieId) { document.getElementById('movieGenres').innerHTML = "<span style='color:red;'>Film ID'si eksik!</span>"; return; }
            try {
                const response = await fetch(`https://api.themoviedb.org/3/movie/${movieId}?api_key=${API_KEY}&language=tr-TR`);
                const data = await response.json();
                const genres = data.genres;
                if (genres && genres.length > 0) {
                    let genreLinksHtml = genres.map(genre =>
                        `<a href="#" style="color:#fff; text-decoration:none; margin-right:5px;">${genre.name}</a>`
                    ).join(', ');
                    document.getElementById('movieGenres').innerHTML = `<strong>Kategori:</strong> <span>${genreLinksHtml}</span>`;
                } else {
                    document.getElementById('movieGenres').innerHTML = 'Kategori bilgisi bulunamadı.';
                }
            } catch { document.getElementById('movieGenres').innerHTML = '<span style="color:red;">Kategoriler yüklenirken bir hata oluştu.</span>'; }
        }

        async function fetchCastWithImages(movieId) {
            if (!movieId) { document.getElementById('castList').innerHTML = "<p style='color:red;'>Film ID'si eksik!</p>"; return; }
            try {
                const response = await fetch(`https://api.themoviedb.org/3/movie/${movieId}/credits?api_key=${API_KEY}&language=tr-TR`);
                const data = await response.json();
                const cast = data.cast.slice(0,10);
                let castHtml = cast.length > 0 ? cast.map(member => `
                    <div class="cast-member" title="${member.name}">
                        <img src="${member.profile_path ? IMAGE_BASE_URL+member.profile_path : 'https://via.placeholder.com/100x150?text=Foto+Yok'}" alt="${member.name}">
                        <div class="cast-info">${member.name}</div>
                    </div>
                `).join('') : '<p>Bu film için oyuncu bilgisi bulunamadı.</p>';
                document.getElementById('castList').innerHTML = castHtml;
            } catch { document.getElementById('castList').innerHTML = '<p style="color:red;">Oyuncu listesi yüklenirken bir hata oluştu.</p>'; }
        }

        document.addEventListener('DOMContentLoaded', () => {
            fetchMovieDetails(movieId);
            fetchCastWithImages(movieId);
        });
    </script>
</body>
</html>
