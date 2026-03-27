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
        body: Stack(
          children: [
            Container(
              height: 500,
              child: Image.asset(
                "lib/assets/Lofi.webp",
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
