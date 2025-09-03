import 'package:flutter/material.dart';
import 'package:example/src/data/dummay.dart';
import 'package:example/src/widgets/item_list_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Slate Editor Demo")),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ItemListWidget(
                  // data: newsList,
                  data: newsList.where((item) => item['kind'] == 0).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
