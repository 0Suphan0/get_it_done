import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  const ItemCard(
      {Key? key,
      required this.title,
      required this.isDone,
      required this.changeTick, required this.deleteTask})
      : super(key: key);

  final String title;
  final bool isDone;
  final Function(bool?) changeTick;
  final Function(void) deleteTask;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      onDismissed: deleteTask,
      key: Key(title),
      child: Card(
        color: isDone ? Colors.yellow : Colors.white,
        elevation: isDone ? 1 : 5,
        shadowColor: Theme.of(context).primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: ListTile(
          title: Text(title,
              style: TextStyle(
                  decoration:
                      isDone ? TextDecoration.lineThrough : TextDecoration.none,
                  color: Colors.blueAccent,
                  fontSize: 25)),
          trailing: Checkbox(
            value: isDone,
            onChanged: changeTick,
            activeColor: Theme.of(context).primaryColor,
          ),
        ),
      ),
    );
  }
}
