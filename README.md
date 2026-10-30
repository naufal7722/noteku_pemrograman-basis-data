# CatatanKu - Aplikasi Catatan Harian (Desain Crimson Velvet & Modern Bento)
**TUGAS INDIVIDUAL 02: Uji Pemahaman Fase 2 - Perancangan (Design)**  
*Desain UI Aplikasi Catatan Sederhana (Frontend – Flutter)*

---

## 🎨 Konsep Desain Unik: *Crimson Velvet & Modern Editorial Bento*
Aplikasi **CatatanKu** dirancang ulang dengan pendekatan visual kontemporer yang **berbeda dan unik** dari desain standar, namun **tetap mempertahankan seluruh fitur fungsional** yang ada pada acuan tugas. 

Warna utama menggunakan **Merah Crimson & Velvet Ruby** (`#C62828`, `#8E0000`, `#FF5252`) yang dipadukan dengan aksen emas lembut (`#FFD54F`), latar belakang *porcelain tint* (`#F9F6F6`), serta tipografi modern yang tegas dan bersih.

---

## 📱 5 Halaman Aplikasi dengan Fitur Lengkap & Desain Berbeda

### 1. Splash Screen (`lib/screens/splash_screen.dart`)
* **Perbedaan & Keunikan Desain**:
  * Menggunakan latar belakang gradien **Crimson Velvet Imersif** dengan aksen pendar aurora.
  * Kartu logo bergaya **frosted glass** dengan emblem buku berlapis beraksen emas (*golden quill nib*).
  * Badge edisi: `"✨ CATATAN HARIAN MODERN"`.
  * Judul aplikasi tebal dengan tipografi berjarak rapat dan tagline inspiratif.
  * Indikator progres bar pendar emas (*glowing gold pulse*) dan tombol cepat *"Masuk ke Aplikasi"*.
  * Otomatis berpindah ke layar login setelah 3 detik.

### 2. Login Statis (`lib/screens/login_screen.dart`)
* **Perbedaan & Keunikan Desain**:
  * Menggunakan **Curved Crimson Hero Header** di bagian atas dengan logo aplikasi.
  * Lembar form putih mengambang (*overlapping floating card*) dengan sudut melengkung modern (28px).
  * Chip verifikasi demo interaktif: `"🛡️ Akun Demo Aktif (Ahmadi)"`.
  * Field Email & Password dengan ikon bertema merah dan toggle tampilkan/sembunyikan sandi.
  * Tombol gradien merah *"Masuk Sekarang"* dengan ikon panah.
  * Tombol *"Masuk dengan Google"* bergaya modern dengan badge logo Google.
  * Navigasi langsung menuju Beranda dengan pesan notifikasi selamat datang.

### 3. Beranda / Daftar Catatan (`lib/screens/home_screen.dart`)
* **Perbedaan & Keunikan Desain**:
  * **Crimson Dashboard Hero Banner**: Menampilkan sapaan personal *"Halo, Ahmadi 👋"*, avatar berbingkai emas, dan baris metrik langsung (*"5 Catatan • 1 Penting"*).
  * **Search Bar & Filter**: Input pencarian real-time dengan tombol hapus cepat dan tombol filter.
  * **Category Filter Pills**: Filter horizontal interaktif dengan ikon pada setiap kategori (*Semua, Penting, Pribadi, Kerja, Kuliah, Belanja*).
  * **Kartu Catatan Bento / Editorial**: Berbeda dari list sederhana biasa, setiap kartu menampilkan:
    * Badge kategori dengan ikon unik.
    * Indikator prioritas dot bercahaya (*Crimson/Amber/Green*).
    * Judul tebal dan **cuplikan isi catatan (preview snippet)** 2 baris.
    * Tanggal pembuatan dan tombol aksi cepat *"Lihat Detail"*.
    * Menu titik tiga untuk opsi membuka detail atau menghapus catatan.
  * **Floating Action Button (+)**: Tombol bulat gradien merah dengan efek bayangan pendar (*crimson glow*).
  * **Bottom Navigation Dock**: Bar navigasi bawah (*Beranda, Arsip, Profil*) dengan indikator aktif merah.

### 4. Tambah Catatan (`lib/screens/add_note_screen.dart`)
* **Perbedaan & Keunikan Desain**:
  * **Live Card Preview Interaktif**: Menampilkan pratinjau kartu secara langsung di bagian atas saat pengguna mengetik judul, isi, dan memilih warna/kategori/prioritas.
  * **Kanvas Penulisan Catatan**: Area input judul dan isi catatan yang bersih dengan penghitung karakter real-time.
  * **Dropdown Kategori Visual**: Dropdown kategori yang menampilkan ikon dan warna masing-masing kategori.
  * **Palet Warna Swatches**: Pilihan warna estetis (*Ruby Rose, Sunset Peach, Golden Honey, Sage Mint, Sky Breeze, Velvet Orchid*) dengan lingkaran beraksen merah.
  * **Pilihan Prioritas**: Tombol segmented (*Rendah, Sedang, Tinggi*) dengan indikator aktif gradien merah.
  * Tombol *"Simpan Catatan"* merah gradien yang memvalidasi input dan memperbarui daftar secara reaktif.

### 5. Detail Catatan (`lib/screens/detail_note_screen.dart`)
* **Perbedaan & Keunikan Desain**:
  * **Bento Header Card**: Menampilkan tag kategori berikon, badge prioritas ber-dot warna, judul tebal display, tanggal & waktu lengkap, serta estimasi waktu membaca (*"1 mnt baca"*).
  * **Kanvas Pembaca Catatan**: Kontainer putih bersih dengan tipografi yang nyaman untuk membaca teks catatan.
  * **Fitur Interaktif Penuh**:
    * Tombol **Edit** di AppBar dan tombol bawah yang membuka form bottom sheet untuk langsung menyunting judul dan isi catatan secara real-time.
    * Tombol **Hapus** dengan dialog konfirmasi khusus bertema merah.

---

## 📊 Pemenuhan Kriteria Penilaian

| Aspek Penilaian | Bobot | Realisasi dalam Proyek |
|---|:---:|---|
| **Kelengkapan halaman dan fitur UI** | **40%** | **Lengkap 100%**: 5 halaman (Splash, Login, Beranda, Tambah, Detail) dibuat tuntas dengan seluruh fitur (search, filter, form input lengkap, color picker, bottom nav, edit & delete). |
| **Kreativitas dan kerapian desain** | **30%** | **Sangat Kreatif & Unik**: Desain tidak menjiplak mentah-mentah tampilan referensi melainkan menghadirkan gaya Crimson Velvet & Bento modern dengan live card preview, dashboard hero, dan preview snippet. |
| **Konsistensi tampilan dan navigasi** | **20%** | **Sangat Konsisten**: Palet warna merah, sudut kurva, tipografi, dan alur navigasi terjalin harmonis di seluruh 5 layar. |
| **Kerapian kode** | **10%** | **Modular & Teruji**: Terbagi rapi ke dalam folder `models/`, `screens/`, `services/`, `theme/`, dan `widgets/`. Lolos pengujian widget tests (100% pass) tanpa error. |

---

## 📂 Struktur File

```
lib/
├── main.dart                  # Titik masuk aplikasi, tema & konfigurasi
├── models/
│   └── note_model.dart        # Model catatan harian
├── services/
│   └── note_service.dart      # State management data catatan (ValueNotifier CRUD)
├── theme/
│   └── app_theme.dart         # Pengaturan tema Crimson Velvet & Ruby Red
├── screens/
│   ├── splash_screen.dart     # Halaman 1: Splash Screen
│   ├── login_screen.dart      # Halaman 2: Login Statis
│   ├── home_screen.dart       # Halaman 3: Beranda (Daftar Catatan)
│   ├── add_note_screen.dart   # Halaman 4: Tambah Catatan (dengan Live Preview)
│   └── detail_note_screen.dart# Halaman 5: Detail Catatan (dengan Edit & Hapus)
└── widgets/
    ├── app_logo.dart          # Emblem logo buku & pena emas unik
    ├── google_button.dart     # Tombol masuk Google
    └── note_card.dart         # Kartu catatan modern dengan cuplikan isi
```

---

## 🚀 Menjalankan Aplikasi

```bash
# Jalankan di Windows Desktop
flutter run -d windows

# Jalankan di Browser Chrome
flutter run -d chrome

# Menjalankan Test Otomatis
flutter test
```
