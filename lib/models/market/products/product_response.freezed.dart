// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) {
  return _ProductModel.fromJson(json);
}

/// @nodoc
class _$ProductModelTearOff {
  const _$ProductModelTearOff();

  _ProductModel call({Data? data}) {
    return _ProductModel(
      data: data,
    );
  }

  ProductModel fromJson(Map<String, Object?> json) {
    return ProductModel.fromJson(json);
  }
}

/// @nodoc
const $ProductModel = _$ProductModelTearOff();

/// @nodoc
mixin _$ProductModel {
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductModelCopyWith<ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductModelCopyWith<$Res> {
  factory $ProductModelCopyWith(
          ProductModel value, $Res Function(ProductModel) then) =
      _$ProductModelCopyWithImpl<$Res>;
  $Res call({Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ProductModelCopyWithImpl<$Res> implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._value, this._then);

  final ProductModel _value;
  // ignore: unused_field
  final $Res Function(ProductModel) _then;

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
abstract class _$ProductModelCopyWith<$Res>
    implements $ProductModelCopyWith<$Res> {
  factory _$ProductModelCopyWith(
          _ProductModel value, $Res Function(_ProductModel) then) =
      __$ProductModelCopyWithImpl<$Res>;
  @override
  $Res call({Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$ProductModelCopyWithImpl<$Res> extends _$ProductModelCopyWithImpl<$Res>
    implements _$ProductModelCopyWith<$Res> {
  __$ProductModelCopyWithImpl(
      _ProductModel _value, $Res Function(_ProductModel) _then)
      : super(_value, (v) => _then(v as _ProductModel));

  @override
  _ProductModel get _value => super._value as _ProductModel;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_ProductModel(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductModel extends _ProductModel with DiagnosticableTreeMixin {
  const _$_ProductModel({this.data}) : super._();

  factory _$_ProductModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProductModelFromJson(json);

  @override
  final Data? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductModel(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductModel'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductModel &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$ProductModelCopyWith<_ProductModel> get copyWith =>
      __$ProductModelCopyWithImpl<_ProductModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductModelToJson(this);
  }
}

abstract class _ProductModel extends ProductModel {
  const factory _ProductModel({Data? data}) = _$_ProductModel;
  const _ProductModel._() : super._();

  factory _ProductModel.fromJson(Map<String, dynamic> json) =
      _$_ProductModel.fromJson;

  @override
  Data? get data;
  @override
  @JsonKey(ignore: true)
  _$ProductModelCopyWith<_ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
class _$DataTearOff {
  const _$DataTearOff();

  _Data call(
      {List<Podcast>? podcasts,
      List<Episode>? episodes,
      List<Season>? seasons}) {
    return _Data(
      podcasts: podcasts,
      episodes: episodes,
      seasons: seasons,
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
  List<Podcast>? get podcasts => throw _privateConstructorUsedError;
  List<Episode>? get episodes => throw _privateConstructorUsedError;
  List<Season>? get seasons => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  $Res call(
      {List<Podcast>? podcasts,
      List<Episode>? episodes,
      List<Season>? seasons});
}

/// @nodoc
class _$DataCopyWithImpl<$Res> implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  final Data _value;
  // ignore: unused_field
  final $Res Function(Data) _then;

  @override
  $Res call({
    Object? podcasts = freezed,
    Object? episodes = freezed,
    Object? seasons = freezed,
  }) {
    return _then(_value.copyWith(
      podcasts: podcasts == freezed
          ? _value.podcasts
          : podcasts // ignore: cast_nullable_to_non_nullable
              as List<Podcast>?,
      episodes: episodes == freezed
          ? _value.episodes
          : episodes // ignore: cast_nullable_to_non_nullable
              as List<Episode>?,
      seasons: seasons == freezed
          ? _value.seasons
          : seasons // ignore: cast_nullable_to_non_nullable
              as List<Season>?,
    ));
  }
}

/// @nodoc
abstract class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) then) =
      __$DataCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Podcast>? podcasts,
      List<Episode>? episodes,
      List<Season>? seasons});
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
    Object? podcasts = freezed,
    Object? episodes = freezed,
    Object? seasons = freezed,
  }) {
    return _then(_Data(
      podcasts: podcasts == freezed
          ? _value.podcasts
          : podcasts // ignore: cast_nullable_to_non_nullable
              as List<Podcast>?,
      episodes: episodes == freezed
          ? _value.episodes
          : episodes // ignore: cast_nullable_to_non_nullable
              as List<Episode>?,
      seasons: seasons == freezed
          ? _value.seasons
          : seasons // ignore: cast_nullable_to_non_nullable
              as List<Season>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data with DiagnosticableTreeMixin implements _Data {
  const _$_Data({this.podcasts, this.episodes, this.seasons});

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  final List<Podcast>? podcasts;
  @override
  final List<Episode>? episodes;
  @override
  final List<Season>? seasons;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Data(podcasts: $podcasts, episodes: $episodes, seasons: $seasons)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Data'))
      ..add(DiagnosticsProperty('podcasts', podcasts))
      ..add(DiagnosticsProperty('episodes', episodes))
      ..add(DiagnosticsProperty('seasons', seasons));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Data &&
            const DeepCollectionEquality().equals(other.podcasts, podcasts) &&
            const DeepCollectionEquality().equals(other.episodes, episodes) &&
            const DeepCollectionEquality().equals(other.seasons, seasons));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(podcasts),
      const DeepCollectionEquality().hash(episodes),
      const DeepCollectionEquality().hash(seasons));

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
      {List<Podcast>? podcasts,
      List<Episode>? episodes,
      List<Season>? seasons}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  List<Podcast>? get podcasts;
  @override
  List<Episode>? get episodes;
  @override
  List<Season>? get seasons;
  @override
  @JsonKey(ignore: true)
  _$DataCopyWith<_Data> get copyWith => throw _privateConstructorUsedError;
}

Podcast _$PodcastFromJson(Map<String, dynamic> json) {
  return _Podcast.fromJson(json);
}

/// @nodoc
class _$PodcastTearOff {
  const _$PodcastTearOff();

  _Podcast call({int? id, String? title, String? cover, String? created_at}) {
    return _Podcast(
      id: id,
      title: title,
      cover: cover,
      created_at: created_at,
    );
  }

  Podcast fromJson(Map<String, Object?> json) {
    return Podcast.fromJson(json);
  }
}

/// @nodoc
const $Podcast = _$PodcastTearOff();

/// @nodoc
mixin _$Podcast {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get cover => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PodcastCopyWith<Podcast> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PodcastCopyWith<$Res> {
  factory $PodcastCopyWith(Podcast value, $Res Function(Podcast) then) =
      _$PodcastCopyWithImpl<$Res>;
  $Res call({int? id, String? title, String? cover, String? created_at});
}

/// @nodoc
class _$PodcastCopyWithImpl<$Res> implements $PodcastCopyWith<$Res> {
  _$PodcastCopyWithImpl(this._value, this._then);

  final Podcast _value;
  // ignore: unused_field
  final $Res Function(Podcast) _then;

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
abstract class _$PodcastCopyWith<$Res> implements $PodcastCopyWith<$Res> {
  factory _$PodcastCopyWith(_Podcast value, $Res Function(_Podcast) then) =
      __$PodcastCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String? title, String? cover, String? created_at});
}

/// @nodoc
class __$PodcastCopyWithImpl<$Res> extends _$PodcastCopyWithImpl<$Res>
    implements _$PodcastCopyWith<$Res> {
  __$PodcastCopyWithImpl(_Podcast _value, $Res Function(_Podcast) _then)
      : super(_value, (v) => _then(v as _Podcast));

  @override
  _Podcast get _value => super._value as _Podcast;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? cover = freezed,
    Object? created_at = freezed,
  }) {
    return _then(_Podcast(
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
class _$_Podcast with DiagnosticableTreeMixin implements _Podcast {
  const _$_Podcast({this.id, this.title, this.cover, this.created_at});

  factory _$_Podcast.fromJson(Map<String, dynamic> json) =>
      _$$_PodcastFromJson(json);

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
    return 'Podcast(id: $id, title: $title, cover: $cover, created_at: $created_at)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Podcast'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('cover', cover))
      ..add(DiagnosticsProperty('created_at', created_at));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Podcast &&
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
  _$PodcastCopyWith<_Podcast> get copyWith =>
      __$PodcastCopyWithImpl<_Podcast>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PodcastToJson(this);
  }
}

abstract class _Podcast implements Podcast {
  const factory _Podcast(
      {int? id, String? title, String? cover, String? created_at}) = _$_Podcast;

  factory _Podcast.fromJson(Map<String, dynamic> json) = _$_Podcast.fromJson;

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
  _$PodcastCopyWith<_Podcast> get copyWith =>
      throw _privateConstructorUsedError;
}

Episode _$EpisodeFromJson(Map<String, dynamic> json) {
  return _Episode.fromJson(json);
}

/// @nodoc
class _$EpisodeTearOff {
  const _$EpisodeTearOff();

  _Episode call(
      {int? id,
      int? likes,
      bool? is_liked,
      String? name,
      String? cover,
      String? created_at,
      String? created_at_diff,
      String? episode_time}) {
    return _Episode(
      id: id,
      likes: likes,
      is_liked: is_liked,
      name: name,
      cover: cover,
      created_at: created_at,
      created_at_diff: created_at_diff,
      episode_time: episode_time,
    );
  }

  Episode fromJson(Map<String, Object?> json) {
    return Episode.fromJson(json);
  }
}

/// @nodoc
const $Episode = _$EpisodeTearOff();

/// @nodoc
mixin _$Episode {
  int? get id => throw _privateConstructorUsedError;
  int? get likes => throw _privateConstructorUsedError;
  bool? get is_liked => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get cover => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;
  String? get created_at_diff => throw _privateConstructorUsedError;
  String? get episode_time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EpisodeCopyWith<Episode> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodeCopyWith<$Res> {
  factory $EpisodeCopyWith(Episode value, $Res Function(Episode) then) =
      _$EpisodeCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      int? likes,
      bool? is_liked,
      String? name,
      String? cover,
      String? created_at,
      String? created_at_diff,
      String? episode_time});
}

/// @nodoc
class _$EpisodeCopyWithImpl<$Res> implements $EpisodeCopyWith<$Res> {
  _$EpisodeCopyWithImpl(this._value, this._then);

  final Episode _value;
  // ignore: unused_field
  final $Res Function(Episode) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? likes = freezed,
    Object? is_liked = freezed,
    Object? name = freezed,
    Object? cover = freezed,
    Object? created_at = freezed,
    Object? created_at_diff = freezed,
    Object? episode_time = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      likes: likes == freezed
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int?,
      is_liked: is_liked == freezed
          ? _value.is_liked
          : is_liked // ignore: cast_nullable_to_non_nullable
              as bool?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      cover: cover == freezed
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at_diff: created_at_diff == freezed
          ? _value.created_at_diff
          : created_at_diff // ignore: cast_nullable_to_non_nullable
              as String?,
      episode_time: episode_time == freezed
          ? _value.episode_time
          : episode_time // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$EpisodeCopyWith<$Res> implements $EpisodeCopyWith<$Res> {
  factory _$EpisodeCopyWith(_Episode value, $Res Function(_Episode) then) =
      __$EpisodeCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      int? likes,
      bool? is_liked,
      String? name,
      String? cover,
      String? created_at,
      String? created_at_diff,
      String? episode_time});
}

/// @nodoc
class __$EpisodeCopyWithImpl<$Res> extends _$EpisodeCopyWithImpl<$Res>
    implements _$EpisodeCopyWith<$Res> {
  __$EpisodeCopyWithImpl(_Episode _value, $Res Function(_Episode) _then)
      : super(_value, (v) => _then(v as _Episode));

  @override
  _Episode get _value => super._value as _Episode;

  @override
  $Res call({
    Object? id = freezed,
    Object? likes = freezed,
    Object? is_liked = freezed,
    Object? name = freezed,
    Object? cover = freezed,
    Object? created_at = freezed,
    Object? created_at_diff = freezed,
    Object? episode_time = freezed,
  }) {
    return _then(_Episode(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      likes: likes == freezed
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int?,
      is_liked: is_liked == freezed
          ? _value.is_liked
          : is_liked // ignore: cast_nullable_to_non_nullable
              as bool?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      cover: cover == freezed
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at_diff: created_at_diff == freezed
          ? _value.created_at_diff
          : created_at_diff // ignore: cast_nullable_to_non_nullable
              as String?,
      episode_time: episode_time == freezed
          ? _value.episode_time
          : episode_time // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Episode with DiagnosticableTreeMixin implements _Episode {
  const _$_Episode(
      {this.id,
      this.likes,
      this.is_liked,
      this.name,
      this.cover,
      this.created_at,
      this.created_at_diff,
      this.episode_time});

  factory _$_Episode.fromJson(Map<String, dynamic> json) =>
      _$$_EpisodeFromJson(json);

  @override
  final int? id;
  @override
  final int? likes;
  @override
  final bool? is_liked;
  @override
  final String? name;
  @override
  final String? cover;
  @override
  final String? created_at;
  @override
  final String? created_at_diff;
  @override
  final String? episode_time;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Episode(id: $id, likes: $likes, is_liked: $is_liked, name: $name, cover: $cover, created_at: $created_at, created_at_diff: $created_at_diff, episode_time: $episode_time)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Episode'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('likes', likes))
      ..add(DiagnosticsProperty('is_liked', is_liked))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('cover', cover))
      ..add(DiagnosticsProperty('created_at', created_at))
      ..add(DiagnosticsProperty('created_at_diff', created_at_diff))
      ..add(DiagnosticsProperty('episode_time', episode_time));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Episode &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.likes, likes) &&
            const DeepCollectionEquality().equals(other.is_liked, is_liked) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.cover, cover) &&
            const DeepCollectionEquality()
                .equals(other.created_at, created_at) &&
            const DeepCollectionEquality()
                .equals(other.created_at_diff, created_at_diff) &&
            const DeepCollectionEquality()
                .equals(other.episode_time, episode_time));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(likes),
      const DeepCollectionEquality().hash(is_liked),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(cover),
      const DeepCollectionEquality().hash(created_at),
      const DeepCollectionEquality().hash(created_at_diff),
      const DeepCollectionEquality().hash(episode_time));

  @JsonKey(ignore: true)
  @override
  _$EpisodeCopyWith<_Episode> get copyWith =>
      __$EpisodeCopyWithImpl<_Episode>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EpisodeToJson(this);
  }
}

abstract class _Episode implements Episode {
  const factory _Episode(
      {int? id,
      int? likes,
      bool? is_liked,
      String? name,
      String? cover,
      String? created_at,
      String? created_at_diff,
      String? episode_time}) = _$_Episode;

  factory _Episode.fromJson(Map<String, dynamic> json) = _$_Episode.fromJson;

  @override
  int? get id;
  @override
  int? get likes;
  @override
  bool? get is_liked;
  @override
  String? get name;
  @override
  String? get cover;
  @override
  String? get created_at;
  @override
  String? get created_at_diff;
  @override
  String? get episode_time;
  @override
  @JsonKey(ignore: true)
  _$EpisodeCopyWith<_Episode> get copyWith =>
      throw _privateConstructorUsedError;
}

Season _$SeasonFromJson(Map<String, dynamic> json) {
  return _Season.fromJson(json);
}

/// @nodoc
class _$SeasonTearOff {
  const _$SeasonTearOff();

  _Season call({int? id, String? name, String? cover}) {
    return _Season(
      id: id,
      name: name,
      cover: cover,
    );
  }

  Season fromJson(Map<String, Object?> json) {
    return Season.fromJson(json);
  }
}

/// @nodoc
const $Season = _$SeasonTearOff();

/// @nodoc
mixin _$Season {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get cover => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SeasonCopyWith<Season> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeasonCopyWith<$Res> {
  factory $SeasonCopyWith(Season value, $Res Function(Season) then) =
      _$SeasonCopyWithImpl<$Res>;
  $Res call({int? id, String? name, String? cover});
}

/// @nodoc
class _$SeasonCopyWithImpl<$Res> implements $SeasonCopyWith<$Res> {
  _$SeasonCopyWithImpl(this._value, this._then);

  final Season _value;
  // ignore: unused_field
  final $Res Function(Season) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? cover = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      cover: cover == freezed
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$SeasonCopyWith<$Res> implements $SeasonCopyWith<$Res> {
  factory _$SeasonCopyWith(_Season value, $Res Function(_Season) then) =
      __$SeasonCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String? name, String? cover});
}

/// @nodoc
class __$SeasonCopyWithImpl<$Res> extends _$SeasonCopyWithImpl<$Res>
    implements _$SeasonCopyWith<$Res> {
  __$SeasonCopyWithImpl(_Season _value, $Res Function(_Season) _then)
      : super(_value, (v) => _then(v as _Season));

  @override
  _Season get _value => super._value as _Season;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? cover = freezed,
  }) {
    return _then(_Season(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      cover: cover == freezed
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Season with DiagnosticableTreeMixin implements _Season {
  const _$_Season({this.id, this.name, this.cover});

  factory _$_Season.fromJson(Map<String, dynamic> json) =>
      _$$_SeasonFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? cover;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Season(id: $id, name: $name, cover: $cover)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Season'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('cover', cover));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Season &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.cover, cover));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(cover));

  @JsonKey(ignore: true)
  @override
  _$SeasonCopyWith<_Season> get copyWith =>
      __$SeasonCopyWithImpl<_Season>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SeasonToJson(this);
  }
}

abstract class _Season implements Season {
  const factory _Season({int? id, String? name, String? cover}) = _$_Season;

  factory _Season.fromJson(Map<String, dynamic> json) = _$_Season.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get cover;
  @override
  @JsonKey(ignore: true)
  _$SeasonCopyWith<_Season> get copyWith => throw _privateConstructorUsedError;
}
