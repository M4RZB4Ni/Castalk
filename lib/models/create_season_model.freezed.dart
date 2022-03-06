// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_season_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateSeasonModel _$CreateSeasonModelFromJson(Map<String, dynamic> json) {
  return _CreateSeasonModel.fromJson(json);
}

/// @nodoc
class _$CreateSeasonModelTearOff {
  const _$CreateSeasonModelTearOff();

  _CreateSeasonModel call(
      {required String title,
      required String description,
      required String podcastId,
      required String imageID}) {
    return _CreateSeasonModel(
      title: title,
      description: description,
      podcastId: podcastId,
      imageID: imageID,
    );
  }

  CreateSeasonModel fromJson(Map<String, Object?> json) {
    return CreateSeasonModel.fromJson(json);
  }
}

/// @nodoc
const $CreateSeasonModel = _$CreateSeasonModelTearOff();

/// @nodoc
mixin _$CreateSeasonModel {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get podcastId => throw _privateConstructorUsedError;
  String get imageID => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateSeasonModelCopyWith<CreateSeasonModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateSeasonModelCopyWith<$Res> {
  factory $CreateSeasonModelCopyWith(
          CreateSeasonModel value, $Res Function(CreateSeasonModel) then) =
      _$CreateSeasonModelCopyWithImpl<$Res>;
  $Res call(
      {String title, String description, String podcastId, String imageID});
}

/// @nodoc
class _$CreateSeasonModelCopyWithImpl<$Res>
    implements $CreateSeasonModelCopyWith<$Res> {
  _$CreateSeasonModelCopyWithImpl(this._value, this._then);

  final CreateSeasonModel _value;
  // ignore: unused_field
  final $Res Function(CreateSeasonModel) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? podcastId = freezed,
    Object? imageID = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      podcastId: podcastId == freezed
          ? _value.podcastId
          : podcastId // ignore: cast_nullable_to_non_nullable
              as String,
      imageID: imageID == freezed
          ? _value.imageID
          : imageID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CreateSeasonModelCopyWith<$Res>
    implements $CreateSeasonModelCopyWith<$Res> {
  factory _$CreateSeasonModelCopyWith(
          _CreateSeasonModel value, $Res Function(_CreateSeasonModel) then) =
      __$CreateSeasonModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title, String description, String podcastId, String imageID});
}

/// @nodoc
class __$CreateSeasonModelCopyWithImpl<$Res>
    extends _$CreateSeasonModelCopyWithImpl<$Res>
    implements _$CreateSeasonModelCopyWith<$Res> {
  __$CreateSeasonModelCopyWithImpl(
      _CreateSeasonModel _value, $Res Function(_CreateSeasonModel) _then)
      : super(_value, (v) => _then(v as _CreateSeasonModel));

  @override
  _CreateSeasonModel get _value => super._value as _CreateSeasonModel;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? podcastId = freezed,
    Object? imageID = freezed,
  }) {
    return _then(_CreateSeasonModel(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      podcastId: podcastId == freezed
          ? _value.podcastId
          : podcastId // ignore: cast_nullable_to_non_nullable
              as String,
      imageID: imageID == freezed
          ? _value.imageID
          : imageID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateSeasonModel extends _CreateSeasonModel
    with DiagnosticableTreeMixin {
  _$_CreateSeasonModel(
      {required this.title,
      required this.description,
      required this.podcastId,
      required this.imageID})
      : super._();

  factory _$_CreateSeasonModel.fromJson(Map<String, dynamic> json) =>
      _$$_CreateSeasonModelFromJson(json);

  @override
  final String title;
  @override
  final String description;
  @override
  final String podcastId;
  @override
  final String imageID;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreateSeasonModel(title: $title, description: $description, podcastId: $podcastId, imageID: $imageID)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreateSeasonModel'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('podcastId', podcastId))
      ..add(DiagnosticsProperty('imageID', imageID));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateSeasonModel &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.podcastId, podcastId) &&
            const DeepCollectionEquality().equals(other.imageID, imageID));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(podcastId),
      const DeepCollectionEquality().hash(imageID));

  @JsonKey(ignore: true)
  @override
  _$CreateSeasonModelCopyWith<_CreateSeasonModel> get copyWith =>
      __$CreateSeasonModelCopyWithImpl<_CreateSeasonModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateSeasonModelToJson(this);
  }
}

abstract class _CreateSeasonModel extends CreateSeasonModel {
  factory _CreateSeasonModel(
      {required String title,
      required String description,
      required String podcastId,
      required String imageID}) = _$_CreateSeasonModel;
  _CreateSeasonModel._() : super._();

  factory _CreateSeasonModel.fromJson(Map<String, dynamic> json) =
      _$_CreateSeasonModel.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  String get podcastId;
  @override
  String get imageID;
  @override
  @JsonKey(ignore: true)
  _$CreateSeasonModelCopyWith<_CreateSeasonModel> get copyWith =>
      throw _privateConstructorUsedError;
}
