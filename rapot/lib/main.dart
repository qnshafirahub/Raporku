import 'package:flutter/material.dart';
import 'package:rapot/loginpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Raporku',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: LoginPage.primary),
        scaffoldBackgroundColor: LoginPage.background,
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginPage(
              onLogin: authenticate,
              onSuccess: () {
                Navigator.of(context).pushReplacementNamed('/home');
              },
            ),
        '/home': (context) => const MyApp(),
      },
    );
  }
}