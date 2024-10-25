class FoodData {
  final String name;
  final String price;
  final String shortdesc;
  final String description;
  final int rating;
  final String imageAsset;

  FoodData({
    required this.name,
    required this.price,
    required this.shortdesc,
    required this.description,
    required this.rating,
    required this.imageAsset,
  });
}

List<FoodData> menu = [
  FoodData(
    name: 'Nasi Goreng',
    price: '20.000',
    shortdesc: 'Nasi Goreng pakai telor mata sapi.',
    description: 'Nasi yang di goreng menggunakan bumbu-bumbu pilihan dan di hidangkan dengan telor mata sapi.',
    rating: 5,
    imageAsset: 'images/nasigoreng.jpg',
  ),
  FoodData(
    name: 'Ayam Goreng',
    price: '30.000',
    shortdesc: 'Nasi, ayam goreng, tahu, tempe.',
    description: 'Paket nasi ayam goreng dengan di dalamnya ada nasi, ayam goreng, tahu, dan tempe.',
    rating: 5,
    imageAsset: 'images/ayamgoreng.jpg',
  ),
  FoodData(
    name: 'Ayam bakar',
    price: '35.000',
    shortdesc: 'Nasi, ayam, sambal, lalapan.',
    description: 'Paket nasi ayam bakar dengan di dalamnya ada nasi, ayam bakar kecap, sambal, dan lalapan.',
    rating: 5,
    imageAsset: 'images/ayambakar.jpg',
  ),
  FoodData(
    name: 'Steak',
    price: '25.000',
    shortdesc: 'Steak daging sapi yang lembut.',
    description: 'Steak daging sapi yang lembut dan di masak dengan tingkat kematangan yang berbeda-beda tergantung pesanan pembeli.',
    rating: 5,
    imageAsset: 'images/fotosteak.jpg',
  ),
  FoodData(
    name: 'Air Putih',
    price: '4.000',
    shortdesc: 'Air putih biasa atau dingin.',
    description: 'Air mineral putih bisa dingin dan juga biasa.',
    rating: 5,
    imageAsset: 'images/airputih.jpg',
  ),
  FoodData(
      name: 'Teh Manis',
      price: '6.000',
      shortdesc: 'Teh dengan gula.',
      description: 'Teh yang di tambah dengan gula menjadikannya manis, bisa panas atau dingin.',
      rating: 5,
      imageAsset: 'images/tehmanis.jpg'),
  FoodData(
    name: 'Minuman Jeruk',
    price: '8.000',
    shortdesc: 'Minuman jeruk panas atau dingin.',
    description: 'Jeruk yang diolah menjadi sebuah minuman, bisa panas atau dingin.',
    rating: 5,
    imageAsset: 'images/esjeruk.jpeg',
  ),
];
