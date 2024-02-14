// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nature_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NatureState {
  NatureQuizModel? get natureQuizModel => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;
  bool? get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NatureStateCopyWith<NatureState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NatureStateCopyWith<$Res> {
  factory $NatureStateCopyWith(
          NatureState value, $Res Function(NatureState) then) =
      _$NatureStateCopyWithImpl<$Res, NatureState>;
  @useResult
  $Res call(
      {NatureQuizModel? natureQuizModel,
      Status status,
      bool? isLoading,
      String? error});

  $NatureQuizModelCopyWith<$Res>? get natureQuizModel;
}

/// @nodoc
class _$NatureStateCopyWithImpl<$Res, $Val extends NatureState>
    implements $NatureStateCopyWith<$Res> {
  _$NatureStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? natureQuizModel = freezed,
    Object? status = null,
    Object? isLoading = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      natureQuizModel: freezed == natureQuizModel
          ? _value.natureQuizModel
          : natureQuizModel // ignore: cast_nullable_to_non_nullable
              as NatureQuizModel?,
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
  $NatureQuizModelCopyWith<$Res>? get natureQuizModel {
    if (_value.natureQuizModel == null) {
      return null;
    }

    return $NatureQuizModelCopyWith<$Res>(_value.natureQuizModel!, (value) {
      return _then(_value.copyWith(natureQuizModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NatureStateImplCopyWith<$Res>
    implements $NatureStateCopyWith<$Res> {
  factory _$$NatureStateImplCopyWith(
          _$NatureStateImpl value, $Res Function(_$NatureStateImpl) then) =
      __$$NatureStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {NatureQuizModel? natureQuizModel,
      Status status,
      bool? isLoading,
      String? error});

  @override
  $NatureQuizModelCopyWith<$Res>? get natureQuizModel;
}

/// @nodoc
class __$$NatureStateImplCopyWithImpl<$Res>
    extends _$NatureStateCopyWithImpl<$Res, _$NatureStateImpl>
    implements _$$NatureStateImplCopyWith<$Res> {
  __$$NatureStateImplCopyWithImpl(
      _$NatureStateImpl _value, $Res Function(_$NatureStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? natureQuizModel = freezed,
    Object? status = null,
    Object? isLoading = freezed,
    Object? error = freezed,
  }) {
    return _then(_$NatureStateImpl(
      natureQuizModel: freezed == natureQuizModel
          ? _value.natureQuizModel
          : natureQuizModel // ignore: cast_nullable_to_non_nullable
              as NatureQuizModel?,
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

class _$NatureStateImpl implements _NatureState {
  _$NatureStateImpl(
      {this.natureQuizModel,
      this.status = Status.initial,
      this.isLoading = false,
      this.error});

  @override
  final NatureQuizModel? natureQuizModel;
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
    return 'NatureState(natureQuizModel: $natureQuizModel, status: $status, isLoading: $isLoading, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NatureStateImpl &&
            (identical(other.natureQuizModel, natureQuizModel) ||
                other.natureQuizModel == natureQuizModel) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, natureQuizModel, status, isLoading, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NatureStateImplCopyWith<_$NatureStateImpl> get copyWith =>
      __$$NatureStateImplCopyWithImpl<_$NatureStateImpl>(this, _$identity);
}

abstract class _NatureState implements NatureState {
  factory _NatureState(
      {final NatureQuizModel? natureQuizModel,
      final Status status,
      final bool? isLoading,
      final String? error}) = _$NatureStateImpl;

  @override
  NatureQuizModel? get natureQuizModel;
  @override
  Status get status;
  @override
  bool? get isLoading;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$NatureStateImplCopyWith<_$NatureStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
