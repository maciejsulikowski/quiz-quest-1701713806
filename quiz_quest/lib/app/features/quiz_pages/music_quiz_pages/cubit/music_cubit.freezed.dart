// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'music_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MusicState {
  MusicQuizModel? get musicQuizModel => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;
  bool? get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MusicStateCopyWith<MusicState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MusicStateCopyWith<$Res> {
  factory $MusicStateCopyWith(
          MusicState value, $Res Function(MusicState) then) =
      _$MusicStateCopyWithImpl<$Res, MusicState>;
  @useResult
  $Res call(
      {MusicQuizModel? musicQuizModel,
      Status status,
      bool? isLoading,
      String? error});

  $MusicQuizModelCopyWith<$Res>? get musicQuizModel;
}

/// @nodoc
class _$MusicStateCopyWithImpl<$Res, $Val extends MusicState>
    implements $MusicStateCopyWith<$Res> {
  _$MusicStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? musicQuizModel = freezed,
    Object? status = null,
    Object? isLoading = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      musicQuizModel: freezed == musicQuizModel
          ? _value.musicQuizModel
          : musicQuizModel // ignore: cast_nullable_to_non_nullable
              as MusicQuizModel?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MusicQuizModelCopyWith<$Res>? get musicQuizModel {
    if (_value.musicQuizModel == null) {
      return null;
    }

    return $MusicQuizModelCopyWith<$Res>(_value.musicQuizModel!, (value) {
      return _then(_value.copyWith(musicQuizModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MusicStateImplCopyWith<$Res>
    implements $MusicStateCopyWith<$Res> {
  factory _$$MusicStateImplCopyWith(
          _$MusicStateImpl value, $Res Function(_$MusicStateImpl) then) =
      __$$MusicStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MusicQuizModel? musicQuizModel,
      Status status,
      bool? isLoading,
      String? error});

  @override
  $MusicQuizModelCopyWith<$Res>? get musicQuizModel;
}

/// @nodoc
class __$$MusicStateImplCopyWithImpl<$Res>
    extends _$MusicStateCopyWithImpl<$Res, _$MusicStateImpl>
    implements _$$MusicStateImplCopyWith<$Res> {
  __$$MusicStateImplCopyWithImpl(
      _$MusicStateImpl _value, $Res Function(_$MusicStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? musicQuizModel = freezed,
    Object? status = null,
    Object? isLoading = freezed,
    Object? error = freezed,
  }) {
    return _then(_$MusicStateImpl(
      musicQuizModel: freezed == musicQuizModel
          ? _value.musicQuizModel
          : musicQuizModel // ignore: cast_nullable_to_non_nullable
              as MusicQuizModel?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$MusicStateImpl implements _MusicState {
  _$MusicStateImpl(
      {this.musicQuizModel,
      this.status = Status.initial,
      this.isLoading = false,
      this.error});

  @override
  final MusicQuizModel? musicQuizModel;
  @override
  @JsonKey()
  final Status status;
  @override
  @JsonKey()
  final bool? isLoading;
  @override
  final String? error;

  @override
  String toString() {
    return 'MusicState(musicQuizModel: $musicQuizModel, status: $status, isLoading: $isLoading, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MusicStateImpl &&
            (identical(other.musicQuizModel, musicQuizModel) ||
                other.musicQuizModel == musicQuizModel) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, musicQuizModel, status, isLoading, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MusicStateImplCopyWith<_$MusicStateImpl> get copyWith =>
      __$$MusicStateImplCopyWithImpl<_$MusicStateImpl>(this, _$identity);
}

abstract class _MusicState implements MusicState {
  factory _MusicState(
      {final MusicQuizModel? musicQuizModel,
      final Status status,
      final bool? isLoading,
      final String? error}) = _$MusicStateImpl;

  @override
  MusicQuizModel? get musicQuizModel;
  @override
  Status get status;
  @override
  bool? get isLoading;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$MusicStateImplCopyWith<_$MusicStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
