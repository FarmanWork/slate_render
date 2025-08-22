class Description {
  Description({
    this.type,
    this.children,
    this.url,
    this.width,
    this.anchor,
    this.height,
    this.alignment,
    this.redirection,
  });

  String? type;
  List<DescriptionChild>? children;
  String? url;
  dynamic width;
  String? anchor;
  dynamic height;
  String? alignment;
  bool? redirection;

  factory Description.fromJson(Map<String, dynamic> json) => Description(
    type: json["type"],
    children: json["children"] != null
        ? List<DescriptionChild>.from(
            json["children"].map((x) => DescriptionChild.fromJson(x)),
          )
        : [],
    url: json["url"] ?? "",
    width: json["width"],
    anchor: json["anchor"],
    height: json["height"],
    alignment: json["alignment"],
    redirection: json["redirection"],
  );

  Map<String, dynamic> toJson() => {
    "type": type,
    "children": children != null
        ? List<dynamic>.from(children!.map((x) => x.toJson()))
        : [],
    "url": url,
    "width": width,
    "anchor": anchor,
    "height": height,
    "alignment": alignment,
    "redirection": redirection,
  };
}

class DescriptionChild {
  DescriptionChild({
    this.bold,
    this.text,
    this.italic,
    this.underline,
    this.type,
    this.children,
    this.url,
    this.color,
    this.bgColor,
    this.closeText,
  });

  bool? bold;
  String? text;
  bool? italic;
  bool? underline;
  bool? closeText;
  String? type;
  List<DescriptionChild>? children;
  String? url;
  String? color;
  String? bgColor;

  factory DescriptionChild.fromJson(Map<String, dynamic> json) =>
      DescriptionChild(
        bold: json["bold"] ?? false,
        text: json["text"],
        italic: json["italic"] ?? false,
        underline: json["underline"] ?? false,
        closeText: json["closeText"] ?? false,
        type: json["type"],
        children: json["children"] == null
            ? []
            : List<DescriptionChild>.from(
                json["children"].map((x) => DescriptionChild.fromJson(x)),
              ),
        url: json["url"] ?? "",
        color: json["color"],
        bgColor: json["bgColor"],
      );

  Map<String, dynamic> toJson() => {
    "bold": bold,
    "text": text,
    "italic": italic,
    "underline": underline,
    "closeText": closeText,
    "type": type,
    "children": children == null
        ? []
        : List<dynamic>.from(children!.map((x) => x.toJson())),
    "url": url,
    "color": color,
    "bgColor": bgColor,
  };
}
