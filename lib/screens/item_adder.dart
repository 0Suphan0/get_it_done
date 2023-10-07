import 'package:flutter/material.dart';

class ItemAdder extends StatelessWidget {
  const ItemAdder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          const TextField(
            autofocus: true,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Görev Ekle",
                hintText: "Ekle"),
          ),
          ElevatedButton(onPressed: () {}, child: const Text("Ekle"))
        ]),
      ),
    );
  }
}
