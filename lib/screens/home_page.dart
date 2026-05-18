import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/movie_provider.dart';
import '../widgets/movie_card.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final popular = ref.watch(popularMoviesProvider);
    final topRated = ref.watch(topRatedMoviesProvider);
    final upcoming = ref.watch(upcomingMoviesProvider);
    final nowPlaying = ref.watch(nowPlayingMoviesProvider);

    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // HEADER
            SizedBox(
              height: 500,
              width: double.infinity,
              child: Image.network(
                "https://image.tmdb.org/t/p/w500/xvx4Yhf0DVH8G4LzNISpMfFBDy2.jpg",
                fit: BoxFit.cover,
              ),
            ),

            // POPULAR
            _buildCategory(
              "Popular Movies",
              popular,
            ),

            // TOP RATED
            _buildCategory(
              "Top Rated",
              topRated,
            ),

            // UPCOMING
            _buildCategory(
              "Upcoming",
              upcoming,
            ),

            // NOW PLAYING
            _buildCategory(
              "Now Playing",
              nowPlaying,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategory(
    String title,
    AsyncValue movies,
  ) {
    return movies.when(
      data: (movieList) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 20,
              ),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: movieList.length,
                itemBuilder: (context, index) {
                  final movie = movieList[index];

                  return MovieCard(
                    imageUrl:
                        "https://image.tmdb.org/t/p/w500${movie.posterPath}",
                  );
                },
              ),
            ),
          ],
        );
      },
      loading: () => const Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: CircularProgressIndicator(),
        ),
      ),
      error: (e, s) => Text(
        e.toString(),
        style: const TextStyle(color: Colors.red),
      ),
    );
  }
}