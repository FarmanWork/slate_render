import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HelperFunction {
  ///Open url outside/inside the app.
  openUrl({required String url, LaunchMode? launchMode}) async {
    // FToast fToast = FToast();
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
    showDialog(
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
                    placeholder: (context, url) => Image.asset(
                      // Put place holder images here(get from user or used const self)
                      "CustomImages.imagePlaceholder2",
                      fit: BoxFit.contain,
                    ),
                    errorWidget: (context, url, error) => Image.asset(
                      // Put place holder images here(get from user or used const self)
                      "CustomImages.imagePlaceholder2",
                      fit: BoxFit.contain,
                    ),
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
