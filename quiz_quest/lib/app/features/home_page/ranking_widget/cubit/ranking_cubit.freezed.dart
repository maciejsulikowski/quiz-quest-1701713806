// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ranking_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RankingState {
  List<RankingModel>? get rankingModel => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RankingStateCopyWith<RankingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RankingStateCopyWith<$Res> {
  factory $RankingStateCopyWith(
          RankingState value, $Res Function(RankingState) then) =
      _$RankingStateCopyWithImpl<$Res, RankingState>;
  @useResult
  $Res call(
      {List<RankingModel>? rankingModel, Status status, String? errorMessage});
}

/// @nodoc
class _$RankingStateCopyWithImpl<$Res, $Val extends RankingState>
    implements $RankingStateCopyWith<$Res> {
  _$RankingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rankingModel = freezed,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      rankingModel: freezed == rankingModel
          ? _value.rankingModel
          : rankingModel // ignore: cast_nullable_to_non_nullable
              as List<RankingModel>?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RankingStateImplCopyWith<$Res>
    implements $RankingStateCopyWith<$Res> {
  factory _$$RankingStateImplCopyWith(
          _$RankingStateImpl value, $Res Function(_$RankingStateImpl) then) =
      __$$RankingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<RankingModel>? rankingModel, Status status, String? errorMessage});
}

/// @nodoc
class __$$RankingStateImplCopyWithImpl<$Res>
    extends _$RankingStateCopyWithImpl<$Res, _$RankingStateImpl>
    implements _$$RankingStateImplCopyWith<$Res> {
  __$$RankingStateImplCopyWithImpl(
      _$RankingStateImpl _value, $Res Function(_$RankingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rankingModel = freezed,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$RankingStateImpl(
      rankingModel: freezed == rankingModel
          ? _value._rankingModel
          : rankingModel // ignore: cast_nullable_to_non_nullable
              as List<RankingModel>?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$RankingStateImpl implements _RankingState {
  _$RankingStateImpl(
      {final List<RankingModel>? rankingModel,
      this.status = Status.initial,
      this.errorMessage})
      : _rankingModel = rankingModel;

  final List<RankingModel>? _rankingModel;
  @override
  List<RankingModel>? get rankingModel {
    final value = _rankingModel;
    if (value == null) return null;
    if (_rankingModel is EqualUnmodifiableListView) return _rankingModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final Status status;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'RankingState(rankingModel: $rankingModel, status: $status, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RankingStateImpl &&
            const DeepCollectionEquality()
                .equals(other._rankingModel, _rankingModel) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_rankingModel), status, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RankingStateImplCopyWith<_$RankingStateImpl> get copyWith =>
      __$$RankingStateImplCopyWithImpl<_$RankingStateImpl>(this, _$identity);
}

abstract class _RankingState implements RankingState {
  factory _RankingState(
      {final List<RankingModel>? rankingModel,
      final Status status,
      final String? errorMessage}) = _$RankingStateImpl;

  @override
  List<RankingModel>? get rankingModel;
  @override
  Status get status;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$RankingStateImplCopyWith<_$RankingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
