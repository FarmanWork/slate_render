import 'package:flutter/material.dart';
import 'package:slate_render/slate.dart';

class HelperFunction {
  ///Open url outside/inside the app.
  openUrl({required String url, LaunchMode? launchMode}) async {
    try {
      if (await canLaunchUrl(Uri.parse(url))) {
        await launchUrl(
          Uri.parse(url),
          mode: launchMode ?? LaunchMode.externalApplication,
        );
      }
    } catch (e) {
      // showToast(
      //   fToast,
      //   "error_connecting_try_again".tr(),
      //   NotificationStatus.failure,
      // );
    }
  }

  ///Convert the color string into hexc-color format
  Color? convertColor(String color) {
    color = color.replaceAll('#', '');
    Color? reColor;
    if (color.length == 6) {
      reColor = Color(int.parse('0xFF$color'));
    } else if (color.length == 8) {
      reColor = Color(int.parse('0x$color'));
    }
    return reColor;
  }

  ///display a image on full screen
  displayImageDialog(BuildContext context, String url) {
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
