// Flutter/Dart imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:slate_render/slate.dart';

class SlateRenderer extends StatelessWidget {
  /// The output of slate editor
  final Map<String, dynamic> data;

  /// how much line you want to display if null then all line will display
  ///  some time good for small preview pages
  final int? maxLine;

  ///  What to disable link opninng, some time good for small preview pages
  final bool? disableLink;

  const SlateRenderer({
    super.key,
    required this.data,
    this.maxLine = maxDisplayLine,
    this.disableLink = false,
  });

  @override
  Widget build(BuildContext context) {
    final content = Content.fromJson(data);
    switch (content.type) {
      case ContentType.paragraph:
      case ContentType.link:
        return ParagraphWidget(
          innerData: content,
          maxLine: maxLine,
          disableLink: disableLink,
        );

      case ContentType.h1:
      case ContentType.h2:
      case ContentType.h3:
        return HeadingWidget(
          innerData: content,
          maxLine: maxLine,
          disableLink: disableLink,
        );

      case ContentType.numberedList:
      case ContentType.bulletedList:
      case ContentType.listItem:
        return ListWidget(
          innerData: content,
          maxLine: maxLine,
          disableLink: disableLink,
        );

      case ContentType.image:
        return ImageWidget(url: content.url!);

      default:
        return const SizedBox.shrink();
    }
  }
}
