# Esai Tugas Individu - Muhammad Ilham Zikri (2206083533)

## Tugas 1

<details>
<summary><b>Details</b></summary>

### Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?
1. Stateless Widget

Tidak Berubah: Sebuah StatelessWidget tidak dapat mengubah statenya selama masa hidupnya, artinya nilai-nilai dan konfigurasi widget tetap konstan setelah widget dibuat.
Sederhana dan Cepat: Karena tidak melibatkan manajemen state, proses pembuatan ulang widget (rebuilding) berlangsung sangat cepat.
Contoh Penggunaan: Ideal digunakan untuk bagian UI yang sederhana dan statis, seperti ikon, teks, dan gambar yang tidak berubah.
Stateful Widget

2. Stateful Widget

Dinamis: Sebuah StatefulWidget mampu mengubah statenya sepanjang hidupnya, memungkinkan widget memperbarui UI berdasarkan interaksi pengguna atau data eksternal.
Lebih Kompleks: Dibandingkan dengan StatelessWidget, StatefulWidget memerlukan manajemen state yang lebih kompleks, yang dapat mempengaruhi performa terutama ketika ada banyak pembaruan state.
Pemeliharaan State: StatefulWidgets memiliki objek state terpisah yang menyimpan informasi state. Objek state ini tetap ada meskipun terjadi hot reload atau pembuatan ulang widget.
Contoh Penggunaan: Cocok untuk bagian UI yang membutuhkan interaksi pengguna atau pembaruan data, seperti formulir, animasi, atau timer.

### Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.
- MaterialApp: Merupakan widget yang mendefinisikan struktur dasar dari aplikasi Flutter, menyediakan navigasi, theme, dan manajemen state.
- Scaffold: Mengatur tata letak dasar aplikasi, menyediakan app bar, drawer, bottom navigation, dan floating action button.
- AppBar: Menampilkan sebuah bilah aplikasi yang biasanya berisi judul aplikasi dan ikon menu.
- Text: Menampilkan teks di layar dengan berbagai konfigurasi seperti ukuran, gaya, dan warna.
- SingleChildScrollView: Mengizinkan konten di dalamnya untuk di-scroll, memungkinkan tata letak yang lebih besar daripada layar.
- Padding: Menambahkan padding (jarak) di sekitar widget-child yang ada di dalamnya.
- Column: Menyusun widget-child secara vertikal, satu di bawah yang lain.
- GridView.count: Menampilkan widget dalam bentuk grid dengan jumlah kolom tertentu, memungkinkan tata letak yang rapi.
- InventoryCard (widget buatan sendiri): Widget kustom yang menampilkan item inventaris dengan ikon dan teks.
- Material: Mengaplikasikan desain material pada widget-child di dalamnya, memberikan efek visual seperti bayangan dan ink splash.
- InkWell: Membuat area yang responsif terhadap sentuhan, biasanya digunakan untuk menanggapi interaksi pengguna seperti ketika tombol ditekan.
- Container: Widget yang dapat mengandung widget lainnya, memungkinkan penyesuaian padding, margin, warna, dan bentuk.
- Icon: Menampilkan ikon bawaan Flutter.
- SnackBar: Menampilkan pesan singkat yang muncul di bagian bawah layar, biasanya digunakan untuk memberi umpan balik kepada pengguna setelah suatu tindakan.

### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)
- Pertama-tama, buat proyek flutter baru dengan 'flutter create invent'
- masuk ke direktori tersebut menggunakan cd
- Di dalam file menu.dart, tambahkan teks dan kartu untuk produk yang dijual.
- Tentukan tipe data untuk produk menggunakan kelas InventoryItem, yang mencakup nama, ikon, dan warna.
- Ubah widget halaman dari stateful menjadi stateless. Modifikasi konstruktor dan tambahkan daftar produk.
- Tampilkan kartu produk, buat widget stateless baru dengan nama ShopCard untuk menampilkan kartu produk. Di dalam ShopCard, gunakan InkWell untuk membuat area responsif terhadap sentuhan pengguna.
- Saat tombol ditekan, munculkan Snackbar dengan pesan yang sesuai.
</details>

## Tugas 2

<details>
<summary><b>Details</b></summary>

### Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!
- `Navigator.push()` menambahkan halaman baru ke dalam stack navigasi, dan menumpuk halaman baru di atas halaman yang saat ini ditampilkan sehingga terdapat opsi kembali untuk memudahkan pengguna untuk kembali ke page sebelumnya. contoh:
```dart
Navigator.push(
    context,
    MaterialPageRoute(
        builder: (context) => const ShopFormPage(),
));
``` 
potongan kode tersebut mengarahkan tombol tambah item pada home page agar berpindah ke halaman form dan memiliki tombol kembali karena page sebelumnya tidak di replace

- `Navigator.pushReplacement()` menggantikan halaman saat ini dengan halaman tujuan, sehingga tidak ada opsi untuk kembali.
 ``` dart
Navigator.pushReplacement(
    context,
    MaterialPageRoute(
        builder: (context) => const ShopFormPage(),
));
``` 
potongan kode tersebut memungkinkan user untuk pindah ke page tujuan dengan cara menggantikan page sebelumnya

### Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing! 
- Widget Container berfungsi untuk mengelola, mempercantik, dan mengumpulkan widget lain, serta dapat digunakan untuk mengatur berbagai properti seperti margin, padding, warna latar, dan lainnya.

- Row dan Column memiliki peran masing-masing; Row digunakan untuk menyusun widget secara horizontal, sedangkan Column digunakan untuk menyusun widget secara vertikal.

- ListView berguna untuk menampilkan daftar widget yang dapat di-scroll, seperti daftar item atau menu, memungkinkan tampilan konten yang melebihi ukuran layar.

- Expanded digunakan untuk mengisi ruang kosong yang tersedia dalam widget induk, memberikan fleksibilitas dalam distribusi ruang pada antarmuka.

- Stack digunakan untuk menempatkan widget satu di atas yang lain, memungkinkan tumpukan dan tumpang tindih antara widget dalam Stack.

- GridView berguna untuk menampilkan data dalam bentuk grid atau matriks, cocok untuk menampilkan banyak item dengan tata letak teratur.

### Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!
- yang saya pakai pada tugas ini ini adalah `TextFormField()` yang menjadi *child* dari class `Form()`. `TextFormField()` digunakan karena input yang dibutuhkan pada tugas ini adalah teks dan bilangan bulat. teks diambil langsung dari nilai pada hasil input `TextFormField()`, sementara bilangan bulat diambil dari nilai pada hasil input `TextFormField()` yang di *parse* ke bilangan bulat untuk divalidasi diambil nilainya.

### Bagaimana penerapan clean architecture pada aplikasi Flutter?
- Lapisan Fitur mencakup pengaturan antarmuka pengguna (UI) dan kontrol event menggunakan widget Flutter.
- Lapisan Domain berfokus pada Entities, Use Cases, dan Repository Interfaces, yang menitikberatkan pada aturan bisnis. 
- Lapisan Data bertanggung jawab atas pengambilan data dan implementasi repository. 
- Resources dan Shared Library menyediakan aset dan komponen yang dapat digunakan kembali. 
- Pemisahan Logika Bisnis memisahkan logika bisnis dari presentasi dan data. 
- Dependency Injection menghubungkan lapisan domain dan data. 
- Kode yang Mudah Dimengerti menggunakan nama kelas dan metode yang jelas untuk navigasi yang mudah. 
- Tes Unit digunakan untuk memastikan kebenaran logika bisnis. 
- Keseluruhan pendekatan ini sederhana namun efektif, dengan fokus pada pengembangan dan pemeliharaan yang mudah.

### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial)
- Buat form untuk mendaftarkan item, filenya bernama shoplist_form.dart dan letakan didalam folder lib.
- Setelah itu, integrasi tiga elemen input yang diinginkan soal, yaitu nama, amount, dan deskripsi.
- Tambahkan tombol save dengan cara menyertakan kode tambahan pada _ShopFormPageState di shoplist_form.dart, dalam bagian return Scaffold(...).
- Setelah itu, buat beberapa aturan untuk validasi input. 
- Di _ShopFormPageState pada shoplist_form.dart, di setiap child: TextFormField(...), tambahkan validasi ini untuk memastikan tidak ada field kosong.
- Di bagian yang sama, lakukan validasi tipe data pada setiap TextFormField untuk menyesuaikan tipe elemen yang diinput dengan yang diminta model.
- Buat navigasi untuk ke halaman utama, buka file menu.dart, pada MyHomePage di bagian return Scaffold(...), sertakan kode untuk navigasi ke halaman formulir.
- Di _ShopFormPageState pada shoplist_form.dart, di bagian child: Column(...) dan Align(...), tambahkan kode untuk menampilkan pop-up.
- Buat drawer dengan opsi minimal Home Page dan Tambah Item. pada left_drawer.dart yang sudah dibuat, pada LeftDrawer, sertakan kode untuk drawer dengan dua opsi ini(halaman utama dan tambah item).

</details>