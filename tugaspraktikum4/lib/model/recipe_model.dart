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
      description:
          'lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce sapien turpis, fermentum a mi quis, congue rutrum arcu. Etiam malesuada, justo sed aliquet egestas, ex nisl dignissim libero, sit amet convallis sem neque ut lectus. Vestibulum malesuada mauris vitae lorem pellentesque mattis..',
      author: 'Ray',
      gambar: 'assets/cobek_ikan_mas.png',
      rating: 6.9),
  Recipe(
      id: 2,
      title: 'Es Doger',
      description:
          'lorem ipsum dolor sit amet, consectetur, Sed vulputate elementum porttitor. Vestibulum arcu leo, ultrices sit amet finibus quis, tristique rutrum mi. Aliquam eget malesuada metus. Cras sit amet gravida justo. Aliquam et ipsum ante. ',
      author: 'Ilham',
      gambar: 'assets/es_doger.png',
      rating: 7.2),
  Recipe(
      id: 1,
      title: 'Pancake',
      description:
          'lorem ipsum dolor sit amet, consectetur adipiscing. Nulla interdum dapibus tortor vel finibus. Duis venenatis enim ac quam vestibulum, eu malesuada orci suscipit. Phasellus ornare velit ipsum, vel facilisis mauris pulvinar sit amet.',
      author: 'Gilang',
      gambar: 'assets/pancake.png',
      rating: 9.0),
];
