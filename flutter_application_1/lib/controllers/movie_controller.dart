import 'package:flutter_application_1/models/movie.dart';

class MovieController {
  final List<MovieModel> movie = [
    MovieModel(
        id: 1,
        title: 'Transformer Rise of the beast',
        rating: 4.8,
        posterPath: 'poster/transformer.jpg'),
    MovieModel(
        id: 2,
        title: 'Avengers',
        rating: 4.2,
        posterPath: 'poster/avengers.jpg'),
    MovieModel(
        id: 1,
        title: 'Annabelle 3',
        rating: 4.6,
        posterPath: 'poster/annabelle.jpg'),
  ];
}
