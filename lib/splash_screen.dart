import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gitpod_flutter_quickstart/home_Screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 5),
      () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Image(
        image: NetworkImage(
          'https://images.pexels.com/photos/1047051/pexels-photo-1047051.jpeg',
        ),
        height: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}
