import 'package:json_annotation/json_annotation.dart';

class BlackStringConverter implements JsonConverter<String, dynamic> {
  const BlackStringConverter();

  @override
  String fromJson(dynamic json) {
    if (json == null || (json is String && json.trim().isEmpty)) {
      return "000000";
    }
    return json.toString();
  }

  @override
  dynamic toJson(String object) => object;
}

class TransparentStringConverter implements JsonConverter<String, dynamic> {
  const TransparentStringConverter();

  @override
  String fromJson(dynamic json) {
    if (json == null || (json is String && json.trim().isEmpty)) {
      return "00FFFFFF";
    }
    return json.toString();
  }

  @override
  dynamic toJson(String object) => object;
}
