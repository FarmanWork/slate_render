import 'package:flutter/material.dart';
import 'package:slate_renderer_exmaple/src/widgets/item_card.dart';
import 'package:slate_renderer_exmaple/src/widgets/item_widget.dart';

class ItemListWidget extends StatelessWidget {
  final List data;
  const ItemListWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: data
          .map(
            (item) => ItemCard(
              child: ItemWidget(
                title: item['title'],
                description: item['description'],
                createdAt: item['createdAt'],
                newsId: item['id'],
                disableComments: item['disableComments'],
              ),
            ),
          )
          .toList(),
    );
  }
}
