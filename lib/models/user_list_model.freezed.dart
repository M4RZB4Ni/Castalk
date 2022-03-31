// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserListModel _$UserListModelFromJson(Map<String, dynamic> json) {
  return _UserListModel.fromJson(json);
}

/// @nodoc
class _$UserListModelTearOff {
  const _$UserListModelTearOff();

  _UserListModel call({List<UserListItems>? data}) {
    return _UserListModel(
      data: data,
    );
  }

  UserListModel fromJson(Map<String, Object?> json) {
    return UserListModel.fromJson(json);
  }
}

/// @nodoc
const $UserListModel = _$UserListModelTearOff();

/// @nodoc
mixin _$UserListModel {
  List<UserListItems>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserListModelCopyWith<UserListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserListModelCopyWith<$Res> {
  factory $UserListModelCopyWith(
          UserListModel value, $Res Function(UserListModel) then) =
      _$UserListModelCopyWithImpl<$Res>;
  $Res call({List<UserListItems>? data});
}

/// @nodoc
class _$UserListModelCopyWithImpl<$Res>
    implements $UserListModelCopyWith<$Res> {
  _$UserListModelCopyWithImpl(this._value, this._then);

  final UserListModel _value;
  // ignore: unused_field
  final $Res Function(UserListModel) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<UserListItems>?,
    ));
  }
}

/// @nodoc
abstract class _$UserListModelCopyWith<$Res>
    implements $UserListModelCopyWith<$Res> {
  factory _$UserListModelCopyWith(
          _UserListModel value, $Res Function(_UserListModel) then) =
      __$UserListModelCopyWithImpl<$Res>;
  @override
  $Res call({List<UserListItems>? data});
}

/// @nodoc
class __$UserListModelCopyWithImpl<$Res>
    extends _$UserListModelCopyWithImpl<$Res>
    implements _$UserListModelCopyWith<$Res> {
  __$UserListModelCopyWithImpl(
      _UserListModel _value, $Res Function(_UserListModel) _then)
      : super(_value, (v) => _then(v as _UserListModel));

  @override
  _UserListModel get _value => super._value as _UserListModel;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_UserListModel(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<UserListItems>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserListModel extends _UserListModel with DiagnosticableTreeMixin {
  const _$_UserListModel({this.data}) : super._();

  factory _$_UserListModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserListModelFromJson(json);

  @override
  final List<UserListItems>? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserListModel(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserListModel'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserListModel &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$UserListModelCopyWith<_UserListModel> get copyWith =>
      __$UserListModelCopyWithImpl<_UserListModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserListModelToJson(this);
  }
}

abstract class _UserListModel extends UserListModel {
  const factory _UserListModel({List<UserListItems>? data}) = _$_UserListModel;
  const _UserListModel._() : super._();

  factory _UserListModel.fromJson(Map<String, dynamic> json) =
      _$_UserListModel.fromJson;

  @override
  List<UserListItems>? get data;
  @override
  @JsonKey(ignore: true)
  _$UserListModelCopyWith<_UserListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

UserListItems _$UserListItemsFromJson(Map<String, dynamic> json) {
  return _UserListItems.fromJson(json);
}

/// @nodoc
class _$UserListItemsTearOff {
  const _$UserListItemsTearOff();

  _UserListItems call(
      {required int? id,
      required int? category_id,
      required String? title,
      required String? cover,
      required String? description,
      required int? user_id,
      required int? covers,
      UserValues? user,
      required int? likes_count,
      List<SeasonValues>? seasons,
      List<CommentsValues>? comments}) {
    return _UserListItems(
      id: id,
      category_id: category_id,
      title: title,
      cover: cover,
      description: description,
      user_id: user_id,
      covers: covers,
      user: user,
      likes_count: likes_count,
      seasons: seasons,
      comments: comments,
    );
  }

  UserListItems fromJson(Map<String, Object?> json) {
    return UserListItems.fromJson(json);
  }
}

/// @nodoc
const $UserListItems = _$UserListItemsTearOff();

/// @nodoc
mixin _$UserListItems {
  int? get id => throw _privateConstructorUsedError;
  int? get category_id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get cover => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get user_id => throw _privateConstructorUsedError;
  int? get covers => throw _privateConstructorUsedError;
  UserValues? get user => throw _privateConstructorUsedError;
  int? get likes_count => throw _privateConstructorUsedError;
  List<SeasonValues>? get seasons => throw _privateConstructorUsedError;
  List<CommentsValues>? get comments => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserListItemsCopyWith<UserListItems> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserListItemsCopyWith<$Res> {
  factory $UserListItemsCopyWith(
          UserListItems value, $Res Function(UserListItems) then) =
      _$UserListItemsCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      int? category_id,
      String? title,
      String? cover,
      String? description,
      int? user_id,
      int? covers,
      UserValues? user,
      int? likes_count,
      List<SeasonValues>? seasons,
      List<CommentsValues>? comments});

  $UserValuesCopyWith<$Res>? get user;
}

/// @nodoc
class _$UserListItemsCopyWithImpl<$Res>
    implements $UserListItemsCopyWith<$Res> {
  _$UserListItemsCopyWithImpl(this._value, this._then);

  final UserListItems _value;
  // ignore: unused_field
  final $Res Function(UserListItems) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? category_id = freezed,
    Object? title = freezed,
    Object? cover = freezed,
    Object? description = freezed,
    Object? user_id = freezed,
    Object? covers = freezed,
    Object? user = freezed,
    Object? likes_count = freezed,
    Object? seasons = freezed,
    Object? comments = freezed,
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
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserValues?,
      likes_count: likes_count == freezed
          ? _value.likes_count
          : likes_count // ignore: cast_nullable_to_non_nullable
              as int?,
      seasons: seasons == freezed
          ? _value.seasons
          : seasons // ignore: cast_nullable_to_non_nullable
              as List<SeasonValues>?,
      comments: comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentsValues>?,
    ));
  }

  @override
  $UserValuesCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserValuesCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$UserListItemsCopyWith<$Res>
    implements $UserListItemsCopyWith<$Res> {
  factory _$UserListItemsCopyWith(
          _UserListItems value, $Res Function(_UserListItems) then) =
      __$UserListItemsCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      int? category_id,
      String? title,
      String? cover,
      String? description,
      int? user_id,
      int? covers,
      UserValues? user,
      int? likes_count,
      List<SeasonValues>? seasons,
      List<CommentsValues>? comments});

  @override
  $UserValuesCopyWith<$Res>? get user;
}

/// @nodoc
class __$UserListItemsCopyWithImpl<$Res>
    extends _$UserListItemsCopyWithImpl<$Res>
    implements _$UserListItemsCopyWith<$Res> {
  __$UserListItemsCopyWithImpl(
      _UserListItems _value, $Res Function(_UserListItems) _then)
      : super(_value, (v) => _then(v as _UserListItems));

  @override
  _UserListItems get _value => super._value as _UserListItems;

  @override
  $Res call({
    Object? id = freezed,
    Object? category_id = freezed,
    Object? title = freezed,
    Object? cover = freezed,
    Object? description = freezed,
    Object? user_id = freezed,
    Object? covers = freezed,
    Object? user = freezed,
    Object? likes_count = freezed,
    Object? seasons = freezed,
    Object? comments = freezed,
  }) {
    return _then(_UserListItems(
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
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserValues?,
      likes_count: likes_count == freezed
          ? _value.likes_count
          : likes_count // ignore: cast_nullable_to_non_nullable
              as int?,
      seasons: seasons == freezed
          ? _value.seasons
          : seasons // ignore: cast_nullable_to_non_nullable
              as List<SeasonValues>?,
      comments: comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentsValues>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserListItems with DiagnosticableTreeMixin implements _UserListItems {
  const _$_UserListItems(
      {required this.id,
      required this.category_id,
      required this.title,
      required this.cover,
      required this.description,
      required this.user_id,
      required this.covers,
      this.user,
      required this.likes_count,
      this.seasons,
      this.comments});

  factory _$_UserListItems.fromJson(Map<String, dynamic> json) =>
      _$$_UserListItemsFromJson(json);

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
  final UserValues? user;
  @override
  final int? likes_count;
  @override
  final List<SeasonValues>? seasons;
  @override
  final List<CommentsValues>? comments;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserListItems(id: $id, category_id: $category_id, title: $title, cover: $cover, description: $description, user_id: $user_id, covers: $covers, user: $user, likes_count: $likes_count, seasons: $seasons, comments: $comments)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserListItems'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('category_id', category_id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('cover', cover))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('user_id', user_id))
      ..add(DiagnosticsProperty('covers', covers))
      ..add(DiagnosticsProperty('user', user))
      ..add(DiagnosticsProperty('likes_count', likes_count))
      ..add(DiagnosticsProperty('seasons', seasons))
      ..add(DiagnosticsProperty('comments', comments));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserListItems &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.category_id, category_id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.cover, cover) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.user_id, user_id) &&
            const DeepCollectionEquality().equals(other.covers, covers) &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality()
                .equals(other.likes_count, likes_count) &&
            const DeepCollectionEquality().equals(other.seasons, seasons) &&
            const DeepCollectionEquality().equals(other.comments, comments));
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
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(likes_count),
      const DeepCollectionEquality().hash(seasons),
      const DeepCollectionEquality().hash(comments));

  @JsonKey(ignore: true)
  @override
  _$UserListItemsCopyWith<_UserListItems> get copyWith =>
      __$UserListItemsCopyWithImpl<_UserListItems>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserListItemsToJson(this);
  }
}

abstract class _UserListItems implements UserListItems {
  const factory _UserListItems(
      {required int? id,
      required int? category_id,
      required String? title,
      required String? cover,
      required String? description,
      required int? user_id,
      required int? covers,
      UserValues? user,
      required int? likes_count,
      List<SeasonValues>? seasons,
      List<CommentsValues>? comments}) = _$_UserListItems;

  factory _UserListItems.fromJson(Map<String, dynamic> json) =
      _$_UserListItems.fromJson;

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
  UserValues? get user;
  @override
  int? get likes_count;
  @override
  List<SeasonValues>? get seasons;
  @override
  List<CommentsValues>? get comments;
  @override
  @JsonKey(ignore: true)
  _$UserListItemsCopyWith<_UserListItems> get copyWith =>
      throw _privateConstructorUsedError;
}

UserValues _$UserValuesFromJson(Map<String, dynamic> json) {
  return _UserValues.fromJson(json);
}

/// @nodoc
class _$UserValuesTearOff {
  const _$UserValuesTearOff();

  _UserValues call(
      {required int? id,
      required String? username,
      required String? mobile,
      required String? first_name,
      required String? last_name,
      UserProfileItems? user_profile}) {
    return _UserValues(
      id: id,
      username: username,
      mobile: mobile,
      first_name: first_name,
      last_name: last_name,
      user_profile: user_profile,
    );
  }

  UserValues fromJson(Map<String, Object?> json) {
    return UserValues.fromJson(json);
  }
}

/// @nodoc
const $UserValues = _$UserValuesTearOff();

/// @nodoc
mixin _$UserValues {
  int? get id => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get mobile => throw _privateConstructorUsedError;
  String? get first_name => throw _privateConstructorUsedError;
  String? get last_name => throw _privateConstructorUsedError;
  UserProfileItems? get user_profile => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserValuesCopyWith<UserValues> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserValuesCopyWith<$Res> {
  factory $UserValuesCopyWith(
          UserValues value, $Res Function(UserValues) then) =
      _$UserValuesCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? username,
      String? mobile,
      String? first_name,
      String? last_name,
      UserProfileItems? user_profile});

  $UserProfileItemsCopyWith<$Res>? get user_profile;
}

/// @nodoc
class _$UserValuesCopyWithImpl<$Res> implements $UserValuesCopyWith<$Res> {
  _$UserValuesCopyWithImpl(this._value, this._then);

  final UserValues _value;
  // ignore: unused_field
  final $Res Function(UserValues) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? mobile = freezed,
    Object? first_name = freezed,
    Object? last_name = freezed,
    Object? user_profile = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: mobile == freezed
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      first_name: first_name == freezed
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String?,
      last_name: last_name == freezed
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String?,
      user_profile: user_profile == freezed
          ? _value.user_profile
          : user_profile // ignore: cast_nullable_to_non_nullable
              as UserProfileItems?,
    ));
  }

  @override
  $UserProfileItemsCopyWith<$Res>? get user_profile {
    if (_value.user_profile == null) {
      return null;
    }

    return $UserProfileItemsCopyWith<$Res>(_value.user_profile!, (value) {
      return _then(_value.copyWith(user_profile: value));
    });
  }
}

/// @nodoc
abstract class _$UserValuesCopyWith<$Res> implements $UserValuesCopyWith<$Res> {
  factory _$UserValuesCopyWith(
          _UserValues value, $Res Function(_UserValues) then) =
      __$UserValuesCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? username,
      String? mobile,
      String? first_name,
      String? last_name,
      UserProfileItems? user_profile});

  @override
  $UserProfileItemsCopyWith<$Res>? get user_profile;
}

/// @nodoc
class __$UserValuesCopyWithImpl<$Res> extends _$UserValuesCopyWithImpl<$Res>
    implements _$UserValuesCopyWith<$Res> {
  __$UserValuesCopyWithImpl(
      _UserValues _value, $Res Function(_UserValues) _then)
      : super(_value, (v) => _then(v as _UserValues));

  @override
  _UserValues get _value => super._value as _UserValues;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? mobile = freezed,
    Object? first_name = freezed,
    Object? last_name = freezed,
    Object? user_profile = freezed,
  }) {
    return _then(_UserValues(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: mobile == freezed
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      first_name: first_name == freezed
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String?,
      last_name: last_name == freezed
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String?,
      user_profile: user_profile == freezed
          ? _value.user_profile
          : user_profile // ignore: cast_nullable_to_non_nullable
              as UserProfileItems?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserValues with DiagnosticableTreeMixin implements _UserValues {
  const _$_UserValues(
      {required this.id,
      required this.username,
      required this.mobile,
      required this.first_name,
      required this.last_name,
      this.user_profile});

  factory _$_UserValues.fromJson(Map<String, dynamic> json) =>
      _$$_UserValuesFromJson(json);

  @override
  final int? id;
  @override
  final String? username;
  @override
  final String? mobile;
  @override
  final String? first_name;
  @override
  final String? last_name;
  @override
  final UserProfileItems? user_profile;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserValues(id: $id, username: $username, mobile: $mobile, first_name: $first_name, last_name: $last_name, user_profile: $user_profile)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserValues'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('mobile', mobile))
      ..add(DiagnosticsProperty('first_name', first_name))
      ..add(DiagnosticsProperty('last_name', last_name))
      ..add(DiagnosticsProperty('user_profile', user_profile));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserValues &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.mobile, mobile) &&
            const DeepCollectionEquality()
                .equals(other.first_name, first_name) &&
            const DeepCollectionEquality().equals(other.last_name, last_name) &&
            const DeepCollectionEquality()
                .equals(other.user_profile, user_profile));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(mobile),
      const DeepCollectionEquality().hash(first_name),
      const DeepCollectionEquality().hash(last_name),
      const DeepCollectionEquality().hash(user_profile));

  @JsonKey(ignore: true)
  @override
  _$UserValuesCopyWith<_UserValues> get copyWith =>
      __$UserValuesCopyWithImpl<_UserValues>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserValuesToJson(this);
  }
}

abstract class _UserValues implements UserValues {
  const factory _UserValues(
      {required int? id,
      required String? username,
      required String? mobile,
      required String? first_name,
      required String? last_name,
      UserProfileItems? user_profile}) = _$_UserValues;

  factory _UserValues.fromJson(Map<String, dynamic> json) =
      _$_UserValues.fromJson;

  @override
  int? get id;
  @override
  String? get username;
  @override
  String? get mobile;
  @override
  String? get first_name;
  @override
  String? get last_name;
  @override
  UserProfileItems? get user_profile;
  @override
  @JsonKey(ignore: true)
  _$UserValuesCopyWith<_UserValues> get copyWith =>
      throw _privateConstructorUsedError;
}

SeasonValues _$SeasonValuesFromJson(Map<String, dynamic> json) {
  return _SeasonValues.fromJson(json);
}

/// @nodoc
class _$SeasonValuesTearOff {
  const _$SeasonValuesTearOff();

  _SeasonValues call(
      {required int? id,
      required String? name,
      required String? description,
      required int? podcast_id,
      required String? cover,
      PodcastValues? podcast,
      required int? likes_count,
      List<CommentsValues>? comments,
      List<EpicodesValues>? episodes}) {
    return _SeasonValues(
      id: id,
      name: name,
      description: description,
      podcast_id: podcast_id,
      cover: cover,
      podcast: podcast,
      likes_count: likes_count,
      comments: comments,
      episodes: episodes,
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
  int? get likes_count => throw _privateConstructorUsedError;
  List<CommentsValues>? get comments => throw _privateConstructorUsedError;
  List<EpicodesValues>? get episodes => throw _privateConstructorUsedError;

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
      int? likes_count,
      List<CommentsValues>? comments,
      List<EpicodesValues>? episodes});

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
    Object? likes_count = freezed,
    Object? comments = freezed,
    Object? episodes = freezed,
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
      likes_count: likes_count == freezed
          ? _value.likes_count
          : likes_count // ignore: cast_nullable_to_non_nullable
              as int?,
      comments: comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentsValues>?,
      episodes: episodes == freezed
          ? _value.episodes
          : episodes // ignore: cast_nullable_to_non_nullable
              as List<EpicodesValues>?,
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
      int? likes_count,
      List<CommentsValues>? comments,
      List<EpicodesValues>? episodes});

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
    Object? likes_count = freezed,
    Object? comments = freezed,
    Object? episodes = freezed,
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
      likes_count: likes_count == freezed
          ? _value.likes_count
          : likes_count // ignore: cast_nullable_to_non_nullable
              as int?,
      comments: comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentsValues>?,
      episodes: episodes == freezed
          ? _value.episodes
          : episodes // ignore: cast_nullable_to_non_nullable
              as List<EpicodesValues>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SeasonValues with DiagnosticableTreeMixin implements _SeasonValues {
  const _$_SeasonValues(
      {required this.id,
      required this.name,
      required this.description,
      required this.podcast_id,
      required this.cover,
      this.podcast,
      required this.likes_count,
      this.comments,
      this.episodes});

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
  final int? likes_count;
  @override
  final List<CommentsValues>? comments;
  @override
  final List<EpicodesValues>? episodes;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SeasonValues(id: $id, name: $name, description: $description, podcast_id: $podcast_id, cover: $cover, podcast: $podcast, likes_count: $likes_count, comments: $comments, episodes: $episodes)';
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
      ..add(DiagnosticsProperty('likes_count', likes_count))
      ..add(DiagnosticsProperty('comments', comments))
      ..add(DiagnosticsProperty('episodes', episodes));
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
            const DeepCollectionEquality()
                .equals(other.likes_count, likes_count) &&
            const DeepCollectionEquality().equals(other.comments, comments) &&
            const DeepCollectionEquality().equals(other.episodes, episodes));
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
      const DeepCollectionEquality().hash(likes_count),
      const DeepCollectionEquality().hash(comments),
      const DeepCollectionEquality().hash(episodes));

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
      {required int? id,
      required String? name,
      required String? description,
      required int? podcast_id,
      required String? cover,
      PodcastValues? podcast,
      required int? likes_count,
      List<CommentsValues>? comments,
      List<EpicodesValues>? episodes}) = _$_SeasonValues;

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
  int? get likes_count;
  @override
  List<CommentsValues>? get comments;
  @override
  List<EpicodesValues>? get episodes;
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
      {required int? id,
      required int? owner_id,
      required String? creator_type,
      required int? creator_id,
      required String? message,
      required String? reply_to,
      required int? time}) {
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
      {required this.id,
      required this.owner_id,
      required this.creator_type,
      required this.creator_id,
      required this.message,
      required this.reply_to,
      required this.time});

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
      {required int? id,
      required int? owner_id,
      required String? creator_type,
      required int? creator_id,
      required String? message,
      required String? reply_to,
      required int? time}) = _$_CommentsValues;

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
      {required int? id,
      required String? name,
      required String? description,
      required int? season_id,
      required int? allow_comments,
      required int? allow_share,
      required String? cover,
      required int? comments_count,
      required int? likes_count,
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
  String? get cover => throw _privateConstructorUsedError;
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
      String? cover,
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
      String? cover,
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
class _$_EpicodesValues
    with DiagnosticableTreeMixin
    implements _EpicodesValues {
  const _$_EpicodesValues(
      {required this.id,
      required this.name,
      required this.description,
      required this.season_id,
      required this.allow_comments,
      required this.allow_share,
      required this.cover,
      required this.comments_count,
      required this.likes_count,
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
  final String? cover;
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
      {required int? id,
      required String? name,
      required String? description,
      required int? season_id,
      required int? allow_comments,
      required int? allow_share,
      required String? cover,
      required int? comments_count,
      required int? likes_count,
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
  String? get cover;
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

PodcastValues _$PodcastValuesFromJson(Map<String, dynamic> json) {
  return _PodcastValues.fromJson(json);
}

/// @nodoc
class _$PodcastValuesTearOff {
  const _$PodcastValuesTearOff();

  _PodcastValues call(
      {required int? id,
      required int? category_id,
      required String? title,
      required String? cover,
      required String? description,
      required int? user_id,
      required int? covers,
      required int? likes_count}) {
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
      {required this.id,
      required this.category_id,
      required this.title,
      required this.cover,
      required this.description,
      required this.user_id,
      required this.covers,
      required this.likes_count});

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
      {required int? id,
      required int? category_id,
      required String? title,
      required String? cover,
      required String? description,
      required int? user_id,
      required int? covers,
      required int? likes_count}) = _$_PodcastValues;

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

UserProfileItems _$UserProfileItemsFromJson(Map<String, dynamic> json) {
  return _UserProfileItems.fromJson(json);
}

/// @nodoc
class _$UserProfileItemsTearOff {
  const _$UserProfileItemsTearOff();

  _UserProfileItems call(
      {required String? first_name,
      required String? last_name,
      required String? full_name,
      required String? name,
      required String? birthday,
      required String? gender,
      required String? favorite_categories}) {
    return _UserProfileItems(
      first_name: first_name,
      last_name: last_name,
      full_name: full_name,
      name: name,
      birthday: birthday,
      gender: gender,
      favorite_categories: favorite_categories,
    );
  }

  UserProfileItems fromJson(Map<String, Object?> json) {
    return UserProfileItems.fromJson(json);
  }
}

/// @nodoc
const $UserProfileItems = _$UserProfileItemsTearOff();

/// @nodoc
mixin _$UserProfileItems {
  String? get first_name => throw _privateConstructorUsedError;
  String? get last_name => throw _privateConstructorUsedError;
  String? get full_name => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get birthday => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get favorite_categories => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserProfileItemsCopyWith<UserProfileItems> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileItemsCopyWith<$Res> {
  factory $UserProfileItemsCopyWith(
          UserProfileItems value, $Res Function(UserProfileItems) then) =
      _$UserProfileItemsCopyWithImpl<$Res>;
  $Res call(
      {String? first_name,
      String? last_name,
      String? full_name,
      String? name,
      String? birthday,
      String? gender,
      String? favorite_categories});
}

/// @nodoc
class _$UserProfileItemsCopyWithImpl<$Res>
    implements $UserProfileItemsCopyWith<$Res> {
  _$UserProfileItemsCopyWithImpl(this._value, this._then);

  final UserProfileItems _value;
  // ignore: unused_field
  final $Res Function(UserProfileItems) _then;

  @override
  $Res call({
    Object? first_name = freezed,
    Object? last_name = freezed,
    Object? full_name = freezed,
    Object? name = freezed,
    Object? birthday = freezed,
    Object? gender = freezed,
    Object? favorite_categories = freezed,
  }) {
    return _then(_value.copyWith(
      first_name: first_name == freezed
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String?,
      last_name: last_name == freezed
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String?,
      full_name: full_name == freezed
          ? _value.full_name
          : full_name // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: birthday == freezed
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      favorite_categories: favorite_categories == freezed
          ? _value.favorite_categories
          : favorite_categories // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$UserProfileItemsCopyWith<$Res>
    implements $UserProfileItemsCopyWith<$Res> {
  factory _$UserProfileItemsCopyWith(
          _UserProfileItems value, $Res Function(_UserProfileItems) then) =
      __$UserProfileItemsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? first_name,
      String? last_name,
      String? full_name,
      String? name,
      String? birthday,
      String? gender,
      String? favorite_categories});
}

/// @nodoc
class __$UserProfileItemsCopyWithImpl<$Res>
    extends _$UserProfileItemsCopyWithImpl<$Res>
    implements _$UserProfileItemsCopyWith<$Res> {
  __$UserProfileItemsCopyWithImpl(
      _UserProfileItems _value, $Res Function(_UserProfileItems) _then)
      : super(_value, (v) => _then(v as _UserProfileItems));

  @override
  _UserProfileItems get _value => super._value as _UserProfileItems;

  @override
  $Res call({
    Object? first_name = freezed,
    Object? last_name = freezed,
    Object? full_name = freezed,
    Object? name = freezed,
    Object? birthday = freezed,
    Object? gender = freezed,
    Object? favorite_categories = freezed,
  }) {
    return _then(_UserProfileItems(
      first_name: first_name == freezed
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String?,
      last_name: last_name == freezed
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String?,
      full_name: full_name == freezed
          ? _value.full_name
          : full_name // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: birthday == freezed
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      favorite_categories: favorite_categories == freezed
          ? _value.favorite_categories
          : favorite_categories // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserProfileItems
    with DiagnosticableTreeMixin
    implements _UserProfileItems {
  const _$_UserProfileItems(
      {required this.first_name,
      required this.last_name,
      required this.full_name,
      required this.name,
      required this.birthday,
      required this.gender,
      required this.favorite_categories});

  factory _$_UserProfileItems.fromJson(Map<String, dynamic> json) =>
      _$$_UserProfileItemsFromJson(json);

  @override
  final String? first_name;
  @override
  final String? last_name;
  @override
  final String? full_name;
  @override
  final String? name;
  @override
  final String? birthday;
  @override
  final String? gender;
  @override
  final String? favorite_categories;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserProfileItems(first_name: $first_name, last_name: $last_name, full_name: $full_name, name: $name, birthday: $birthday, gender: $gender, favorite_categories: $favorite_categories)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserProfileItems'))
      ..add(DiagnosticsProperty('first_name', first_name))
      ..add(DiagnosticsProperty('last_name', last_name))
      ..add(DiagnosticsProperty('full_name', full_name))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('birthday', birthday))
      ..add(DiagnosticsProperty('gender', gender))
      ..add(DiagnosticsProperty('favorite_categories', favorite_categories));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserProfileItems &&
            const DeepCollectionEquality()
                .equals(other.first_name, first_name) &&
            const DeepCollectionEquality().equals(other.last_name, last_name) &&
            const DeepCollectionEquality().equals(other.full_name, full_name) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.birthday, birthday) &&
            const DeepCollectionEquality().equals(other.gender, gender) &&
            const DeepCollectionEquality()
                .equals(other.favorite_categories, favorite_categories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(first_name),
      const DeepCollectionEquality().hash(last_name),
      const DeepCollectionEquality().hash(full_name),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(birthday),
      const DeepCollectionEquality().hash(gender),
      const DeepCollectionEquality().hash(favorite_categories));

  @JsonKey(ignore: true)
  @override
  _$UserProfileItemsCopyWith<_UserProfileItems> get copyWith =>
      __$UserProfileItemsCopyWithImpl<_UserProfileItems>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserProfileItemsToJson(this);
  }
}

abstract class _UserProfileItems implements UserProfileItems {
  const factory _UserProfileItems(
      {required String? first_name,
      required String? last_name,
      required String? full_name,
      required String? name,
      required String? birthday,
      required String? gender,
      required String? favorite_categories}) = _$_UserProfileItems;

  factory _UserProfileItems.fromJson(Map<String, dynamic> json) =
      _$_UserProfileItems.fromJson;

  @override
  String? get first_name;
  @override
  String? get last_name;
  @override
  String? get full_name;
  @override
  String? get name;
  @override
  String? get birthday;
  @override
  String? get gender;
  @override
  String? get favorite_categories;
  @override
  @JsonKey(ignore: true)
  _$UserProfileItemsCopyWith<_UserProfileItems> get copyWith =>
      throw _privateConstructorUsedError;
}
