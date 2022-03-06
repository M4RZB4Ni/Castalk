// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'withdraw_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WithdrawModel _$WithdrawModelFromJson(Map<String, dynamic> json) {
  return _WithdrawModel.fromJson(json);
}

/// @nodoc
class _$WithdrawModelTearOff {
  const _$WithdrawModelTearOff();

  _WithdrawModel call({required int price}) {
    return _WithdrawModel(
      price: price,
    );
  }

  WithdrawModel fromJson(Map<String, Object?> json) {
    return WithdrawModel.fromJson(json);
  }
}

/// @nodoc
const $WithdrawModel = _$WithdrawModelTearOff();

/// @nodoc
mixin _$WithdrawModel {
  int get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WithdrawModelCopyWith<WithdrawModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WithdrawModelCopyWith<$Res> {
  factory $WithdrawModelCopyWith(
          WithdrawModel value, $Res Function(WithdrawModel) then) =
      _$WithdrawModelCopyWithImpl<$Res>;
  $Res call({int price});
}

/// @nodoc
class _$WithdrawModelCopyWithImpl<$Res>
    implements $WithdrawModelCopyWith<$Res> {
  _$WithdrawModelCopyWithImpl(this._value, this._then);

  final WithdrawModel _value;
  // ignore: unused_field
  final $Res Function(WithdrawModel) _then;

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
abstract class _$WithdrawModelCopyWith<$Res>
    implements $WithdrawModelCopyWith<$Res> {
  factory _$WithdrawModelCopyWith(
          _WithdrawModel value, $Res Function(_WithdrawModel) then) =
      __$WithdrawModelCopyWithImpl<$Res>;
  @override
  $Res call({int price});
}

/// @nodoc
class __$WithdrawModelCopyWithImpl<$Res>
    extends _$WithdrawModelCopyWithImpl<$Res>
    implements _$WithdrawModelCopyWith<$Res> {
  __$WithdrawModelCopyWithImpl(
      _WithdrawModel _value, $Res Function(_WithdrawModel) _then)
      : super(_value, (v) => _then(v as _WithdrawModel));

  @override
  _WithdrawModel get _value => super._value as _WithdrawModel;

  @override
  $Res call({
    Object? price = freezed,
  }) {
    return _then(_WithdrawModel(
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WithdrawModel extends _WithdrawModel with DiagnosticableTreeMixin {
  _$_WithdrawModel({required this.price}) : super._();

  factory _$_WithdrawModel.fromJson(Map<String, dynamic> json) =>
      _$$_WithdrawModelFromJson(json);

  @override
  final int price;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WithdrawModel(price: $price)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WithdrawModel'))
      ..add(DiagnosticsProperty('price', price));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WithdrawModel &&
            const DeepCollectionEquality().equals(other.price, price));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(price));

  @JsonKey(ignore: true)
  @override
  _$WithdrawModelCopyWith<_WithdrawModel> get copyWith =>
      __$WithdrawModelCopyWithImpl<_WithdrawModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WithdrawModelToJson(this);
  }
}

abstract class _WithdrawModel extends WithdrawModel {
  factory _WithdrawModel({required int price}) = _$_WithdrawModel;
  _WithdrawModel._() : super._();

  factory _WithdrawModel.fromJson(Map<String, dynamic> json) =
      _$_WithdrawModel.fromJson;

  @override
  int get price;
  @override
  @JsonKey(ignore: true)
  _$WithdrawModelCopyWith<_WithdrawModel> get copyWith =>
      throw _privateConstructorUsedError;
}
