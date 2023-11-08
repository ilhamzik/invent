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
- Ubah widget halaman dari stateful menjadi stateless. Modifikasi konstruktor dan tambahkan daftar produk seperti contoh berikut:
class MyHomePage extends StatelessWidget {
    final List< InventoryItem > items = [
        InventoryItem("Lihat Item", Icons.checklist, Colors.red.shade400),
        InventoryItem("Tambah Item", Icons.add_shopping_cart, Colors.green.shade400),
        InventoryItem("Logout", Icons.logout, Colors.blue.shade400),
    ];

    MyHomePage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        // Implementasi tampilan halaman dengan menggunakan Scaffold, AppBar, dan GridView.
    }
}

- Tampilkan kartu produk, buat widget stateless baru dengan nama ShopCard untuk menampilkan kartu produk. Di dalam ShopCard, gunakan InkWell untuk membuat area responsif terhadap sentuhan pengguna.
- Saat tombol ditekan, munculkan Snackbar dengan pesan yang sesuai. dengan:
class InventoryCard extends StatelessWidget {
    final InventoryItem item;

    InventoryCard(this.item, {Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Material(
            color: item.color,
            child: InkWell(
                onTap: () {
                    ScaffoldMessenger.of(context)
                        ..hideCurrentSnackBar()
                        ..showSnackBar(SnackBar(
                            content: Text("Kamu telah menekan tombol ${item.name}!")));
                },
                child: Container(
                    padding: const EdgeInsets.all(8),
                    child: Center(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                                Icon(
                                    item.icon,
                                    color: Colors.white,
                                    size: 30.0,
                                ),
                                const Padding(padding: EdgeInsets.all(3)),
                                Text(
                                    item.name,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(color: Colors.white),
                                ),
                            ],
                        ),
                    ),
                ),
            ),
        );
    }
}