import 'package:flutter/material.dart';
import 'package:motion_pong/pages/home_page.dart';
import 'package:motion_pong/pages/pong_test_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Motion Pong',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (_) => const HomePage(),
        '/pong-test': (_) => const PongTestPage(),
      },
    );
  }
}
