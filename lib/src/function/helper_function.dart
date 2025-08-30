import 'package:flutter/material.dart';
import 'package:slate_render/slate.dart';

class HelperFunction {
  ///Open url outside/inside the app.
  void openUrl({required String url, LaunchMode? launchMode}) async {
    if (await canLaunchUrl(Uri.parse(url)) == false) return;

    await launchUrl(
      Uri.parse(url),
      mode: launchMode ?? LaunchMode.externalApplication,
    );
  }

  ///Convert the color string into hexc-color format
  Color toHexColor(String color) {
    color = color.replaceAll('#', '');
    return color.length == 6
        ? Color(int.parse('0xFF$color'))
        : Color(int.parse('0x$color'));
  }

  ///display a image on full screen
  previewImage(BuildContext context, String url) {
    return showDialog(
      context: context,
      builder: (_) => Scaffold(
        appBar: AppBar(title: Text("Image Preview")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                color: Colors.white,
                child: Center(
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
            ),
          ],
        ),
      ),
    );
  }
}
