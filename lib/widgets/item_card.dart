import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shadowColor: Theme.of(context).primaryColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: ListTile(
        title: Text("Flutter documentary oku.",
            style: Theme.of(context).textTheme.titleLarge),
        trailing: Checkbox(
          value: false,
          onChanged: null,
          activeColor: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
