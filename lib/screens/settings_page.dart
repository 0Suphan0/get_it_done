import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Tema Ekranı"),centerTitle: true,),
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
  bool _value =false;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SwitchListTile(
        title: Text("Temayı değiştir."),
        value: _value,
        onChanged: (bool value) {
          setState(() {
            _value = value;
          });
        },
      ),
    );
  }
}
