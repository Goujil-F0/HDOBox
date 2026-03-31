import 'package:flutter/material.dart';

void main() {
  runApp(MyHdo());
}

class MyHdo extends StatelessWidget {
  MyHdo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 500,
                    width: double.infinity,
                    child: Image.asset(
                      "lib/assets/lofi.webp",
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 150,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.transparent, Colors.black],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.add, color: Colors.white),
                            ),
                            Text(
                              "My list",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            ElevatedButton.icon(
                              onPressed: () {},
                              icon: Icon(Icons.play_arrow, color: Colors.white),
                              label: Text(
                                "Play",
                                style: TextStyle(color: Colors.white),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromARGB(
                                  255,
                                  232,
                                  105,
                                  59,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.info, color: Colors.white),
                            ),
                            Text("Info", style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              // 2. Titre + liste en bas
              _buildCategory("Popular Movies", [
                "lib/assets/b_avatar.webp",
                "lib/assets/b_drhouse.webp",
                "lib/assets/b_greenland.webp",
                "lib/assets/b_avatar.webp",
              ]),

              _buildCategory("Trending Now", [
                "lib/assets/b_ncis.webp",
                "lib/assets/b_mentalist.webp",
                "lib/assets/b_peaky.webp",
              ]),

              _buildCategory("Recommended", [
                "lib/assets/b_project.webp",
                "lib/assets/b_refuge.webp",
              ]),
            ],
          ),
        ),
      ),
    );
  }

  // 🔥 WIDGET CATÉGORIE
  Widget _buildCategory(String title, List<String> images) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Titre
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        // Liste horizontale
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(left: 15, bottom: 30),
          child: Row(
            children: images.map((img) => _buildMovieCard(img)).toList(),
          ),
        ),
      ],
    );
  }

  // 🔥 CARTE FILM
  Widget _buildMovieCard(String path) {
    return Container(
      width: 130,
      height: 180,
      margin: const EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(image: AssetImage(path), fit: BoxFit.cover),
      ),
    );
  }
}
