// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'animals_quiz_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AnimalsQuizModel _$AnimalsQuizModelFromJson(Map<String, dynamic> json) {
  return _AnimalsQuizModel.fromJson(json);
}

/// @nodoc
mixin _$AnimalsQuizModel {
  @JsonKey(name: "results")
  List<Results2> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnimalsQuizModelCopyWith<AnimalsQuizModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimalsQuizModelCopyWith<$Res> {
  factory $AnimalsQuizModelCopyWith(
          AnimalsQuizModel value, $Res Function(AnimalsQuizModel) then) =
      _$AnimalsQuizModelCopyWithImpl<$Res, AnimalsQuizModel>;
  @useResult
  $Res call({@JsonKey(name: "results") List<Results2> results});
}

/// @nodoc
class _$AnimalsQuizModelCopyWithImpl<$Res, $Val extends AnimalsQuizModel>
    implements $AnimalsQuizModelCopyWith<$Res> {
  _$AnimalsQuizModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Results2>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnimalsQuizModelImplCopyWith<$Res>
    implements $AnimalsQuizModelCopyWith<$Res> {
  factory _$$AnimalsQuizModelImplCopyWith(_$AnimalsQuizModelImpl value,
          $Res Function(_$AnimalsQuizModelImpl) then) =
      __$$AnimalsQuizModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "results") List<Results2> results});
}

/// @nodoc
class __$$AnimalsQuizModelImplCopyWithImpl<$Res>
    extends _$AnimalsQuizModelCopyWithImpl<$Res, _$AnimalsQuizModelImpl>
    implements _$$AnimalsQuizModelImplCopyWith<$Res> {
  __$$AnimalsQuizModelImplCopyWithImpl(_$AnimalsQuizModelImpl _value,
      $Res Function(_$AnimalsQuizModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_$AnimalsQuizModelImpl(
      null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Results2>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnimalsQuizModelImpl implements _AnimalsQuizModel {
  _$AnimalsQuizModelImpl(@JsonKey(name: "results") final List<Results2> results)
      : _results = results;

  factory _$AnimalsQuizModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnimalsQuizModelImplFromJson(json);

  final List<Results2> _results;
  @override
  @JsonKey(name: "results")
  List<Results2> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'AnimalsQuizModel(results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnimalsQuizModelImpl &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnimalsQuizModelImplCopyWith<_$AnimalsQuizModelImpl> get copyWith =>
      __$$AnimalsQuizModelImplCopyWithImpl<_$AnimalsQuizModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnimalsQuizModelImplToJson(
      this,
    );
  }
}

abstract class _AnimalsQuizModel implements AnimalsQuizModel {
  factory _AnimalsQuizModel(
          @JsonKey(name: "results") final List<Results2> results) =
      _$AnimalsQuizModelImpl;

  factory _AnimalsQuizModel.fromJson(Map<String, dynamic> json) =
      _$AnimalsQuizModelImpl.fromJson;

  @override
  @JsonKey(name: "results")
  List<Results2> get results;
  @override
  @JsonKey(ignore: true)
  _$$AnimalsQuizModelImplCopyWith<_$AnimalsQuizModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Results2 _$Results2FromJson(Map<String, dynamic> json) {
  return _Results2.fromJson(json);
}

/// @nodoc
mixin _$Results2 {
  @JsonKey(name: "category")
  String get category => throw _privateConstructorUsedError;
  @JsonKey(name: "question")
  String get question => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $Results2CopyWith<Results2> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Results2CopyWith<$Res> {
  factory $Results2CopyWith(Results2 value, $Res Function(Results2) then) =
      _$Results2CopyWithImpl<$Res, Results2>;
  @useResult
  $Res call(
      {@JsonKey(name: "category") String category,
      @JsonKey(name: "question") String question});
}

/// @nodoc
class _$Results2CopyWithImpl<$Res, $Val extends Results2>
    implements $Results2CopyWith<$Res> {
  _$Results2CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? question = null,
  }) {
    return _then(_value.copyWith(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Results2ImplCopyWith<$Res>
    implements $Results2CopyWith<$Res> {
  factory _$$Results2ImplCopyWith(
          _$Results2Impl value, $Res Function(_$Results2Impl) then) =
      __$$Results2ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "category") String category,
      @JsonKey(name: "question") String question});
}

/// @nodoc
class __$$Results2ImplCopyWithImpl<$Res>
    extends _$Results2CopyWithImpl<$Res, _$Results2Impl>
    implements _$$Results2ImplCopyWith<$Res> {
  __$$Results2ImplCopyWithImpl(
      _$Results2Impl _value, $Res Function(_$Results2Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? question = null,
  }) {
    return _then(_$Results2Impl(
      null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Results2Impl extends _Results2 {
  _$Results2Impl(@JsonKey(name: "category") this.category,
      @JsonKey(name: "question") this.question)
      : super._();

  factory _$Results2Impl.fromJson(Map<String, dynamic> json) =>
      _$$Results2ImplFromJson(json);

  @override
  @JsonKey(name: "category")
  final String category;
  @override
  @JsonKey(name: "question")
  final String question;

  @override
  String toString() {
    return 'Results2(category: $category, question: $question)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Results2Impl &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.question, question) ||
                other.question == question));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, category, question);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Results2ImplCopyWith<_$Results2Impl> get copyWith =>
      __$$Results2ImplCopyWithImpl<_$Results2Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Results2ImplToJson(
      this,
    );
  }
}

abstract class _Results2 extends Results2 {
  factory _Results2(@JsonKey(name: "category") final String category,
      @JsonKey(name: "question") final String question) = _$Results2Impl;
  _Results2._() : super._();

  factory _Results2.fromJson(Map<String, dynamic> json) =
      _$Results2Impl.fromJson;

  @override
  @JsonKey(name: "category")
  String get category;
  @override
  @JsonKey(name: "question")
  String get question;
  @override
  @JsonKey(ignore: true)
  _$$Results2ImplCopyWith<_$Results2Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
