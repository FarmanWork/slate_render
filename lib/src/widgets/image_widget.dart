import 'package:flutter/material.dart';
import 'package:slate_render/slate.dart';

class ImageWidget extends StatelessWidget {
  final String url;
  const ImageWidget({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return url != ""
        ? Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Container(
              height: imageHight,
              width: imageWidth,
              alignment: imageAlignment,
              child: GestureDetector(
                onTap: () => HelperFunction().displayImageDialog(context, url),
                child: CachedNetworkImage(
                  imageUrl: url,
                  fit: BoxFit.contain,
                  placeholder: (context, url) =>
                      Image.asset(placeHolderImage, fit: BoxFit.contain),
                  errorWidget: (context, url, error) =>
                      Image.asset(placeHolderImage, fit: BoxFit.contain),
                ),
              ),
            ),
          )
        : const SizedBox.shrink();
  }
}
