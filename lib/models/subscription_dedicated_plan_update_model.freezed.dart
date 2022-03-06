// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'subscription_dedicated_plan_update_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SubscriptionDedicatedPlanUpdateModel
    _$SubscriptionDedicatedPlanUpdateModelFromJson(Map<String, dynamic> json) {
  return _SubscriptionDedicatedPlanUpdateModel.fromJson(json);
}

/// @nodoc
class _$SubscriptionDedicatedPlanUpdateModelTearOff {
  const _$SubscriptionDedicatedPlanUpdateModelTearOff();

  _SubscriptionDedicatedPlanUpdateModel call(
      {required String title, required String price, required String id}) {
    return _SubscriptionDedicatedPlanUpdateModel(
      title: title,
      price: price,
      id: id,
    );
  }

  SubscriptionDedicatedPlanUpdateModel fromJson(Map<String, Object?> json) {
    return SubscriptionDedicatedPlanUpdateModel.fromJson(json);
  }
}

/// @nodoc
const $SubscriptionDedicatedPlanUpdateModel =
    _$SubscriptionDedicatedPlanUpdateModelTearOff();

/// @nodoc
mixin _$SubscriptionDedicatedPlanUpdateModel {
  String get title => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubscriptionDedicatedPlanUpdateModelCopyWith<
          SubscriptionDedicatedPlanUpdateModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionDedicatedPlanUpdateModelCopyWith<$Res> {
  factory $SubscriptionDedicatedPlanUpdateModelCopyWith(
          SubscriptionDedicatedPlanUpdateModel value,
          $Res Function(SubscriptionDedicatedPlanUpdateModel) then) =
      _$SubscriptionDedicatedPlanUpdateModelCopyWithImpl<$Res>;
  $Res call({String title, String price, String id});
}

/// @nodoc
class _$SubscriptionDedicatedPlanUpdateModelCopyWithImpl<$Res>
    implements $SubscriptionDedicatedPlanUpdateModelCopyWith<$Res> {
  _$SubscriptionDedicatedPlanUpdateModelCopyWithImpl(this._value, this._then);

  final SubscriptionDedicatedPlanUpdateModel _value;
  // ignore: unused_field
  final $Res Function(SubscriptionDedicatedPlanUpdateModel) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? price = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SubscriptionDedicatedPlanUpdateModelCopyWith<$Res>
    implements $SubscriptionDedicatedPlanUpdateModelCopyWith<$Res> {
  factory _$SubscriptionDedicatedPlanUpdateModelCopyWith(
          _SubscriptionDedicatedPlanUpdateModel value,
          $Res Function(_SubscriptionDedicatedPlanUpdateModel) then) =
      __$SubscriptionDedicatedPlanUpdateModelCopyWithImpl<$Res>;
  @override
  $Res call({String title, String price, String id});
}

/// @nodoc
class __$SubscriptionDedicatedPlanUpdateModelCopyWithImpl<$Res>
    extends _$SubscriptionDedicatedPlanUpdateModelCopyWithImpl<$Res>
    implements _$SubscriptionDedicatedPlanUpdateModelCopyWith<$Res> {
  __$SubscriptionDedicatedPlanUpdateModelCopyWithImpl(
      _SubscriptionDedicatedPlanUpdateModel _value,
      $Res Function(_SubscriptionDedicatedPlanUpdateModel) _then)
      : super(_value, (v) => _then(v as _SubscriptionDedicatedPlanUpdateModel));

  @override
  _SubscriptionDedicatedPlanUpdateModel get _value =>
      super._value as _SubscriptionDedicatedPlanUpdateModel;

  @override
  $Res call({
    Object? title = freezed,
    Object? price = freezed,
    Object? id = freezed,
  }) {
    return _then(_SubscriptionDedicatedPlanUpdateModel(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SubscriptionDedicatedPlanUpdateModel
    extends _SubscriptionDedicatedPlanUpdateModel with DiagnosticableTreeMixin {
  _$_SubscriptionDedicatedPlanUpdateModel(
      {required this.title, required this.price, required this.id})
      : super._();

  factory _$_SubscriptionDedicatedPlanUpdateModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_SubscriptionDedicatedPlanUpdateModelFromJson(json);

  @override
  final String title;
  @override
  final String price;
  @override
  final String id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SubscriptionDedicatedPlanUpdateModel(title: $title, price: $price, id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SubscriptionDedicatedPlanUpdateModel'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SubscriptionDedicatedPlanUpdateModel &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$SubscriptionDedicatedPlanUpdateModelCopyWith<
          _SubscriptionDedicatedPlanUpdateModel>
      get copyWith => __$SubscriptionDedicatedPlanUpdateModelCopyWithImpl<
          _SubscriptionDedicatedPlanUpdateModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SubscriptionDedicatedPlanUpdateModelToJson(this);
  }
}

abstract class _SubscriptionDedicatedPlanUpdateModel
    extends SubscriptionDedicatedPlanUpdateModel {
  factory _SubscriptionDedicatedPlanUpdateModel(
      {required String title,
      required String price,
      required String id}) = _$_SubscriptionDedicatedPlanUpdateModel;
  _SubscriptionDedicatedPlanUpdateModel._() : super._();

  factory _SubscriptionDedicatedPlanUpdateModel.fromJson(
          Map<String, dynamic> json) =
      _$_SubscriptionDedicatedPlanUpdateModel.fromJson;

  @override
  String get title;
  @override
  String get price;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$SubscriptionDedicatedPlanUpdateModelCopyWith<
          _SubscriptionDedicatedPlanUpdateModel>
      get copyWith => throw _privateConstructorUsedError;
}
