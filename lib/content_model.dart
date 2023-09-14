class UnbordingContent {
  String image;
  String title;
  String discription;

  UnbordingContent({required this.image, required this.title, required this.discription});
}

List<UnbordingContent> contents = [
  UnbordingContent(
    title: 'Selamat Datang!',
    image: 'assets/img/gardening3.png',
    discription: "Aplikasi canggih ini dapat membantu anda dalam memantau kelembapan dan suhu ruangan dengan penyemprotan otomatis berbasis IOT, Ayo coba sekarang!"
  ),
  UnbordingContent(
    title: 'Lebih terjamin',
    image: 'assets/img/gardening2.png',
    discription: "Tak perlu khawatir lagi, dengan ini anda tak perlu takut kumbung jamur anda kering ataupun mati karena kelembapan pada jamur akan terus terjaga"
  ),
  UnbordingContent(
    title: 'Data lengkap',
    image: 'assets/img/gardening1.png',
    discription: "Dilengkapi dengan history penggunaan Penyiraman Otomatis dan Manual yang akan terus bertambah setiap harinya"
  ),
];