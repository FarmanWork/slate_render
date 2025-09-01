import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:slate_render/src/config/converter.dart';
part 'slate_model.freezed.dart';
part 'slate_model.g.dart';

@freezed
abstract class Content with _$Content {
  const factory Content({
    required String type,
    @Default([]) List<ChildContent>? children,
    @Default("") String? url,
    dynamic width,
    @Default("") String? anchor,
    dynamic height,
    @Default("left") String? alignment,
    @Default(false) bool? redirection,
  }) = _Content;
  factory Content.fromJson(Map<String, dynamic> json) =>
      _$ContentFromJson(json);
}

@freezed
abstract class ChildContent with _$ChildContent {
  const factory ChildContent({
    @Default(false) bool bold,
    String? text,
    @Default(false) bool italic,
    @Default(false) bool underline,
    @Default(false) bool closeText,
    String? type,
    @Default([]) List<ChildContent>? children,
    @Default("") String? url,
    @Default("000000") @BlackStringConverter() String color,
    @Default("00FFFFFF") @TransparentStringConverter() String bgColor,
  }) = _ChildContent;

  factory ChildContent.fromJson(Map<String, dynamic> json) =>
      _$ChildContentFromJson(json);
}
