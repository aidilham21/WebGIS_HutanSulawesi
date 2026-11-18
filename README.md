# 🌲 WebGIS Peta Kawasan Hutan Kabupaten Pasangkayu, Sulawesi Barat

[![License: MIT](https://img.shields.io/badge/License-MIT-emerald.svg)](LICENSE)
[![Leaflet](https://img.shields.io/badge/Leaflet-v1.x-brightgreen.svg)](https://leafletjs.com/)
[![GeoJSON](https://img.shields.io/badge/Data-GeoJSON-blue.svg)](data/)
[![HTML5](https://img.shields.io/badge/HTML5-E34F26?logo=html5&logoColor=white)](index.html)
[![CSS3](https://img.shields.io/badge/CSS3-1572B6?logo=css3&logoColor=white)](css/)
[![JavaScript](https://img.shields.io/badge/JavaScript-F7DF1E?logo=javascript&logoColor=black)](js/)
[![GitHub Pages](https://img.shields.io/badge/Deployment-GitHub%20Pages-success.svg)](https://aidilham21.github.io/WebGIS_HutanSulawesi/)

Sistem Informasi Geografis berbasis web (**WebGIS**) interaktif untuk memetakan, menganalisis, dan memvisualisasikan zonasi **Kawasan Hutan di Kabupaten Pasangkayu, Provinsi Sulawesi Barat** berdasarkan **Keputusan Menteri Kehutanan RI No. SK. 862/Menhut-II/2014**.

---

## 📌 Ringkasan Proyek

Proyek ini dikembangkan untuk memvisualisasikan data spasial kehutanan Kabupaten Pasangkayu agar dapat diakses oleh masyarakat umum, akademisi, instansi pemerintah, dan praktisi lingkungan secara mudah, interaktif, dan informatif melalui web browser tanpa memerlukan perangkat lunak GIS desktop khusus.

### 🌟 Fitur Utama
- 🗺️ **Peta Interaktif Multilayer**: Dukungan basemap citra satelit Google Maps resolusi tinggi dengan lapisan tematik poligon kawasan hutan.
- 🌳 **Zonasi & Klasifikasi Kehutanan**: Menampilkan fungsi kawasan hutan per kecamatan dan kabupaten lengkap dengan kode warna resmi kehutanan.
- 🔍 **Pencarian Lokasi Cepat (Geocoder)**: Terintegrasi dengan Nominatim OpenStreetMap & Photon untuk pencarian titik lokasi atau toponimi wilayah.
- 📏 **Alat Ukur Spasial (Measurement Tool)**: Fitur pengukuran jarak (meter/kilometer) dan luas area poligon (hektar/meter persegi).
- 🧭 **GPS Lokasi Pengguna (Locate Control)**: Deteksi posisi pengguna secara real-time di atas peta.
- 📋 **Card Popup Informatif & Bersih**: Menampilkan nama kecamatan, fungsi kawasan hutan, nomor SK, tanggal penetapan, dan luas area terverifikasi tanpa tampilan kode database mentah.
- 📜 **Legenda Interaktif & Unduh Layout**: Penjelasan warna klasifikasi hutan serta tombol unduh layout peta beresolusi tinggi.
- 📱 **Desain Responsif & Modern UI**: Tampilan antarmuka bertema *forest dark-green* modern dengan hierarki visual yang jelas dan adaptif pada perangkat mobile.
- 🛡️ **Aman & Bebas Kerentanan (Secured)**: Mengimplementasikan sanitasi input HTML untuk mencegah DOM-XSS serta perlindungan tautan `rel="noopener noreferrer"`.

---

## 🎨 Klasifikasi Kawasan Hutan

Berdasarkan data spasial SK Menteri Kehutanan No. SK. 862/Menhut-II/2014, kawasan di Kabupaten Pasangkayu diklasifikasikan ke dalam kategori berikut:

| Simbol | Kategori Kawasan | Kode Warna | Keterangan Singkat |
| :---: | :--- | :---: | :--- |
| 🟧 | **Areal Penggunaan Lain (APL)** | `#FF7F00` | Areal di luar kawasan hutan negara yang diperuntukkan bagi pembangunan di luar bidang kehutanan. |
| 🟩 | **Hutan Lindung (HL)** | `#B2DF8A` | Kawasan hutan yang mempunyai fungsi pokok sebagai perlindungan sistem penyangga kehidupan, tata air, dan pencegahan erosi. |
| 🌲 | **Hutan Produksi (HP)** | `#33A02C` | Kawasan hutan yang memiliki fungsi pokok memproduksi hasil hutan kayu dan non-kayu secara lestari. |
| 🌿 | **Hutan Produksi Konversi (HPK)** | `#29D53A` | Kawasan hutan yang dapat diruahkan untuk peruntukan sektor non-kehutanan (misal: perkebunan/permukiman). |
| 🫒 | **Hutan Produksi Terbatas (HPT)** | `#BECF50` | Kawasan hutan produksi dengan batas eksploitasi kayu rendah untuk menjaga konservasi tanah dan air. |
| 🪸 | **Taman Nasional (TN)** | `#2BDCC1` | Kawasan pelestarian alam yang mempunyai ekosistem asli dan dikelola dengan sistem zonasi. |
| 🌊 | **Laut / Sungai / Badan Air** | `#1F78B4` | Wilayah perairan, aliran sungai utama, muara, dan badan air alami. |

---

## 🗂️ Struktur Direktori Proyek

```text
WebGIS_HutanSulawesi/
├── css/                     # Berkas stylesheet CSS (Leaflet, FontAwesome, qgis2web)
│   ├── fontawesome-all.min.css
│   ├── L.Control.Layers.Tree.css
│   ├── L.Control.Locate.min.css
│   ├── leaflet.css
│   ├── leaflet.photon.css
│   ├── leaflet-measure.css
│   └── qgis2web.css
├── data/                    # Data spasial GeoJSON (vektor batas & zonasi)
│   ├── Clipped_1.js         # Layer Kawasan Hutan tingkat Kabupaten Pasangkayu
│   └── Dissolved_2.js       # Layer Kawasan Hutan terdisolusi batas Kecamatan
├── images/                  # Aset logo pemerintah dan layout peta resolusi tinggi
│   ├── logo_west_sulawesi.png
│   └── legend_layout.png
├── js/                      # Library & plugin JavaScript (Leaflet core & ekstensi)
│   ├── leaflet.js
│   ├── L.Control.Layers.Tree.min.js
│   ├── leaflet.photon.js
│   ├── leaflet-measure.js
│   ├── Autolinker.min.js
│   ├── labelgun.min.js
│   └── ...
├── legend/                  # Ikon swatch legenda layer
├── webfonts/                # Berkas font ikon FontAwesome
├── index.html               # Halaman utama aplikasi WebGIS
├── .gitignore               # Daftar berkas/folder yang diabaikan Git
├── LICENSE                  # Lisensi proyek (MIT License)
└── README.md                # Dokumentasi proyek
```

---

## 🚀 Cara Menjalankan Secara Lokal

Proyek ini merupakan aplikasi web statis (*client-side*), sehingga sangat ringan dan tidak memerlukan instalasi runtime atau database server yang rumit.

### Opsi 1: Menggunakan Live Server (Visual Studio Code)
1. Buka folder proyek ini di **Visual Studio Code**.
2. Pasang ekstensi **Live Server** (oleh *Ritwick Dey*).
3. Klik kanan pada berkas `index.html` dan pilih **"Open with Live Server"**.
4. Peta akan otomatis terbuka di browser Anda (umumnya pada `http://127.0.0.1:5500`).

### Opsi 2: Menggunakan Python HTTP Server
Jika Anda memiliki Python terinstal, jalankan perintah berikut pada terminal:
```bash
# Untuk Python 3
python -m http.server 8000
```
Buka browser dan akses: `http://localhost:8000`

### Opsi 3: Buka Langsung Berkas HTML
Anda dapat mengklik ganda (*double-click*) file `index.html` langsung untuk membukanya di browser (Chrome, Edge, Firefox, Safari).

---

## ⚡ Sinkronisasi Repositori Git

Untuk memperbarui atau mendorong perubahan ke GitHub:

```bash
# Menarik pembaruan terbaru dari GitHub
git pull origin main

# Mendorong perubahan terbaru ke GitHub
git add .
git commit -m "Deskripsi perubahan"
git push origin main
```

---

## 🌐 Cara Publikasi ke GitHub Pages

Agar WebGIS ini dapat diakses secara online oleh siapa saja secara gratis melalui URL `https://<username>.github.io/WebGIS_HutanSulawesi/`:

1. Pastikan seluruh berkas telah di-push ke repositori GitHub.
2. Buka halaman repositori di GitHub.
3. Klik tab **Settings** (Pengaturan).
4. Di panel sebelah kiri, pilih menu **Pages**.
5. Pada bagian **Build and deployment**:
   - **Source**: Pilih `Deploy from a branch`.
   - **Branch**: Pilih `main` dan folder `/ (root)`.
6. Klik **Save**.
7. Tunggu 1–2 menit, WebGIS Anda akan siap diakses publik!

---

## 🛡️ Audit Keamanan & Kualitas Desain

WebGIS ini telah diaudit dan disempurnakan berdasarkan standar modern:
- **Keamanan (OWASP A03 - Injection)**: Seluruh atribut fitur GeoJSON disanitasi menggunakan fungsi `escapeHtml()` sebelum dirender ke DOM untuk memitigasi serangan Cross-Site Scripting (XSS).
- **Tabnabbing Protection**: Seluruh tautan eksternal (`target="_blank"`) dilengkapi atribut keamanan `rel="noopener noreferrer"`.
- **Bug Fix**: Memperbaiki deklarasi variabel `obj2` dan `obj3` yang sebelumnya tidak terdefinisi pada handler pencarian Photon Geocoder.
- **Craft Floor Design System**:
  - Palet warna bertema *emerald forest* dengan rasio kontras teks terverifikasi (≥ 4.5:1).
  - Kustomisasi scrollbar, seleksi teks, dan ring fokus aksesibilitas.
  - Dialog modal semantik dengan dukungan tombol `Escape` dan navigasi keyboard.

---

## 👤 Pengembang & Penghargaan

- **Mahasiswa / Pengembang**: [Muh. Aidil Ilham (@aidilham21)](https://github.com/aidilham21)
- **Dosen Pengampu**: Affan Ray Mahardika
- **Mata Kuliah**: Sistem Informasi Geografis (SIG)
- **Sumber Data Spasial**:
  - Kementerian Lingkungan Hidup dan Kehutanan (KLHK) Republik Indonesia
  - Peta Perkembangan Pengukuhan Kawasan Hutan Provinsi Sulawesi Barat Tahun 2020
  - Keputusan Menteri Kehutanan No. SK. 862/Menhut-II/2014

---

## 📄 Lisensi

Proyek ini dilisensikan di bawah [MIT License](LICENSE). Anda bebas menggunakan, memodifikasi, dan mendistribusikan proyek ini untuk keperluan akademis maupun non-komersial dengan tetap mencantumkan atribusi pengembang.
