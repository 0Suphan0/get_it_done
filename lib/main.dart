import 'package:flutter/material.dart';
import 'package:get_it_done/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          //Temanın genel rengi sarı.
          primaryColor: Colors.yellow,
          primarySwatch: Colors.yellow,
          scaffoldBackgroundColor: Colors.yellow,
          appBarTheme: const AppBarTheme(color: Colors.yellow),
          textTheme: const TextTheme(
              // Bazı yazılar lacivert
              titleLarge: TextStyle(color: Colors.blueAccent),
              headlineMedium: TextStyle(color: Colors.blueAccent)),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
          //action button lacivert
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
            backgroundColor: Colors.blueAccent, // FloatingActionButton rengi burada ayarlanıyor
          ),
          useMaterial3: false,
        ),
        home: const HomePage());
  }
}
