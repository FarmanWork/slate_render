// Improve these classes as emun
// by asinging emun values in model class
// Do not delete this class as this will give me the real values comes ffrom api
import 'package:flutter/material.dart';

const int maxDisplayLine = 5000;
const double imageHight = 50.0, imageWidth = 50.0;
const Alignment defaultImageAlignment = Alignment.center;
const String placeHolderImage = 'assets/images/placeholder_image.png';
const double defaultTextHeight = 1.3;
const double defaultLetterSpacing = 1.3;
const double defaultFontSize = 14.0;

// Paragraph
const double paragraphFontSize = 14.0;
const double h1FontSize = 32.0;
const double h2FontSize = 24.0;
const double h3FontSize = 18.72;
// const double h4FontSize = 16.0;
// const double h5FontSize = 13.28;
// const double h6FontSize = 10.72;

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
  static const textBackgroundColor = "00FFFFFF";
  static const noLinkColor = "000000";
  static const linkColor = Colors.blue;
}
