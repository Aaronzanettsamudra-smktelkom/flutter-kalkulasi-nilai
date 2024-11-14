class MovieModel {
  int id;
  String title;
  double? rating;
  String posterPath;

  MovieModel(
      {required this.id,
      required this.title,
      this.rating,
      required this.posterPath});
}
