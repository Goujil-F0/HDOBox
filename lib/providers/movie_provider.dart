import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/movie.dart';
import '../services/tmdb_service.dart';

final tmdbProvider = Provider((ref) => TmdbService());

final popularMoviesProvider =
    FutureProvider<List<Movie>>((ref) async {
  final service = ref.read(tmdbProvider);

  return service.getMovies("popular");
});

final topRatedMoviesProvider =
    FutureProvider<List<Movie>>((ref) async {
  final service = ref.read(tmdbProvider);

  return service.getMovies("top_rated");
});

final upcomingMoviesProvider =
    FutureProvider<List<Movie>>((ref) async {
  final service = ref.read(tmdbProvider);

  return service.getMovies("upcoming");
});

final nowPlayingMoviesProvider =
    FutureProvider<List<Movie>>((ref) async {
  final service = ref.read(tmdbProvider);

  return service.getMovies("now_playing");
});