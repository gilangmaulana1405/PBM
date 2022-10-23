class Restaurant {
  final int id;
  final String title;
  final String deskripsi;
  final double rating;

  Restaurant({
    required this.id,
    required this.title,
    required this.deskripsi,
    required this.rating,
  });
}

List<Restaurant> restaurantList = [
  Restaurant(
      id: 1,
      title: 'coffee mocha',
      deskripsi: 'kopi enak racikan bunda',
      rating: 4.2),
  Restaurant(
      id: 2,
      title: 'dodol garut',
      deskripsi: 'makanan manis khas kota garut',
      rating: 5.0),
  Restaurant(
      id: 1,
      title: 'cobek ikan mas',
      deskripsi: 'masakan khas sunda',
      rating: 8.9),
];
