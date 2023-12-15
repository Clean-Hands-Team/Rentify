class ResimRepository {
  // Resim dosyalarının isimlerini içeren liste
  final List<String> imageNames = [
    'image1.jpg',
    'image2.jpg',
    'image3.jpg',
    'image4.jpg',
    'image5.jpg',
  ];

  // Resim dosyalarının tam yollarını içeren liste
  List<String> get imagePaths =>
      imageNames.map((imageName) => 'assets/images/$imageName').toList();
}