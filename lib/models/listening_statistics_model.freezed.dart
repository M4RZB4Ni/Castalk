// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'listening_statistics_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListeningAnalyticsModel _$ListeningAnalyticsModelFromJson(
    Map<String, dynamic> json) {
  return _ListeningAnalyticsModel.fromJson(json);
}

/// @nodoc
class _$ListeningAnalyticsModelTearOff {
  const _$ListeningAnalyticsModelTearOff();

  _ListeningAnalyticsModel call({Data? data}) {
    return _ListeningAnalyticsModel(
      data: data,
    );
  }

  ListeningAnalyticsModel fromJson(Map<String, Object?> json) {
    return ListeningAnalyticsModel.fromJson(json);
  }
}

/// @nodoc
const $ListeningAnalyticsModel = _$ListeningAnalyticsModelTearOff();

/// @nodoc
mixin _$ListeningAnalyticsModel {
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListeningAnalyticsModelCopyWith<ListeningAnalyticsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListeningAnalyticsModelCopyWith<$Res> {
  factory $ListeningAnalyticsModelCopyWith(ListeningAnalyticsModel value,
          $Res Function(ListeningAnalyticsModel) then) =
      _$ListeningAnalyticsModelCopyWithImpl<$Res>;
  $Res call({Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ListeningAnalyticsModelCopyWithImpl<$Res>
    implements $ListeningAnalyticsModelCopyWith<$Res> {
  _$ListeningAnalyticsModelCopyWithImpl(this._value, this._then);

  final ListeningAnalyticsModel _value;
  // ignore: unused_field
  final $Res Function(ListeningAnalyticsModel) _then;

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
abstract class _$ListeningAnalyticsModelCopyWith<$Res>
    implements $ListeningAnalyticsModelCopyWith<$Res> {
  factory _$ListeningAnalyticsModelCopyWith(_ListeningAnalyticsModel value,
          $Res Function(_ListeningAnalyticsModel) then) =
      __$ListeningAnalyticsModelCopyWithImpl<$Res>;
  @override
  $Res call({Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$ListeningAnalyticsModelCopyWithImpl<$Res>
    extends _$ListeningAnalyticsModelCopyWithImpl<$Res>
    implements _$ListeningAnalyticsModelCopyWith<$Res> {
  __$ListeningAnalyticsModelCopyWithImpl(_ListeningAnalyticsModel _value,
      $Res Function(_ListeningAnalyticsModel) _then)
      : super(_value, (v) => _then(v as _ListeningAnalyticsModel));

  @override
  _ListeningAnalyticsModel get _value =>
      super._value as _ListeningAnalyticsModel;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_ListeningAnalyticsModel(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListeningAnalyticsModel extends _ListeningAnalyticsModel
    with DiagnosticableTreeMixin {
  const _$_ListeningAnalyticsModel({this.data}) : super._();

  factory _$_ListeningAnalyticsModel.fromJson(Map<String, dynamic> json) =>
      _$$_ListeningAnalyticsModelFromJson(json);

  @override
  final Data? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ListeningAnalyticsModel(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ListeningAnalyticsModel'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ListeningAnalyticsModel &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$ListeningAnalyticsModelCopyWith<_ListeningAnalyticsModel> get copyWith =>
      __$ListeningAnalyticsModelCopyWithImpl<_ListeningAnalyticsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListeningAnalyticsModelToJson(this);
  }
}

abstract class _ListeningAnalyticsModel extends ListeningAnalyticsModel {
  const factory _ListeningAnalyticsModel({Data? data}) =
      _$_ListeningAnalyticsModel;
  const _ListeningAnalyticsModel._() : super._();

  factory _ListeningAnalyticsModel.fromJson(Map<String, dynamic> json) =
      _$_ListeningAnalyticsModel.fromJson;

  @override
  Data? get data;
  @override
  @JsonKey(ignore: true)
  _$ListeningAnalyticsModelCopyWith<_ListeningAnalyticsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
class _$DataTearOff {
  const _$DataTearOff();

  _Data call(
      {int? total_listening_time,
      List<int>? total_listening_time_by_week,
      int? episodes,
      int? your_listening_routine,
      FieldOfInterest? field_of_interest}) {
    return _Data(
      total_listening_time: total_listening_time,
      total_listening_time_by_week: total_listening_time_by_week,
      episodes: episodes,
      your_listening_routine: your_listening_routine,
      field_of_interest: field_of_interest,
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
  int? get total_listening_time => throw _privateConstructorUsedError;
  List<int>? get total_listening_time_by_week =>
      throw _privateConstructorUsedError;
  int? get episodes => throw _privateConstructorUsedError;
  int? get your_listening_routine => throw _privateConstructorUsedError;
  FieldOfInterest? get field_of_interest => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  $Res call(
      {int? total_listening_time,
      List<int>? total_listening_time_by_week,
      int? episodes,
      int? your_listening_routine,
      FieldOfInterest? field_of_interest});

  $FieldOfInterestCopyWith<$Res>? get field_of_interest;
}

/// @nodoc
class _$DataCopyWithImpl<$Res> implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  final Data _value;
  // ignore: unused_field
  final $Res Function(Data) _then;

  @override
  $Res call({
    Object? total_listening_time = freezed,
    Object? total_listening_time_by_week = freezed,
    Object? episodes = freezed,
    Object? your_listening_routine = freezed,
    Object? field_of_interest = freezed,
  }) {
    return _then(_value.copyWith(
      total_listening_time: total_listening_time == freezed
          ? _value.total_listening_time
          : total_listening_time // ignore: cast_nullable_to_non_nullable
              as int?,
      total_listening_time_by_week: total_listening_time_by_week == freezed
          ? _value.total_listening_time_by_week
          : total_listening_time_by_week // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      episodes: episodes == freezed
          ? _value.episodes
          : episodes // ignore: cast_nullable_to_non_nullable
              as int?,
      your_listening_routine: your_listening_routine == freezed
          ? _value.your_listening_routine
          : your_listening_routine // ignore: cast_nullable_to_non_nullable
              as int?,
      field_of_interest: field_of_interest == freezed
          ? _value.field_of_interest
          : field_of_interest // ignore: cast_nullable_to_non_nullable
              as FieldOfInterest?,
    ));
  }

  @override
  $FieldOfInterestCopyWith<$Res>? get field_of_interest {
    if (_value.field_of_interest == null) {
      return null;
    }

    return $FieldOfInterestCopyWith<$Res>(_value.field_of_interest!, (value) {
      return _then(_value.copyWith(field_of_interest: value));
    });
  }
}

/// @nodoc
abstract class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) then) =
      __$DataCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? total_listening_time,
      List<int>? total_listening_time_by_week,
      int? episodes,
      int? your_listening_routine,
      FieldOfInterest? field_of_interest});

  @override
  $FieldOfInterestCopyWith<$Res>? get field_of_interest;
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
    Object? total_listening_time = freezed,
    Object? total_listening_time_by_week = freezed,
    Object? episodes = freezed,
    Object? your_listening_routine = freezed,
    Object? field_of_interest = freezed,
  }) {
    return _then(_Data(
      total_listening_time: total_listening_time == freezed
          ? _value.total_listening_time
          : total_listening_time // ignore: cast_nullable_to_non_nullable
              as int?,
      total_listening_time_by_week: total_listening_time_by_week == freezed
          ? _value.total_listening_time_by_week
          : total_listening_time_by_week // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      episodes: episodes == freezed
          ? _value.episodes
          : episodes // ignore: cast_nullable_to_non_nullable
              as int?,
      your_listening_routine: your_listening_routine == freezed
          ? _value.your_listening_routine
          : your_listening_routine // ignore: cast_nullable_to_non_nullable
              as int?,
      field_of_interest: field_of_interest == freezed
          ? _value.field_of_interest
          : field_of_interest // ignore: cast_nullable_to_non_nullable
              as FieldOfInterest?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data with DiagnosticableTreeMixin implements _Data {
  const _$_Data(
      {this.total_listening_time,
      this.total_listening_time_by_week,
      this.episodes,
      this.your_listening_routine,
      this.field_of_interest});

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  final int? total_listening_time;
  @override
  final List<int>? total_listening_time_by_week;
  @override
  final int? episodes;
  @override
  final int? your_listening_routine;
  @override
  final FieldOfInterest? field_of_interest;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Data(total_listening_time: $total_listening_time, total_listening_time_by_week: $total_listening_time_by_week, episodes: $episodes, your_listening_routine: $your_listening_routine, field_of_interest: $field_of_interest)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Data'))
      ..add(DiagnosticsProperty('total_listening_time', total_listening_time))
      ..add(DiagnosticsProperty(
          'total_listening_time_by_week', total_listening_time_by_week))
      ..add(DiagnosticsProperty('episodes', episodes))
      ..add(
          DiagnosticsProperty('your_listening_routine', your_listening_routine))
      ..add(DiagnosticsProperty('field_of_interest', field_of_interest));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Data &&
            const DeepCollectionEquality()
                .equals(other.total_listening_time, total_listening_time) &&
            const DeepCollectionEquality().equals(
                other.total_listening_time_by_week,
                total_listening_time_by_week) &&
            const DeepCollectionEquality().equals(other.episodes, episodes) &&
            const DeepCollectionEquality()
                .equals(other.your_listening_routine, your_listening_routine) &&
            const DeepCollectionEquality()
                .equals(other.field_of_interest, field_of_interest));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(total_listening_time),
      const DeepCollectionEquality().hash(total_listening_time_by_week),
      const DeepCollectionEquality().hash(episodes),
      const DeepCollectionEquality().hash(your_listening_routine),
      const DeepCollectionEquality().hash(field_of_interest));

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
      {int? total_listening_time,
      List<int>? total_listening_time_by_week,
      int? episodes,
      int? your_listening_routine,
      FieldOfInterest? field_of_interest}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  int? get total_listening_time;
  @override
  List<int>? get total_listening_time_by_week;
  @override
  int? get episodes;
  @override
  int? get your_listening_routine;
  @override
  FieldOfInterest? get field_of_interest;
  @override
  @JsonKey(ignore: true)
  _$DataCopyWith<_Data> get copyWith => throw _privateConstructorUsedError;
}

FieldOfInterest _$FieldOfInterestFromJson(Map<String, dynamic> json) {
  return _FieldOfInterest.fromJson(json);
}

/// @nodoc
class _$FieldOfInterestTearOff {
  const _$FieldOfInterestTearOff();

  _FieldOfInterest call({int? comedy, int? psychology, int? sport}) {
    return _FieldOfInterest(
      comedy: comedy,
      psychology: psychology,
      sport: sport,
    );
  }

  FieldOfInterest fromJson(Map<String, Object?> json) {
    return FieldOfInterest.fromJson(json);
  }
}

/// @nodoc
const $FieldOfInterest = _$FieldOfInterestTearOff();

/// @nodoc
mixin _$FieldOfInterest {
  int? get comedy => throw _privateConstructorUsedError;
  int? get psychology => throw _privateConstructorUsedError;
  int? get sport => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FieldOfInterestCopyWith<FieldOfInterest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FieldOfInterestCopyWith<$Res> {
  factory $FieldOfInterestCopyWith(
          FieldOfInterest value, $Res Function(FieldOfInterest) then) =
      _$FieldOfInterestCopyWithImpl<$Res>;
  $Res call({int? comedy, int? psychology, int? sport});
}

/// @nodoc
class _$FieldOfInterestCopyWithImpl<$Res>
    implements $FieldOfInterestCopyWith<$Res> {
  _$FieldOfInterestCopyWithImpl(this._value, this._then);

  final FieldOfInterest _value;
  // ignore: unused_field
  final $Res Function(FieldOfInterest) _then;

  @override
  $Res call({
    Object? comedy = freezed,
    Object? psychology = freezed,
    Object? sport = freezed,
  }) {
    return _then(_value.copyWith(
      comedy: comedy == freezed
          ? _value.comedy
          : comedy // ignore: cast_nullable_to_non_nullable
              as int?,
      psychology: psychology == freezed
          ? _value.psychology
          : psychology // ignore: cast_nullable_to_non_nullable
              as int?,
      sport: sport == freezed
          ? _value.sport
          : sport // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$FieldOfInterestCopyWith<$Res>
    implements $FieldOfInterestCopyWith<$Res> {
  factory _$FieldOfInterestCopyWith(
          _FieldOfInterest value, $Res Function(_FieldOfInterest) then) =
      __$FieldOfInterestCopyWithImpl<$Res>;
  @override
  $Res call({int? comedy, int? psychology, int? sport});
}

/// @nodoc
class __$FieldOfInterestCopyWithImpl<$Res>
    extends _$FieldOfInterestCopyWithImpl<$Res>
    implements _$FieldOfInterestCopyWith<$Res> {
  __$FieldOfInterestCopyWithImpl(
      _FieldOfInterest _value, $Res Function(_FieldOfInterest) _then)
      : super(_value, (v) => _then(v as _FieldOfInterest));

  @override
  _FieldOfInterest get _value => super._value as _FieldOfInterest;

  @override
  $Res call({
    Object? comedy = freezed,
    Object? psychology = freezed,
    Object? sport = freezed,
  }) {
    return _then(_FieldOfInterest(
      comedy: comedy == freezed
          ? _value.comedy
          : comedy // ignore: cast_nullable_to_non_nullable
              as int?,
      psychology: psychology == freezed
          ? _value.psychology
          : psychology // ignore: cast_nullable_to_non_nullable
              as int?,
      sport: sport == freezed
          ? _value.sport
          : sport // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FieldOfInterest
    with DiagnosticableTreeMixin
    implements _FieldOfInterest {
  const _$_FieldOfInterest({this.comedy, this.psychology, this.sport});

  factory _$_FieldOfInterest.fromJson(Map<String, dynamic> json) =>
      _$$_FieldOfInterestFromJson(json);

  @override
  final int? comedy;
  @override
  final int? psychology;
  @override
  final int? sport;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FieldOfInterest(comedy: $comedy, psychology: $psychology, sport: $sport)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FieldOfInterest'))
      ..add(DiagnosticsProperty('comedy', comedy))
      ..add(DiagnosticsProperty('psychology', psychology))
      ..add(DiagnosticsProperty('sport', sport));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FieldOfInterest &&
            const DeepCollectionEquality().equals(other.comedy, comedy) &&
            const DeepCollectionEquality()
                .equals(other.psychology, psychology) &&
            const DeepCollectionEquality().equals(other.sport, sport));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(comedy),
      const DeepCollectionEquality().hash(psychology),
      const DeepCollectionEquality().hash(sport));

  @JsonKey(ignore: true)
  @override
  _$FieldOfInterestCopyWith<_FieldOfInterest> get copyWith =>
      __$FieldOfInterestCopyWithImpl<_FieldOfInterest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FieldOfInterestToJson(this);
  }
}

abstract class _FieldOfInterest implements FieldOfInterest {
  const factory _FieldOfInterest({int? comedy, int? psychology, int? sport}) =
      _$_FieldOfInterest;

  factory _FieldOfInterest.fromJson(Map<String, dynamic> json) =
      _$_FieldOfInterest.fromJson;

  @override
  int? get comedy;
  @override
  int? get psychology;
  @override
  int? get sport;
  @override
  @JsonKey(ignore: true)
  _$FieldOfInterestCopyWith<_FieldOfInterest> get copyWith =>
      throw _privateConstructorUsedError;
}
