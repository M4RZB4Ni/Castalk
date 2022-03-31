// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'analytics_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AnalyticsModel _$AnalyticsModelFromJson(Map<String, dynamic> json) {
  return _AnalyticsModel.fromJson(json);
}

/// @nodoc
class _$AnalyticsModelTearOff {
  const _$AnalyticsModelTearOff();

  _AnalyticsModel call({Data? data}) {
    return _AnalyticsModel(
      data: data,
    );
  }

  AnalyticsModel fromJson(Map<String, Object?> json) {
    return AnalyticsModel.fromJson(json);
  }
}

/// @nodoc
const $AnalyticsModel = _$AnalyticsModelTearOff();

/// @nodoc
mixin _$AnalyticsModel {
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnalyticsModelCopyWith<AnalyticsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalyticsModelCopyWith<$Res> {
  factory $AnalyticsModelCopyWith(
          AnalyticsModel value, $Res Function(AnalyticsModel) then) =
      _$AnalyticsModelCopyWithImpl<$Res>;
  $Res call({Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$AnalyticsModelCopyWithImpl<$Res>
    implements $AnalyticsModelCopyWith<$Res> {
  _$AnalyticsModelCopyWithImpl(this._value, this._then);

  final AnalyticsModel _value;
  // ignore: unused_field
  final $Res Function(AnalyticsModel) _then;

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
abstract class _$AnalyticsModelCopyWith<$Res>
    implements $AnalyticsModelCopyWith<$Res> {
  factory _$AnalyticsModelCopyWith(
          _AnalyticsModel value, $Res Function(_AnalyticsModel) then) =
      __$AnalyticsModelCopyWithImpl<$Res>;
  @override
  $Res call({Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$AnalyticsModelCopyWithImpl<$Res>
    extends _$AnalyticsModelCopyWithImpl<$Res>
    implements _$AnalyticsModelCopyWith<$Res> {
  __$AnalyticsModelCopyWithImpl(
      _AnalyticsModel _value, $Res Function(_AnalyticsModel) _then)
      : super(_value, (v) => _then(v as _AnalyticsModel));

  @override
  _AnalyticsModel get _value => super._value as _AnalyticsModel;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_AnalyticsModel(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AnalyticsModel extends _AnalyticsModel with DiagnosticableTreeMixin {
  const _$_AnalyticsModel({this.data}) : super._();

  factory _$_AnalyticsModel.fromJson(Map<String, dynamic> json) =>
      _$$_AnalyticsModelFromJson(json);

  @override
  final Data? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AnalyticsModel(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AnalyticsModel'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AnalyticsModel &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$AnalyticsModelCopyWith<_AnalyticsModel> get copyWith =>
      __$AnalyticsModelCopyWithImpl<_AnalyticsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnalyticsModelToJson(this);
  }
}

abstract class _AnalyticsModel extends AnalyticsModel {
  const factory _AnalyticsModel({Data? data}) = _$_AnalyticsModel;
  const _AnalyticsModel._() : super._();

  factory _AnalyticsModel.fromJson(Map<String, dynamic> json) =
      _$_AnalyticsModel.fromJson;

  @override
  Data? get data;
  @override
  @JsonKey(ignore: true)
  _$AnalyticsModelCopyWith<_AnalyticsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
class _$DataTearOff {
  const _$DataTearOff();

  _Data call(
      {int? listens,
      int? followers,
      int? posts,
      int? plays,
      ReachesValues? reaches,
      List<MostPlayedEpisodeValues>? most_played_episode,
      AudienceValues? audience}) {
    return _Data(
      listens: listens,
      followers: followers,
      posts: posts,
      plays: plays,
      reaches: reaches,
      most_played_episode: most_played_episode,
      audience: audience,
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
  int? get listens => throw _privateConstructorUsedError;
  int? get followers => throw _privateConstructorUsedError;
  int? get posts => throw _privateConstructorUsedError;
  int? get plays => throw _privateConstructorUsedError;
  ReachesValues? get reaches => throw _privateConstructorUsedError;
  List<MostPlayedEpisodeValues>? get most_played_episode =>
      throw _privateConstructorUsedError;
  AudienceValues? get audience => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  $Res call(
      {int? listens,
      int? followers,
      int? posts,
      int? plays,
      ReachesValues? reaches,
      List<MostPlayedEpisodeValues>? most_played_episode,
      AudienceValues? audience});

  $ReachesValuesCopyWith<$Res>? get reaches;
  $AudienceValuesCopyWith<$Res>? get audience;
}

/// @nodoc
class _$DataCopyWithImpl<$Res> implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  final Data _value;
  // ignore: unused_field
  final $Res Function(Data) _then;

  @override
  $Res call({
    Object? listens = freezed,
    Object? followers = freezed,
    Object? posts = freezed,
    Object? plays = freezed,
    Object? reaches = freezed,
    Object? most_played_episode = freezed,
    Object? audience = freezed,
  }) {
    return _then(_value.copyWith(
      listens: listens == freezed
          ? _value.listens
          : listens // ignore: cast_nullable_to_non_nullable
              as int?,
      followers: followers == freezed
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as int?,
      posts: posts == freezed
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as int?,
      plays: plays == freezed
          ? _value.plays
          : plays // ignore: cast_nullable_to_non_nullable
              as int?,
      reaches: reaches == freezed
          ? _value.reaches
          : reaches // ignore: cast_nullable_to_non_nullable
              as ReachesValues?,
      most_played_episode: most_played_episode == freezed
          ? _value.most_played_episode
          : most_played_episode // ignore: cast_nullable_to_non_nullable
              as List<MostPlayedEpisodeValues>?,
      audience: audience == freezed
          ? _value.audience
          : audience // ignore: cast_nullable_to_non_nullable
              as AudienceValues?,
    ));
  }

  @override
  $ReachesValuesCopyWith<$Res>? get reaches {
    if (_value.reaches == null) {
      return null;
    }

    return $ReachesValuesCopyWith<$Res>(_value.reaches!, (value) {
      return _then(_value.copyWith(reaches: value));
    });
  }

  @override
  $AudienceValuesCopyWith<$Res>? get audience {
    if (_value.audience == null) {
      return null;
    }

    return $AudienceValuesCopyWith<$Res>(_value.audience!, (value) {
      return _then(_value.copyWith(audience: value));
    });
  }
}

/// @nodoc
abstract class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) then) =
      __$DataCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? listens,
      int? followers,
      int? posts,
      int? plays,
      ReachesValues? reaches,
      List<MostPlayedEpisodeValues>? most_played_episode,
      AudienceValues? audience});

  @override
  $ReachesValuesCopyWith<$Res>? get reaches;
  @override
  $AudienceValuesCopyWith<$Res>? get audience;
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
    Object? listens = freezed,
    Object? followers = freezed,
    Object? posts = freezed,
    Object? plays = freezed,
    Object? reaches = freezed,
    Object? most_played_episode = freezed,
    Object? audience = freezed,
  }) {
    return _then(_Data(
      listens: listens == freezed
          ? _value.listens
          : listens // ignore: cast_nullable_to_non_nullable
              as int?,
      followers: followers == freezed
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as int?,
      posts: posts == freezed
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as int?,
      plays: plays == freezed
          ? _value.plays
          : plays // ignore: cast_nullable_to_non_nullable
              as int?,
      reaches: reaches == freezed
          ? _value.reaches
          : reaches // ignore: cast_nullable_to_non_nullable
              as ReachesValues?,
      most_played_episode: most_played_episode == freezed
          ? _value.most_played_episode
          : most_played_episode // ignore: cast_nullable_to_non_nullable
              as List<MostPlayedEpisodeValues>?,
      audience: audience == freezed
          ? _value.audience
          : audience // ignore: cast_nullable_to_non_nullable
              as AudienceValues?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data with DiagnosticableTreeMixin implements _Data {
  const _$_Data(
      {this.listens,
      this.followers,
      this.posts,
      this.plays,
      this.reaches,
      this.most_played_episode,
      this.audience});

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  final int? listens;
  @override
  final int? followers;
  @override
  final int? posts;
  @override
  final int? plays;
  @override
  final ReachesValues? reaches;
  @override
  final List<MostPlayedEpisodeValues>? most_played_episode;
  @override
  final AudienceValues? audience;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Data(listens: $listens, followers: $followers, posts: $posts, plays: $plays, reaches: $reaches, most_played_episode: $most_played_episode, audience: $audience)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Data'))
      ..add(DiagnosticsProperty('listens', listens))
      ..add(DiagnosticsProperty('followers', followers))
      ..add(DiagnosticsProperty('posts', posts))
      ..add(DiagnosticsProperty('plays', plays))
      ..add(DiagnosticsProperty('reaches', reaches))
      ..add(DiagnosticsProperty('most_played_episode', most_played_episode))
      ..add(DiagnosticsProperty('audience', audience));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Data &&
            const DeepCollectionEquality().equals(other.listens, listens) &&
            const DeepCollectionEquality().equals(other.followers, followers) &&
            const DeepCollectionEquality().equals(other.posts, posts) &&
            const DeepCollectionEquality().equals(other.plays, plays) &&
            const DeepCollectionEquality().equals(other.reaches, reaches) &&
            const DeepCollectionEquality()
                .equals(other.most_played_episode, most_played_episode) &&
            const DeepCollectionEquality().equals(other.audience, audience));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(listens),
      const DeepCollectionEquality().hash(followers),
      const DeepCollectionEquality().hash(posts),
      const DeepCollectionEquality().hash(plays),
      const DeepCollectionEquality().hash(reaches),
      const DeepCollectionEquality().hash(most_played_episode),
      const DeepCollectionEquality().hash(audience));

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
      {int? listens,
      int? followers,
      int? posts,
      int? plays,
      ReachesValues? reaches,
      List<MostPlayedEpisodeValues>? most_played_episode,
      AudienceValues? audience}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  int? get listens;
  @override
  int? get followers;
  @override
  int? get posts;
  @override
  int? get plays;
  @override
  ReachesValues? get reaches;
  @override
  List<MostPlayedEpisodeValues>? get most_played_episode;
  @override
  AudienceValues? get audience;
  @override
  @JsonKey(ignore: true)
  _$DataCopyWith<_Data> get copyWith => throw _privateConstructorUsedError;
}

ReachesValues _$ReachesValuesFromJson(Map<String, dynamic> json) {
  return _ReachesValues.fromJson(json);
}

/// @nodoc
class _$ReachesValuesTearOff {
  const _$ReachesValuesTearOff();

  _ReachesValues call(
      {int? explore, int? search, int? external_links, int? others}) {
    return _ReachesValues(
      explore: explore,
      search: search,
      external_links: external_links,
      others: others,
    );
  }

  ReachesValues fromJson(Map<String, Object?> json) {
    return ReachesValues.fromJson(json);
  }
}

/// @nodoc
const $ReachesValues = _$ReachesValuesTearOff();

/// @nodoc
mixin _$ReachesValues {
  int? get explore => throw _privateConstructorUsedError;
  int? get search => throw _privateConstructorUsedError;
  int? get external_links => throw _privateConstructorUsedError;
  int? get others => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReachesValuesCopyWith<ReachesValues> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReachesValuesCopyWith<$Res> {
  factory $ReachesValuesCopyWith(
          ReachesValues value, $Res Function(ReachesValues) then) =
      _$ReachesValuesCopyWithImpl<$Res>;
  $Res call({int? explore, int? search, int? external_links, int? others});
}

/// @nodoc
class _$ReachesValuesCopyWithImpl<$Res>
    implements $ReachesValuesCopyWith<$Res> {
  _$ReachesValuesCopyWithImpl(this._value, this._then);

  final ReachesValues _value;
  // ignore: unused_field
  final $Res Function(ReachesValues) _then;

  @override
  $Res call({
    Object? explore = freezed,
    Object? search = freezed,
    Object? external_links = freezed,
    Object? others = freezed,
  }) {
    return _then(_value.copyWith(
      explore: explore == freezed
          ? _value.explore
          : explore // ignore: cast_nullable_to_non_nullable
              as int?,
      search: search == freezed
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as int?,
      external_links: external_links == freezed
          ? _value.external_links
          : external_links // ignore: cast_nullable_to_non_nullable
              as int?,
      others: others == freezed
          ? _value.others
          : others // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$ReachesValuesCopyWith<$Res>
    implements $ReachesValuesCopyWith<$Res> {
  factory _$ReachesValuesCopyWith(
          _ReachesValues value, $Res Function(_ReachesValues) then) =
      __$ReachesValuesCopyWithImpl<$Res>;
  @override
  $Res call({int? explore, int? search, int? external_links, int? others});
}

/// @nodoc
class __$ReachesValuesCopyWithImpl<$Res>
    extends _$ReachesValuesCopyWithImpl<$Res>
    implements _$ReachesValuesCopyWith<$Res> {
  __$ReachesValuesCopyWithImpl(
      _ReachesValues _value, $Res Function(_ReachesValues) _then)
      : super(_value, (v) => _then(v as _ReachesValues));

  @override
  _ReachesValues get _value => super._value as _ReachesValues;

  @override
  $Res call({
    Object? explore = freezed,
    Object? search = freezed,
    Object? external_links = freezed,
    Object? others = freezed,
  }) {
    return _then(_ReachesValues(
      explore: explore == freezed
          ? _value.explore
          : explore // ignore: cast_nullable_to_non_nullable
              as int?,
      search: search == freezed
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as int?,
      external_links: external_links == freezed
          ? _value.external_links
          : external_links // ignore: cast_nullable_to_non_nullable
              as int?,
      others: others == freezed
          ? _value.others
          : others // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReachesValues with DiagnosticableTreeMixin implements _ReachesValues {
  const _$_ReachesValues(
      {this.explore, this.search, this.external_links, this.others});

  factory _$_ReachesValues.fromJson(Map<String, dynamic> json) =>
      _$$_ReachesValuesFromJson(json);

  @override
  final int? explore;
  @override
  final int? search;
  @override
  final int? external_links;
  @override
  final int? others;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ReachesValues(explore: $explore, search: $search, external_links: $external_links, others: $others)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ReachesValues'))
      ..add(DiagnosticsProperty('explore', explore))
      ..add(DiagnosticsProperty('search', search))
      ..add(DiagnosticsProperty('external_links', external_links))
      ..add(DiagnosticsProperty('others', others));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReachesValues &&
            const DeepCollectionEquality().equals(other.explore, explore) &&
            const DeepCollectionEquality().equals(other.search, search) &&
            const DeepCollectionEquality()
                .equals(other.external_links, external_links) &&
            const DeepCollectionEquality().equals(other.others, others));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(explore),
      const DeepCollectionEquality().hash(search),
      const DeepCollectionEquality().hash(external_links),
      const DeepCollectionEquality().hash(others));

  @JsonKey(ignore: true)
  @override
  _$ReachesValuesCopyWith<_ReachesValues> get copyWith =>
      __$ReachesValuesCopyWithImpl<_ReachesValues>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReachesValuesToJson(this);
  }
}

abstract class _ReachesValues implements ReachesValues {
  const factory _ReachesValues(
      {int? explore,
      int? search,
      int? external_links,
      int? others}) = _$_ReachesValues;

  factory _ReachesValues.fromJson(Map<String, dynamic> json) =
      _$_ReachesValues.fromJson;

  @override
  int? get explore;
  @override
  int? get search;
  @override
  int? get external_links;
  @override
  int? get others;
  @override
  @JsonKey(ignore: true)
  _$ReachesValuesCopyWith<_ReachesValues> get copyWith =>
      throw _privateConstructorUsedError;
}

MostPlayedEpisodeValues _$MostPlayedEpisodeValuesFromJson(
    Map<String, dynamic> json) {
  return _MostPlayedEpisodeValues.fromJson(json);
}

/// @nodoc
class _$MostPlayedEpisodeValuesTearOff {
  const _$MostPlayedEpisodeValuesTearOff();

  _MostPlayedEpisodeValues call(
      {int? id,
      String? name,
      String? description,
      int? season_id,
      int? allow_comments,
      int? allow_share,
      String? cover,
      int? comments_count,
      int? likes_count,
      List<CommentsValues>? comments}) {
    return _MostPlayedEpisodeValues(
      id: id,
      name: name,
      description: description,
      season_id: season_id,
      allow_comments: allow_comments,
      allow_share: allow_share,
      cover: cover,
      comments_count: comments_count,
      likes_count: likes_count,
      comments: comments,
    );
  }

  MostPlayedEpisodeValues fromJson(Map<String, Object?> json) {
    return MostPlayedEpisodeValues.fromJson(json);
  }
}

/// @nodoc
const $MostPlayedEpisodeValues = _$MostPlayedEpisodeValuesTearOff();

/// @nodoc
mixin _$MostPlayedEpisodeValues {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get season_id => throw _privateConstructorUsedError;
  int? get allow_comments => throw _privateConstructorUsedError;
  int? get allow_share => throw _privateConstructorUsedError;
  String? get cover => throw _privateConstructorUsedError;
  int? get comments_count => throw _privateConstructorUsedError;
  int? get likes_count => throw _privateConstructorUsedError;
  List<CommentsValues>? get comments => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MostPlayedEpisodeValuesCopyWith<MostPlayedEpisodeValues> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MostPlayedEpisodeValuesCopyWith<$Res> {
  factory $MostPlayedEpisodeValuesCopyWith(MostPlayedEpisodeValues value,
          $Res Function(MostPlayedEpisodeValues) then) =
      _$MostPlayedEpisodeValuesCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? name,
      String? description,
      int? season_id,
      int? allow_comments,
      int? allow_share,
      String? cover,
      int? comments_count,
      int? likes_count,
      List<CommentsValues>? comments});
}

/// @nodoc
class _$MostPlayedEpisodeValuesCopyWithImpl<$Res>
    implements $MostPlayedEpisodeValuesCopyWith<$Res> {
  _$MostPlayedEpisodeValuesCopyWithImpl(this._value, this._then);

  final MostPlayedEpisodeValues _value;
  // ignore: unused_field
  final $Res Function(MostPlayedEpisodeValues) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? season_id = freezed,
    Object? allow_comments = freezed,
    Object? allow_share = freezed,
    Object? cover = freezed,
    Object? comments_count = freezed,
    Object? likes_count = freezed,
    Object? comments = freezed,
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
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      season_id: season_id == freezed
          ? _value.season_id
          : season_id // ignore: cast_nullable_to_non_nullable
              as int?,
      allow_comments: allow_comments == freezed
          ? _value.allow_comments
          : allow_comments // ignore: cast_nullable_to_non_nullable
              as int?,
      allow_share: allow_share == freezed
          ? _value.allow_share
          : allow_share // ignore: cast_nullable_to_non_nullable
              as int?,
      cover: cover == freezed
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
      comments_count: comments_count == freezed
          ? _value.comments_count
          : comments_count // ignore: cast_nullable_to_non_nullable
              as int?,
      likes_count: likes_count == freezed
          ? _value.likes_count
          : likes_count // ignore: cast_nullable_to_non_nullable
              as int?,
      comments: comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentsValues>?,
    ));
  }
}

/// @nodoc
abstract class _$MostPlayedEpisodeValuesCopyWith<$Res>
    implements $MostPlayedEpisodeValuesCopyWith<$Res> {
  factory _$MostPlayedEpisodeValuesCopyWith(_MostPlayedEpisodeValues value,
          $Res Function(_MostPlayedEpisodeValues) then) =
      __$MostPlayedEpisodeValuesCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? name,
      String? description,
      int? season_id,
      int? allow_comments,
      int? allow_share,
      String? cover,
      int? comments_count,
      int? likes_count,
      List<CommentsValues>? comments});
}

/// @nodoc
class __$MostPlayedEpisodeValuesCopyWithImpl<$Res>
    extends _$MostPlayedEpisodeValuesCopyWithImpl<$Res>
    implements _$MostPlayedEpisodeValuesCopyWith<$Res> {
  __$MostPlayedEpisodeValuesCopyWithImpl(_MostPlayedEpisodeValues _value,
      $Res Function(_MostPlayedEpisodeValues) _then)
      : super(_value, (v) => _then(v as _MostPlayedEpisodeValues));

  @override
  _MostPlayedEpisodeValues get _value =>
      super._value as _MostPlayedEpisodeValues;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? season_id = freezed,
    Object? allow_comments = freezed,
    Object? allow_share = freezed,
    Object? cover = freezed,
    Object? comments_count = freezed,
    Object? likes_count = freezed,
    Object? comments = freezed,
  }) {
    return _then(_MostPlayedEpisodeValues(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      season_id: season_id == freezed
          ? _value.season_id
          : season_id // ignore: cast_nullable_to_non_nullable
              as int?,
      allow_comments: allow_comments == freezed
          ? _value.allow_comments
          : allow_comments // ignore: cast_nullable_to_non_nullable
              as int?,
      allow_share: allow_share == freezed
          ? _value.allow_share
          : allow_share // ignore: cast_nullable_to_non_nullable
              as int?,
      cover: cover == freezed
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
      comments_count: comments_count == freezed
          ? _value.comments_count
          : comments_count // ignore: cast_nullable_to_non_nullable
              as int?,
      likes_count: likes_count == freezed
          ? _value.likes_count
          : likes_count // ignore: cast_nullable_to_non_nullable
              as int?,
      comments: comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentsValues>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MostPlayedEpisodeValues
    with DiagnosticableTreeMixin
    implements _MostPlayedEpisodeValues {
  const _$_MostPlayedEpisodeValues(
      {this.id,
      this.name,
      this.description,
      this.season_id,
      this.allow_comments,
      this.allow_share,
      this.cover,
      this.comments_count,
      this.likes_count,
      this.comments});

  factory _$_MostPlayedEpisodeValues.fromJson(Map<String, dynamic> json) =>
      _$$_MostPlayedEpisodeValuesFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final int? season_id;
  @override
  final int? allow_comments;
  @override
  final int? allow_share;
  @override
  final String? cover;
  @override
  final int? comments_count;
  @override
  final int? likes_count;
  @override
  final List<CommentsValues>? comments;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MostPlayedEpisodeValues(id: $id, name: $name, description: $description, season_id: $season_id, allow_comments: $allow_comments, allow_share: $allow_share, cover: $cover, comments_count: $comments_count, likes_count: $likes_count, comments: $comments)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MostPlayedEpisodeValues'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('season_id', season_id))
      ..add(DiagnosticsProperty('allow_comments', allow_comments))
      ..add(DiagnosticsProperty('allow_share', allow_share))
      ..add(DiagnosticsProperty('cover', cover))
      ..add(DiagnosticsProperty('comments_count', comments_count))
      ..add(DiagnosticsProperty('likes_count', likes_count))
      ..add(DiagnosticsProperty('comments', comments));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MostPlayedEpisodeValues &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.season_id, season_id) &&
            const DeepCollectionEquality()
                .equals(other.allow_comments, allow_comments) &&
            const DeepCollectionEquality()
                .equals(other.allow_share, allow_share) &&
            const DeepCollectionEquality().equals(other.cover, cover) &&
            const DeepCollectionEquality()
                .equals(other.comments_count, comments_count) &&
            const DeepCollectionEquality()
                .equals(other.likes_count, likes_count) &&
            const DeepCollectionEquality().equals(other.comments, comments));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(season_id),
      const DeepCollectionEquality().hash(allow_comments),
      const DeepCollectionEquality().hash(allow_share),
      const DeepCollectionEquality().hash(cover),
      const DeepCollectionEquality().hash(comments_count),
      const DeepCollectionEquality().hash(likes_count),
      const DeepCollectionEquality().hash(comments));

  @JsonKey(ignore: true)
  @override
  _$MostPlayedEpisodeValuesCopyWith<_MostPlayedEpisodeValues> get copyWith =>
      __$MostPlayedEpisodeValuesCopyWithImpl<_MostPlayedEpisodeValues>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MostPlayedEpisodeValuesToJson(this);
  }
}

abstract class _MostPlayedEpisodeValues implements MostPlayedEpisodeValues {
  const factory _MostPlayedEpisodeValues(
      {int? id,
      String? name,
      String? description,
      int? season_id,
      int? allow_comments,
      int? allow_share,
      String? cover,
      int? comments_count,
      int? likes_count,
      List<CommentsValues>? comments}) = _$_MostPlayedEpisodeValues;

  factory _MostPlayedEpisodeValues.fromJson(Map<String, dynamic> json) =
      _$_MostPlayedEpisodeValues.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  int? get season_id;
  @override
  int? get allow_comments;
  @override
  int? get allow_share;
  @override
  String? get cover;
  @override
  int? get comments_count;
  @override
  int? get likes_count;
  @override
  List<CommentsValues>? get comments;
  @override
  @JsonKey(ignore: true)
  _$MostPlayedEpisodeValuesCopyWith<_MostPlayedEpisodeValues> get copyWith =>
      throw _privateConstructorUsedError;
}

CommentsValues _$CommentsValuesFromJson(Map<String, dynamic> json) {
  return _CommentsValues.fromJson(json);
}

/// @nodoc
class _$CommentsValuesTearOff {
  const _$CommentsValuesTearOff();

  _CommentsValues call(
      {int? id,
      int? owner_id,
      String? creator_type,
      int? creator_id,
      String? message,
      String? reply_to,
      int? time}) {
    return _CommentsValues(
      id: id,
      owner_id: owner_id,
      creator_type: creator_type,
      creator_id: creator_id,
      message: message,
      reply_to: reply_to,
      time: time,
    );
  }

  CommentsValues fromJson(Map<String, Object?> json) {
    return CommentsValues.fromJson(json);
  }
}

/// @nodoc
const $CommentsValues = _$CommentsValuesTearOff();

/// @nodoc
mixin _$CommentsValues {
  int? get id => throw _privateConstructorUsedError;
  int? get owner_id => throw _privateConstructorUsedError;
  String? get creator_type => throw _privateConstructorUsedError;
  int? get creator_id => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get reply_to => throw _privateConstructorUsedError;
  int? get time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentsValuesCopyWith<CommentsValues> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentsValuesCopyWith<$Res> {
  factory $CommentsValuesCopyWith(
          CommentsValues value, $Res Function(CommentsValues) then) =
      _$CommentsValuesCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      int? owner_id,
      String? creator_type,
      int? creator_id,
      String? message,
      String? reply_to,
      int? time});
}

/// @nodoc
class _$CommentsValuesCopyWithImpl<$Res>
    implements $CommentsValuesCopyWith<$Res> {
  _$CommentsValuesCopyWithImpl(this._value, this._then);

  final CommentsValues _value;
  // ignore: unused_field
  final $Res Function(CommentsValues) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? owner_id = freezed,
    Object? creator_type = freezed,
    Object? creator_id = freezed,
    Object? message = freezed,
    Object? reply_to = freezed,
    Object? time = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      owner_id: owner_id == freezed
          ? _value.owner_id
          : owner_id // ignore: cast_nullable_to_non_nullable
              as int?,
      creator_type: creator_type == freezed
          ? _value.creator_type
          : creator_type // ignore: cast_nullable_to_non_nullable
              as String?,
      creator_id: creator_id == freezed
          ? _value.creator_id
          : creator_id // ignore: cast_nullable_to_non_nullable
              as int?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      reply_to: reply_to == freezed
          ? _value.reply_to
          : reply_to // ignore: cast_nullable_to_non_nullable
              as String?,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$CommentsValuesCopyWith<$Res>
    implements $CommentsValuesCopyWith<$Res> {
  factory _$CommentsValuesCopyWith(
          _CommentsValues value, $Res Function(_CommentsValues) then) =
      __$CommentsValuesCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      int? owner_id,
      String? creator_type,
      int? creator_id,
      String? message,
      String? reply_to,
      int? time});
}

/// @nodoc
class __$CommentsValuesCopyWithImpl<$Res>
    extends _$CommentsValuesCopyWithImpl<$Res>
    implements _$CommentsValuesCopyWith<$Res> {
  __$CommentsValuesCopyWithImpl(
      _CommentsValues _value, $Res Function(_CommentsValues) _then)
      : super(_value, (v) => _then(v as _CommentsValues));

  @override
  _CommentsValues get _value => super._value as _CommentsValues;

  @override
  $Res call({
    Object? id = freezed,
    Object? owner_id = freezed,
    Object? creator_type = freezed,
    Object? creator_id = freezed,
    Object? message = freezed,
    Object? reply_to = freezed,
    Object? time = freezed,
  }) {
    return _then(_CommentsValues(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      owner_id: owner_id == freezed
          ? _value.owner_id
          : owner_id // ignore: cast_nullable_to_non_nullable
              as int?,
      creator_type: creator_type == freezed
          ? _value.creator_type
          : creator_type // ignore: cast_nullable_to_non_nullable
              as String?,
      creator_id: creator_id == freezed
          ? _value.creator_id
          : creator_id // ignore: cast_nullable_to_non_nullable
              as int?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      reply_to: reply_to == freezed
          ? _value.reply_to
          : reply_to // ignore: cast_nullable_to_non_nullable
              as String?,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CommentsValues
    with DiagnosticableTreeMixin
    implements _CommentsValues {
  const _$_CommentsValues(
      {this.id,
      this.owner_id,
      this.creator_type,
      this.creator_id,
      this.message,
      this.reply_to,
      this.time});

  factory _$_CommentsValues.fromJson(Map<String, dynamic> json) =>
      _$$_CommentsValuesFromJson(json);

  @override
  final int? id;
  @override
  final int? owner_id;
  @override
  final String? creator_type;
  @override
  final int? creator_id;
  @override
  final String? message;
  @override
  final String? reply_to;
  @override
  final int? time;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommentsValues(id: $id, owner_id: $owner_id, creator_type: $creator_type, creator_id: $creator_id, message: $message, reply_to: $reply_to, time: $time)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CommentsValues'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('owner_id', owner_id))
      ..add(DiagnosticsProperty('creator_type', creator_type))
      ..add(DiagnosticsProperty('creator_id', creator_id))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('reply_to', reply_to))
      ..add(DiagnosticsProperty('time', time));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CommentsValues &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.owner_id, owner_id) &&
            const DeepCollectionEquality()
                .equals(other.creator_type, creator_type) &&
            const DeepCollectionEquality()
                .equals(other.creator_id, creator_id) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.reply_to, reply_to) &&
            const DeepCollectionEquality().equals(other.time, time));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(owner_id),
      const DeepCollectionEquality().hash(creator_type),
      const DeepCollectionEquality().hash(creator_id),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(reply_to),
      const DeepCollectionEquality().hash(time));

  @JsonKey(ignore: true)
  @override
  _$CommentsValuesCopyWith<_CommentsValues> get copyWith =>
      __$CommentsValuesCopyWithImpl<_CommentsValues>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommentsValuesToJson(this);
  }
}

abstract class _CommentsValues implements CommentsValues {
  const factory _CommentsValues(
      {int? id,
      int? owner_id,
      String? creator_type,
      int? creator_id,
      String? message,
      String? reply_to,
      int? time}) = _$_CommentsValues;

  factory _CommentsValues.fromJson(Map<String, dynamic> json) =
      _$_CommentsValues.fromJson;

  @override
  int? get id;
  @override
  int? get owner_id;
  @override
  String? get creator_type;
  @override
  int? get creator_id;
  @override
  String? get message;
  @override
  String? get reply_to;
  @override
  int? get time;
  @override
  @JsonKey(ignore: true)
  _$CommentsValuesCopyWith<_CommentsValues> get copyWith =>
      throw _privateConstructorUsedError;
}

AudienceValues _$AudienceValuesFromJson(Map<String, dynamic> json) {
  return _AudienceValues.fromJson(json);
}

/// @nodoc
class _$AudienceValuesTearOff {
  const _$AudienceValuesTearOff();

  _AudienceValues call(
      {GenderValues? gender,
      AgeValues? age,
      EarningsValues? earnings,
      List<BestSellingData>? best_selling}) {
    return _AudienceValues(
      gender: gender,
      age: age,
      earnings: earnings,
      best_selling: best_selling,
    );
  }

  AudienceValues fromJson(Map<String, Object?> json) {
    return AudienceValues.fromJson(json);
  }
}

/// @nodoc
const $AudienceValues = _$AudienceValuesTearOff();

/// @nodoc
mixin _$AudienceValues {
  GenderValues? get gender => throw _privateConstructorUsedError;
  AgeValues? get age => throw _privateConstructorUsedError;
  EarningsValues? get earnings => throw _privateConstructorUsedError;
  List<BestSellingData>? get best_selling => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AudienceValuesCopyWith<AudienceValues> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudienceValuesCopyWith<$Res> {
  factory $AudienceValuesCopyWith(
          AudienceValues value, $Res Function(AudienceValues) then) =
      _$AudienceValuesCopyWithImpl<$Res>;
  $Res call(
      {GenderValues? gender,
      AgeValues? age,
      EarningsValues? earnings,
      List<BestSellingData>? best_selling});

  $GenderValuesCopyWith<$Res>? get gender;
  $AgeValuesCopyWith<$Res>? get age;
  $EarningsValuesCopyWith<$Res>? get earnings;
}

/// @nodoc
class _$AudienceValuesCopyWithImpl<$Res>
    implements $AudienceValuesCopyWith<$Res> {
  _$AudienceValuesCopyWithImpl(this._value, this._then);

  final AudienceValues _value;
  // ignore: unused_field
  final $Res Function(AudienceValues) _then;

  @override
  $Res call({
    Object? gender = freezed,
    Object? age = freezed,
    Object? earnings = freezed,
    Object? best_selling = freezed,
  }) {
    return _then(_value.copyWith(
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as GenderValues?,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as AgeValues?,
      earnings: earnings == freezed
          ? _value.earnings
          : earnings // ignore: cast_nullable_to_non_nullable
              as EarningsValues?,
      best_selling: best_selling == freezed
          ? _value.best_selling
          : best_selling // ignore: cast_nullable_to_non_nullable
              as List<BestSellingData>?,
    ));
  }

  @override
  $GenderValuesCopyWith<$Res>? get gender {
    if (_value.gender == null) {
      return null;
    }

    return $GenderValuesCopyWith<$Res>(_value.gender!, (value) {
      return _then(_value.copyWith(gender: value));
    });
  }

  @override
  $AgeValuesCopyWith<$Res>? get age {
    if (_value.age == null) {
      return null;
    }

    return $AgeValuesCopyWith<$Res>(_value.age!, (value) {
      return _then(_value.copyWith(age: value));
    });
  }

  @override
  $EarningsValuesCopyWith<$Res>? get earnings {
    if (_value.earnings == null) {
      return null;
    }

    return $EarningsValuesCopyWith<$Res>(_value.earnings!, (value) {
      return _then(_value.copyWith(earnings: value));
    });
  }
}

/// @nodoc
abstract class _$AudienceValuesCopyWith<$Res>
    implements $AudienceValuesCopyWith<$Res> {
  factory _$AudienceValuesCopyWith(
          _AudienceValues value, $Res Function(_AudienceValues) then) =
      __$AudienceValuesCopyWithImpl<$Res>;
  @override
  $Res call(
      {GenderValues? gender,
      AgeValues? age,
      EarningsValues? earnings,
      List<BestSellingData>? best_selling});

  @override
  $GenderValuesCopyWith<$Res>? get gender;
  @override
  $AgeValuesCopyWith<$Res>? get age;
  @override
  $EarningsValuesCopyWith<$Res>? get earnings;
}

/// @nodoc
class __$AudienceValuesCopyWithImpl<$Res>
    extends _$AudienceValuesCopyWithImpl<$Res>
    implements _$AudienceValuesCopyWith<$Res> {
  __$AudienceValuesCopyWithImpl(
      _AudienceValues _value, $Res Function(_AudienceValues) _then)
      : super(_value, (v) => _then(v as _AudienceValues));

  @override
  _AudienceValues get _value => super._value as _AudienceValues;

  @override
  $Res call({
    Object? gender = freezed,
    Object? age = freezed,
    Object? earnings = freezed,
    Object? best_selling = freezed,
  }) {
    return _then(_AudienceValues(
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as GenderValues?,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as AgeValues?,
      earnings: earnings == freezed
          ? _value.earnings
          : earnings // ignore: cast_nullable_to_non_nullable
              as EarningsValues?,
      best_selling: best_selling == freezed
          ? _value.best_selling
          : best_selling // ignore: cast_nullable_to_non_nullable
              as List<BestSellingData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AudienceValues
    with DiagnosticableTreeMixin
    implements _AudienceValues {
  const _$_AudienceValues(
      {this.gender, this.age, this.earnings, this.best_selling});

  factory _$_AudienceValues.fromJson(Map<String, dynamic> json) =>
      _$$_AudienceValuesFromJson(json);

  @override
  final GenderValues? gender;
  @override
  final AgeValues? age;
  @override
  final EarningsValues? earnings;
  @override
  final List<BestSellingData>? best_selling;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AudienceValues(gender: $gender, age: $age, earnings: $earnings, best_selling: $best_selling)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AudienceValues'))
      ..add(DiagnosticsProperty('gender', gender))
      ..add(DiagnosticsProperty('age', age))
      ..add(DiagnosticsProperty('earnings', earnings))
      ..add(DiagnosticsProperty('best_selling', best_selling));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AudienceValues &&
            const DeepCollectionEquality().equals(other.gender, gender) &&
            const DeepCollectionEquality().equals(other.age, age) &&
            const DeepCollectionEquality().equals(other.earnings, earnings) &&
            const DeepCollectionEquality()
                .equals(other.best_selling, best_selling));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(gender),
      const DeepCollectionEquality().hash(age),
      const DeepCollectionEquality().hash(earnings),
      const DeepCollectionEquality().hash(best_selling));

  @JsonKey(ignore: true)
  @override
  _$AudienceValuesCopyWith<_AudienceValues> get copyWith =>
      __$AudienceValuesCopyWithImpl<_AudienceValues>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AudienceValuesToJson(this);
  }
}

abstract class _AudienceValues implements AudienceValues {
  const factory _AudienceValues(
      {GenderValues? gender,
      AgeValues? age,
      EarningsValues? earnings,
      List<BestSellingData>? best_selling}) = _$_AudienceValues;

  factory _AudienceValues.fromJson(Map<String, dynamic> json) =
      _$_AudienceValues.fromJson;

  @override
  GenderValues? get gender;
  @override
  AgeValues? get age;
  @override
  EarningsValues? get earnings;
  @override
  List<BestSellingData>? get best_selling;
  @override
  @JsonKey(ignore: true)
  _$AudienceValuesCopyWith<_AudienceValues> get copyWith =>
      throw _privateConstructorUsedError;
}

GenderValues _$GenderValuesFromJson(Map<String, dynamic> json) {
  return _GenderValues.fromJson(json);
}

/// @nodoc
class _$GenderValuesTearOff {
  const _$GenderValuesTearOff();

  _GenderValues call({int? male, int? female}) {
    return _GenderValues(
      male: male,
      female: female,
    );
  }

  GenderValues fromJson(Map<String, Object?> json) {
    return GenderValues.fromJson(json);
  }
}

/// @nodoc
const $GenderValues = _$GenderValuesTearOff();

/// @nodoc
mixin _$GenderValues {
  int? get male => throw _privateConstructorUsedError;
  int? get female => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenderValuesCopyWith<GenderValues> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenderValuesCopyWith<$Res> {
  factory $GenderValuesCopyWith(
          GenderValues value, $Res Function(GenderValues) then) =
      _$GenderValuesCopyWithImpl<$Res>;
  $Res call({int? male, int? female});
}

/// @nodoc
class _$GenderValuesCopyWithImpl<$Res> implements $GenderValuesCopyWith<$Res> {
  _$GenderValuesCopyWithImpl(this._value, this._then);

  final GenderValues _value;
  // ignore: unused_field
  final $Res Function(GenderValues) _then;

  @override
  $Res call({
    Object? male = freezed,
    Object? female = freezed,
  }) {
    return _then(_value.copyWith(
      male: male == freezed
          ? _value.male
          : male // ignore: cast_nullable_to_non_nullable
              as int?,
      female: female == freezed
          ? _value.female
          : female // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$GenderValuesCopyWith<$Res>
    implements $GenderValuesCopyWith<$Res> {
  factory _$GenderValuesCopyWith(
          _GenderValues value, $Res Function(_GenderValues) then) =
      __$GenderValuesCopyWithImpl<$Res>;
  @override
  $Res call({int? male, int? female});
}

/// @nodoc
class __$GenderValuesCopyWithImpl<$Res> extends _$GenderValuesCopyWithImpl<$Res>
    implements _$GenderValuesCopyWith<$Res> {
  __$GenderValuesCopyWithImpl(
      _GenderValues _value, $Res Function(_GenderValues) _then)
      : super(_value, (v) => _then(v as _GenderValues));

  @override
  _GenderValues get _value => super._value as _GenderValues;

  @override
  $Res call({
    Object? male = freezed,
    Object? female = freezed,
  }) {
    return _then(_GenderValues(
      male: male == freezed
          ? _value.male
          : male // ignore: cast_nullable_to_non_nullable
              as int?,
      female: female == freezed
          ? _value.female
          : female // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GenderValues with DiagnosticableTreeMixin implements _GenderValues {
  const _$_GenderValues({this.male, this.female});

  factory _$_GenderValues.fromJson(Map<String, dynamic> json) =>
      _$$_GenderValuesFromJson(json);

  @override
  final int? male;
  @override
  final int? female;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GenderValues(male: $male, female: $female)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GenderValues'))
      ..add(DiagnosticsProperty('male', male))
      ..add(DiagnosticsProperty('female', female));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GenderValues &&
            const DeepCollectionEquality().equals(other.male, male) &&
            const DeepCollectionEquality().equals(other.female, female));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(male),
      const DeepCollectionEquality().hash(female));

  @JsonKey(ignore: true)
  @override
  _$GenderValuesCopyWith<_GenderValues> get copyWith =>
      __$GenderValuesCopyWithImpl<_GenderValues>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GenderValuesToJson(this);
  }
}

abstract class _GenderValues implements GenderValues {
  const factory _GenderValues({int? male, int? female}) = _$_GenderValues;

  factory _GenderValues.fromJson(Map<String, dynamic> json) =
      _$_GenderValues.fromJson;

  @override
  int? get male;
  @override
  int? get female;
  @override
  @JsonKey(ignore: true)
  _$GenderValuesCopyWith<_GenderValues> get copyWith =>
      throw _privateConstructorUsedError;
}

AgeValues _$AgeValuesFromJson(Map<String, dynamic> json) {
  return _AgeValues.fromJson(json);
}

/// @nodoc
class _$AgeValuesTearOff {
  const _$AgeValuesTearOff();

  _AgeValues call(
      {int? age_12_20,
      int? age_20_30,
      int? age_30_40,
      int? age_40_50,
      int? age_50}) {
    return _AgeValues(
      age_12_20: age_12_20,
      age_20_30: age_20_30,
      age_30_40: age_30_40,
      age_40_50: age_40_50,
      age_50: age_50,
    );
  }

  AgeValues fromJson(Map<String, Object?> json) {
    return AgeValues.fromJson(json);
  }
}

/// @nodoc
const $AgeValues = _$AgeValuesTearOff();

/// @nodoc
mixin _$AgeValues {
  int? get age_12_20 => throw _privateConstructorUsedError;
  int? get age_20_30 => throw _privateConstructorUsedError;
  int? get age_30_40 => throw _privateConstructorUsedError;
  int? get age_40_50 => throw _privateConstructorUsedError;
  int? get age_50 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgeValuesCopyWith<AgeValues> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgeValuesCopyWith<$Res> {
  factory $AgeValuesCopyWith(AgeValues value, $Res Function(AgeValues) then) =
      _$AgeValuesCopyWithImpl<$Res>;
  $Res call(
      {int? age_12_20,
      int? age_20_30,
      int? age_30_40,
      int? age_40_50,
      int? age_50});
}

/// @nodoc
class _$AgeValuesCopyWithImpl<$Res> implements $AgeValuesCopyWith<$Res> {
  _$AgeValuesCopyWithImpl(this._value, this._then);

  final AgeValues _value;
  // ignore: unused_field
  final $Res Function(AgeValues) _then;

  @override
  $Res call({
    Object? age_12_20 = freezed,
    Object? age_20_30 = freezed,
    Object? age_30_40 = freezed,
    Object? age_40_50 = freezed,
    Object? age_50 = freezed,
  }) {
    return _then(_value.copyWith(
      age_12_20: age_12_20 == freezed
          ? _value.age_12_20
          : age_12_20 // ignore: cast_nullable_to_non_nullable
              as int?,
      age_20_30: age_20_30 == freezed
          ? _value.age_20_30
          : age_20_30 // ignore: cast_nullable_to_non_nullable
              as int?,
      age_30_40: age_30_40 == freezed
          ? _value.age_30_40
          : age_30_40 // ignore: cast_nullable_to_non_nullable
              as int?,
      age_40_50: age_40_50 == freezed
          ? _value.age_40_50
          : age_40_50 // ignore: cast_nullable_to_non_nullable
              as int?,
      age_50: age_50 == freezed
          ? _value.age_50
          : age_50 // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$AgeValuesCopyWith<$Res> implements $AgeValuesCopyWith<$Res> {
  factory _$AgeValuesCopyWith(
          _AgeValues value, $Res Function(_AgeValues) then) =
      __$AgeValuesCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? age_12_20,
      int? age_20_30,
      int? age_30_40,
      int? age_40_50,
      int? age_50});
}

/// @nodoc
class __$AgeValuesCopyWithImpl<$Res> extends _$AgeValuesCopyWithImpl<$Res>
    implements _$AgeValuesCopyWith<$Res> {
  __$AgeValuesCopyWithImpl(_AgeValues _value, $Res Function(_AgeValues) _then)
      : super(_value, (v) => _then(v as _AgeValues));

  @override
  _AgeValues get _value => super._value as _AgeValues;

  @override
  $Res call({
    Object? age_12_20 = freezed,
    Object? age_20_30 = freezed,
    Object? age_30_40 = freezed,
    Object? age_40_50 = freezed,
    Object? age_50 = freezed,
  }) {
    return _then(_AgeValues(
      age_12_20: age_12_20 == freezed
          ? _value.age_12_20
          : age_12_20 // ignore: cast_nullable_to_non_nullable
              as int?,
      age_20_30: age_20_30 == freezed
          ? _value.age_20_30
          : age_20_30 // ignore: cast_nullable_to_non_nullable
              as int?,
      age_30_40: age_30_40 == freezed
          ? _value.age_30_40
          : age_30_40 // ignore: cast_nullable_to_non_nullable
              as int?,
      age_40_50: age_40_50 == freezed
          ? _value.age_40_50
          : age_40_50 // ignore: cast_nullable_to_non_nullable
              as int?,
      age_50: age_50 == freezed
          ? _value.age_50
          : age_50 // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AgeValues with DiagnosticableTreeMixin implements _AgeValues {
  const _$_AgeValues(
      {this.age_12_20,
      this.age_20_30,
      this.age_30_40,
      this.age_40_50,
      this.age_50});

  factory _$_AgeValues.fromJson(Map<String, dynamic> json) =>
      _$$_AgeValuesFromJson(json);

  @override
  final int? age_12_20;
  @override
  final int? age_20_30;
  @override
  final int? age_30_40;
  @override
  final int? age_40_50;
  @override
  final int? age_50;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AgeValues(age_12_20: $age_12_20, age_20_30: $age_20_30, age_30_40: $age_30_40, age_40_50: $age_40_50, age_50: $age_50)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AgeValues'))
      ..add(DiagnosticsProperty('age_12_20', age_12_20))
      ..add(DiagnosticsProperty('age_20_30', age_20_30))
      ..add(DiagnosticsProperty('age_30_40', age_30_40))
      ..add(DiagnosticsProperty('age_40_50', age_40_50))
      ..add(DiagnosticsProperty('age_50', age_50));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AgeValues &&
            const DeepCollectionEquality().equals(other.age_12_20, age_12_20) &&
            const DeepCollectionEquality().equals(other.age_20_30, age_20_30) &&
            const DeepCollectionEquality().equals(other.age_30_40, age_30_40) &&
            const DeepCollectionEquality().equals(other.age_40_50, age_40_50) &&
            const DeepCollectionEquality().equals(other.age_50, age_50));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(age_12_20),
      const DeepCollectionEquality().hash(age_20_30),
      const DeepCollectionEquality().hash(age_30_40),
      const DeepCollectionEquality().hash(age_40_50),
      const DeepCollectionEquality().hash(age_50));

  @JsonKey(ignore: true)
  @override
  _$AgeValuesCopyWith<_AgeValues> get copyWith =>
      __$AgeValuesCopyWithImpl<_AgeValues>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AgeValuesToJson(this);
  }
}

abstract class _AgeValues implements AgeValues {
  const factory _AgeValues(
      {int? age_12_20,
      int? age_20_30,
      int? age_30_40,
      int? age_40_50,
      int? age_50}) = _$_AgeValues;

  factory _AgeValues.fromJson(Map<String, dynamic> json) =
      _$_AgeValues.fromJson;

  @override
  int? get age_12_20;
  @override
  int? get age_20_30;
  @override
  int? get age_30_40;
  @override
  int? get age_40_50;
  @override
  int? get age_50;
  @override
  @JsonKey(ignore: true)
  _$AgeValuesCopyWith<_AgeValues> get copyWith =>
      throw _privateConstructorUsedError;
}

EarningsValues _$EarningsValuesFromJson(Map<String, dynamic> json) {
  return _EarningsValues.fromJson(json);
}

/// @nodoc
class _$EarningsValuesTearOff {
  const _$EarningsValuesTearOff();

  _EarningsValues call({int? total, int? subscription, int? tracks}) {
    return _EarningsValues(
      total: total,
      subscription: subscription,
      tracks: tracks,
    );
  }

  EarningsValues fromJson(Map<String, Object?> json) {
    return EarningsValues.fromJson(json);
  }
}

/// @nodoc
const $EarningsValues = _$EarningsValuesTearOff();

/// @nodoc
mixin _$EarningsValues {
  int? get total => throw _privateConstructorUsedError;
  int? get subscription => throw _privateConstructorUsedError;
  int? get tracks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EarningsValuesCopyWith<EarningsValues> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EarningsValuesCopyWith<$Res> {
  factory $EarningsValuesCopyWith(
          EarningsValues value, $Res Function(EarningsValues) then) =
      _$EarningsValuesCopyWithImpl<$Res>;
  $Res call({int? total, int? subscription, int? tracks});
}

/// @nodoc
class _$EarningsValuesCopyWithImpl<$Res>
    implements $EarningsValuesCopyWith<$Res> {
  _$EarningsValuesCopyWithImpl(this._value, this._then);

  final EarningsValues _value;
  // ignore: unused_field
  final $Res Function(EarningsValues) _then;

  @override
  $Res call({
    Object? total = freezed,
    Object? subscription = freezed,
    Object? tracks = freezed,
  }) {
    return _then(_value.copyWith(
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      subscription: subscription == freezed
          ? _value.subscription
          : subscription // ignore: cast_nullable_to_non_nullable
              as int?,
      tracks: tracks == freezed
          ? _value.tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$EarningsValuesCopyWith<$Res>
    implements $EarningsValuesCopyWith<$Res> {
  factory _$EarningsValuesCopyWith(
          _EarningsValues value, $Res Function(_EarningsValues) then) =
      __$EarningsValuesCopyWithImpl<$Res>;
  @override
  $Res call({int? total, int? subscription, int? tracks});
}

/// @nodoc
class __$EarningsValuesCopyWithImpl<$Res>
    extends _$EarningsValuesCopyWithImpl<$Res>
    implements _$EarningsValuesCopyWith<$Res> {
  __$EarningsValuesCopyWithImpl(
      _EarningsValues _value, $Res Function(_EarningsValues) _then)
      : super(_value, (v) => _then(v as _EarningsValues));

  @override
  _EarningsValues get _value => super._value as _EarningsValues;

  @override
  $Res call({
    Object? total = freezed,
    Object? subscription = freezed,
    Object? tracks = freezed,
  }) {
    return _then(_EarningsValues(
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      subscription: subscription == freezed
          ? _value.subscription
          : subscription // ignore: cast_nullable_to_non_nullable
              as int?,
      tracks: tracks == freezed
          ? _value.tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EarningsValues
    with DiagnosticableTreeMixin
    implements _EarningsValues {
  const _$_EarningsValues({this.total, this.subscription, this.tracks});

  factory _$_EarningsValues.fromJson(Map<String, dynamic> json) =>
      _$$_EarningsValuesFromJson(json);

  @override
  final int? total;
  @override
  final int? subscription;
  @override
  final int? tracks;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EarningsValues(total: $total, subscription: $subscription, tracks: $tracks)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EarningsValues'))
      ..add(DiagnosticsProperty('total', total))
      ..add(DiagnosticsProperty('subscription', subscription))
      ..add(DiagnosticsProperty('tracks', tracks));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EarningsValues &&
            const DeepCollectionEquality().equals(other.total, total) &&
            const DeepCollectionEquality()
                .equals(other.subscription, subscription) &&
            const DeepCollectionEquality().equals(other.tracks, tracks));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(total),
      const DeepCollectionEquality().hash(subscription),
      const DeepCollectionEquality().hash(tracks));

  @JsonKey(ignore: true)
  @override
  _$EarningsValuesCopyWith<_EarningsValues> get copyWith =>
      __$EarningsValuesCopyWithImpl<_EarningsValues>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EarningsValuesToJson(this);
  }
}

abstract class _EarningsValues implements EarningsValues {
  const factory _EarningsValues({int? total, int? subscription, int? tracks}) =
      _$_EarningsValues;

  factory _EarningsValues.fromJson(Map<String, dynamic> json) =
      _$_EarningsValues.fromJson;

  @override
  int? get total;
  @override
  int? get subscription;
  @override
  int? get tracks;
  @override
  @JsonKey(ignore: true)
  _$EarningsValuesCopyWith<_EarningsValues> get copyWith =>
      throw _privateConstructorUsedError;
}

BestSellingData _$BestSellingDataFromJson(Map<String, dynamic> json) {
  return _BestSellingData.fromJson(json);
}

/// @nodoc
class _$BestSellingDataTearOff {
  const _$BestSellingDataTearOff();

  _BestSellingData call(
      {int? id,
      String? name,
      String? description,
      int? season_id,
      int? allow_comments,
      int? allow_share,
      String? cover,
      String? published_at,
      int? comments_count,
      int? likes_count,
      List<CommentsValues>? comments}) {
    return _BestSellingData(
      id: id,
      name: name,
      description: description,
      season_id: season_id,
      allow_comments: allow_comments,
      allow_share: allow_share,
      cover: cover,
      published_at: published_at,
      comments_count: comments_count,
      likes_count: likes_count,
      comments: comments,
    );
  }

  BestSellingData fromJson(Map<String, Object?> json) {
    return BestSellingData.fromJson(json);
  }
}

/// @nodoc
const $BestSellingData = _$BestSellingDataTearOff();

/// @nodoc
mixin _$BestSellingData {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get season_id => throw _privateConstructorUsedError;
  int? get allow_comments => throw _privateConstructorUsedError;
  int? get allow_share => throw _privateConstructorUsedError;
  String? get cover => throw _privateConstructorUsedError;
  String? get published_at => throw _privateConstructorUsedError;
  int? get comments_count => throw _privateConstructorUsedError;
  int? get likes_count => throw _privateConstructorUsedError;
  List<CommentsValues>? get comments => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BestSellingDataCopyWith<BestSellingData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BestSellingDataCopyWith<$Res> {
  factory $BestSellingDataCopyWith(
          BestSellingData value, $Res Function(BestSellingData) then) =
      _$BestSellingDataCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? name,
      String? description,
      int? season_id,
      int? allow_comments,
      int? allow_share,
      String? cover,
      String? published_at,
      int? comments_count,
      int? likes_count,
      List<CommentsValues>? comments});
}

/// @nodoc
class _$BestSellingDataCopyWithImpl<$Res>
    implements $BestSellingDataCopyWith<$Res> {
  _$BestSellingDataCopyWithImpl(this._value, this._then);

  final BestSellingData _value;
  // ignore: unused_field
  final $Res Function(BestSellingData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? season_id = freezed,
    Object? allow_comments = freezed,
    Object? allow_share = freezed,
    Object? cover = freezed,
    Object? published_at = freezed,
    Object? comments_count = freezed,
    Object? likes_count = freezed,
    Object? comments = freezed,
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
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      season_id: season_id == freezed
          ? _value.season_id
          : season_id // ignore: cast_nullable_to_non_nullable
              as int?,
      allow_comments: allow_comments == freezed
          ? _value.allow_comments
          : allow_comments // ignore: cast_nullable_to_non_nullable
              as int?,
      allow_share: allow_share == freezed
          ? _value.allow_share
          : allow_share // ignore: cast_nullable_to_non_nullable
              as int?,
      cover: cover == freezed
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
      published_at: published_at == freezed
          ? _value.published_at
          : published_at // ignore: cast_nullable_to_non_nullable
              as String?,
      comments_count: comments_count == freezed
          ? _value.comments_count
          : comments_count // ignore: cast_nullable_to_non_nullable
              as int?,
      likes_count: likes_count == freezed
          ? _value.likes_count
          : likes_count // ignore: cast_nullable_to_non_nullable
              as int?,
      comments: comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentsValues>?,
    ));
  }
}

/// @nodoc
abstract class _$BestSellingDataCopyWith<$Res>
    implements $BestSellingDataCopyWith<$Res> {
  factory _$BestSellingDataCopyWith(
          _BestSellingData value, $Res Function(_BestSellingData) then) =
      __$BestSellingDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? name,
      String? description,
      int? season_id,
      int? allow_comments,
      int? allow_share,
      String? cover,
      String? published_at,
      int? comments_count,
      int? likes_count,
      List<CommentsValues>? comments});
}

/// @nodoc
class __$BestSellingDataCopyWithImpl<$Res>
    extends _$BestSellingDataCopyWithImpl<$Res>
    implements _$BestSellingDataCopyWith<$Res> {
  __$BestSellingDataCopyWithImpl(
      _BestSellingData _value, $Res Function(_BestSellingData) _then)
      : super(_value, (v) => _then(v as _BestSellingData));

  @override
  _BestSellingData get _value => super._value as _BestSellingData;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? season_id = freezed,
    Object? allow_comments = freezed,
    Object? allow_share = freezed,
    Object? cover = freezed,
    Object? published_at = freezed,
    Object? comments_count = freezed,
    Object? likes_count = freezed,
    Object? comments = freezed,
  }) {
    return _then(_BestSellingData(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      season_id: season_id == freezed
          ? _value.season_id
          : season_id // ignore: cast_nullable_to_non_nullable
              as int?,
      allow_comments: allow_comments == freezed
          ? _value.allow_comments
          : allow_comments // ignore: cast_nullable_to_non_nullable
              as int?,
      allow_share: allow_share == freezed
          ? _value.allow_share
          : allow_share // ignore: cast_nullable_to_non_nullable
              as int?,
      cover: cover == freezed
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
      published_at: published_at == freezed
          ? _value.published_at
          : published_at // ignore: cast_nullable_to_non_nullable
              as String?,
      comments_count: comments_count == freezed
          ? _value.comments_count
          : comments_count // ignore: cast_nullable_to_non_nullable
              as int?,
      likes_count: likes_count == freezed
          ? _value.likes_count
          : likes_count // ignore: cast_nullable_to_non_nullable
              as int?,
      comments: comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentsValues>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BestSellingData
    with DiagnosticableTreeMixin
    implements _BestSellingData {
  const _$_BestSellingData(
      {this.id,
      this.name,
      this.description,
      this.season_id,
      this.allow_comments,
      this.allow_share,
      this.cover,
      this.published_at,
      this.comments_count,
      this.likes_count,
      this.comments});

  factory _$_BestSellingData.fromJson(Map<String, dynamic> json) =>
      _$$_BestSellingDataFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final int? season_id;
  @override
  final int? allow_comments;
  @override
  final int? allow_share;
  @override
  final String? cover;
  @override
  final String? published_at;
  @override
  final int? comments_count;
  @override
  final int? likes_count;
  @override
  final List<CommentsValues>? comments;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BestSellingData(id: $id, name: $name, description: $description, season_id: $season_id, allow_comments: $allow_comments, allow_share: $allow_share, cover: $cover, published_at: $published_at, comments_count: $comments_count, likes_count: $likes_count, comments: $comments)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BestSellingData'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('season_id', season_id))
      ..add(DiagnosticsProperty('allow_comments', allow_comments))
      ..add(DiagnosticsProperty('allow_share', allow_share))
      ..add(DiagnosticsProperty('cover', cover))
      ..add(DiagnosticsProperty('published_at', published_at))
      ..add(DiagnosticsProperty('comments_count', comments_count))
      ..add(DiagnosticsProperty('likes_count', likes_count))
      ..add(DiagnosticsProperty('comments', comments));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BestSellingData &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.season_id, season_id) &&
            const DeepCollectionEquality()
                .equals(other.allow_comments, allow_comments) &&
            const DeepCollectionEquality()
                .equals(other.allow_share, allow_share) &&
            const DeepCollectionEquality().equals(other.cover, cover) &&
            const DeepCollectionEquality()
                .equals(other.published_at, published_at) &&
            const DeepCollectionEquality()
                .equals(other.comments_count, comments_count) &&
            const DeepCollectionEquality()
                .equals(other.likes_count, likes_count) &&
            const DeepCollectionEquality().equals(other.comments, comments));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(season_id),
      const DeepCollectionEquality().hash(allow_comments),
      const DeepCollectionEquality().hash(allow_share),
      const DeepCollectionEquality().hash(cover),
      const DeepCollectionEquality().hash(published_at),
      const DeepCollectionEquality().hash(comments_count),
      const DeepCollectionEquality().hash(likes_count),
      const DeepCollectionEquality().hash(comments));

  @JsonKey(ignore: true)
  @override
  _$BestSellingDataCopyWith<_BestSellingData> get copyWith =>
      __$BestSellingDataCopyWithImpl<_BestSellingData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BestSellingDataToJson(this);
  }
}

abstract class _BestSellingData implements BestSellingData {
  const factory _BestSellingData(
      {int? id,
      String? name,
      String? description,
      int? season_id,
      int? allow_comments,
      int? allow_share,
      String? cover,
      String? published_at,
      int? comments_count,
      int? likes_count,
      List<CommentsValues>? comments}) = _$_BestSellingData;

  factory _BestSellingData.fromJson(Map<String, dynamic> json) =
      _$_BestSellingData.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  int? get season_id;
  @override
  int? get allow_comments;
  @override
  int? get allow_share;
  @override
  String? get cover;
  @override
  String? get published_at;
  @override
  int? get comments_count;
  @override
  int? get likes_count;
  @override
  List<CommentsValues>? get comments;
  @override
  @JsonKey(ignore: true)
  _$BestSellingDataCopyWith<_BestSellingData> get copyWith =>
      throw _privateConstructorUsedError;
}
