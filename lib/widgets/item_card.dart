import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({Key? key,required this.title,required this.isDone, required this.changeTick}) : super(key: key);

  final String title;
  final bool isDone;
  final Function(bool?) changeTick;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: isDone?Colors.yellow:Colors.white,
      elevation: isDone?1: 5,
      shadowColor: Theme.of(context).primaryColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: ListTile(
        title: Text(title,
            style: Theme.of(context).textTheme.titleLarge),

        trailing: Checkbox(
          value: isDone,
          onChanged:changeTick,
          activeColor: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
