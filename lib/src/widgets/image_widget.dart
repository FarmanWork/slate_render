import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:slate_render/src/function/helper_function.dart';
import 'package:slate_render/src/utils/local_images.dart';

class ImageWidget extends StatelessWidget {
  final String url;
  const ImageWidget({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return url != ""
        ? Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Container(
              height: 50,
              width: 50,
              alignment: Alignment.topCenter,
              child: GestureDetector(
                onTap: () => HelperFunction().displayImageDialog(context, url),
                child: CachedNetworkImage(
                  imageUrl: url,
                  fit: BoxFit.contain,
                  placeholder: (context, url) => Image.asset(
                    LocalImages.placeHolderImage,
                    fit: BoxFit.contain,
                  ),
                  errorWidget: (context, url, error) => Image.asset(
                    LocalImages.placeHolderImage,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          )
        : const SizedBox.shrink();
  }
}
