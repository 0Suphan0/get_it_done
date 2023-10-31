import 'package:flutter/material.dart';
import 'package:get_it_done/models/item_datas.dart';
import 'package:get_it_done/screens/settings_page.dart';
import 'package:get_it_done/widgets/item_card.dart';
import 'package:provider/provider.dart';

import 'item_adder.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  // final ItemData itemData = ItemData();

  @override
  Widget build(BuildContext context) {
    String appBarText = "Get it Done !";

    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        appBar: buildAppBar(context, appBarText),
        body: Column(children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                "${Provider.of<ItemData>(context).tasks.length} Görev",
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
                  child: Consumer<ItemData>(
                    builder: (context, itemData, child) {
                      return Align(
                        alignment: Alignment.topCenter,
                        child: ListView.builder(
                          shrinkWrap: true,
                          reverse: true,
                          itemCount: itemData.tasks.length,
                          itemBuilder: (context, index) {
                            return ItemCard(
                              title: itemData.tasks[index].title,
                              isDone: itemData.tasks[index].isDone,
                              changeTick: (_) {
                                itemData.changeToggle(index);
                              },
                              deleteTask: (_) {
                                itemData.delete(index);
                              },
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          )
        ]),
        floatingActionButton: buildFloatingActionButton(context));
  }

  FloatingActionButton buildFloatingActionButton(BuildContext context) {
    return FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) => const ItemAdder());
        },
        child: const Icon(Icons.add),
      );
  }

  AppBar buildAppBar(BuildContext context, String appBarText) {
    return AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsPage()
                ));
              },
              icon: const Icon(Icons.settings))
        ],
        title: Text(appBarText,
            style: Theme.of(context).textTheme.headlineLarge),
        elevation: 2,
        centerTitle: true,
      );
  }
}
