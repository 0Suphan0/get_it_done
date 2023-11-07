import 'package:flutter/material.dart';
import 'package:get_it_done/models/color_theme_data.dart';
import 'package:get_it_done/screens/home_page.dart';
import 'package:provider/provider.dart';

import 'models/item_datas.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await ColorThemeData().createSharedPreferences();

  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<ItemData>(
        create: (BuildContext context) => ItemData()),
    ChangeNotifierProvider<ColorThemeData>(
        create: (BuildContext context) => ColorThemeData()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //build olmadan önce s.p'dan tema verisini set et.
    Provider.of<ColorThemeData>(context, listen: true)
        .loadThemeFromSharedPref();

    return MaterialApp(
        title: 'Flutter Demo',
        theme: Provider.of<ColorThemeData>(context, listen: true)
            .getSelectedThemeData,
        home: HomePage());
  }
}
