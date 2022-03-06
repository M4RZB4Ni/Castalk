// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_comment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateCommentModel _$CreateCommentModelFromJson(Map<String, dynamic> json) {
  return _CreateCommentModel.fromJson(json);
}

/// @nodoc
class _$CreateCommentModelTearOff {
  const _$CreateCommentModelTearOff();

  _CreateCommentModel call({required int price}) {
    return _CreateCommentModel(
      price: price,
    );
  }

  CreateCommentModel fromJson(Map<String, Object?> json) {
    return CreateCommentModel.fromJson(json);
  }
}

/// @nodoc
const $CreateCommentModel = _$CreateCommentModelTearOff();

/// @nodoc
mixin _$CreateCommentModel {
  int get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateCommentModelCopyWith<CreateCommentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateCommentModelCopyWith<$Res> {
  factory $CreateCommentModelCopyWith(
          CreateCommentModel value, $Res Function(CreateCommentModel) then) =
      _$CreateCommentModelCopyWithImpl<$Res>;
  $Res call({int price});
}

/// @nodoc
class _$CreateCommentModelCopyWithImpl<$Res>
    implements $CreateCommentModelCopyWith<$Res> {
  _$CreateCommentModelCopyWithImpl(this._value, this._then);

  final CreateCommentModel _value;
  // ignore: unused_field
  final $Res Function(CreateCommentModel) _then;

  @override
  $Res call({
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$CreateCommentModelCopyWith<$Res>
    implements $CreateCommentModelCopyWith<$Res> {
  factory _$CreateCommentModelCopyWith(
          _CreateCommentModel value, $Res Function(_CreateCommentModel) then) =
      __$CreateCommentModelCopyWithImpl<$Res>;
  @override
  $Res call({int price});
}

/// @nodoc
class __$CreateCommentModelCopyWithImpl<$Res>
    extends _$CreateCommentModelCopyWithImpl<$Res>
    implements _$CreateCommentModelCopyWith<$Res> {
  __$CreateCommentModelCopyWithImpl(
      _CreateCommentModel _value, $Res Function(_CreateCommentModel) _then)
      : super(_value, (v) => _then(v as _CreateCommentModel));

  @override
  _CreateCommentModel get _value => super._value as _CreateCommentModel;

  @override
  $Res call({
    Object? price = freezed,
  }) {
    return _then(_CreateCommentModel(
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateCommentModel extends _CreateCommentModel
    with DiagnosticableTreeMixin {
  _$_CreateCommentModel({required this.price}) : super._();

  factory _$_CreateCommentModel.fromJson(Map<String, dynamic> json) =>
      _$$_CreateCommentModelFromJson(json);

  @override
  final int price;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreateCommentModel(price: $price)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreateCommentModel'))
      ..add(DiagnosticsProperty('price', price));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateCommentModel &&
            const DeepCollectionEquality().equals(other.price, price));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(price));

  @JsonKey(ignore: true)
  @override
  _$CreateCommentModelCopyWith<_CreateCommentModel> get copyWith =>
      __$CreateCommentModelCopyWithImpl<_CreateCommentModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateCommentModelToJson(this);
  }
}

abstract class _CreateCommentModel extends CreateCommentModel {
  factory _CreateCommentModel({required int price}) = _$_CreateCommentModel;
  _CreateCommentModel._() : super._();

  factory _CreateCommentModel.fromJson(Map<String, dynamic> json) =
      _$_CreateCommentModel.fromJson;

  @override
  int get price;
  @override
  @JsonKey(ignore: true)
  _$CreateCommentModelCopyWith<_CreateCommentModel> get copyWith =>
      throw _privateConstructorUsedError;
}
