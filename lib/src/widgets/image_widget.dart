import 'package:flutter/material.dart';
import 'package:slate_render/slate.dart';

class ImageWidget extends StatelessWidget {
  final String url;
  final Content innerData;
  const ImageWidget({super.key, required this.url, required this.innerData});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.maybeOf(context)!.size;

    return url != ""
        ? Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 20.0),
            child: Container(
              height:
                  (HelperFunction().parseDimension(
                        innerData.height,
                        parent: size.height,
                      )) <
                      150
                  ? (HelperFunction().parseDimension(
                      innerData.height,
                      parent: size.height,
                    ))
                  : imageHight,
              width:
                  (HelperFunction().parseDimension(
                        innerData.width,
                        parent: size.width,
                      )) <
                      150
                  ? (HelperFunction().parseDimension(
                      innerData.width,
                      parent: size.width,
                    ))
                  : imageWidth,
              alignment: defaultImageAlignment,
              child: GestureDetector(
                onTap: () => HelperFunction().previewImage(context, url),
                child: CachedNetworkImage(
                  imageUrl: url,
                  fit: BoxFit.contain,
                  placeholder: (context, url) =>
                      const CircularProgressIndicator(),
                  errorWidget: (context, url, error) =>
                      const CircularProgressIndicator(),
                ),
              ),
            ),
          )
        : const SizedBox.shrink();
  }
}
