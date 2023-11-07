import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ColorThemeData with ChangeNotifier {
  //S.p instance
  static SharedPreferences? _sharedPreferences;

  final ThemeData _yellowTheme = ThemeData(
    //Temanın genel rengi sarı-lacivert.
    primaryColor: Colors.yellow,
    primarySwatch: Colors.yellow,
    scaffoldBackgroundColor: Colors.yellow,
    appBarTheme: const AppBarTheme(color: Colors.yellow),
    textTheme: const TextTheme(
        headlineLarge: TextStyle(color: Colors.blueAccent),
        titleLarge: TextStyle(color: Colors.blueAccent),
        headlineMedium: TextStyle(color: Colors.blueAccent)),
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
    //action button lacivert
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor:
          Colors.blueAccent, // FloatingActionButton rengi burada ayarlanıyor
    ),
    useMaterial3: true,
  );
  final ThemeData _redTheme = ThemeData(
    //Temanın genel rengi sarı-lacivert.
    primaryColor: Colors.red,
    primarySwatch: Colors.red,
    scaffoldBackgroundColor: Colors.red,
    appBarTheme: const AppBarTheme(color: Colors.red),
    textTheme: const TextTheme(
        headlineLarge: TextStyle(color: Colors.yellow),
        titleLarge: TextStyle(color: Colors.yellow),
        headlineMedium: TextStyle(color: Colors.yellow)),
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
    //action button lacivert
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor:
          Colors.yellow, // FloatingActionButton rengi burada ayarlanıyor
    ),
    useMaterial3: true,
  );

  ThemeData _selectedThemeData = ThemeData(
    //Temanın genel rengi sarı-lacivert.
    primaryColor: Colors.yellow,
    primarySwatch: Colors.yellow,
    scaffoldBackgroundColor: Colors.yellow,
    appBarTheme: const AppBarTheme(color: Colors.yellow),
    textTheme: const TextTheme(
        headlineLarge: TextStyle(color: Colors.blueAccent),
        titleLarge: TextStyle(color: Colors.blueAccent),
        headlineMedium: TextStyle(color: Colors.blueAccent)),
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
    //action button lacivert
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor:
          Colors.blueAccent, // FloatingActionButton rengi burada ayarlanıyor
    ),
    useMaterial3: true,
  );

  void switchTheme(bool selected) {
    //print("geldi" + selected.toString());
    _selectedThemeData = selected ? _redTheme : _yellowTheme;
    //print(_selectedThemeData);
    saveThemeToSharedPreferences(selected); // true' kırmızı false sarı yapıyor. kırmızı mı ?
    notifyListeners();
  }

  ThemeData get getSelectedThemeData => _selectedThemeData;


  //assign instance
  Future<void> createSharedPreferences() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }


  Future<void> saveThemeToSharedPreferences(bool value) async {
    await createSharedPreferences();
    //key -> themeData,  value -> bool (burada true' kırmızı false sarı yapıyor.kırmızı mı ?)
    _sharedPreferences!.setBool("themeData", value);
  }

  Future<void> loadThemeFromSharedPref() async {
   // await createSharedPreferences();
    bool? value = _sharedPreferences!.getBool("themeData");
    _selectedThemeData = value??false ? _redTheme : _yellowTheme;
  }
}
