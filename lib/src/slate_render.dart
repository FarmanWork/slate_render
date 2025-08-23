// /// A Calculator.
// class Calculator {
//   /// Returns [value] plus 1.
//   int addOne(int value) => value + 1;
// }

// Flutter/Dart imports:
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

// Package imports:
import 'package:cached_network_image/cached_network_image.dart';
import 'package:slate_render/src/models/function/helper_function.dart';
import 'package:slate_render/slate.dart';

class SlateRenderer extends StatefulWidget {
  /// The output of slate editor
  final Description? description;

  /// how much line you want to display if null then all line will display
  final int? maxLine;

  ///  What to disable link opninng, some time good for small preview pages
  final bool isLinkDisable;

  const SlateRenderer({
    super.key,
    required this.description,
    this.maxLine,
    this.isLinkDisable = false,
  });

  @override
  State<SlateRenderer> createState() => _SlateRendererState();
}

class _SlateRendererState extends State<SlateRenderer> {
  HelperFunction helperFunction = HelperFunction();
  double? mainHeight, mainWidth;

  /// To display paragraph text
  paragraph({Description? innerData, int? maxLine}) {
    return RichText(
      // Remove maxline if no input proviede my user
      maxLines: maxLine ?? 500,
      textAlign: innerData!.alignment == TextDirection.right
          ? TextAlign.right
          : innerData.alignment == TextDirection.center
          ? TextAlign.center
          : TextAlign.left,
      text: TextSpan(
        style: DefaultTextStyle.of(context).style,
        children: [
          for (int i = 0; i < innerData.children!.length; i++)
            TextSpan(
              text:
                  innerData.children![i].text ??
                  innerData.children![i].children![0].text,
              recognizer: TapGestureRecognizer()
                ..onTap =
                    //if link is enable,
                    // and inner child type is link then luanch the URL
                    !widget.isLinkDisable &&
                        innerData.children![i].type ==
                            SlateRendererFieldType.link
                    ? () {
                        helperFunction.openUrl(
                          url: innerData.children![i].url!,
                        );
                      }
                    : null,
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: innerData.children![i].bold!
                    ? FontWeight.bold
                    : FontWeight.normal,
                letterSpacing: 1.3,
                height: 1.3,
                fontStyle: innerData.children![i].italic!
                    ? FontStyle.italic
                    : FontStyle.normal,
                decoration: TextDecoration.combine([
                  innerData.children![i].closeText!
                      ? TextDecoration.lineThrough
                      : TextDecoration.none,
                  innerData.children![i].underline!
                      ? TextDecoration.underline
                      : TextDecoration.none,
                ]),
                backgroundColor: helperFunction.convertColor(
                  innerData.children![i].bgColor ?? "FFFFFF",
                ),
                color:
                    innerData.children![i].url!.contains(UrlType.http) ||
                        innerData.children![i].url!.contains(UrlType.https)
                    ? Colors.blue
                    : helperFunction.convertColor(
                        innerData.children![i].color ?? "000000",
                      ),
              ),
            ),
        ],
      ),
    );
  }

  /// To display three type of heading(h1,h2,h3)
  headings({Description? innerData, int? maxLine}) {
    return RichText(
      maxLines: maxLine != null ? 1 : 500,
      textAlign: innerData!.alignment == TextDirection.right
          ? TextAlign.right
          : innerData.alignment == TextDirection.center
          ? TextAlign.center
          : TextAlign.left,
      text: TextSpan(
        style: DefaultTextStyle.of(context).style,
        children: [
          for (int i = 0; i < innerData.children!.length; i++)
            TextSpan(
              text:
                  innerData.children![i].text ??
                  " ${innerData.children![i].children![0].text} ",
              recognizer: TapGestureRecognizer()
                ..onTap =
                    !widget.isLinkDisable && innerData.children![i].url != null
                    ? () {
                        helperFunction.openUrl(
                          url: innerData.children![i].url!,
                        );
                      }
                    : null,
              style: TextStyle(
                fontSize: innerData.type == SlateRendererFieldType.h1
                    ? 30.0
                    : innerData.type == SlateRendererFieldType.h2
                    ? 25.0
                    : innerData.type == SlateRendererFieldType.h3
                    ? 20.0
                    : 14.0,
                fontWeight: innerData.children![i].bold!
                    ? FontWeight.bold
                    : FontWeight.normal,
                letterSpacing: 1.3,
                height: 1.3,
                fontStyle: innerData.children![i].italic!
                    ? FontStyle.italic
                    : FontStyle.normal,
                decoration: TextDecoration.combine([
                  innerData.children![i].closeText!
                      ? TextDecoration.lineThrough
                      : TextDecoration.none,
                  innerData.children![i].underline!
                      ? TextDecoration.underline
                      : TextDecoration.none,
                ]),
                backgroundColor: helperFunction.convertColor(
                  innerData.children![i].bgColor ?? "FFFFFF",
                ),
                color:
                    innerData.children![i].url!.contains(UrlType.http) ||
                        innerData.children![i].url!.contains(UrlType.https)
                    ? Colors.blue
                    : helperFunction.convertColor(
                        innerData.children![i].color ?? "000000",
                      ),
              ),
            ),
        ],
      ),
    );
  }

  /// To display List items(Ordered and Unordered) with there prefix symbol
  list({Description? innerData, int? maxLine}) {
    return SizedBox(
      width: mainWidth,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          widget.maxLine! > 2 ? innerData!.children!.length : 1,
          (indexMy) {
            return innerData!.children![indexMy].type ==
                    SlateRendererFieldType.image
                ? Row(
                    children: [
                      innerData.type == SlateRendererFieldType.numberedList
                          ? Text("${indexMy + 1}.  ")
                          : innerData.type ==
                                SlateRendererFieldType.bulletedList
                          ? const Text(CountType.bullet)
                          : const Text(CountType.bullet),
                      image(url: innerData.children![indexMy].url),
                    ],
                  )
                : innerData.children![indexMy].type ==
                          SlateRendererFieldType.listItem &&
                      innerData.children![indexMy].children![0].text!.isNotEmpty
                ? RichText(
                    maxLines: maxLine ?? 500,
                    textAlign: innerData.alignment == TextDirection.right
                        ? TextAlign.right
                        : innerData.alignment == TextDirection.center
                        ? TextAlign.center
                        : TextAlign.left,
                    text: TextSpan(
                      text:
                          innerData.type == SlateRendererFieldType.numberedList
                          ? "${indexMy + 1}.  "
                          : innerData.type ==
                                SlateRendererFieldType.bulletedList
                          ? CountType.bullet
                          : CountType.bullet,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      children: [listItem(innerData.children![indexMy])],
                    ),
                  )
                : const SizedBox.shrink();
          },
        ),
      ),
    );
  }

  /// To display List items(Ordered and Unordered) with there suffix text
  TextSpan listItem(DescriptionChild innerData) {
    if (innerData.children == null || innerData.children!.isEmpty) {
      return TextSpan(
        text: innerData.text,
        recognizer: TapGestureRecognizer()
          ..onTap =
              !widget.isLinkDisable &&
                  (innerData.text!.contains(UrlType.http) ||
                      innerData.text!.contains(UrlType.https))
              ? () {
                  helperFunction.openUrl(url: innerData.text!);
                }
              : null,
        style: TextStyle(
          fontSize: 14.0,
          fontWeight: innerData.bold! ? FontWeight.bold : FontWeight.normal,
          letterSpacing: 1.3,
          height: 1.3,
          fontStyle: innerData.italic! ? FontStyle.italic : FontStyle.normal,
          decoration: TextDecoration.combine([
            innerData.closeText!
                ? TextDecoration.lineThrough
                : TextDecoration.none,
            innerData.underline!
                ? TextDecoration.underline
                : TextDecoration.none,
          ]),
          backgroundColor: helperFunction.convertColor(
            innerData.bgColor ?? "FFFFFF",
          ),
          color:
              innerData.text!.contains(UrlType.http) ||
                  innerData.text!.contains(UrlType.https)
              ? Colors.blue
              : helperFunction.convertColor(innerData.color ?? "000000"),
        ),
      );
    } else {
      return TextSpan(children: innerData.children!.map(listItem).toList());
    }
  }

  /// To display Image
  Widget image({String? url}) {
    return url != ""
        ? Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Container(
              height: 50,
              width: 50,
              alignment: Alignment.topCenter,
              child: GestureDetector(
                onTap: () => helperFunction.displayImageDialog(context, url),
                child: CachedNetworkImage(
                  imageUrl: url!,
                  fit: BoxFit.contain,
                  placeholder: (context, url) => Image.asset(
                    // Put place holder images here(get from user or used const self)
                    "CustomImages.imagePlaceholder2,",
                    fit: BoxFit.contain,
                  ),
                  errorWidget: (context, url, error) => Image.asset(
                    // Put place holder images here(get from user or used const self)
                    " CustomImages.imagePlaceholder2,",
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          )
        : const SizedBox.shrink();
  }

  @override
  Widget build(BuildContext context) {
    mainHeight = MediaQuery.of(context).size.height;
    mainWidth = MediaQuery.of(context).size.width;
    return ((widget.description!.type == SlateRendererFieldType.paragraph) ||
            (widget.description!.type == SlateRendererFieldType.link))
        ? paragraph(innerData: widget.description, maxLine: widget.maxLine)
        : ((widget.description!.type == SlateRendererFieldType.h1) ||
              (widget.description!.type == SlateRendererFieldType.h2) ||
              (widget.description!.type == SlateRendererFieldType.h3))
        ? headings(innerData: widget.description, maxLine: widget.maxLine)
        : ((widget.description!.type == SlateRendererFieldType.numberedList) ||
              (widget.description!.type ==
                  SlateRendererFieldType.bulletedList) ||
              (widget.description!.type == SlateRendererFieldType.listItem))
        ? list(innerData: widget.description, maxLine: widget.maxLine)
        : widget.description!.type == SlateRendererFieldType.image
        ? image(url: widget.description!.url)
        : const SizedBox.shrink();
  }
}
