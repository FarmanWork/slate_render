// Improve these classes as emun
// by asinging emun values in model class
// Do not delete this class as this will give me the real values comes ffrom api
import 'package:flutter/material.dart';

const int maxDisplayLine = 5000;
const double imageHight = 50.0, imageWidth = 50.0;
const Alignment imageAlignment = Alignment.center;
const String placeHolderImage = 'assets/images/placeholder_image.png';

// Paragraph
const double paragraphFontSize = 14.0;

abstract class ContentType {
  static const paragraph = "paragraph";
  static const h1 = "heading-1";
  static const h2 = "heading-2";
  static const h3 = "heading-3";
  static const numberedList = "numbered-list";
  static const bulletedList = "bulleted-list";
  static const listItem = "list-item";
  static const image = "image";
  static const link = "link";
}

// Add more text direction options
abstract class TextDirection {
  static const right = "right";
  static const left = "left";
  static const center = "center";
}

abstract class UrlType {
  static const http = "http://";
  static const https = "https://";
}

abstract class CountType {
  static const bullet = "⦿  ";
}

abstract class PlaceholderColor {
  static const textBackgroundColor = "FFFFFF";
  static const noLinkColor = "000000";
  static const linkColor = Colors.blue;
}
