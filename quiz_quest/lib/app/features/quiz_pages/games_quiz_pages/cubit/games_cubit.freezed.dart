// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'games_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GamesState {
  GamesQuizModel? get gamesQuizModel => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;
  bool? get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GamesStateCopyWith<GamesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GamesStateCopyWith<$Res> {
  factory $GamesStateCopyWith(
          GamesState value, $Res Function(GamesState) then) =
      _$GamesStateCopyWithImpl<$Res, GamesState>;
  @useResult
  $Res call(
      {GamesQuizModel? gamesQuizModel,
      Status status,
      bool? isLoading,
      String? error});

  $GamesQuizModelCopyWith<$Res>? get gamesQuizModel;
}

/// @nodoc
class _$GamesStateCopyWithImpl<$Res, $Val extends GamesState>
    implements $GamesStateCopyWith<$Res> {
  _$GamesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gamesQuizModel = freezed,
    Object? status = null,
    Object? isLoading = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      gamesQuizModel: freezed == gamesQuizModel
          ? _value.gamesQuizModel
          : gamesQuizModel // ignore: cast_nullable_to_non_nullable
              as GamesQuizModel?,
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
  $GamesQuizModelCopyWith<$Res>? get gamesQuizModel {
    if (_value.gamesQuizModel == null) {
      return null;
    }

    return $GamesQuizModelCopyWith<$Res>(_value.gamesQuizModel!, (value) {
      return _then(_value.copyWith(gamesQuizModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GamesStateImplCopyWith<$Res>
    implements $GamesStateCopyWith<$Res> {
  factory _$$GamesStateImplCopyWith(
          _$GamesStateImpl value, $Res Function(_$GamesStateImpl) then) =
      __$$GamesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {GamesQuizModel? gamesQuizModel,
      Status status,
      bool? isLoading,
      String? error});

  @override
  $GamesQuizModelCopyWith<$Res>? get gamesQuizModel;
}

/// @nodoc
class __$$GamesStateImplCopyWithImpl<$Res>
    extends _$GamesStateCopyWithImpl<$Res, _$GamesStateImpl>
    implements _$$GamesStateImplCopyWith<$Res> {
  __$$GamesStateImplCopyWithImpl(
      _$GamesStateImpl _value, $Res Function(_$GamesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gamesQuizModel = freezed,
    Object? status = null,
    Object? isLoading = freezed,
    Object? error = freezed,
  }) {
    return _then(_$GamesStateImpl(
      gamesQuizModel: freezed == gamesQuizModel
          ? _value.gamesQuizModel
          : gamesQuizModel // ignore: cast_nullable_to_non_nullable
              as GamesQuizModel?,
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

class _$GamesStateImpl implements _GamesState {
  _$GamesStateImpl(
      {this.gamesQuizModel,
      this.status = Status.initial,
      this.isLoading = false,
      this.error});

  @override
  final GamesQuizModel? gamesQuizModel;
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
    return 'GamesState(gamesQuizModel: $gamesQuizModel, status: $status, isLoading: $isLoading, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GamesStateImpl &&
            (identical(other.gamesQuizModel, gamesQuizModel) ||
                other.gamesQuizModel == gamesQuizModel) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, gamesQuizModel, status, isLoading, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GamesStateImplCopyWith<_$GamesStateImpl> get copyWith =>
      __$$GamesStateImplCopyWithImpl<_$GamesStateImpl>(this, _$identity);
}

abstract class _GamesState implements GamesState {
  factory _GamesState(
      {final GamesQuizModel? gamesQuizModel,
      final Status status,
      final bool? isLoading,
      final String? error}) = _$GamesStateImpl;

  @override
  GamesQuizModel? get gamesQuizModel;
  @override
  Status get status;
  @override
  bool? get isLoading;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$GamesStateImplCopyWith<_$GamesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
