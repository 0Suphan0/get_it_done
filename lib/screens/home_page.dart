import 'package:flutter/material.dart';
import 'package:get_it_done/models/item_datas.dart';
import 'package:get_it_done/widgets/item_card.dart';


class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final ItemData itemData = ItemData();

  @override
  Widget build(BuildContext context) {
    String appBarText = "Get it Done !";

    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        appBar: AppBar(
          title: Text(appBarText,
              style: Theme.of(context).textTheme.headlineLarge),
          elevation: 2,
          centerTitle: true,
        ),
        body: Column(children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                "${itemData.tasks.length} Görev",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
          ),
          Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: ListView.builder(
                        itemCount: itemData.tasks.length,
                        itemBuilder: (context, index) {
                          return ItemCard(
                              title: itemData.tasks[index].title,
                              isActive: itemData.tasks[index].isDone);
                        }),
                  ),
                ),
              ))
        ]),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ));
  }
}
