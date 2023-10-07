import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/item_datas.dart';

class ItemAdder extends StatelessWidget {
  const ItemAdder({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController textController = TextEditingController();

    return Container(
      padding: EdgeInsets.all(12),
      child: Padding(
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child:
            Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          TextField(
            autofocus: true,
            controller: textController,
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Görev Ekle",
                hintText: "Ekle"),
          ),
          ElevatedButton(
              onPressed: () {
                Provider.of<ItemData>(context, listen: false)
                    .addTask(textController.text);
                Navigator.pop(context);
              },
              child: const Text("Ekle"))
        ]),
      ),
    );
  }
}
