import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:slate_render/slate.dart';

class ListWidget extends StatelessWidget {
  final Content innerData;
  final int? maxLine;
  final bool? disableLink;
  const ListWidget({
    super.key,
    required this.innerData,
    this.maxLine,
    this.disableLink,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.maybeOf(context)!.size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(maxLine! > 2 ? innerData.children!.length : 1, (
          indexMy,
        ) {
          return innerData.children![indexMy].type == ContentType.image
              ? Row(
                  children: [
                    innerData.type == ContentType.numberedList
                        ? Text("${indexMy + 1}.  ")
                        : innerData.type == ContentType.bulletedList
                        ? const Text(CountType.bullet)
                        : const Text(CountType.bullet),
                    ImageWidget(url: innerData.children![indexMy].url!),
                  ],
                )
              : innerData.children![indexMy].type == ContentType.listItem &&
                    innerData.children![indexMy].children![0].text!.isNotEmpty
              ? RichText(
                  maxLines: maxLine,
                  textAlign: innerData.alignment == TextDirection.right
                      ? TextAlign.right
                      : innerData.alignment == TextDirection.center
                      ? TextAlign.center
                      : TextAlign.left,
                  text: TextSpan(
                    text: innerData.type == ContentType.numberedList
                        ? "${indexMy + 1}.  "
                        : innerData.type == ContentType.bulletedList
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
        }),
      ),
    );
  }

  /// To display List items(Ordered and Unordered) with there suffix text
  TextSpan listItem(ChildContent innerData) {
    if (innerData.children == null || innerData.children!.isEmpty) {
      return TextSpan(
        text: innerData.text,
        recognizer: TapGestureRecognizer()
          ..onTap =
              !disableLink! &&
                  (innerData.text!.contains(UrlType.http) ||
                      innerData.text!.contains(UrlType.https))
              ? () {
                  HelperFunction().openUrl(url: innerData.text!);
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
          backgroundColor: HelperFunction().convertColor(
            innerData.bgColor ?? PlaceholderColor.textBackgroundColor,
          ),
          color:
              innerData.text!.contains(UrlType.http) ||
                  innerData.text!.contains(UrlType.https)
              ? PlaceholderColor.linkColor
              : HelperFunction().convertColor(
                  innerData.color ?? PlaceholderColor.noLinkColor,
                ),
        ),
      );
    } else {
      return TextSpan(children: innerData.children!.map(listItem).toList());
    }
  }
}
