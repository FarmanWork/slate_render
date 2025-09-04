import 'package:flutter/material.dart';
import 'package:slate_render/slate_render.dart';

class ViewItem extends StatelessWidget {
  final String? title;
  final List<Map<String, dynamic>>? description;
  final String? createdAt;
  final int? newsId;
  final bool? disableComments;
  const ViewItem({
    super.key,
    this.title,
    this.description,
    this.createdAt,
    this.newsId,
    this.disableComments,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title ?? 'Detail')),
      body: Container(
        padding: const EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 5.0),
        width: MediaQuery.maybeOf(context)!.size.width,
        height: MediaQuery.maybeOf(context)!.size.height,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title!,
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 5),
              Divider(height: 15, color: Colors.grey[600]),
              Column(
                children: [
                  Wrap(
                    children: List.generate(description!.length, (index) {
                      return SingleChildScrollView(
                        child: SlateRenderer(
                          data: description![index],
                          disableLink: false,
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
