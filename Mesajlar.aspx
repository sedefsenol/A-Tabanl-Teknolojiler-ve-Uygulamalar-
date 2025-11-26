<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mesajlar.aspx.cs" Inherits="Cinescope.Mesajlar" %>

<!DOCTYPE html>
<html lang="tr">
<head runat="server">
    <meta charset="utf-8" />
    <title>CineScope - Mesajlar</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/site.css" rel="stylesheet" />

    <style>
        .mesaj-container {
            display: flex;
            height: calc(100vh - 150px);
            margin: 40px 80px 0 50px;
            border-radius: 8px;
            overflow: hidden;
            background: #444;
            box-shadow: 0 0 15px rgba(0,0,0,0.5);
        }

        .kullanici-listesi {
            width: 28%;
            background: #333;
            overflow-y: auto;
            border-right: 1px solid rgba(255,255,255,0.1);
        }

        .kullanici-satir {
            display: flex;
            align-items: center;
            gap: 12px;
            padding: 14px 12px;
            cursor: pointer;
            transition: .2s;
        }
        .kullanici-satir:hover { background: rgba(255,255,255,0.1); }
        .kullanici-satir img {
            width: 45px; height: 45px;
            border-radius: 50%; object-fit: cover;
        }
        .kullanici-satir b { font-size: 16px; }

     
        .sohbet-alani {
            flex: 1;
            display: flex;
            flex-direction: column;
            background: #2c2c2c;
            padding: 10px;
        }

        .mesajlar {
            flex-grow: 1;
            overflow-y: auto;
            display: flex;
            flex-direction: column;
            gap: 10px;
            padding-right: 10px;
        }

        .mesaj-gonderen, .mesaj-biz {
            max-width: 65%;
            padding: 10px 14px;
            border-radius: 12px;
            line-height: 1.3;
            font-size: 15px;
            word-wrap: break-word;
        }

        .mesaj-gonderen {
            background: rgba(255,255,255,0.2);
            align-self: flex-start;
        }

        .mesaj-biz {
            background: #00aaff;
            color: #fff;
            font-weight: 600;
            align-self: flex-end;
        }


        .mesaj-yazma {
            display: flex;
            gap: 10px;
            padding-top: 10px;
            border-top: 1px solid rgba(255,255,255,0.25);
            margin-top: auto;
        }

        .mesaj-yazma input {
            flex-grow: 1;
            padding: 11px;
            border-radius: 6px;
            background: #3a3a3a;
            border: 1px solid #555;
            color: #fff;
        }

        .mesaj-yazma button {
            background: #00aaff;
            border: none;
            padding: 0 18px;
            border-radius: 6px;
            color: #fff;
            font-weight: bold;
            cursor: pointer;
            transition: .2s;
        }
        .mesaj-yazma button:hover { opacity: .85; }

   
        .kullanici-listesi::-webkit-scrollbar,
        .mesajlar::-webkit-scrollbar { width: 6px; }
        .kullanici-listesi::-webkit-scrollbar-thumb,
        .mesajlar::-webkit-scrollbar-thumb { background: rgba(255,255,255,0.2); border-radius: 3px; }

        
    </style>
</head>

<body class="mesajlar-page">
<form id="form2" runat="server">

    
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

    <div class="mesaj-container">
       
        <div class="kullanici-listesi">
            <div class="kullanici-satir" onclick="acMesaj('Ali')"><img src="Gorsel/pp.png" /><b>Ali</b></div>
            <div class="kullanici-satir" onclick="acMesaj('Ayşe')"><img src="Gorsel/pp.png" /><b>Ayşe</b></div>
            <div class="kullanici-satir" onclick="acMesaj('Mehmet')"><img src="Gorsel/pp.png" /><b>Mehmet</b></div>
            <div class="kullanici-satir" onclick="acMesaj('Elif')"><img src="Gorsel/pp.png" /><b>Elif</b></div>
            <div class="kullanici-satir" onclick="acMesaj('Burak')"><img src="Gorsel/pp.png" /><b>Burak</b></div>
        </div>

        
        <div class="sohbet-alani">
            <div class="mesajlar" id="mesajlar"></div>

            <div class="mesaj-yazma">
                <input type="text" placeholder="Mesaj yaz..." id="mesajInput"/>
                <button type="button" onclick="mesajGonder()">Gönder</button>
            </div>
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

    <div class="footer-bottom">© 2025 CineScope — Tüm Hakları Saklıdır.</div>

    <script>
        const sohbetler = {
            'Ali': [{ gonderen: true, text: "Selam, avatarı izledin mi?" }, { gonderen: false, text: "Evet izledim" }],
            'Ayşe': [{ gonderen: true, text: "Merhaba, tanışabilir miyiz mi?" }, { gonderen: false, text: "Hayır" }],
            'Mehmet': [], 'Elif': [], 'Burak': []
        };

        let seciliKullanici = null;

        function acMesaj(kullanici) {
            seciliKullanici = kullanici;
            const mesajDiv = document.getElementById('mesajlar');
            mesajDiv.innerHTML = '';

            if (sohbetler[kullanici]) {
                sohbetler[kullanici].forEach(m => {
                    const div = document.createElement('div');
                    div.className = m.gonderen ? 'mesaj-gonderen' : 'mesaj-biz';
                    div.textContent = m.text;
                    mesajDiv.appendChild(div);
                });
            }
        }

        function mesajGonder() {
            const input = document.getElementById('mesajInput');
            const mesajText = input.value.trim();
            if (!mesajText || !seciliKullanici) return;

            const div = document.createElement('div');
            div.className = 'mesaj-biz';
            div.textContent = mesajText;
            document.getElementById('mesajlar').appendChild(div);

            sohbetler[seciliKullanici].push({ gonderen: false, text: mesajText });
            input.value = '';
            input.focus();
        }
    </script>
</form>
</body>
</html>
