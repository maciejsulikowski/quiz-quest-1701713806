// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'films_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FilmsState {
  FilmsQuizModel? get filmsQuizModel => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;
  bool? get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilmsStateCopyWith<FilmsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilmsStateCopyWith<$Res> {
  factory $FilmsStateCopyWith(
          FilmsState value, $Res Function(FilmsState) then) =
      _$FilmsStateCopyWithImpl<$Res, FilmsState>;
  @useResult
  $Res call(
      {FilmsQuizModel? filmsQuizModel,
      Status status,
      bool? isLoading,
      String? error});

  $FilmsQuizModelCopyWith<$Res>? get filmsQuizModel;
}

/// @nodoc
class _$FilmsStateCopyWithImpl<$Res, $Val extends FilmsState>
    implements $FilmsStateCopyWith<$Res> {
  _$FilmsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filmsQuizModel = freezed,
    Object? status = null,
    Object? isLoading = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      filmsQuizModel: freezed == filmsQuizModel
          ? _value.filmsQuizModel
          : filmsQuizModel // ignore: cast_nullable_to_non_nullable
              as FilmsQuizModel?,
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
  $FilmsQuizModelCopyWith<$Res>? get filmsQuizModel {
    if (_value.filmsQuizModel == null) {
      return null;
    }

    return $FilmsQuizModelCopyWith<$Res>(_value.filmsQuizModel!, (value) {
      return _then(_value.copyWith(filmsQuizModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FilmsStateImplCopyWith<$Res>
    implements $FilmsStateCopyWith<$Res> {
  factory _$$FilmsStateImplCopyWith(
          _$FilmsStateImpl value, $Res Function(_$FilmsStateImpl) then) =
      __$$FilmsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FilmsQuizModel? filmsQuizModel,
      Status status,
      bool? isLoading,
      String? error});

  @override
  $FilmsQuizModelCopyWith<$Res>? get filmsQuizModel;
}

/// @nodoc
class __$$FilmsStateImplCopyWithImpl<$Res>
    extends _$FilmsStateCopyWithImpl<$Res, _$FilmsStateImpl>
    implements _$$FilmsStateImplCopyWith<$Res> {
  __$$FilmsStateImplCopyWithImpl(
      _$FilmsStateImpl _value, $Res Function(_$FilmsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filmsQuizModel = freezed,
    Object? status = null,
    Object? isLoading = freezed,
    Object? error = freezed,
  }) {
    return _then(_$FilmsStateImpl(
      filmsQuizModel: freezed == filmsQuizModel
          ? _value.filmsQuizModel
          : filmsQuizModel // ignore: cast_nullable_to_non_nullable
              as FilmsQuizModel?,
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

class _$FilmsStateImpl implements _FilmsState {
  _$FilmsStateImpl(
      {this.filmsQuizModel,
      this.status = Status.initial,
      this.isLoading = false,
      this.error});

  @override
  final FilmsQuizModel? filmsQuizModel;
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
    return 'FilmsState(filmsQuizModel: $filmsQuizModel, status: $status, isLoading: $isLoading, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilmsStateImpl &&
            (identical(other.filmsQuizModel, filmsQuizModel) ||
                other.filmsQuizModel == filmsQuizModel) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, filmsQuizModel, status, isLoading, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilmsStateImplCopyWith<_$FilmsStateImpl> get copyWith =>
      __$$FilmsStateImplCopyWithImpl<_$FilmsStateImpl>(this, _$identity);
}

abstract class _FilmsState implements FilmsState {
  factory _FilmsState(
      {final FilmsQuizModel? filmsQuizModel,
      final Status status,
      final bool? isLoading,
      final String? error}) = _$FilmsStateImpl;

  @override
  FilmsQuizModel? get filmsQuizModel;
  @override
  Status get status;
  @override
  bool? get isLoading;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$FilmsStateImplCopyWith<_$FilmsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
