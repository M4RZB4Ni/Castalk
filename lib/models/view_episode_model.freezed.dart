// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'view_episode_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ViewEpisodeModel _$ViewEpisodeModelFromJson(Map<String, dynamic> json) {
  return _ViewEpisodeModel.fromJson(json);
}

/// @nodoc
class _$ViewEpisodeModelTearOff {
  const _$ViewEpisodeModelTearOff();

  _ViewEpisodeModel call({Data? data}) {
    return _ViewEpisodeModel(
      data: data,
    );
  }

  ViewEpisodeModel fromJson(Map<String, Object?> json) {
    return ViewEpisodeModel.fromJson(json);
  }
}

/// @nodoc
const $ViewEpisodeModel = _$ViewEpisodeModelTearOff();

/// @nodoc
mixin _$ViewEpisodeModel {
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ViewEpisodeModelCopyWith<ViewEpisodeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewEpisodeModelCopyWith<$Res> {
  factory $ViewEpisodeModelCopyWith(
          ViewEpisodeModel value, $Res Function(ViewEpisodeModel) then) =
      _$ViewEpisodeModelCopyWithImpl<$Res>;
  $Res call({Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ViewEpisodeModelCopyWithImpl<$Res>
    implements $ViewEpisodeModelCopyWith<$Res> {
  _$ViewEpisodeModelCopyWithImpl(this._value, this._then);

  final ViewEpisodeModel _value;
  // ignore: unused_field
  final $Res Function(ViewEpisodeModel) _then;

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
abstract class _$ViewEpisodeModelCopyWith<$Res>
    implements $ViewEpisodeModelCopyWith<$Res> {
  factory _$ViewEpisodeModelCopyWith(
          _ViewEpisodeModel value, $Res Function(_ViewEpisodeModel) then) =
      __$ViewEpisodeModelCopyWithImpl<$Res>;
  @override
  $Res call({Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$ViewEpisodeModelCopyWithImpl<$Res>
    extends _$ViewEpisodeModelCopyWithImpl<$Res>
    implements _$ViewEpisodeModelCopyWith<$Res> {
  __$ViewEpisodeModelCopyWithImpl(
      _ViewEpisodeModel _value, $Res Function(_ViewEpisodeModel) _then)
      : super(_value, (v) => _then(v as _ViewEpisodeModel));

  @override
  _ViewEpisodeModel get _value => super._value as _ViewEpisodeModel;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_ViewEpisodeModel(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ViewEpisodeModel extends _ViewEpisodeModel
    with DiagnosticableTreeMixin {
  const _$_ViewEpisodeModel({this.data}) : super._();

  factory _$_ViewEpisodeModel.fromJson(Map<String, dynamic> json) =>
      _$$_ViewEpisodeModelFromJson(json);

  @override
  final Data? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ViewEpisodeModel(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ViewEpisodeModel'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ViewEpisodeModel &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$ViewEpisodeModelCopyWith<_ViewEpisodeModel> get copyWith =>
      __$ViewEpisodeModelCopyWithImpl<_ViewEpisodeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ViewEpisodeModelToJson(this);
  }
}

abstract class _ViewEpisodeModel extends ViewEpisodeModel {
  const factory _ViewEpisodeModel({Data? data}) = _$_ViewEpisodeModel;
  const _ViewEpisodeModel._() : super._();

  factory _ViewEpisodeModel.fromJson(Map<String, dynamic> json) =
      _$_ViewEpisodeModel.fromJson;

  @override
  Data? get data;
  @override
  @JsonKey(ignore: true)
  _$ViewEpisodeModelCopyWith<_ViewEpisodeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
class _$DataTearOff {
  const _$DataTearOff();

  _Data call(
      {int? id,
      String? name,
      String? description,
      int? season_id,
      int? allow_comments,
      int? allow_share,
      int? comments_count,
      int? likes_count,
      PodcastValues? podcast,
      SeasonValues? season,
      List<CommentsValues>? comments}) {
    return _Data(
      id: id,
      name: name,
      description: description,
      season_id: season_id,
      allow_comments: allow_comments,
      allow_share: allow_share,
      comments_count: comments_count,
      likes_count: likes_count,
      podcast: podcast,
      season: season,
      comments: comments,
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
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get season_id => throw _privateConstructorUsedError;
  int? get allow_comments => throw _privateConstructorUsedError;
  int? get allow_share => throw _privateConstructorUsedError;
  int? get comments_count => throw _privateConstructorUsedError;
  int? get likes_count => throw _privateConstructorUsedError;
  PodcastValues? get podcast => throw _privateConstructorUsedError;
  SeasonValues? get season => throw _privateConstructorUsedError;
  List<CommentsValues>? get comments => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? name,
      String? description,
      int? season_id,
      int? allow_comments,
      int? allow_share,
      int? comments_count,
      int? likes_count,
      PodcastValues? podcast,
      SeasonValues? season,
      List<CommentsValues>? comments});

  $PodcastValuesCopyWith<$Res>? get podcast;
  $SeasonValuesCopyWith<$Res>? get season;
}

/// @nodoc
class _$DataCopyWithImpl<$Res> implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  final Data _value;
  // ignore: unused_field
  final $Res Function(Data) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? season_id = freezed,
    Object? allow_comments = freezed,
    Object? allow_share = freezed,
    Object? comments_count = freezed,
    Object? likes_count = freezed,
    Object? podcast = freezed,
    Object? season = freezed,
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
      comments_count: comments_count == freezed
          ? _value.comments_count
          : comments_count // ignore: cast_nullable_to_non_nullable
              as int?,
      likes_count: likes_count == freezed
          ? _value.likes_count
          : likes_count // ignore: cast_nullable_to_non_nullable
              as int?,
      podcast: podcast == freezed
          ? _value.podcast
          : podcast // ignore: cast_nullable_to_non_nullable
              as PodcastValues?,
      season: season == freezed
          ? _value.season
          : season // ignore: cast_nullable_to_non_nullable
              as SeasonValues?,
      comments: comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentsValues>?,
    ));
  }

  @override
  $PodcastValuesCopyWith<$Res>? get podcast {
    if (_value.podcast == null) {
      return null;
    }

    return $PodcastValuesCopyWith<$Res>(_value.podcast!, (value) {
      return _then(_value.copyWith(podcast: value));
    });
  }

  @override
  $SeasonValuesCopyWith<$Res>? get season {
    if (_value.season == null) {
      return null;
    }

    return $SeasonValuesCopyWith<$Res>(_value.season!, (value) {
      return _then(_value.copyWith(season: value));
    });
  }
}

/// @nodoc
abstract class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) then) =
      __$DataCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? name,
      String? description,
      int? season_id,
      int? allow_comments,
      int? allow_share,
      int? comments_count,
      int? likes_count,
      PodcastValues? podcast,
      SeasonValues? season,
      List<CommentsValues>? comments});

  @override
  $PodcastValuesCopyWith<$Res>? get podcast;
  @override
  $SeasonValuesCopyWith<$Res>? get season;
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
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? season_id = freezed,
    Object? allow_comments = freezed,
    Object? allow_share = freezed,
    Object? comments_count = freezed,
    Object? likes_count = freezed,
    Object? podcast = freezed,
    Object? season = freezed,
    Object? comments = freezed,
  }) {
    return _then(_Data(
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
      comments_count: comments_count == freezed
          ? _value.comments_count
          : comments_count // ignore: cast_nullable_to_non_nullable
              as int?,
      likes_count: likes_count == freezed
          ? _value.likes_count
          : likes_count // ignore: cast_nullable_to_non_nullable
              as int?,
      podcast: podcast == freezed
          ? _value.podcast
          : podcast // ignore: cast_nullable_to_non_nullable
              as PodcastValues?,
      season: season == freezed
          ? _value.season
          : season // ignore: cast_nullable_to_non_nullable
              as SeasonValues?,
      comments: comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentsValues>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data with DiagnosticableTreeMixin implements _Data {
  const _$_Data(
      {this.id,
      this.name,
      this.description,
      this.season_id,
      this.allow_comments,
      this.allow_share,
      this.comments_count,
      this.likes_count,
      this.podcast,
      this.season,
      this.comments});

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

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
  final int? comments_count;
  @override
  final int? likes_count;
  @override
  final PodcastValues? podcast;
  @override
  final SeasonValues? season;
  @override
  final List<CommentsValues>? comments;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Data(id: $id, name: $name, description: $description, season_id: $season_id, allow_comments: $allow_comments, allow_share: $allow_share, comments_count: $comments_count, likes_count: $likes_count, podcast: $podcast, season: $season, comments: $comments)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Data'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('season_id', season_id))
      ..add(DiagnosticsProperty('allow_comments', allow_comments))
      ..add(DiagnosticsProperty('allow_share', allow_share))
      ..add(DiagnosticsProperty('comments_count', comments_count))
      ..add(DiagnosticsProperty('likes_count', likes_count))
      ..add(DiagnosticsProperty('podcast', podcast))
      ..add(DiagnosticsProperty('season', season))
      ..add(DiagnosticsProperty('comments', comments));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Data &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.season_id, season_id) &&
            const DeepCollectionEquality()
                .equals(other.allow_comments, allow_comments) &&
            const DeepCollectionEquality()
                .equals(other.allow_share, allow_share) &&
            const DeepCollectionEquality()
                .equals(other.comments_count, comments_count) &&
            const DeepCollectionEquality()
                .equals(other.likes_count, likes_count) &&
            const DeepCollectionEquality().equals(other.podcast, podcast) &&
            const DeepCollectionEquality().equals(other.season, season) &&
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
      const DeepCollectionEquality().hash(comments_count),
      const DeepCollectionEquality().hash(likes_count),
      const DeepCollectionEquality().hash(podcast),
      const DeepCollectionEquality().hash(season),
      const DeepCollectionEquality().hash(comments));

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
      {int? id,
      String? name,
      String? description,
      int? season_id,
      int? allow_comments,
      int? allow_share,
      int? comments_count,
      int? likes_count,
      PodcastValues? podcast,
      SeasonValues? season,
      List<CommentsValues>? comments}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

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
  int? get comments_count;
  @override
  int? get likes_count;
  @override
  PodcastValues? get podcast;
  @override
  SeasonValues? get season;
  @override
  List<CommentsValues>? get comments;
  @override
  @JsonKey(ignore: true)
  _$DataCopyWith<_Data> get copyWith => throw _privateConstructorUsedError;
}

PodcastValues _$PodcastValuesFromJson(Map<String, dynamic> json) {
  return _PodcastValues.fromJson(json);
}

/// @nodoc
class _$PodcastValuesTearOff {
  const _$PodcastValuesTearOff();

  _PodcastValues call(
      {int? id,
      int? category_id,
      String? title,
      String? cover,
      String? description,
      int? user_id,
      int? covers,
      int? likes_count}) {
    return _PodcastValues(
      id: id,
      category_id: category_id,
      title: title,
      cover: cover,
      description: description,
      user_id: user_id,
      covers: covers,
      likes_count: likes_count,
    );
  }

  PodcastValues fromJson(Map<String, Object?> json) {
    return PodcastValues.fromJson(json);
  }
}

/// @nodoc
const $PodcastValues = _$PodcastValuesTearOff();

/// @nodoc
mixin _$PodcastValues {
  int? get id => throw _privateConstructorUsedError;
  int? get category_id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get cover => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get user_id => throw _privateConstructorUsedError;
  int? get covers => throw _privateConstructorUsedError;
  int? get likes_count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PodcastValuesCopyWith<PodcastValues> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PodcastValuesCopyWith<$Res> {
  factory $PodcastValuesCopyWith(
          PodcastValues value, $Res Function(PodcastValues) then) =
      _$PodcastValuesCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      int? category_id,
      String? title,
      String? cover,
      String? description,
      int? user_id,
      int? covers,
      int? likes_count});
}

/// @nodoc
class _$PodcastValuesCopyWithImpl<$Res>
    implements $PodcastValuesCopyWith<$Res> {
  _$PodcastValuesCopyWithImpl(this._value, this._then);

  final PodcastValues _value;
  // ignore: unused_field
  final $Res Function(PodcastValues) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? category_id = freezed,
    Object? title = freezed,
    Object? cover = freezed,
    Object? description = freezed,
    Object? user_id = freezed,
    Object? covers = freezed,
    Object? likes_count = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      category_id: category_id == freezed
          ? _value.category_id
          : category_id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      cover: cover == freezed
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      user_id: user_id == freezed
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int?,
      covers: covers == freezed
          ? _value.covers
          : covers // ignore: cast_nullable_to_non_nullable
              as int?,
      likes_count: likes_count == freezed
          ? _value.likes_count
          : likes_count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$PodcastValuesCopyWith<$Res>
    implements $PodcastValuesCopyWith<$Res> {
  factory _$PodcastValuesCopyWith(
          _PodcastValues value, $Res Function(_PodcastValues) then) =
      __$PodcastValuesCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      int? category_id,
      String? title,
      String? cover,
      String? description,
      int? user_id,
      int? covers,
      int? likes_count});
}

/// @nodoc
class __$PodcastValuesCopyWithImpl<$Res>
    extends _$PodcastValuesCopyWithImpl<$Res>
    implements _$PodcastValuesCopyWith<$Res> {
  __$PodcastValuesCopyWithImpl(
      _PodcastValues _value, $Res Function(_PodcastValues) _then)
      : super(_value, (v) => _then(v as _PodcastValues));

  @override
  _PodcastValues get _value => super._value as _PodcastValues;

  @override
  $Res call({
    Object? id = freezed,
    Object? category_id = freezed,
    Object? title = freezed,
    Object? cover = freezed,
    Object? description = freezed,
    Object? user_id = freezed,
    Object? covers = freezed,
    Object? likes_count = freezed,
  }) {
    return _then(_PodcastValues(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      category_id: category_id == freezed
          ? _value.category_id
          : category_id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      cover: cover == freezed
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      user_id: user_id == freezed
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int?,
      covers: covers == freezed
          ? _value.covers
          : covers // ignore: cast_nullable_to_non_nullable
              as int?,
      likes_count: likes_count == freezed
          ? _value.likes_count
          : likes_count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PodcastValues with DiagnosticableTreeMixin implements _PodcastValues {
  const _$_PodcastValues(
      {this.id,
      this.category_id,
      this.title,
      this.cover,
      this.description,
      this.user_id,
      this.covers,
      this.likes_count});

  factory _$_PodcastValues.fromJson(Map<String, dynamic> json) =>
      _$$_PodcastValuesFromJson(json);

  @override
  final int? id;
  @override
  final int? category_id;
  @override
  final String? title;
  @override
  final String? cover;
  @override
  final String? description;
  @override
  final int? user_id;
  @override
  final int? covers;
  @override
  final int? likes_count;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PodcastValues(id: $id, category_id: $category_id, title: $title, cover: $cover, description: $description, user_id: $user_id, covers: $covers, likes_count: $likes_count)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PodcastValues'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('category_id', category_id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('cover', cover))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('user_id', user_id))
      ..add(DiagnosticsProperty('covers', covers))
      ..add(DiagnosticsProperty('likes_count', likes_count));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PodcastValues &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.category_id, category_id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.cover, cover) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.user_id, user_id) &&
            const DeepCollectionEquality().equals(other.covers, covers) &&
            const DeepCollectionEquality()
                .equals(other.likes_count, likes_count));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(category_id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(cover),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(user_id),
      const DeepCollectionEquality().hash(covers),
      const DeepCollectionEquality().hash(likes_count));

  @JsonKey(ignore: true)
  @override
  _$PodcastValuesCopyWith<_PodcastValues> get copyWith =>
      __$PodcastValuesCopyWithImpl<_PodcastValues>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PodcastValuesToJson(this);
  }
}

abstract class _PodcastValues implements PodcastValues {
  const factory _PodcastValues(
      {int? id,
      int? category_id,
      String? title,
      String? cover,
      String? description,
      int? user_id,
      int? covers,
      int? likes_count}) = _$_PodcastValues;

  factory _PodcastValues.fromJson(Map<String, dynamic> json) =
      _$_PodcastValues.fromJson;

  @override
  int? get id;
  @override
  int? get category_id;
  @override
  String? get title;
  @override
  String? get cover;
  @override
  String? get description;
  @override
  int? get user_id;
  @override
  int? get covers;
  @override
  int? get likes_count;
  @override
  @JsonKey(ignore: true)
  _$PodcastValuesCopyWith<_PodcastValues> get copyWith =>
      throw _privateConstructorUsedError;
}

SeasonValues _$SeasonValuesFromJson(Map<String, dynamic> json) {
  return _SeasonValues.fromJson(json);
}

/// @nodoc
class _$SeasonValuesTearOff {
  const _$SeasonValuesTearOff();

  _SeasonValues call(
      {int? id,
      String? name,
      String? description,
      int? podcast_id,
      String? cover,
      PodcastValues? podcast,
      List<CommentsValues>? comments,
      List<EpicodesValues>? episodes,
      int? likes_count}) {
    return _SeasonValues(
      id: id,
      name: name,
      description: description,
      podcast_id: podcast_id,
      cover: cover,
      podcast: podcast,
      comments: comments,
      episodes: episodes,
      likes_count: likes_count,
    );
  }

  SeasonValues fromJson(Map<String, Object?> json) {
    return SeasonValues.fromJson(json);
  }
}

/// @nodoc
const $SeasonValues = _$SeasonValuesTearOff();

/// @nodoc
mixin _$SeasonValues {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get podcast_id => throw _privateConstructorUsedError;
  String? get cover => throw _privateConstructorUsedError;
  PodcastValues? get podcast => throw _privateConstructorUsedError;
  List<CommentsValues>? get comments => throw _privateConstructorUsedError;
  List<EpicodesValues>? get episodes => throw _privateConstructorUsedError;
  int? get likes_count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SeasonValuesCopyWith<SeasonValues> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeasonValuesCopyWith<$Res> {
  factory $SeasonValuesCopyWith(
          SeasonValues value, $Res Function(SeasonValues) then) =
      _$SeasonValuesCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? name,
      String? description,
      int? podcast_id,
      String? cover,
      PodcastValues? podcast,
      List<CommentsValues>? comments,
      List<EpicodesValues>? episodes,
      int? likes_count});

  $PodcastValuesCopyWith<$Res>? get podcast;
}

/// @nodoc
class _$SeasonValuesCopyWithImpl<$Res> implements $SeasonValuesCopyWith<$Res> {
  _$SeasonValuesCopyWithImpl(this._value, this._then);

  final SeasonValues _value;
  // ignore: unused_field
  final $Res Function(SeasonValues) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? podcast_id = freezed,
    Object? cover = freezed,
    Object? podcast = freezed,
    Object? comments = freezed,
    Object? episodes = freezed,
    Object? likes_count = freezed,
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
      podcast_id: podcast_id == freezed
          ? _value.podcast_id
          : podcast_id // ignore: cast_nullable_to_non_nullable
              as int?,
      cover: cover == freezed
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
      podcast: podcast == freezed
          ? _value.podcast
          : podcast // ignore: cast_nullable_to_non_nullable
              as PodcastValues?,
      comments: comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentsValues>?,
      episodes: episodes == freezed
          ? _value.episodes
          : episodes // ignore: cast_nullable_to_non_nullable
              as List<EpicodesValues>?,
      likes_count: likes_count == freezed
          ? _value.likes_count
          : likes_count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  @override
  $PodcastValuesCopyWith<$Res>? get podcast {
    if (_value.podcast == null) {
      return null;
    }

    return $PodcastValuesCopyWith<$Res>(_value.podcast!, (value) {
      return _then(_value.copyWith(podcast: value));
    });
  }
}

/// @nodoc
abstract class _$SeasonValuesCopyWith<$Res>
    implements $SeasonValuesCopyWith<$Res> {
  factory _$SeasonValuesCopyWith(
          _SeasonValues value, $Res Function(_SeasonValues) then) =
      __$SeasonValuesCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? name,
      String? description,
      int? podcast_id,
      String? cover,
      PodcastValues? podcast,
      List<CommentsValues>? comments,
      List<EpicodesValues>? episodes,
      int? likes_count});

  @override
  $PodcastValuesCopyWith<$Res>? get podcast;
}

/// @nodoc
class __$SeasonValuesCopyWithImpl<$Res> extends _$SeasonValuesCopyWithImpl<$Res>
    implements _$SeasonValuesCopyWith<$Res> {
  __$SeasonValuesCopyWithImpl(
      _SeasonValues _value, $Res Function(_SeasonValues) _then)
      : super(_value, (v) => _then(v as _SeasonValues));

  @override
  _SeasonValues get _value => super._value as _SeasonValues;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? podcast_id = freezed,
    Object? cover = freezed,
    Object? podcast = freezed,
    Object? comments = freezed,
    Object? episodes = freezed,
    Object? likes_count = freezed,
  }) {
    return _then(_SeasonValues(
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
      podcast_id: podcast_id == freezed
          ? _value.podcast_id
          : podcast_id // ignore: cast_nullable_to_non_nullable
              as int?,
      cover: cover == freezed
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
      podcast: podcast == freezed
          ? _value.podcast
          : podcast // ignore: cast_nullable_to_non_nullable
              as PodcastValues?,
      comments: comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentsValues>?,
      episodes: episodes == freezed
          ? _value.episodes
          : episodes // ignore: cast_nullable_to_non_nullable
              as List<EpicodesValues>?,
      likes_count: likes_count == freezed
          ? _value.likes_count
          : likes_count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SeasonValues with DiagnosticableTreeMixin implements _SeasonValues {
  const _$_SeasonValues(
      {this.id,
      this.name,
      this.description,
      this.podcast_id,
      this.cover,
      this.podcast,
      this.comments,
      this.episodes,
      this.likes_count});

  factory _$_SeasonValues.fromJson(Map<String, dynamic> json) =>
      _$$_SeasonValuesFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final int? podcast_id;
  @override
  final String? cover;
  @override
  final PodcastValues? podcast;
  @override
  final List<CommentsValues>? comments;
  @override
  final List<EpicodesValues>? episodes;
  @override
  final int? likes_count;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SeasonValues(id: $id, name: $name, description: $description, podcast_id: $podcast_id, cover: $cover, podcast: $podcast, comments: $comments, episodes: $episodes, likes_count: $likes_count)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SeasonValues'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('podcast_id', podcast_id))
      ..add(DiagnosticsProperty('cover', cover))
      ..add(DiagnosticsProperty('podcast', podcast))
      ..add(DiagnosticsProperty('comments', comments))
      ..add(DiagnosticsProperty('episodes', episodes))
      ..add(DiagnosticsProperty('likes_count', likes_count));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SeasonValues &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.podcast_id, podcast_id) &&
            const DeepCollectionEquality().equals(other.cover, cover) &&
            const DeepCollectionEquality().equals(other.podcast, podcast) &&
            const DeepCollectionEquality().equals(other.comments, comments) &&
            const DeepCollectionEquality().equals(other.episodes, episodes) &&
            const DeepCollectionEquality()
                .equals(other.likes_count, likes_count));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(podcast_id),
      const DeepCollectionEquality().hash(cover),
      const DeepCollectionEquality().hash(podcast),
      const DeepCollectionEquality().hash(comments),
      const DeepCollectionEquality().hash(episodes),
      const DeepCollectionEquality().hash(likes_count));

  @JsonKey(ignore: true)
  @override
  _$SeasonValuesCopyWith<_SeasonValues> get copyWith =>
      __$SeasonValuesCopyWithImpl<_SeasonValues>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SeasonValuesToJson(this);
  }
}

abstract class _SeasonValues implements SeasonValues {
  const factory _SeasonValues(
      {int? id,
      String? name,
      String? description,
      int? podcast_id,
      String? cover,
      PodcastValues? podcast,
      List<CommentsValues>? comments,
      List<EpicodesValues>? episodes,
      int? likes_count}) = _$_SeasonValues;

  factory _SeasonValues.fromJson(Map<String, dynamic> json) =
      _$_SeasonValues.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  int? get podcast_id;
  @override
  String? get cover;
  @override
  PodcastValues? get podcast;
  @override
  List<CommentsValues>? get comments;
  @override
  List<EpicodesValues>? get episodes;
  @override
  int? get likes_count;
  @override
  @JsonKey(ignore: true)
  _$SeasonValuesCopyWith<_SeasonValues> get copyWith =>
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

EpicodesValues _$EpicodesValuesFromJson(Map<String, dynamic> json) {
  return _EpicodesValues.fromJson(json);
}

/// @nodoc
class _$EpicodesValuesTearOff {
  const _$EpicodesValuesTearOff();

  _EpicodesValues call(
      {int? id,
      String? name,
      String? description,
      int? season_id,
      int? allow_comments,
      int? allow_share,
      int? cover,
      int? comments_count,
      int? likes_count,
      List<CommentsValues>? comments}) {
    return _EpicodesValues(
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

  EpicodesValues fromJson(Map<String, Object?> json) {
    return EpicodesValues.fromJson(json);
  }
}

/// @nodoc
const $EpicodesValues = _$EpicodesValuesTearOff();

/// @nodoc
mixin _$EpicodesValues {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get season_id => throw _privateConstructorUsedError;
  int? get allow_comments => throw _privateConstructorUsedError;
  int? get allow_share => throw _privateConstructorUsedError;
  int? get cover => throw _privateConstructorUsedError;
  int? get comments_count => throw _privateConstructorUsedError;
  int? get likes_count => throw _privateConstructorUsedError;
  List<CommentsValues>? get comments => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EpicodesValuesCopyWith<EpicodesValues> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpicodesValuesCopyWith<$Res> {
  factory $EpicodesValuesCopyWith(
          EpicodesValues value, $Res Function(EpicodesValues) then) =
      _$EpicodesValuesCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? name,
      String? description,
      int? season_id,
      int? allow_comments,
      int? allow_share,
      int? cover,
      int? comments_count,
      int? likes_count,
      List<CommentsValues>? comments});
}

/// @nodoc
class _$EpicodesValuesCopyWithImpl<$Res>
    implements $EpicodesValuesCopyWith<$Res> {
  _$EpicodesValuesCopyWithImpl(this._value, this._then);

  final EpicodesValues _value;
  // ignore: unused_field
  final $Res Function(EpicodesValues) _then;

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
              as int?,
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
abstract class _$EpicodesValuesCopyWith<$Res>
    implements $EpicodesValuesCopyWith<$Res> {
  factory _$EpicodesValuesCopyWith(
          _EpicodesValues value, $Res Function(_EpicodesValues) then) =
      __$EpicodesValuesCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? name,
      String? description,
      int? season_id,
      int? allow_comments,
      int? allow_share,
      int? cover,
      int? comments_count,
      int? likes_count,
      List<CommentsValues>? comments});
}

/// @nodoc
class __$EpicodesValuesCopyWithImpl<$Res>
    extends _$EpicodesValuesCopyWithImpl<$Res>
    implements _$EpicodesValuesCopyWith<$Res> {
  __$EpicodesValuesCopyWithImpl(
      _EpicodesValues _value, $Res Function(_EpicodesValues) _then)
      : super(_value, (v) => _then(v as _EpicodesValues));

  @override
  _EpicodesValues get _value => super._value as _EpicodesValues;

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
    return _then(_EpicodesValues(
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
              as int?,
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
class _$_EpicodesValues
    with DiagnosticableTreeMixin
    implements _EpicodesValues {
  const _$_EpicodesValues(
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

  factory _$_EpicodesValues.fromJson(Map<String, dynamic> json) =>
      _$$_EpicodesValuesFromJson(json);

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
  final int? cover;
  @override
  final int? comments_count;
  @override
  final int? likes_count;
  @override
  final List<CommentsValues>? comments;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EpicodesValues(id: $id, name: $name, description: $description, season_id: $season_id, allow_comments: $allow_comments, allow_share: $allow_share, cover: $cover, comments_count: $comments_count, likes_count: $likes_count, comments: $comments)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EpicodesValues'))
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
            other is _EpicodesValues &&
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
  _$EpicodesValuesCopyWith<_EpicodesValues> get copyWith =>
      __$EpicodesValuesCopyWithImpl<_EpicodesValues>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EpicodesValuesToJson(this);
  }
}

abstract class _EpicodesValues implements EpicodesValues {
  const factory _EpicodesValues(
      {int? id,
      String? name,
      String? description,
      int? season_id,
      int? allow_comments,
      int? allow_share,
      int? cover,
      int? comments_count,
      int? likes_count,
      List<CommentsValues>? comments}) = _$_EpicodesValues;

  factory _EpicodesValues.fromJson(Map<String, dynamic> json) =
      _$_EpicodesValues.fromJson;

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
  int? get cover;
  @override
  int? get comments_count;
  @override
  int? get likes_count;
  @override
  List<CommentsValues>? get comments;
  @override
  @JsonKey(ignore: true)
  _$EpicodesValuesCopyWith<_EpicodesValues> get copyWith =>
      throw _privateConstructorUsedError;
}