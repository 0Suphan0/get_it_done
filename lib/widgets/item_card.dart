import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({Key? key,required this.title,required this.isActive}) : super(key: key);

  final String title;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shadowColor: Theme.of(context).primaryColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: ListTile(
        title: Text(title,
            style: Theme.of(context).textTheme.titleLarge),
        trailing: Checkbox(
          value: isActive,
          onChanged: null,
          activeColor: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
