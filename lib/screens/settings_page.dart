import 'package:flutter/material.dart';
import 'package:get_it_done/models/color_theme_data.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatelessWidget {
  SettingsPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Tema Ekranı"),
          centerTitle: true,
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: const SwitchCard());
  }
}

class SwitchCard extends StatefulWidget {
  const SwitchCard({Key? key}) : super(key: key);

  @override
  State<SwitchCard> createState() => _SwitchCardState();
}

class _SwitchCardState extends State<SwitchCard> {

  bool _value = false;

  @override
  Widget build(BuildContext context) {

    Text yellowText = const Text(
      "Sarı",
      style: TextStyle(color: Colors.yellow),
    );
    Text redText = const Text(
      "Kırmızı",
      style: TextStyle(color: Colors.red),
    );

    return Card(
      child: SwitchListTile(
        title: Text("Temayı değiştir."),
        subtitle: _value ? redText : yellowText,
        value: _value,
        onChanged: (bool value) {
          setState(() {
            _value = value;
          });
          Provider.of<ColorThemeData>(context,listen: false).switchTheme(value);

        },
      ),
    );
  }
}
