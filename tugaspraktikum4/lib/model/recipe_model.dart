class Recipe {
  final int id;
  final String title;
  final String description;
  final String author;
  final String gambar;
  final double rating;

  Recipe({
    required this.id,
    required this.title,
    required this.description,
    required this.author,
    required this.gambar,
    required this.rating,
  });
}

List<Recipe> recipeList = [
  Recipe(
      id: 1,
      title: 'Cobek Ikan Mas',
      description: 'lorem ipsum dolor sit amet, consectetur adipiscing elit',
      author: 'Ray',
      gambar: 'assets/cobek_ikan_mas.png',
      rating: 6.9),
  Recipe(
      id: 2,
      title: 'Es Doger',
      description: 'lorem ipsum dolor sit amet, consectetur adipiscing elit',
      author: 'Ilham',
      gambar: 'assets/es_doger.png',
      rating: 7.2),
  Recipe(
      id: 1,
      title: 'Pancake',
      description: 'lorem ipsum dolor sit amet, consectetur adipiscing elit',
      author: 'Gilang',
      gambar: 'assets/pancake.png',
      rating: 9.0),
];
