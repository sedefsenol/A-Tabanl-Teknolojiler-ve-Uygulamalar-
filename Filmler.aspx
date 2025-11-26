<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Filmler.aspx.cs" Inherits="Cinescope.Filmler" %>

<!DOCTYPE html>
<html lang="tr">
<head runat="server">
    <meta charset="utf-8" />
    <title>CineScope - Filmler</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/site.css" rel="stylesheet" />

    <style>
     body {
            background-color: #444444;
            color: #ffffff;
        }

        html, body {
            overflow-x: hidden;
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

              .movie-card { width:300px; height:430px; border-radius:10px; overflow:hidden; box-shadow:0 4px 6px rgba(0,0,0,0.3); transition:0.3s; cursor:pointer; }
              .movie-card img { width:100%; height:100%; object-fit:cover; }

              .reviews-section-container {
            display: flex;
            justify-content: space-between;
            gap: 20px;
        }

        .review-column {
            display: flex;
            flex-direction: column;
            gap: 20px;
            width: 48%;
        }

        .review-item {
            display: flex;
            gap: 15px;
            background-color: #333;
            padding: 15px;
            border-radius: 8px;
            cursor: pointer;
            box-shadow: 0 2px 4px rgba(0,0,0,0.5);
        }

        .review-poster-mini {
            width: 80px;
            height: 120px;
            flex-shrink: 0;
            border-radius: 4px;
            overflow: hidden;
        }

        .review-poster-mini img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .review-text-content h4 {
            margin: 0 0 5px 0;
            color: #fff;
        }

        .review-text-content p {
            margin: 0;
            color: #ccc;
            font-size: 0.9rem;
            display: -webkit-box;
            -webkit-line-clamp: 4;
            -webkit-box-orient: vertical;
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

        <div class="container-fluid" style="margin-top:50px;">
            <div class="d-flex align-items-center justify-content-start flex-wrap gap-2">
                <span class="text-light me-2 fs-5 ms-5">Filtrele</span>
 
             
                <div class="btn-group me-3">
                    <button type="button" class="btn btn-outline-light dropdown-toggle" data-bs-toggle="dropdown">Yıl</button>
                    <ul class="dropdown-menu">
     
                
                         <li><a class="dropdown-item" href="#">2024</a></li>
                        <li><a class="dropdown-item" href="#">2023</a></li>
                        <li><a class="dropdown-item" href="#">2022</a></li>
                        <li><a class="dropdown-item" href="#">2021</a></li>
 
           
                         <li><a class="dropdown-item" href="#">2020</a></li>
                        <li><a class="dropdown-item" href="#">1990</a></li>
                        <li><a class="dropdown-item" href="#">1980</a></li>
                       
  <li><a class="dropdown-item" href="#">1970</a></li>
      
                         <li><a class="dropdown-item" href="#">1960</a></li>
                        <li><a class="dropdown-item" href="#">1950</a></li>
                    </ul>
                </div>

         
         
              <div class="btn-group me-3">
                    <button type="button" class="btn btn-outline-light dropdown-toggle" data-bs-toggle="dropdown">Puan</button>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="#">10</a></li>
                   
 
              <li><a class="dropdown-item" href="#">9</a></li>
                        <li><a class="dropdown-item" href="#">8</a></li>
                        <li><a class="dropdown-item" href="#">7</a></li>
                        <li><a class="dropdown-item" href="#">6</a></li>
              
  
                   <li><a class="dropdown-item" href="#">5</a></li>
                        <li><a class="dropdown-item" href="#">4</a></li>
                        <li><a class="dropdown-item" href="#">3</a></li>
                        <li><a class="dropdown-item" 
 href="#">2</a></li>
           
               <li><a class="dropdown-item" href="#">1</a></li>
                    </ul>
                </div>

                <div class="btn-group me-3">
                  
              <button type="button" class="btn btn-outline-light dropdown-toggle" data-bs-toggle="dropdown">Kategoriler</button>
      
                <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="#">Aksiyon</a></li>
                        <li><a class="dropdown-item" href="#">Anime</a></li>
                  
              <li><a class="dropdown-item" href="#">Belgesel</a></li>
       
                   <li><a class="dropdown-item" href="#">Bilim-Kurgu</a></li>
                        <li><a class="dropdown-item" href="#">Drama</a></li>
                        <li><a class="dropdown-item" href="#">Fantastik</a></li>
            
                         <li><a class="dropdown-item" href="#">Gerilim</a></li>
   
                          <li><a class="dropdown-item" href="#">Komedi</a></li>
                        <li><a class="dropdown-item" href="#">Korku</a></li>
                        <li><a class="dropdown-item" href="#">Müzikal</a></li>
   
                         <li><a 
 class="dropdown-item" href="#">Romantik</a></li>
                        <li><a class="dropdown-item" href="#">Suç</a></li>
                        <li><a class="dropdown-item" href="#">Tarih</a></li>
                    </ul>
    
              </div>

           
               <div class="d-flex align-items-center" style="margin-left: 560px;">
                    <span class="text-light me-2 fs-5">Film Bul</span>
                    <input type="text" class="form-control form-control-sm bg-light text-dark" style="width:200px;
 height:30px;" />
                </div>
            </div>
             </div>


<div class="container mt-5 mb-5">
    <span class="d-block text-light fs-5" style="margin-top:55px; border-bottom:2px solid white; padding-bottom:5px;">
        Popüler Filmler
    </span>

    <div id="movies-container" class="row g-4 mt-4">
        <p class="text-white">Popüler filmler yükleniyor...</p>
    </div>
</div>

<div class="container mt-5 mb-5">
    <span class="d-block text-light fs-5" style="border-bottom:2px solid white; padding-bottom:5px;">
        Popüler Eleştiriler
    </span>

    <div class="reviews-section-container">
    <div id="left-column" class="review-column"></div>
    <div id="right-column" class="review-column"></div>
</div>
</div>

<div class="container mt-5 mb-5">
    <span class="d-block text-light fs-5 mt-5" style="border-bottom:2px solid white; padding-bottom:5px;">
        Yakında Çıkacak Filmler
    </span>

    <div id="upcoming-movies-container" class="row g-4 mt-4">
        <p class="text-white">Yakında çıkacak filmler yükleniyor...</p>
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

<script>
    const API_KEY = '02f7a3e84e6acce9ce0b5583deffb717';
    const IMAGE_BASE_URL = 'https://image.tmdb.org/t/p/w500';

    const moviesContainer = document.getElementById('movies-container');
    const upcomingMoviesContainer = document.getElementById('upcoming-movies-container');

    const POPULAR_API_URL = `https://api.themoviedb.org/3/movie/popular?api_key=${API_KEY}&language=tr-TR&page=1`;
    const LATEST_API_URL = `https://api.themoviedb.org/3/movie/now_playing?api_key=${API_KEY}&language=tr-TR&page=1`;
    const UPCOMING_API_URL = `https://api.themoviedb.org/3/movie/upcoming?api_key=${API_KEY}&language=tr-TR&page=1`;

    
    function displayMovies(movies, container) {
        container.innerHTML = '';
        movies.forEach(movie => {
            const col = document.createElement('div');
            col.className = "col-6 col-sm-6 col-md-3 col-lg-3 mb-4";

            const movieCard = document.createElement('div');
            movieCard.classList.add('movie-card');

            const posterPath = movie.poster_path ? IMAGE_BASE_URL + movie.poster_path : 'https://via.placeholder.com/280x350?text=Poster+Yok';
            movieCard.innerHTML = `<img src="${posterPath}" alt="${movie.title}" class="movie-img">`;

            
            movieCard.style.cursor = 'pointer';
            movieCard.addEventListener('click', () => {
                const comments = [
                    "Muhteşem bir film!",
                    "Beklediğimden daha iyiydi.",
                    "Görsel efektler harikaydı.",
                    "Senaryo biraz zayıftı.",
                    "Oyunculuklar gerçekten etkileyiciydi.",
                    "Tekrar izlemeyi düşünüyorum."
                ];
                const randomComment = comments[Math.floor(Math.random() * comments.length)];

                const urlWithId = `Elestirisayfasi.aspx?id=${movie.id}&title=${encodeURIComponent(movie.title)}&overview=${encodeURIComponent(movie.overview)}&poster=${encodeURIComponent(movie.poster_path)}&review=${encodeURIComponent(randomComment)}`;
                window.location.href = urlWithId;
            });

            col.appendChild(movieCard);
            container.appendChild(col);
        });
    }

   
    async function fetchPopularReviews() {
        try {
            const popularRes = await fetch(POPULAR_API_URL);
            const latestRes = await fetch(LATEST_API_URL);

            const popularData = await popularRes.json();
            const latestData = await latestRes.json();

            const topReviews = [...popularData.results.slice(0, 3), ...latestData.results.slice(0, 3)];

            const leftColumn = document.getElementById('left-column');
            const rightColumn = document.getElementById('right-column');
            leftColumn.innerHTML = '';
            rightColumn.innerHTML = '';

            topReviews.forEach((movie, index) => {
                const posterPath = movie.poster_path ? IMAGE_BASE_URL + movie.poster_path : 'https://via.placeholder.com/80x120?text=Poster+Yok';

                const comments = [
                    "Muhteşem bir film!",
                    "Beklediğimden daha iyiydi.",
                    "Görsel efektler harikaydı.",
                    "Senaryo biraz zayıftı.",
                    "Oyunculuklar gerçekten etkileyiciydi.",
                    "Tekrar izlemeyi düşünüyorum."
                ];
                const randomComment = comments[Math.floor(Math.random() * comments.length)];

                const reviewItem = document.createElement('div');
                reviewItem.classList.add('review-item');
                reviewItem.innerHTML = `
                <div class="review-poster-mini">
                    <img src="${posterPath}" alt="${movie.title} Posteri">
                </div>
                <div class="review-text-content">
                    <h4>${movie.title}</h4>
                    <p>${randomComment}</p>
                </div>
            `;

                reviewItem.addEventListener('click', () => {
                    const url = `Elestirisayfasi.aspx?id=${movie.id}&title=${encodeURIComponent(movie.title)}&overview=${encodeURIComponent(movie.overview)}&poster=${encodeURIComponent(movie.poster_path)}&review=${encodeURIComponent(randomComment)}`;
                    window.location.href = url;
                });

                if (index < 3) {
                    leftColumn.appendChild(reviewItem);
                } else {
                    rightColumn.appendChild(reviewItem);
                }
            });

        } catch (error) {
            console.error("Popüler Eleştiriler yüklenirken hata oluştu:", error);
            document.querySelector('.reviews-section-container').innerHTML = `<p style="color:red;font-weight:bold;">❌ Eleştiriler yüklenemedi.</p>`;
        }
    }

    async function fetchPopularMovies() {
        try {
            const response = await fetch(POPULAR_API_URL);
            if (!response.ok) throw new Error(`API Hatası: ${response.status}`);
            const data = await response.json();
            displayMovies(data.results.slice(0, 4), moviesContainer);
        } catch (error) {
            moviesContainer.innerHTML = `<p style="color:red;font-weight:bold;">❌ Filmler yüklenemedi.</p>`;
        }
    }

    async function fetchUpcomingMovies() {
        try {
            const res = await fetch(UPCOMING_API_URL);
            const data = await res.json();
            displayMovies(data.results.slice(0, 4), upcomingMoviesContainer);
        } catch (error) {
            upcomingMoviesContainer.innerHTML = `<p style="color:red;font-weight:bold;">❌ Yakında çıkacak filmler yüklenemedi.</p>`;
        }
    }

    fetchPopularMovies();
    fetchUpcomingMovies();
    fetchPopularReviews();
</script>

</body>
</html>
