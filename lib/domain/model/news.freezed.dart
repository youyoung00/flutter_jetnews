// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'news.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

News _$NewsFromJson(Map<String, dynamic> json) {
  return _News.fromJson(json);
}

/// @nodoc
class _$NewsTearOff {
  const _$NewsTearOff();

  _News call(
      {required String id,
      required int imageId,
      required int imageThumbId,
      required Iterable<dynamic> metadata,
      required Iterable<dynamic> publication,
      required List<Map<String, dynamic>> paragraphs,
      required String subtitle,
      required String title,
      required String url}) {
    return _News(
      id: id,
      imageId: imageId,
      imageThumbId: imageThumbId,
      metadata: metadata,
      publication: publication,
      paragraphs: paragraphs,
      subtitle: subtitle,
      title: title,
      url: url,
    );
  }

  News fromJson(Map<String, Object?> json) {
    return News.fromJson(json);
  }
}

/// @nodoc
const $News = _$NewsTearOff();

/// @nodoc
mixin _$News {
  String get id => throw _privateConstructorUsedError;
  int get imageId => throw _privateConstructorUsedError;
  int get imageThumbId => throw _privateConstructorUsedError;
  Iterable<dynamic> get metadata => throw _privateConstructorUsedError;
  Iterable<dynamic> get publication => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get paragraphs =>
      throw _privateConstructorUsedError;
  String get subtitle => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsCopyWith<News> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsCopyWith<$Res> {
  factory $NewsCopyWith(News value, $Res Function(News) then) =
      _$NewsCopyWithImpl<$Res>;
  $Res call(
      {String id,
      int imageId,
      int imageThumbId,
      Iterable<dynamic> metadata,
      Iterable<dynamic> publication,
      List<Map<String, dynamic>> paragraphs,
      String subtitle,
      String title,
      String url});
}

/// @nodoc
class _$NewsCopyWithImpl<$Res> implements $NewsCopyWith<$Res> {
  _$NewsCopyWithImpl(this._value, this._then);

  final News _value;
  // ignore: unused_field
  final $Res Function(News) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? imageId = freezed,
    Object? imageThumbId = freezed,
    Object? metadata = freezed,
    Object? publication = freezed,
    Object? paragraphs = freezed,
    Object? subtitle = freezed,
    Object? title = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      imageId: imageId == freezed
          ? _value.imageId
          : imageId // ignore: cast_nullable_to_non_nullable
              as int,
      imageThumbId: imageThumbId == freezed
          ? _value.imageThumbId
          : imageThumbId // ignore: cast_nullable_to_non_nullable
              as int,
      metadata: metadata == freezed
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Iterable<dynamic>,
      publication: publication == freezed
          ? _value.publication
          : publication // ignore: cast_nullable_to_non_nullable
              as Iterable<dynamic>,
      paragraphs: paragraphs == freezed
          ? _value.paragraphs
          : paragraphs // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      subtitle: subtitle == freezed
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$NewsCopyWith<$Res> implements $NewsCopyWith<$Res> {
  factory _$NewsCopyWith(_News value, $Res Function(_News) then) =
      __$NewsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      int imageId,
      int imageThumbId,
      Iterable<dynamic> metadata,
      Iterable<dynamic> publication,
      List<Map<String, dynamic>> paragraphs,
      String subtitle,
      String title,
      String url});
}

/// @nodoc
class __$NewsCopyWithImpl<$Res> extends _$NewsCopyWithImpl<$Res>
    implements _$NewsCopyWith<$Res> {
  __$NewsCopyWithImpl(_News _value, $Res Function(_News) _then)
      : super(_value, (v) => _then(v as _News));

  @override
  _News get _value => super._value as _News;

  @override
  $Res call({
    Object? id = freezed,
    Object? imageId = freezed,
    Object? imageThumbId = freezed,
    Object? metadata = freezed,
    Object? publication = freezed,
    Object? paragraphs = freezed,
    Object? subtitle = freezed,
    Object? title = freezed,
    Object? url = freezed,
  }) {
    return _then(_News(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      imageId: imageId == freezed
          ? _value.imageId
          : imageId // ignore: cast_nullable_to_non_nullable
              as int,
      imageThumbId: imageThumbId == freezed
          ? _value.imageThumbId
          : imageThumbId // ignore: cast_nullable_to_non_nullable
              as int,
      metadata: metadata == freezed
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Iterable<dynamic>,
      publication: publication == freezed
          ? _value.publication
          : publication // ignore: cast_nullable_to_non_nullable
              as Iterable<dynamic>,
      paragraphs: paragraphs == freezed
          ? _value.paragraphs
          : paragraphs // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      subtitle: subtitle == freezed
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_News implements _News {
  _$_News(
      {required this.id,
      required this.imageId,
      required this.imageThumbId,
      required this.metadata,
      required this.publication,
      required this.paragraphs,
      required this.subtitle,
      required this.title,
      required this.url});

  factory _$_News.fromJson(Map<String, dynamic> json) => _$$_NewsFromJson(json);

  @override
  final String id;
  @override
  final int imageId;
  @override
  final int imageThumbId;
  @override
  final Iterable<dynamic> metadata;
  @override
  final Iterable<dynamic> publication;
  @override
  final List<Map<String, dynamic>> paragraphs;
  @override
  final String subtitle;
  @override
  final String title;
  @override
  final String url;

  @override
  String toString() {
    return 'News(id: $id, imageId: $imageId, imageThumbId: $imageThumbId, metadata: $metadata, publication: $publication, paragraphs: $paragraphs, subtitle: $subtitle, title: $title, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _News &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.imageId, imageId) &&
            const DeepCollectionEquality()
                .equals(other.imageThumbId, imageThumbId) &&
            const DeepCollectionEquality().equals(other.metadata, metadata) &&
            const DeepCollectionEquality()
                .equals(other.publication, publication) &&
            const DeepCollectionEquality()
                .equals(other.paragraphs, paragraphs) &&
            const DeepCollectionEquality().equals(other.subtitle, subtitle) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(imageId),
      const DeepCollectionEquality().hash(imageThumbId),
      const DeepCollectionEquality().hash(metadata),
      const DeepCollectionEquality().hash(publication),
      const DeepCollectionEquality().hash(paragraphs),
      const DeepCollectionEquality().hash(subtitle),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$NewsCopyWith<_News> get copyWith =>
      __$NewsCopyWithImpl<_News>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewsToJson(this);
  }
}

abstract class _News implements News {
  factory _News(
      {required String id,
      required int imageId,
      required int imageThumbId,
      required Iterable<dynamic> metadata,
      required Iterable<dynamic> publication,
      required List<Map<String, dynamic>> paragraphs,
      required String subtitle,
      required String title,
      required String url}) = _$_News;

  factory _News.fromJson(Map<String, dynamic> json) = _$_News.fromJson;

  @override
  String get id;
  @override
  int get imageId;
  @override
  int get imageThumbId;
  @override
  Iterable<dynamic> get metadata;
  @override
  Iterable<dynamic> get publication;
  @override
  List<Map<String, dynamic>> get paragraphs;
  @override
  String get subtitle;
  @override
  String get title;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$NewsCopyWith<_News> get copyWith => throw _privateConstructorUsedError;
}
