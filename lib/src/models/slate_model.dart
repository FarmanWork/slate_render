// class Content {
//   Content({
//     this.type,
//     this.children,
//     this.url,
//     this.width,
//     this.anchor,
//     this.height,
//     this.alignment,
//     this.redirection,
//   });

//   String? type;
//   List<ChildContent>? children;
//   String? url;
//   dynamic width;
//   String? anchor;
//   dynamic height;
//   String? alignment;
//   bool? redirection;

//   factory Content.fromJson(Map<String, dynamic> json) => Content(
//     type: json["type"],
//     children: json["children"] != null
//         ? List<ChildContent>.from(
//             json["children"].map((x) => ChildContent.fromJson(x)),
//           )
//         : [],
//     url: json["url"] ?? "",
//     width: json["width"],
//     anchor: json["anchor"],
//     height: json["height"],
//     alignment: json["alignment"],
//     redirection: json["redirection"],
//   );

//   Map<String, dynamic> toJson() => {
//     "type": type,
//     "children": children != null
//         ? List<dynamic>.from(children!.map((x) => x.toJson()))
//         : [],
//     "url": url,
//     "width": width,
//     "anchor": anchor,
//     "height": height,
//     "alignment": alignment,
//     "redirection": redirection,
//   };
// }

// class ChildContent {
//   ChildContent({
//     this.bold,
//     this.text,
//     this.italic,
//     this.underline,
//     this.type,
//     this.children,
//     this.url,
//     this.color,
//     this.bgColor,
//     this.closeText,
//   });

//   bool? bold;
//   String? text;
//   bool? italic;
//   bool? underline;
//   bool? closeText;
//   String? type;
//   List<ChildContent>? children;
//   String? url;
//   String? color;
//   String? bgColor;

//   factory ChildContent.fromJson(Map<String, dynamic> json) =>
//       ChildContent(
//         bold: json["bold"] ?? false,
//         text: json["text"],
//         italic: json["italic"] ?? false,
//         underline: json["underline"] ?? false,
//         closeText: json["closeText"] ?? false,
//         type: json["type"],
//         children: json["children"] == null
//             ? []
//             : List<ChildContent>.from(
//                 json["children"].map((x) => ChildContent.fromJson(x)),
//               ),
//         url: json["url"] ?? "",
//         color: json["color"],
//         bgColor: json["bgColor"],
//       );

//   Map<String, dynamic> toJson() => {
//     "bold": bold,
//     "text": text,
//     "italic": italic,
//     "underline": underline,
//     "closeText": closeText,
//     "type": type,
//     "children": children == null
//         ? []
//         : List<dynamic>.from(children!.map((x) => x.toJson())),
//     "url": url,
//     "color": color,
//     "bgColor": bgColor,
//   };
// }

import 'package:freezed_annotation/freezed_annotation.dart';
part 'slate_model.freezed.dart';
part 'slate_model.g.dart';

@freezed
abstract class Content with _$Content {
  const factory Content({
    required String type,
    @Default([]) List<ChildContent>? children,
    @Default("") String? url,
    dynamic width,
    String? anchor,
    dynamic height,
    String? alignment,
    bool? redirection,
  }) = _Content;
  factory Content.fromJson(Map<String, dynamic> json) =>
      _$ContentFromJson(json);
}

@freezed
abstract class ChildContent with _$ChildContent {
  const factory ChildContent({
    @Default(false) bool? bold,
    String? text,
    @Default(false) bool? italic,
    @Default(false) bool? underline,
    @Default(false) bool? closeText,
    @Default("Guest") String? type,
    @Default([]) List<ChildContent>? children,
    @Default("") String? url,
    @Default("Guest") String? color,
    @Default("Guest") String? bgColor,
  }) = _ChildContent;

  factory ChildContent.fromJson(Map<String, dynamic> json) =>
      _$ChildContentFromJson(json);
}
