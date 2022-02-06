// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'topics_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TopicsState _$TopicsStateFromJson(Map<String, dynamic> json) {
  return _TopicsState.fromJson(json);
}

/// @nodoc
class _$TopicsStateTearOff {
  const _$TopicsStateTearOff();

  _TopicsState call(List<Topic> topics, bool isLoading) {
    return _TopicsState(
      topics,
      isLoading,
    );
  }

  TopicsState fromJson(Map<String, Object?> json) {
    return TopicsState.fromJson(json);
  }
}

/// @nodoc
const $TopicsState = _$TopicsStateTearOff();

/// @nodoc
mixin _$TopicsState {
  List<Topic> get topics => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopicsStateCopyWith<TopicsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopicsStateCopyWith<$Res> {
  factory $TopicsStateCopyWith(
          TopicsState value, $Res Function(TopicsState) then) =
      _$TopicsStateCopyWithImpl<$Res>;
  $Res call({List<Topic> topics, bool isLoading});
}

/// @nodoc
class _$TopicsStateCopyWithImpl<$Res> implements $TopicsStateCopyWith<$Res> {
  _$TopicsStateCopyWithImpl(this._value, this._then);

  final TopicsState _value;
  // ignore: unused_field
  final $Res Function(TopicsState) _then;

  @override
  $Res call({
    Object? topics = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      topics: topics == freezed
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<Topic>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$TopicsStateCopyWith<$Res>
    implements $TopicsStateCopyWith<$Res> {
  factory _$TopicsStateCopyWith(
          _TopicsState value, $Res Function(_TopicsState) then) =
      __$TopicsStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Topic> topics, bool isLoading});
}

/// @nodoc
class __$TopicsStateCopyWithImpl<$Res> extends _$TopicsStateCopyWithImpl<$Res>
    implements _$TopicsStateCopyWith<$Res> {
  __$TopicsStateCopyWithImpl(
      _TopicsState _value, $Res Function(_TopicsState) _then)
      : super(_value, (v) => _then(v as _TopicsState));

  @override
  _TopicsState get _value => super._value as _TopicsState;

  @override
  $Res call({
    Object? topics = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_TopicsState(
      topics == freezed
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<Topic>,
      isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TopicsState implements _TopicsState {
  _$_TopicsState(this.topics, this.isLoading);

  factory _$_TopicsState.fromJson(Map<String, dynamic> json) =>
      _$$_TopicsStateFromJson(json);

  @override
  final List<Topic> topics;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'TopicsState(topics: $topics, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TopicsState &&
            const DeepCollectionEquality().equals(other.topics, topics) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(topics),
      const DeepCollectionEquality().hash(isLoading));

  @JsonKey(ignore: true)
  @override
  _$TopicsStateCopyWith<_TopicsState> get copyWith =>
      __$TopicsStateCopyWithImpl<_TopicsState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TopicsStateToJson(this);
  }
}

abstract class _TopicsState implements TopicsState {
  factory _TopicsState(List<Topic> topics, bool isLoading) = _$_TopicsState;

  factory _TopicsState.fromJson(Map<String, dynamic> json) =
      _$_TopicsState.fromJson;

  @override
  List<Topic> get topics;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$TopicsStateCopyWith<_TopicsState> get copyWith =>
      throw _privateConstructorUsedError;
}
