// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_episode_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateEpisodeModel _$CreateEpisodeModelFromJson(Map<String, dynamic> json) {
  return _CreateEpisodeModel.fromJson(json);
}

/// @nodoc
class _$CreateEpisodeModelTearOff {
  const _$CreateEpisodeModelTearOff();

  _CreateEpisodeModel call(
      {required String name,
      required String description,
      required String season_id,
      required String allow_comments,
      required String allow_share,
      required String updated_at,
      required String created_at,
      required int comments_count,
      required int likes_count,
      required List<dynamic> comments}) {
    return _CreateEpisodeModel(
      name: name,
      description: description,
      season_id: season_id,
      allow_comments: allow_comments,
      allow_share: allow_share,
      updated_at: updated_at,
      created_at: created_at,
      comments_count: comments_count,
      likes_count: likes_count,
      comments: comments,
    );
  }

  CreateEpisodeModel fromJson(Map<String, Object?> json) {
    return CreateEpisodeModel.fromJson(json);
  }
}

/// @nodoc
const $CreateEpisodeModel = _$CreateEpisodeModelTearOff();

/// @nodoc
mixin _$CreateEpisodeModel {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get season_id => throw _privateConstructorUsedError;
  String get allow_comments => throw _privateConstructorUsedError;
  String get allow_share => throw _privateConstructorUsedError;
  String get updated_at => throw _privateConstructorUsedError;
  String get created_at => throw _privateConstructorUsedError;
  int get comments_count => throw _privateConstructorUsedError;
  int get likes_count => throw _privateConstructorUsedError;
  List<dynamic> get comments => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateEpisodeModelCopyWith<CreateEpisodeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateEpisodeModelCopyWith<$Res> {
  factory $CreateEpisodeModelCopyWith(
          CreateEpisodeModel value, $Res Function(CreateEpisodeModel) then) =
      _$CreateEpisodeModelCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String description,
      String season_id,
      String allow_comments,
      String allow_share,
      String updated_at,
      String created_at,
      int comments_count,
      int likes_count,
      List<dynamic> comments});
}

/// @nodoc
class _$CreateEpisodeModelCopyWithImpl<$Res>
    implements $CreateEpisodeModelCopyWith<$Res> {
  _$CreateEpisodeModelCopyWithImpl(this._value, this._then);

  final CreateEpisodeModel _value;
  // ignore: unused_field
  final $Res Function(CreateEpisodeModel) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? season_id = freezed,
    Object? allow_comments = freezed,
    Object? allow_share = freezed,
    Object? updated_at = freezed,
    Object? created_at = freezed,
    Object? comments_count = freezed,
    Object? likes_count = freezed,
    Object? comments = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      season_id: season_id == freezed
          ? _value.season_id
          : season_id // ignore: cast_nullable_to_non_nullable
              as String,
      allow_comments: allow_comments == freezed
          ? _value.allow_comments
          : allow_comments // ignore: cast_nullable_to_non_nullable
              as String,
      allow_share: allow_share == freezed
          ? _value.allow_share
          : allow_share // ignore: cast_nullable_to_non_nullable
              as String,
      updated_at: updated_at == freezed
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
      comments_count: comments_count == freezed
          ? _value.comments_count
          : comments_count // ignore: cast_nullable_to_non_nullable
              as int,
      likes_count: likes_count == freezed
          ? _value.likes_count
          : likes_count // ignore: cast_nullable_to_non_nullable
              as int,
      comments: comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
abstract class _$CreateEpisodeModelCopyWith<$Res>
    implements $CreateEpisodeModelCopyWith<$Res> {
  factory _$CreateEpisodeModelCopyWith(
          _CreateEpisodeModel value, $Res Function(_CreateEpisodeModel) then) =
      __$CreateEpisodeModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String description,
      String season_id,
      String allow_comments,
      String allow_share,
      String updated_at,
      String created_at,
      int comments_count,
      int likes_count,
      List<dynamic> comments});
}

/// @nodoc
class __$CreateEpisodeModelCopyWithImpl<$Res>
    extends _$CreateEpisodeModelCopyWithImpl<$Res>
    implements _$CreateEpisodeModelCopyWith<$Res> {
  __$CreateEpisodeModelCopyWithImpl(
      _CreateEpisodeModel _value, $Res Function(_CreateEpisodeModel) _then)
      : super(_value, (v) => _then(v as _CreateEpisodeModel));

  @override
  _CreateEpisodeModel get _value => super._value as _CreateEpisodeModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? season_id = freezed,
    Object? allow_comments = freezed,
    Object? allow_share = freezed,
    Object? updated_at = freezed,
    Object? created_at = freezed,
    Object? comments_count = freezed,
    Object? likes_count = freezed,
    Object? comments = freezed,
  }) {
    return _then(_CreateEpisodeModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      season_id: season_id == freezed
          ? _value.season_id
          : season_id // ignore: cast_nullable_to_non_nullable
              as String,
      allow_comments: allow_comments == freezed
          ? _value.allow_comments
          : allow_comments // ignore: cast_nullable_to_non_nullable
              as String,
      allow_share: allow_share == freezed
          ? _value.allow_share
          : allow_share // ignore: cast_nullable_to_non_nullable
              as String,
      updated_at: updated_at == freezed
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
      comments_count: comments_count == freezed
          ? _value.comments_count
          : comments_count // ignore: cast_nullable_to_non_nullable
              as int,
      likes_count: likes_count == freezed
          ? _value.likes_count
          : likes_count // ignore: cast_nullable_to_non_nullable
              as int,
      comments: comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateEpisodeModel extends _CreateEpisodeModel
    with DiagnosticableTreeMixin {
  _$_CreateEpisodeModel(
      {required this.name,
      required this.description,
      required this.season_id,
      required this.allow_comments,
      required this.allow_share,
      required this.updated_at,
      required this.created_at,
      required this.comments_count,
      required this.likes_count,
      required this.comments})
      : super._();

  factory _$_CreateEpisodeModel.fromJson(Map<String, dynamic> json) =>
      _$$_CreateEpisodeModelFromJson(json);

  @override
  final String name;
  @override
  final String description;
  @override
  final String season_id;
  @override
  final String allow_comments;
  @override
  final String allow_share;
  @override
  final String updated_at;
  @override
  final String created_at;
  @override
  final int comments_count;
  @override
  final int likes_count;
  @override
  final List<dynamic> comments;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreateEpisodeModel(name: $name, description: $description, season_id: $season_id, allow_comments: $allow_comments, allow_share: $allow_share, updated_at: $updated_at, created_at: $created_at, comments_count: $comments_count, likes_count: $likes_count, comments: $comments)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreateEpisodeModel'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('season_id', season_id))
      ..add(DiagnosticsProperty('allow_comments', allow_comments))
      ..add(DiagnosticsProperty('allow_share', allow_share))
      ..add(DiagnosticsProperty('updated_at', updated_at))
      ..add(DiagnosticsProperty('created_at', created_at))
      ..add(DiagnosticsProperty('comments_count', comments_count))
      ..add(DiagnosticsProperty('likes_count', likes_count))
      ..add(DiagnosticsProperty('comments', comments));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateEpisodeModel &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.season_id, season_id) &&
            const DeepCollectionEquality()
                .equals(other.allow_comments, allow_comments) &&
            const DeepCollectionEquality()
                .equals(other.allow_share, allow_share) &&
            const DeepCollectionEquality()
                .equals(other.updated_at, updated_at) &&
            const DeepCollectionEquality()
                .equals(other.created_at, created_at) &&
            const DeepCollectionEquality()
                .equals(other.comments_count, comments_count) &&
            const DeepCollectionEquality()
                .equals(other.likes_count, likes_count) &&
            const DeepCollectionEquality().equals(other.comments, comments));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(season_id),
      const DeepCollectionEquality().hash(allow_comments),
      const DeepCollectionEquality().hash(allow_share),
      const DeepCollectionEquality().hash(updated_at),
      const DeepCollectionEquality().hash(created_at),
      const DeepCollectionEquality().hash(comments_count),
      const DeepCollectionEquality().hash(likes_count),
      const DeepCollectionEquality().hash(comments));

  @JsonKey(ignore: true)
  @override
  _$CreateEpisodeModelCopyWith<_CreateEpisodeModel> get copyWith =>
      __$CreateEpisodeModelCopyWithImpl<_CreateEpisodeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateEpisodeModelToJson(this);
  }
}

abstract class _CreateEpisodeModel extends CreateEpisodeModel {
  factory _CreateEpisodeModel(
      {required String name,
      required String description,
      required String season_id,
      required String allow_comments,
      required String allow_share,
      required String updated_at,
      required String created_at,
      required int comments_count,
      required int likes_count,
      required List<dynamic> comments}) = _$_CreateEpisodeModel;
  _CreateEpisodeModel._() : super._();

  factory _CreateEpisodeModel.fromJson(Map<String, dynamic> json) =
      _$_CreateEpisodeModel.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  String get season_id;
  @override
  String get allow_comments;
  @override
  String get allow_share;
  @override
  String get updated_at;
  @override
  String get created_at;
  @override
  int get comments_count;
  @override
  int get likes_count;
  @override
  List<dynamic> get comments;
  @override
  @JsonKey(ignore: true)
  _$CreateEpisodeModelCopyWith<_CreateEpisodeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
