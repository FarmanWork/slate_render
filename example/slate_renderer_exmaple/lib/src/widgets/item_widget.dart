import 'package:flutter/material.dart';
import 'package:slate_render/slate.dart';
import 'package:slate_renderer_exmaple/src/widgets/view_item.dart';

class ItemWidget extends StatelessWidget {
  final String? title;
  final List<Map<String, dynamic>>? description;
  final String? createdAt;
  final int? newsId;
  final bool? disableComments;
  const ItemWidget({
    super.key,
    required this.description,
    this.title,
    this.createdAt,
    this.newsId,
    this.disableComments,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return ViewItem(
                title: title,
                description: description,
                createdAt: createdAt,
                newsId: newsId,
                disableComments: disableComments,
              );
            },
          ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            title!,
            maxLines: 1,
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: SlateRenderer(
              data: description![0],
              disableLink: true,
              maxLine: 5,
            ),
          ),
          const SizedBox(height: 5),
        ],
      ),
    );
  }
}
