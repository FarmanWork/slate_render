// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'slate_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Content {

 String get type; List<ChildContent>? get children; String? get url; dynamic get width; String? get anchor; dynamic get height; String? get alignment; bool? get redirection;
/// Create a copy of Content
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContentCopyWith<Content> get copyWith => _$ContentCopyWithImpl<Content>(this as Content, _$identity);

  /// Serializes this Content to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Content&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other.children, children)&&(identical(other.url, url) || other.url == url)&&const DeepCollectionEquality().equals(other.width, width)&&(identical(other.anchor, anchor) || other.anchor == anchor)&&const DeepCollectionEquality().equals(other.height, height)&&(identical(other.alignment, alignment) || other.alignment == alignment)&&(identical(other.redirection, redirection) || other.redirection == redirection));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,const DeepCollectionEquality().hash(children),url,const DeepCollectionEquality().hash(width),anchor,const DeepCollectionEquality().hash(height),alignment,redirection);

@override
String toString() {
  return 'Content(type: $type, children: $children, url: $url, width: $width, anchor: $anchor, height: $height, alignment: $alignment, redirection: $redirection)';
}


}

/// @nodoc
abstract mixin class $ContentCopyWith<$Res>  {
  factory $ContentCopyWith(Content value, $Res Function(Content) _then) = _$ContentCopyWithImpl;
@useResult
$Res call({
 String type, List<ChildContent>? children, String? url, dynamic width, String? anchor, dynamic height, String? alignment, bool? redirection
});




}
/// @nodoc
class _$ContentCopyWithImpl<$Res>
    implements $ContentCopyWith<$Res> {
  _$ContentCopyWithImpl(this._self, this._then);

  final Content _self;
  final $Res Function(Content) _then;

/// Create a copy of Content
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? children = freezed,Object? url = freezed,Object? width = freezed,Object? anchor = freezed,Object? height = freezed,Object? alignment = freezed,Object? redirection = freezed,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,children: freezed == children ? _self.children : children // ignore: cast_nullable_to_non_nullable
as List<ChildContent>?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,width: freezed == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as dynamic,anchor: freezed == anchor ? _self.anchor : anchor // ignore: cast_nullable_to_non_nullable
as String?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as dynamic,alignment: freezed == alignment ? _self.alignment : alignment // ignore: cast_nullable_to_non_nullable
as String?,redirection: freezed == redirection ? _self.redirection : redirection // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [Content].
extension ContentPatterns on Content {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Content value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Content() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Content value)  $default,){
final _that = this;
switch (_that) {
case _Content():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Content value)?  $default,){
final _that = this;
switch (_that) {
case _Content() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String type,  List<ChildContent>? children,  String? url,  dynamic width,  String? anchor,  dynamic height,  String? alignment,  bool? redirection)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Content() when $default != null:
return $default(_that.type,_that.children,_that.url,_that.width,_that.anchor,_that.height,_that.alignment,_that.redirection);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String type,  List<ChildContent>? children,  String? url,  dynamic width,  String? anchor,  dynamic height,  String? alignment,  bool? redirection)  $default,) {final _that = this;
switch (_that) {
case _Content():
return $default(_that.type,_that.children,_that.url,_that.width,_that.anchor,_that.height,_that.alignment,_that.redirection);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String type,  List<ChildContent>? children,  String? url,  dynamic width,  String? anchor,  dynamic height,  String? alignment,  bool? redirection)?  $default,) {final _that = this;
switch (_that) {
case _Content() when $default != null:
return $default(_that.type,_that.children,_that.url,_that.width,_that.anchor,_that.height,_that.alignment,_that.redirection);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Content implements Content {
  const _Content({required this.type, final  List<ChildContent>? children = const [], this.url = "", this.width, this.anchor = "", this.height, this.alignment = "left", this.redirection = false}): _children = children;
  factory _Content.fromJson(Map<String, dynamic> json) => _$ContentFromJson(json);

@override final  String type;
 final  List<ChildContent>? _children;
@override@JsonKey() List<ChildContent>? get children {
  final value = _children;
  if (value == null) return null;
  if (_children is EqualUnmodifiableListView) return _children;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey() final  String? url;
@override final  dynamic width;
@override@JsonKey() final  String? anchor;
@override final  dynamic height;
@override@JsonKey() final  String? alignment;
@override@JsonKey() final  bool? redirection;

/// Create a copy of Content
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ContentCopyWith<_Content> get copyWith => __$ContentCopyWithImpl<_Content>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ContentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Content&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other._children, _children)&&(identical(other.url, url) || other.url == url)&&const DeepCollectionEquality().equals(other.width, width)&&(identical(other.anchor, anchor) || other.anchor == anchor)&&const DeepCollectionEquality().equals(other.height, height)&&(identical(other.alignment, alignment) || other.alignment == alignment)&&(identical(other.redirection, redirection) || other.redirection == redirection));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,const DeepCollectionEquality().hash(_children),url,const DeepCollectionEquality().hash(width),anchor,const DeepCollectionEquality().hash(height),alignment,redirection);

@override
String toString() {
  return 'Content(type: $type, children: $children, url: $url, width: $width, anchor: $anchor, height: $height, alignment: $alignment, redirection: $redirection)';
}


}

/// @nodoc
abstract mixin class _$ContentCopyWith<$Res> implements $ContentCopyWith<$Res> {
  factory _$ContentCopyWith(_Content value, $Res Function(_Content) _then) = __$ContentCopyWithImpl;
@override @useResult
$Res call({
 String type, List<ChildContent>? children, String? url, dynamic width, String? anchor, dynamic height, String? alignment, bool? redirection
});




}
/// @nodoc
class __$ContentCopyWithImpl<$Res>
    implements _$ContentCopyWith<$Res> {
  __$ContentCopyWithImpl(this._self, this._then);

  final _Content _self;
  final $Res Function(_Content) _then;

/// Create a copy of Content
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? children = freezed,Object? url = freezed,Object? width = freezed,Object? anchor = freezed,Object? height = freezed,Object? alignment = freezed,Object? redirection = freezed,}) {
  return _then(_Content(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,children: freezed == children ? _self._children : children // ignore: cast_nullable_to_non_nullable
as List<ChildContent>?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,width: freezed == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as dynamic,anchor: freezed == anchor ? _self.anchor : anchor // ignore: cast_nullable_to_non_nullable
as String?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as dynamic,alignment: freezed == alignment ? _self.alignment : alignment // ignore: cast_nullable_to_non_nullable
as String?,redirection: freezed == redirection ? _self.redirection : redirection // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}


/// @nodoc
mixin _$ChildContent {

 bool get bold; String? get text; bool get italic; bool get underline; bool get closeText; String? get type; List<ChildContent>? get children; String? get url;@BlackStringConverter() String get color;@TransparentStringConverter() String get bgColor;
/// Create a copy of ChildContent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChildContentCopyWith<ChildContent> get copyWith => _$ChildContentCopyWithImpl<ChildContent>(this as ChildContent, _$identity);

  /// Serializes this ChildContent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChildContent&&(identical(other.bold, bold) || other.bold == bold)&&(identical(other.text, text) || other.text == text)&&(identical(other.italic, italic) || other.italic == italic)&&(identical(other.underline, underline) || other.underline == underline)&&(identical(other.closeText, closeText) || other.closeText == closeText)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other.children, children)&&(identical(other.url, url) || other.url == url)&&(identical(other.color, color) || other.color == color)&&(identical(other.bgColor, bgColor) || other.bgColor == bgColor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bold,text,italic,underline,closeText,type,const DeepCollectionEquality().hash(children),url,color,bgColor);

@override
String toString() {
  return 'ChildContent(bold: $bold, text: $text, italic: $italic, underline: $underline, closeText: $closeText, type: $type, children: $children, url: $url, color: $color, bgColor: $bgColor)';
}


}

/// @nodoc
abstract mixin class $ChildContentCopyWith<$Res>  {
  factory $ChildContentCopyWith(ChildContent value, $Res Function(ChildContent) _then) = _$ChildContentCopyWithImpl;
@useResult
$Res call({
 bool bold, String? text, bool italic, bool underline, bool closeText, String? type, List<ChildContent>? children, String? url,@BlackStringConverter() String color,@TransparentStringConverter() String bgColor
});




}
/// @nodoc
class _$ChildContentCopyWithImpl<$Res>
    implements $ChildContentCopyWith<$Res> {
  _$ChildContentCopyWithImpl(this._self, this._then);

  final ChildContent _self;
  final $Res Function(ChildContent) _then;

/// Create a copy of ChildContent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bold = null,Object? text = freezed,Object? italic = null,Object? underline = null,Object? closeText = null,Object? type = freezed,Object? children = freezed,Object? url = freezed,Object? color = null,Object? bgColor = null,}) {
  return _then(_self.copyWith(
bold: null == bold ? _self.bold : bold // ignore: cast_nullable_to_non_nullable
as bool,text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,italic: null == italic ? _self.italic : italic // ignore: cast_nullable_to_non_nullable
as bool,underline: null == underline ? _self.underline : underline // ignore: cast_nullable_to_non_nullable
as bool,closeText: null == closeText ? _self.closeText : closeText // ignore: cast_nullable_to_non_nullable
as bool,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,children: freezed == children ? _self.children : children // ignore: cast_nullable_to_non_nullable
as List<ChildContent>?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String,bgColor: null == bgColor ? _self.bgColor : bgColor // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ChildContent].
extension ChildContentPatterns on ChildContent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChildContent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChildContent() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChildContent value)  $default,){
final _that = this;
switch (_that) {
case _ChildContent():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChildContent value)?  $default,){
final _that = this;
switch (_that) {
case _ChildContent() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool bold,  String? text,  bool italic,  bool underline,  bool closeText,  String? type,  List<ChildContent>? children,  String? url, @BlackStringConverter()  String color, @TransparentStringConverter()  String bgColor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChildContent() when $default != null:
return $default(_that.bold,_that.text,_that.italic,_that.underline,_that.closeText,_that.type,_that.children,_that.url,_that.color,_that.bgColor);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool bold,  String? text,  bool italic,  bool underline,  bool closeText,  String? type,  List<ChildContent>? children,  String? url, @BlackStringConverter()  String color, @TransparentStringConverter()  String bgColor)  $default,) {final _that = this;
switch (_that) {
case _ChildContent():
return $default(_that.bold,_that.text,_that.italic,_that.underline,_that.closeText,_that.type,_that.children,_that.url,_that.color,_that.bgColor);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool bold,  String? text,  bool italic,  bool underline,  bool closeText,  String? type,  List<ChildContent>? children,  String? url, @BlackStringConverter()  String color, @TransparentStringConverter()  String bgColor)?  $default,) {final _that = this;
switch (_that) {
case _ChildContent() when $default != null:
return $default(_that.bold,_that.text,_that.italic,_that.underline,_that.closeText,_that.type,_that.children,_that.url,_that.color,_that.bgColor);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChildContent implements ChildContent {
  const _ChildContent({this.bold = false, this.text, this.italic = false, this.underline = false, this.closeText = false, this.type, final  List<ChildContent>? children = const [], this.url = "", @BlackStringConverter() this.color = "000000", @TransparentStringConverter() this.bgColor = "00FFFFFF"}): _children = children;
  factory _ChildContent.fromJson(Map<String, dynamic> json) => _$ChildContentFromJson(json);

@override@JsonKey() final  bool bold;
@override final  String? text;
@override@JsonKey() final  bool italic;
@override@JsonKey() final  bool underline;
@override@JsonKey() final  bool closeText;
@override final  String? type;
 final  List<ChildContent>? _children;
@override@JsonKey() List<ChildContent>? get children {
  final value = _children;
  if (value == null) return null;
  if (_children is EqualUnmodifiableListView) return _children;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey() final  String? url;
@override@JsonKey()@BlackStringConverter() final  String color;
@override@JsonKey()@TransparentStringConverter() final  String bgColor;

/// Create a copy of ChildContent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChildContentCopyWith<_ChildContent> get copyWith => __$ChildContentCopyWithImpl<_ChildContent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChildContentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChildContent&&(identical(other.bold, bold) || other.bold == bold)&&(identical(other.text, text) || other.text == text)&&(identical(other.italic, italic) || other.italic == italic)&&(identical(other.underline, underline) || other.underline == underline)&&(identical(other.closeText, closeText) || other.closeText == closeText)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other._children, _children)&&(identical(other.url, url) || other.url == url)&&(identical(other.color, color) || other.color == color)&&(identical(other.bgColor, bgColor) || other.bgColor == bgColor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bold,text,italic,underline,closeText,type,const DeepCollectionEquality().hash(_children),url,color,bgColor);

@override
String toString() {
  return 'ChildContent(bold: $bold, text: $text, italic: $italic, underline: $underline, closeText: $closeText, type: $type, children: $children, url: $url, color: $color, bgColor: $bgColor)';
}


}

/// @nodoc
abstract mixin class _$ChildContentCopyWith<$Res> implements $ChildContentCopyWith<$Res> {
  factory _$ChildContentCopyWith(_ChildContent value, $Res Function(_ChildContent) _then) = __$ChildContentCopyWithImpl;
@override @useResult
$Res call({
 bool bold, String? text, bool italic, bool underline, bool closeText, String? type, List<ChildContent>? children, String? url,@BlackStringConverter() String color,@TransparentStringConverter() String bgColor
});




}
/// @nodoc
class __$ChildContentCopyWithImpl<$Res>
    implements _$ChildContentCopyWith<$Res> {
  __$ChildContentCopyWithImpl(this._self, this._then);

  final _ChildContent _self;
  final $Res Function(_ChildContent) _then;

/// Create a copy of ChildContent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bold = null,Object? text = freezed,Object? italic = null,Object? underline = null,Object? closeText = null,Object? type = freezed,Object? children = freezed,Object? url = freezed,Object? color = null,Object? bgColor = null,}) {
  return _then(_ChildContent(
bold: null == bold ? _self.bold : bold // ignore: cast_nullable_to_non_nullable
as bool,text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,italic: null == italic ? _self.italic : italic // ignore: cast_nullable_to_non_nullable
as bool,underline: null == underline ? _self.underline : underline // ignore: cast_nullable_to_non_nullable
as bool,closeText: null == closeText ? _self.closeText : closeText // ignore: cast_nullable_to_non_nullable
as bool,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,children: freezed == children ? _self._children : children // ignore: cast_nullable_to_non_nullable
as List<ChildContent>?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String,bgColor: null == bgColor ? _self.bgColor : bgColor // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
