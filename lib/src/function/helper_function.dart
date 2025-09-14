import 'package:flutter/material.dart';
import 'package:slate_render/slate_render.dart';

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
  Color? toHexColor(String color) {
    color = color.trim();
    color = color.replaceAll('#', '');
    Color? reColor;
    switch (color.length) {
      case 6:
        reColor = Color(int.parse('0xFF$color'));
        break;
      case 8:
        reColor = Color(int.parse('0x$color'));
      default:
        reColor = null;
    }
    return reColor;
  }

  double parseDimension(String? value, {double parent = 1}) {
    if (value == null) return 0;

    value = value.trim().replaceAll(' ', ''); // remove all spaces

    if (value.endsWith('%')) {
      // Percentage: convert to fraction of parent
      final percentage = double.tryParse(value.replaceAll('%', '').trim());
      if (percentage != null) return parent * (percentage / 100);
    } else if (value.toLowerCase().endsWith('px')) {
      // Pixels: remove 'px' and parse
      final pixels = double.tryParse(value.replaceAll('px', '').trim());
      if (pixels != null) return pixels;
    } else {
      // Try parsing as plain number
      final number = double.tryParse(value);
      if (number != null) return number;
    }

    return 0; // fallback
  }

  ///display a image on full screen
  Future<void> previewImage(BuildContext context, String url) {
    return showDialog(
      context: context,
      builder: (_) => SafeArea(
        child: Scaffold(
          appBar: AppBar(title: Text("Image Preview")),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  flex: 1,
                  child: CachedNetworkImage(
                    imageUrl: url,
                    fit: BoxFit.contain,
                    placeholder: (context, url) =>
                        const CircularProgressIndicator(),
                    errorWidget: (context, url, error) =>
                        const CircularProgressIndicator(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
