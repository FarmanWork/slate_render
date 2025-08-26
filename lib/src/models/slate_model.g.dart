// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slate_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Content _$ContentFromJson(Map<String, dynamic> json) => _Content(
  type: json['type'] as String,
  children: (json['children'] as List<dynamic>?)
      ?.map((e) => ChildContent.fromJson(e as Map<String, dynamic>))
      .toList(),
  url: json['url'] as String?,
  width: json['width'],
  anchor: json['anchor'] as String?,
  height: json['height'],
  alignment: json['alignment'] as String?,
  redirection: json['redirection'] as bool?,
);

Map<String, dynamic> _$ContentToJson(_Content instance) => <String, dynamic>{
  'type': instance.type,
  'children': instance.children,
  'url': instance.url,
  'width': instance.width,
  'anchor': instance.anchor,
  'height': instance.height,
  'alignment': instance.alignment,
  'redirection': instance.redirection,
};

_ChildContent _$ChildContentFromJson(Map<String, dynamic> json) =>
    _ChildContent(
      bold: json['bold'] as bool?,
      text: json['text'] as String?,
      italic: json['italic'] as bool?,
      underline: json['underline'] as bool?,
      closeText: json['closeText'] as bool?,
      type: json['type'] as String?,
      children: (json['children'] as List<dynamic>?)
          ?.map((e) => ChildContent.fromJson(e as Map<String, dynamic>))
          .toList(),
      url: json['url'] as String?,
      color: json['color'] as String?,
      bgColor: json['bgColor'] as String?,
    );

Map<String, dynamic> _$ChildContentToJson(_ChildContent instance) =>
    <String, dynamic>{
      'bold': instance.bold,
      'text': instance.text,
      'italic': instance.italic,
      'underline': instance.underline,
      'closeText': instance.closeText,
      'type': instance.type,
      'children': instance.children,
      'url': instance.url,
      'color': instance.color,
      'bgColor': instance.bgColor,
    };
