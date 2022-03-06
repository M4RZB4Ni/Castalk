// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CartModel _$CartModelFromJson(Map<String, dynamic> json) {
  return _CartModel.fromJson(json);
}

/// @nodoc
class _$CartModelTearOff {
  const _$CartModelTearOff();

  _CartModel call({required String id, required String podcast}) {
    return _CartModel(
      id: id,
      podcast: podcast,
    );
  }

  CartModel fromJson(Map<String, Object?> json) {
    return CartModel.fromJson(json);
  }
}

/// @nodoc
const $CartModel = _$CartModelTearOff();

/// @nodoc
mixin _$CartModel {
  String get id => throw _privateConstructorUsedError;
  String get podcast => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartModelCopyWith<CartModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartModelCopyWith<$Res> {
  factory $CartModelCopyWith(CartModel value, $Res Function(CartModel) then) =
      _$CartModelCopyWithImpl<$Res>;
  $Res call({String id, String podcast});
}

/// @nodoc
class _$CartModelCopyWithImpl<$Res> implements $CartModelCopyWith<$Res> {
  _$CartModelCopyWithImpl(this._value, this._then);

  final CartModel _value;
  // ignore: unused_field
  final $Res Function(CartModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? podcast = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      podcast: podcast == freezed
          ? _value.podcast
          : podcast // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CartModelCopyWith<$Res> implements $CartModelCopyWith<$Res> {
  factory _$CartModelCopyWith(
          _CartModel value, $Res Function(_CartModel) then) =
      __$CartModelCopyWithImpl<$Res>;
  @override
  $Res call({String id, String podcast});
}

/// @nodoc
class __$CartModelCopyWithImpl<$Res> extends _$CartModelCopyWithImpl<$Res>
    implements _$CartModelCopyWith<$Res> {
  __$CartModelCopyWithImpl(_CartModel _value, $Res Function(_CartModel) _then)
      : super(_value, (v) => _then(v as _CartModel));

  @override
  _CartModel get _value => super._value as _CartModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? podcast = freezed,
  }) {
    return _then(_CartModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      podcast: podcast == freezed
          ? _value.podcast
          : podcast // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CartModel extends _CartModel with DiagnosticableTreeMixin {
  _$_CartModel({required this.id, required this.podcast}) : super._();

  factory _$_CartModel.fromJson(Map<String, dynamic> json) =>
      _$$_CartModelFromJson(json);

  @override
  final String id;
  @override
  final String podcast;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CartModel(id: $id, podcast: $podcast)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CartModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('podcast', podcast));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CartModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.podcast, podcast));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(podcast));

  @JsonKey(ignore: true)
  @override
  _$CartModelCopyWith<_CartModel> get copyWith =>
      __$CartModelCopyWithImpl<_CartModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartModelToJson(this);
  }
}

abstract class _CartModel extends CartModel {
  factory _CartModel({required String id, required String podcast}) =
      _$_CartModel;
  _CartModel._() : super._();

  factory _CartModel.fromJson(Map<String, dynamic> json) =
      _$_CartModel.fromJson;

  @override
  String get id;
  @override
  String get podcast;
  @override
  @JsonKey(ignore: true)
  _$CartModelCopyWith<_CartModel> get copyWith =>
      throw _privateConstructorUsedError;
}
