// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserModel {
  String get name => throw _privateConstructorUsedError;
  String get surname => throw _privateConstructorUsedError;
  String get imageURL => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  String get favouriteCategory => throw _privateConstructorUsedError;
  bool get isUserNew => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {String name,
      String surname,
      String imageURL,
      String gender,
      String favouriteCategory,
      bool isUserNew});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? surname = null,
    Object? imageURL = null,
    Object? gender = null,
    Object? favouriteCategory = null,
    Object? isUserNew = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      surname: null == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      imageURL: null == imageURL
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      favouriteCategory: null == favouriteCategory
          ? _value.favouriteCategory
          : favouriteCategory // ignore: cast_nullable_to_non_nullable
              as String,
      isUserNew: null == isUserNew
          ? _value.isUserNew
          : isUserNew // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String surname,
      String imageURL,
      String gender,
      String favouriteCategory,
      bool isUserNew});
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? surname = null,
    Object? imageURL = null,
    Object? gender = null,
    Object? favouriteCategory = null,
    Object? isUserNew = null,
  }) {
    return _then(_$UserModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      surname: null == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      imageURL: null == imageURL
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      favouriteCategory: null == favouriteCategory
          ? _value.favouriteCategory
          : favouriteCategory // ignore: cast_nullable_to_non_nullable
              as String,
      isUserNew: null == isUserNew
          ? _value.isUserNew
          : isUserNew // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UserModelImpl extends _UserModel {
  _$UserModelImpl(
      {required this.name,
      required this.surname,
      required this.imageURL,
      required this.gender,
      required this.favouriteCategory,
      required this.isUserNew})
      : super._();

  @override
  final String name;
  @override
  final String surname;
  @override
  final String imageURL;
  @override
  final String gender;
  @override
  final String favouriteCategory;
  @override
  final bool isUserNew;

  @override
  String toString() {
    return 'UserModel(name: $name, surname: $surname, imageURL: $imageURL, gender: $gender, favouriteCategory: $favouriteCategory, isUserNew: $isUserNew)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.surname, surname) || other.surname == surname) &&
            (identical(other.imageURL, imageURL) ||
                other.imageURL == imageURL) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.favouriteCategory, favouriteCategory) ||
                other.favouriteCategory == favouriteCategory) &&
            (identical(other.isUserNew, isUserNew) ||
                other.isUserNew == isUserNew));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, surname, imageURL, gender,
      favouriteCategory, isUserNew);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);
}

abstract class _UserModel extends UserModel {
  factory _UserModel(
      {required final String name,
      required final String surname,
      required final String imageURL,
      required final String gender,
      required final String favouriteCategory,
      required final bool isUserNew}) = _$UserModelImpl;
  _UserModel._() : super._();

  @override
  String get name;
  @override
  String get surname;
  @override
  String get imageURL;
  @override
  String get gender;
  @override
  String get favouriteCategory;
  @override
  bool get isUserNew;
  @override
  @JsonKey(ignore: true)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
