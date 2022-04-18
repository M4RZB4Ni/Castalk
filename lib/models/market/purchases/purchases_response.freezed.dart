// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'purchases_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PurchasesModel _$PurchasesModelFromJson(Map<String, dynamic> json) {
  return _PurchasesModel.fromJson(json);
}

/// @nodoc
class _$PurchasesModelTearOff {
  const _$PurchasesModelTearOff();

  _PurchasesModel call({Data? data}) {
    return _PurchasesModel(
      data: data,
    );
  }

  PurchasesModel fromJson(Map<String, Object?> json) {
    return PurchasesModel.fromJson(json);
  }
}

/// @nodoc
const $PurchasesModel = _$PurchasesModelTearOff();

/// @nodoc
mixin _$PurchasesModel {
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PurchasesModelCopyWith<PurchasesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchasesModelCopyWith<$Res> {
  factory $PurchasesModelCopyWith(
          PurchasesModel value, $Res Function(PurchasesModel) then) =
      _$PurchasesModelCopyWithImpl<$Res>;
  $Res call({Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$PurchasesModelCopyWithImpl<$Res>
    implements $PurchasesModelCopyWith<$Res> {
  _$PurchasesModelCopyWithImpl(this._value, this._then);

  final PurchasesModel _value;
  // ignore: unused_field
  final $Res Function(PurchasesModel) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }

  @override
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$PurchasesModelCopyWith<$Res>
    implements $PurchasesModelCopyWith<$Res> {
  factory _$PurchasesModelCopyWith(
          _PurchasesModel value, $Res Function(_PurchasesModel) then) =
      __$PurchasesModelCopyWithImpl<$Res>;
  @override
  $Res call({Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$PurchasesModelCopyWithImpl<$Res>
    extends _$PurchasesModelCopyWithImpl<$Res>
    implements _$PurchasesModelCopyWith<$Res> {
  __$PurchasesModelCopyWithImpl(
      _PurchasesModel _value, $Res Function(_PurchasesModel) _then)
      : super(_value, (v) => _then(v as _PurchasesModel));

  @override
  _PurchasesModel get _value => super._value as _PurchasesModel;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_PurchasesModel(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PurchasesModel extends _PurchasesModel with DiagnosticableTreeMixin {
  const _$_PurchasesModel({this.data}) : super._();

  factory _$_PurchasesModel.fromJson(Map<String, dynamic> json) =>
      _$$_PurchasesModelFromJson(json);

  @override
  final Data? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PurchasesModel(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PurchasesModel'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PurchasesModel &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$PurchasesModelCopyWith<_PurchasesModel> get copyWith =>
      __$PurchasesModelCopyWithImpl<_PurchasesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PurchasesModelToJson(this);
  }
}

abstract class _PurchasesModel extends PurchasesModel {
  const factory _PurchasesModel({Data? data}) = _$_PurchasesModel;
  const _PurchasesModel._() : super._();

  factory _PurchasesModel.fromJson(Map<String, dynamic> json) =
      _$_PurchasesModel.fromJson;

  @override
  Data? get data;
  @override
  @JsonKey(ignore: true)
  _$PurchasesModelCopyWith<_PurchasesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
class _$DataTearOff {
  const _$DataTearOff();

  _Data call(
      {List<ActiveSubscriptions>? active_subscriptions,
      List<OtherPurchases>? other_purchases}) {
    return _Data(
      active_subscriptions: active_subscriptions,
      other_purchases: other_purchases,
    );
  }

  Data fromJson(Map<String, Object?> json) {
    return Data.fromJson(json);
  }
}

/// @nodoc
const $Data = _$DataTearOff();

/// @nodoc
mixin _$Data {
  List<ActiveSubscriptions>? get active_subscriptions =>
      throw _privateConstructorUsedError;
  List<OtherPurchases>? get other_purchases =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  $Res call(
      {List<ActiveSubscriptions>? active_subscriptions,
      List<OtherPurchases>? other_purchases});
}

/// @nodoc
class _$DataCopyWithImpl<$Res> implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  final Data _value;
  // ignore: unused_field
  final $Res Function(Data) _then;

  @override
  $Res call({
    Object? active_subscriptions = freezed,
    Object? other_purchases = freezed,
  }) {
    return _then(_value.copyWith(
      active_subscriptions: active_subscriptions == freezed
          ? _value.active_subscriptions
          : active_subscriptions // ignore: cast_nullable_to_non_nullable
              as List<ActiveSubscriptions>?,
      other_purchases: other_purchases == freezed
          ? _value.other_purchases
          : other_purchases // ignore: cast_nullable_to_non_nullable
              as List<OtherPurchases>?,
    ));
  }
}

/// @nodoc
abstract class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) then) =
      __$DataCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<ActiveSubscriptions>? active_subscriptions,
      List<OtherPurchases>? other_purchases});
}

/// @nodoc
class __$DataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res>
    implements _$DataCopyWith<$Res> {
  __$DataCopyWithImpl(_Data _value, $Res Function(_Data) _then)
      : super(_value, (v) => _then(v as _Data));

  @override
  _Data get _value => super._value as _Data;

  @override
  $Res call({
    Object? active_subscriptions = freezed,
    Object? other_purchases = freezed,
  }) {
    return _then(_Data(
      active_subscriptions: active_subscriptions == freezed
          ? _value.active_subscriptions
          : active_subscriptions // ignore: cast_nullable_to_non_nullable
              as List<ActiveSubscriptions>?,
      other_purchases: other_purchases == freezed
          ? _value.other_purchases
          : other_purchases // ignore: cast_nullable_to_non_nullable
              as List<OtherPurchases>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data with DiagnosticableTreeMixin implements _Data {
  const _$_Data({this.active_subscriptions, this.other_purchases});

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  final List<ActiveSubscriptions>? active_subscriptions;
  @override
  final List<OtherPurchases>? other_purchases;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Data(active_subscriptions: $active_subscriptions, other_purchases: $other_purchases)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Data'))
      ..add(DiagnosticsProperty('active_subscriptions', active_subscriptions))
      ..add(DiagnosticsProperty('other_purchases', other_purchases));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Data &&
            const DeepCollectionEquality()
                .equals(other.active_subscriptions, active_subscriptions) &&
            const DeepCollectionEquality()
                .equals(other.other_purchases, other_purchases));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(active_subscriptions),
      const DeepCollectionEquality().hash(other_purchases));

  @JsonKey(ignore: true)
  @override
  _$DataCopyWith<_Data> get copyWith =>
      __$DataCopyWithImpl<_Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataToJson(this);
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {List<ActiveSubscriptions>? active_subscriptions,
      List<OtherPurchases>? other_purchases}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  List<ActiveSubscriptions>? get active_subscriptions;
  @override
  List<OtherPurchases>? get other_purchases;
  @override
  @JsonKey(ignore: true)
  _$DataCopyWith<_Data> get copyWith => throw _privateConstructorUsedError;
}

ActiveSubscriptions _$ActiveSubscriptionsFromJson(Map<String, dynamic> json) {
  return _ActiveSubscriptions.fromJson(json);
}

/// @nodoc
class _$ActiveSubscriptionsTearOff {
  const _$ActiveSubscriptionsTearOff();

  _ActiveSubscriptions call({int? Due, String? Title, String? icon}) {
    return _ActiveSubscriptions(
      Due: Due,
      Title: Title,
      icon: icon,
    );
  }

  ActiveSubscriptions fromJson(Map<String, Object?> json) {
    return ActiveSubscriptions.fromJson(json);
  }
}

/// @nodoc
const $ActiveSubscriptions = _$ActiveSubscriptionsTearOff();

/// @nodoc
mixin _$ActiveSubscriptions {
  int? get Due => throw _privateConstructorUsedError; //final String? class,
  String? get Title => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActiveSubscriptionsCopyWith<ActiveSubscriptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActiveSubscriptionsCopyWith<$Res> {
  factory $ActiveSubscriptionsCopyWith(
          ActiveSubscriptions value, $Res Function(ActiveSubscriptions) then) =
      _$ActiveSubscriptionsCopyWithImpl<$Res>;
  $Res call({int? Due, String? Title, String? icon});
}

/// @nodoc
class _$ActiveSubscriptionsCopyWithImpl<$Res>
    implements $ActiveSubscriptionsCopyWith<$Res> {
  _$ActiveSubscriptionsCopyWithImpl(this._value, this._then);

  final ActiveSubscriptions _value;
  // ignore: unused_field
  final $Res Function(ActiveSubscriptions) _then;

  @override
  $Res call({
    Object? Due = freezed,
    Object? Title = freezed,
    Object? icon = freezed,
  }) {
    return _then(_value.copyWith(
      Due: Due == freezed
          ? _value.Due
          : Due // ignore: cast_nullable_to_non_nullable
              as int?,
      Title: Title == freezed
          ? _value.Title
          : Title // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ActiveSubscriptionsCopyWith<$Res>
    implements $ActiveSubscriptionsCopyWith<$Res> {
  factory _$ActiveSubscriptionsCopyWith(_ActiveSubscriptions value,
          $Res Function(_ActiveSubscriptions) then) =
      __$ActiveSubscriptionsCopyWithImpl<$Res>;
  @override
  $Res call({int? Due, String? Title, String? icon});
}

/// @nodoc
class __$ActiveSubscriptionsCopyWithImpl<$Res>
    extends _$ActiveSubscriptionsCopyWithImpl<$Res>
    implements _$ActiveSubscriptionsCopyWith<$Res> {
  __$ActiveSubscriptionsCopyWithImpl(
      _ActiveSubscriptions _value, $Res Function(_ActiveSubscriptions) _then)
      : super(_value, (v) => _then(v as _ActiveSubscriptions));

  @override
  _ActiveSubscriptions get _value => super._value as _ActiveSubscriptions;

  @override
  $Res call({
    Object? Due = freezed,
    Object? Title = freezed,
    Object? icon = freezed,
  }) {
    return _then(_ActiveSubscriptions(
      Due: Due == freezed
          ? _value.Due
          : Due // ignore: cast_nullable_to_non_nullable
              as int?,
      Title: Title == freezed
          ? _value.Title
          : Title // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ActiveSubscriptions
    with DiagnosticableTreeMixin
    implements _ActiveSubscriptions {
  const _$_ActiveSubscriptions({this.Due, this.Title, this.icon});

  factory _$_ActiveSubscriptions.fromJson(Map<String, dynamic> json) =>
      _$$_ActiveSubscriptionsFromJson(json);

  @override
  final int? Due;
  @override //final String? class,
  final String? Title;
  @override
  final String? icon;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ActiveSubscriptions(Due: $Due, Title: $Title, icon: $icon)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ActiveSubscriptions'))
      ..add(DiagnosticsProperty('Due', Due))
      ..add(DiagnosticsProperty('Title', Title))
      ..add(DiagnosticsProperty('icon', icon));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ActiveSubscriptions &&
            const DeepCollectionEquality().equals(other.Due, Due) &&
            const DeepCollectionEquality().equals(other.Title, Title) &&
            const DeepCollectionEquality().equals(other.icon, icon));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(Due),
      const DeepCollectionEquality().hash(Title),
      const DeepCollectionEquality().hash(icon));

  @JsonKey(ignore: true)
  @override
  _$ActiveSubscriptionsCopyWith<_ActiveSubscriptions> get copyWith =>
      __$ActiveSubscriptionsCopyWithImpl<_ActiveSubscriptions>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ActiveSubscriptionsToJson(this);
  }
}

abstract class _ActiveSubscriptions implements ActiveSubscriptions {
  const factory _ActiveSubscriptions({int? Due, String? Title, String? icon}) =
      _$_ActiveSubscriptions;

  factory _ActiveSubscriptions.fromJson(Map<String, dynamic> json) =
      _$_ActiveSubscriptions.fromJson;

  @override
  int? get Due;
  @override //final String? class,
  String? get Title;
  @override
  String? get icon;
  @override
  @JsonKey(ignore: true)
  _$ActiveSubscriptionsCopyWith<_ActiveSubscriptions> get copyWith =>
      throw _privateConstructorUsedError;
}

OtherPurchases _$OtherPurchasesFromJson(Map<String, dynamic> json) {
  return _OtherPurchases.fromJson(json);
}

/// @nodoc
class _$OtherPurchasesTearOff {
  const _$OtherPurchasesTearOff();

  _OtherPurchases call(
      {int? id, String? title, String? cover, String? created_at}) {
    return _OtherPurchases(
      id: id,
      title: title,
      cover: cover,
      created_at: created_at,
    );
  }

  OtherPurchases fromJson(Map<String, Object?> json) {
    return OtherPurchases.fromJson(json);
  }
}

/// @nodoc
const $OtherPurchases = _$OtherPurchasesTearOff();

/// @nodoc
mixin _$OtherPurchases {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get cover => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OtherPurchasesCopyWith<OtherPurchases> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtherPurchasesCopyWith<$Res> {
  factory $OtherPurchasesCopyWith(
          OtherPurchases value, $Res Function(OtherPurchases) then) =
      _$OtherPurchasesCopyWithImpl<$Res>;
  $Res call({int? id, String? title, String? cover, String? created_at});
}

/// @nodoc
class _$OtherPurchasesCopyWithImpl<$Res>
    implements $OtherPurchasesCopyWith<$Res> {
  _$OtherPurchasesCopyWithImpl(this._value, this._then);

  final OtherPurchases _value;
  // ignore: unused_field
  final $Res Function(OtherPurchases) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? cover = freezed,
    Object? created_at = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      cover: cover == freezed
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$OtherPurchasesCopyWith<$Res>
    implements $OtherPurchasesCopyWith<$Res> {
  factory _$OtherPurchasesCopyWith(
          _OtherPurchases value, $Res Function(_OtherPurchases) then) =
      __$OtherPurchasesCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String? title, String? cover, String? created_at});
}

/// @nodoc
class __$OtherPurchasesCopyWithImpl<$Res>
    extends _$OtherPurchasesCopyWithImpl<$Res>
    implements _$OtherPurchasesCopyWith<$Res> {
  __$OtherPurchasesCopyWithImpl(
      _OtherPurchases _value, $Res Function(_OtherPurchases) _then)
      : super(_value, (v) => _then(v as _OtherPurchases));

  @override
  _OtherPurchases get _value => super._value as _OtherPurchases;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? cover = freezed,
    Object? created_at = freezed,
  }) {
    return _then(_OtherPurchases(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      cover: cover == freezed
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OtherPurchases
    with DiagnosticableTreeMixin
    implements _OtherPurchases {
  const _$_OtherPurchases({this.id, this.title, this.cover, this.created_at});

  factory _$_OtherPurchases.fromJson(Map<String, dynamic> json) =>
      _$$_OtherPurchasesFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? cover;
  @override
  final String? created_at;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OtherPurchases(id: $id, title: $title, cover: $cover, created_at: $created_at)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OtherPurchases'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('cover', cover))
      ..add(DiagnosticsProperty('created_at', created_at));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OtherPurchases &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.cover, cover) &&
            const DeepCollectionEquality()
                .equals(other.created_at, created_at));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(cover),
      const DeepCollectionEquality().hash(created_at));

  @JsonKey(ignore: true)
  @override
  _$OtherPurchasesCopyWith<_OtherPurchases> get copyWith =>
      __$OtherPurchasesCopyWithImpl<_OtherPurchases>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OtherPurchasesToJson(this);
  }
}

abstract class _OtherPurchases implements OtherPurchases {
  const factory _OtherPurchases(
      {int? id,
      String? title,
      String? cover,
      String? created_at}) = _$_OtherPurchases;

  factory _OtherPurchases.fromJson(Map<String, dynamic> json) =
      _$_OtherPurchases.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  String? get cover;
  @override
  String? get created_at;
  @override
  @JsonKey(ignore: true)
  _$OtherPurchasesCopyWith<_OtherPurchases> get copyWith =>
      throw _privateConstructorUsedError;
}
