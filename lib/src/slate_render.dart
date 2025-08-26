// Flutter/Dart imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:slate_render/slate.dart';
import 'package:slate_render/src/widgets/heading_widget.dart';
import 'package:slate_render/src/widgets/image_widget.dart';
import 'package:slate_render/src/widgets/list_widget.dart';
import 'package:slate_render/src/widgets/paragraph_widget.dart';

class SlateRenderer extends StatefulWidget {
  /// The output of slate editor
  final Content content;

  /// how much line you want to display if null then all line will display
  final int? maxLine;

  ///  What to disable link opninng, some time good for small preview pages
  final bool? isLinkDisable;

  const SlateRenderer({
    super.key,
    required this.content,
    this.maxLine,
    this.isLinkDisable = false,
  });

  @override
  State<SlateRenderer> createState() => _SlateRendererState();
}

class _SlateRendererState extends State<SlateRenderer> {
  @override
  Widget build(BuildContext context) {
    return ((widget.content.type == SlateRendererFieldType.paragraph) ||
            (widget.content.type == SlateRendererFieldType.link))
        ? ParagraphWidget(
            innerData: widget.content,
            maxLine: widget.maxLine,
            isLinkDisable: false,
          )
        : ((widget.content.type == SlateRendererFieldType.h1) ||
              (widget.content.type == SlateRendererFieldType.h2) ||
              (widget.content.type == SlateRendererFieldType.h3))
        ? HeadingWidget(
            innerData: widget.content,
            maxLine: widget.maxLine,
            isLinkDisable: false,
          )
        : ((widget.content.type == SlateRendererFieldType.numberedList) ||
              (widget.content.type == SlateRendererFieldType.bulletedList) ||
              (widget.content.type == SlateRendererFieldType.listItem))
        ? ListWidget(
            innerData: widget.content,
            maxLine: widget.maxLine,
            isLinkDisable: false,
          )
        : widget.content.type == SlateRendererFieldType.image
        ? ImageWidget(url: widget.content.url!)
        : const SizedBox.shrink();
  }
}
