import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test2_app/screens/home_page.dart';

void main() {
  runApp(const ProviderScope(child: MyHdo()));
}

class MyHdo extends StatelessWidget {
  const MyHdo({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage());
  }
}
