import 'package:flutter/material.dart';

import 'package:perfetto_app/ui/auth/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Splash Screen Demo',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: App());
  }
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const SplashScreen();
  }
}
