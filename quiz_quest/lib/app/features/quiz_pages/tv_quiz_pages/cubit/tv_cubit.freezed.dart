// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tv_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TVState {
  TVQuizModel? get tvQuizModel => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;
  bool? get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TVStateCopyWith<TVState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TVStateCopyWith<$Res> {
  factory $TVStateCopyWith(TVState value, $Res Function(TVState) then) =
      _$TVStateCopyWithImpl<$Res, TVState>;
  @useResult
  $Res call(
      {TVQuizModel? tvQuizModel,
      Status status,
      bool? isLoading,
      String? error});

  $TVQuizModelCopyWith<$Res>? get tvQuizModel;
}

/// @nodoc
class _$TVStateCopyWithImpl<$Res, $Val extends TVState>
    implements $TVStateCopyWith<$Res> {
  _$TVStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tvQuizModel = freezed,
    Object? status = null,
    Object? isLoading = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      tvQuizModel: freezed == tvQuizModel
          ? _value.tvQuizModel
          : tvQuizModel // ignore: cast_nullable_to_non_nullable
              as TVQuizModel?,
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
  $TVQuizModelCopyWith<$Res>? get tvQuizModel {
    if (_value.tvQuizModel == null) {
      return null;
    }

    return $TVQuizModelCopyWith<$Res>(_value.tvQuizModel!, (value) {
      return _then(_value.copyWith(tvQuizModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TVStateImplCopyWith<$Res> implements $TVStateCopyWith<$Res> {
  factory _$$TVStateImplCopyWith(
          _$TVStateImpl value, $Res Function(_$TVStateImpl) then) =
      __$$TVStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TVQuizModel? tvQuizModel,
      Status status,
      bool? isLoading,
      String? error});

  @override
  $TVQuizModelCopyWith<$Res>? get tvQuizModel;
}

/// @nodoc
class __$$TVStateImplCopyWithImpl<$Res>
    extends _$TVStateCopyWithImpl<$Res, _$TVStateImpl>
    implements _$$TVStateImplCopyWith<$Res> {
  __$$TVStateImplCopyWithImpl(
      _$TVStateImpl _value, $Res Function(_$TVStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tvQuizModel = freezed,
    Object? status = null,
    Object? isLoading = freezed,
    Object? error = freezed,
  }) {
    return _then(_$TVStateImpl(
      tvQuizModel: freezed == tvQuizModel
          ? _value.tvQuizModel
          : tvQuizModel // ignore: cast_nullable_to_non_nullable
              as TVQuizModel?,
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

class _$TVStateImpl implements _TVState {
  _$TVStateImpl(
      {this.tvQuizModel,
      this.status = Status.initial,
      this.isLoading = false,
      this.error});

  @override
  final TVQuizModel? tvQuizModel;
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
    return 'TVState(tvQuizModel: $tvQuizModel, status: $status, isLoading: $isLoading, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TVStateImpl &&
            (identical(other.tvQuizModel, tvQuizModel) ||
                other.tvQuizModel == tvQuizModel) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, tvQuizModel, status, isLoading, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TVStateImplCopyWith<_$TVStateImpl> get copyWith =>
      __$$TVStateImplCopyWithImpl<_$TVStateImpl>(this, _$identity);
}

abstract class _TVState implements TVState {
  factory _TVState(
      {final TVQuizModel? tvQuizModel,
      final Status status,
      final bool? isLoading,
      final String? error}) = _$TVStateImpl;

  @override
  TVQuizModel? get tvQuizModel;
  @override
  Status get status;
  @override
  bool? get isLoading;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$TVStateImplCopyWith<_$TVStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
