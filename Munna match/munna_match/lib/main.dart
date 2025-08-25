import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const MunnaMatchApp());
}

class MunnaMatchApp extends StatelessWidget {
  const MunnaMatchApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Munna Match',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins', primarySwatch: Colors.brown),
      initialRoute: '/',
      routes: {'/': (context) => const SplashScreen()},
    );
  }
}
