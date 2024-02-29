// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'achievements_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AchievementsState {
  AchievementModel? get achievementModel => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AchievementsStateCopyWith<AchievementsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AchievementsStateCopyWith<$Res> {
  factory $AchievementsStateCopyWith(
          AchievementsState value, $Res Function(AchievementsState) then) =
      _$AchievementsStateCopyWithImpl<$Res, AchievementsState>;
  @useResult
  $Res call(
      {AchievementModel? achievementModel,
      Status status,
      String? errorMessage});

  $AchievementModelCopyWith<$Res>? get achievementModel;
}

/// @nodoc
class _$AchievementsStateCopyWithImpl<$Res, $Val extends AchievementsState>
    implements $AchievementsStateCopyWith<$Res> {
  _$AchievementsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? achievementModel = freezed,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      achievementModel: freezed == achievementModel
          ? _value.achievementModel
          : achievementModel // ignore: cast_nullable_to_non_nullable
              as AchievementModel?,
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

  @override
  @pragma('vm:prefer-inline')
  $AchievementModelCopyWith<$Res>? get achievementModel {
    if (_value.achievementModel == null) {
      return null;
    }

    return $AchievementModelCopyWith<$Res>(_value.achievementModel!, (value) {
      return _then(_value.copyWith(achievementModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AchievementsStateImplCopyWith<$Res>
    implements $AchievementsStateCopyWith<$Res> {
  factory _$$AchievementsStateImplCopyWith(_$AchievementsStateImpl value,
          $Res Function(_$AchievementsStateImpl) then) =
      __$$AchievementsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AchievementModel? achievementModel,
      Status status,
      String? errorMessage});

  @override
  $AchievementModelCopyWith<$Res>? get achievementModel;
}

/// @nodoc
class __$$AchievementsStateImplCopyWithImpl<$Res>
    extends _$AchievementsStateCopyWithImpl<$Res, _$AchievementsStateImpl>
    implements _$$AchievementsStateImplCopyWith<$Res> {
  __$$AchievementsStateImplCopyWithImpl(_$AchievementsStateImpl _value,
      $Res Function(_$AchievementsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? achievementModel = freezed,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$AchievementsStateImpl(
      achievementModel: freezed == achievementModel
          ? _value.achievementModel
          : achievementModel // ignore: cast_nullable_to_non_nullable
              as AchievementModel?,
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

class _$AchievementsStateImpl implements _AchievementsState {
  _$AchievementsStateImpl(
      {this.achievementModel, this.status = Status.initial, this.errorMessage});

  @override
  final AchievementModel? achievementModel;
  @override
  @JsonKey()
  final Status status;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'AchievementsState(achievementModel: $achievementModel, status: $status, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AchievementsStateImpl &&
            (identical(other.achievementModel, achievementModel) ||
                other.achievementModel == achievementModel) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, achievementModel, status, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AchievementsStateImplCopyWith<_$AchievementsStateImpl> get copyWith =>
      __$$AchievementsStateImplCopyWithImpl<_$AchievementsStateImpl>(
          this, _$identity);
}

abstract class _AchievementsState implements AchievementsState {
  factory _AchievementsState(
      {final AchievementModel? achievementModel,
      final Status status,
      final String? errorMessage}) = _$AchievementsStateImpl;

  @override
  AchievementModel? get achievementModel;
  @override
  Status get status;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$AchievementsStateImplCopyWith<_$AchievementsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
