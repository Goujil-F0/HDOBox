import 'package:dio/dio.dart';
import '../models/movie.dart';

class TmdbService {
  final Dio dio = Dio();

  final String apiKey = "b225f4a16c7e2e1f65bbd1f0d9125e44";

  Future<List<Movie>> getMovies(String endpoint) async {
    final response = await dio.get(
      "https://api.themoviedb.org/3/movie/$endpoint",
      queryParameters: {
        "api_key": apiKey,
      },
    );

    List results = response.data['results'];

    return results.map((e) => Movie.fromJson(e)).toList();
  }
}