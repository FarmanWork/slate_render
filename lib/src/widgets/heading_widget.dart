import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:slate_render/slate.dart';
import 'package:slate_render/src/function/helper_function.dart';

class HeadingWidget extends StatelessWidget {
  final Content innerData;
  final int? maxLine;
  final bool? isLinkDisable;
  const HeadingWidget({
    super.key,
    required this.innerData,
    this.maxLine = 500,
    this.isLinkDisable = false,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      maxLines: maxLine != null ? 1 : 500,
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
                  " ${innerData.children![i].children![0].text} ",
              recognizer: TapGestureRecognizer()
                ..onTap = !isLinkDisable! && innerData.children![i].url != null
                    ? () {
                        HelperFunction().openUrl(
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
                backgroundColor: HelperFunction().convertColor(
                  innerData.children![i].bgColor ??
                      PlaceholderColor.textBackgroundColor,
                ),
                color:
                    innerData.children![i].url!.contains(UrlType.http) ||
                        innerData.children![i].url!.contains(UrlType.https)
                    ? Colors.blue
                    : HelperFunction().convertColor(
                        innerData.children![i].color ??
                            PlaceholderColor.noLinkColor,
                      ),
              ),
            ),
        ],
      ),
    );
  }
}
