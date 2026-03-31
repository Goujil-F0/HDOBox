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
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 500,
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
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "TV Shows Trending Today",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        // une image par film
                        Image.asset(
                          "lib/assets/b_avatar.webp",
                          height: 100,
                          width: 70,
                        ),
                        SizedBox(width: 8),
                        Image.asset(
                          "lib/assets/b_drhouse.webp",
                          height: 100,
                          width: 70,
                        ),
                        SizedBox(width: 8),
                        Image.asset(
                          "lib/assets/b_greenland.webp",
                          height: 100,
                          width: 70,
                        ),
                        SizedBox(width: 8),
                        Image.asset(
                          "lib/assets/b_mentalist.webp",
                          height: 100,
                          width: 70,
                        ),
                        SizedBox(width: 8),
                        Image.asset(
                          "lib/assets/b_ncis.webp",
                          height: 100,
                          width: 70,
                        ),
                        SizedBox(width: 8),
                        Image.asset(
                          "lib/assets/b_peaky.webp",
                          height: 100,
                          width: 70,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
