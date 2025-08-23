// Improve these classes as emun
// by asinging emun values in model class

abstract class SlateRendererFieldType {
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
