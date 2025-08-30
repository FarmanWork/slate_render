import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:slate_render/slate.dart';

class ParagraphWidget extends StatelessWidget {
  final Content innerData;
  final int? maxLine;
  final bool? disableLink;
  const ParagraphWidget({
    super.key,
    required this.innerData,
    this.maxLine,
    this.disableLink,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      maxLines: maxLine,
      textAlign: innerData.alignment == TextDirection.right
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
                    !disableLink! &&
                        innerData.children![i].type == ContentType.link
                    ? () {
                        HelperFunction().openUrl(
                          url: innerData.children![i].url!,
                        );
                      }
                    : null,
              style: TextStyle(
                fontSize: paragraphFontSize,
                fontWeight: innerData.children![i].bold
                    ? FontWeight.bold
                    : FontWeight.normal,
                letterSpacing: defaultLetterSpacing,
                height: defaultTextHeight,
                fontStyle: innerData.children![i].italic
                    ? FontStyle.italic
                    : FontStyle.normal,
                decoration: TextDecoration.combine([
                  innerData.children![i].closeText
                      ? TextDecoration.lineThrough
                      : TextDecoration.none,
                  innerData.children![i].underline
                      ? TextDecoration.underline
                      : TextDecoration.none,
                ]),
                backgroundColor: HelperFunction().toHexColor(
                  innerData.children![i].bgColor,
                ),
                color:
                    innerData.children![i].url!.contains(UrlType.http) ||
                        innerData.children![i].url!.contains(UrlType.https)
                    ? PlaceholderColor.linkColor
                    : HelperFunction().toHexColor(innerData.children![i].color),
              ),
            ),
        ],
      ),
    );
  }
}
