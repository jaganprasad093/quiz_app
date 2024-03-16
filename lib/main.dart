import 'package:flutter/material.dart';
import 'package:quis_app/view/splash_screen/splash.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splash_screen(),
    );
  }
}
