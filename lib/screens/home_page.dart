import 'package:flutter/material.dart';
import 'package:get_it_done/widgets/item_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String appBarText = "Get it Done !";

    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        appBar: AppBar(
          title: Text(appBarText,
              style: Theme.of(context).textTheme.headlineMedium),
          elevation: 2,
          centerTitle: true,
        ),
        body: Column(children: [
          Expanded(
            flex: 1,
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  "5 Items",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
            ),
          ),
          Expanded(
              flex: 5,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: ListView.builder(
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return const ItemCard();
                          }),
                    ),
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
