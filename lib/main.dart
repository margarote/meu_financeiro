import 'package:flutter/material.dart';

import 'modules/splash/presentation/view/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu Financeiro',
      theme: ThemeData(
       primaryColor: Colors.cyan,
      ),
      home: const SplashScreen(),
    );
  }
}
