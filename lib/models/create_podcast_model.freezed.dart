// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_podcast_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreatePodcastModel _$CreatePodcastModelFromJson(Map<String, dynamic> json) {
  return _CreatePodcastModel.fromJson(json);
}

/// @nodoc
class _$CreatePodcastModelTearOff {
  const _$CreatePodcastModelTearOff();

  _CreatePodcastModel call(
      {required String title,
      required String description,
      required String category,
      required String imageID}) {
    return _CreatePodcastModel(
      title: title,
      description: description,
      category: category,
      imageID: imageID,
    );
  }

  CreatePodcastModel fromJson(Map<String, Object?> json) {
    return CreatePodcastModel.fromJson(json);
  }
}

/// @nodoc
const $CreatePodcastModel = _$CreatePodcastModelTearOff();

/// @nodoc
mixin _$CreatePodcastModel {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get imageID => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreatePodcastModelCopyWith<CreatePodcastModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePodcastModelCopyWith<$Res> {
  factory $CreatePodcastModelCopyWith(
          CreatePodcastModel value, $Res Function(CreatePodcastModel) then) =
      _$CreatePodcastModelCopyWithImpl<$Res>;
  $Res call(
      {String title, String description, String category, String imageID});
}

/// @nodoc
class _$CreatePodcastModelCopyWithImpl<$Res>
    implements $CreatePodcastModelCopyWith<$Res> {
  _$CreatePodcastModelCopyWithImpl(this._value, this._then);

  final CreatePodcastModel _value;
  // ignore: unused_field
  final $Res Function(CreatePodcastModel) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? category = freezed,
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
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      imageID: imageID == freezed
          ? _value.imageID
          : imageID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CreatePodcastModelCopyWith<$Res>
    implements $CreatePodcastModelCopyWith<$Res> {
  factory _$CreatePodcastModelCopyWith(
          _CreatePodcastModel value, $Res Function(_CreatePodcastModel) then) =
      __$CreatePodcastModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title, String description, String category, String imageID});
}

/// @nodoc
class __$CreatePodcastModelCopyWithImpl<$Res>
    extends _$CreatePodcastModelCopyWithImpl<$Res>
    implements _$CreatePodcastModelCopyWith<$Res> {
  __$CreatePodcastModelCopyWithImpl(
      _CreatePodcastModel _value, $Res Function(_CreatePodcastModel) _then)
      : super(_value, (v) => _then(v as _CreatePodcastModel));

  @override
  _CreatePodcastModel get _value => super._value as _CreatePodcastModel;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? category = freezed,
    Object? imageID = freezed,
  }) {
    return _then(_CreatePodcastModel(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
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
class _$_CreatePodcastModel extends _CreatePodcastModel
    with DiagnosticableTreeMixin {
  _$_CreatePodcastModel(
      {required this.title,
      required this.description,
      required this.category,
      required this.imageID})
      : super._();

  factory _$_CreatePodcastModel.fromJson(Map<String, dynamic> json) =>
      _$$_CreatePodcastModelFromJson(json);

  @override
  final String title;
  @override
  final String description;
  @override
  final String category;
  @override
  final String imageID;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreatePodcastModel(title: $title, description: $description, category: $category, imageID: $imageID)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreatePodcastModel'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('category', category))
      ..add(DiagnosticsProperty('imageID', imageID));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreatePodcastModel &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other.imageID, imageID));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(imageID));

  @JsonKey(ignore: true)
  @override
  _$CreatePodcastModelCopyWith<_CreatePodcastModel> get copyWith =>
      __$CreatePodcastModelCopyWithImpl<_CreatePodcastModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreatePodcastModelToJson(this);
  }
}

abstract class _CreatePodcastModel extends CreatePodcastModel {
  factory _CreatePodcastModel(
      {required String title,
      required String description,
      required String category,
      required String imageID}) = _$_CreatePodcastModel;
  _CreatePodcastModel._() : super._();

  factory _CreatePodcastModel.fromJson(Map<String, dynamic> json) =
      _$_CreatePodcastModel.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  String get category;
  @override
  String get imageID;
  @override
  @JsonKey(ignore: true)
  _$CreatePodcastModelCopyWith<_CreatePodcastModel> get copyWith =>
      throw _privateConstructorUsedError;
}
