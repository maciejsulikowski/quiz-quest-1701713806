// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vehicles_quiz_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VehiclesQuizModel _$VehiclesQuizModelFromJson(Map<String, dynamic> json) {
  return _VehiclesQuizModel.fromJson(json);
}

/// @nodoc
mixin _$VehiclesQuizModel {
  @JsonKey(name: "results")
  List<Results8> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VehiclesQuizModelCopyWith<VehiclesQuizModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehiclesQuizModelCopyWith<$Res> {
  factory $VehiclesQuizModelCopyWith(
          VehiclesQuizModel value, $Res Function(VehiclesQuizModel) then) =
      _$VehiclesQuizModelCopyWithImpl<$Res, VehiclesQuizModel>;
  @useResult
  $Res call({@JsonKey(name: "results") List<Results8> results});
}

/// @nodoc
class _$VehiclesQuizModelCopyWithImpl<$Res, $Val extends VehiclesQuizModel>
    implements $VehiclesQuizModelCopyWith<$Res> {
  _$VehiclesQuizModelCopyWithImpl(this._value, this._then);

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
              as List<Results8>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VehiclesQuizModelImplCopyWith<$Res>
    implements $VehiclesQuizModelCopyWith<$Res> {
  factory _$$VehiclesQuizModelImplCopyWith(_$VehiclesQuizModelImpl value,
          $Res Function(_$VehiclesQuizModelImpl) then) =
      __$$VehiclesQuizModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "results") List<Results8> results});
}

/// @nodoc
class __$$VehiclesQuizModelImplCopyWithImpl<$Res>
    extends _$VehiclesQuizModelCopyWithImpl<$Res, _$VehiclesQuizModelImpl>
    implements _$$VehiclesQuizModelImplCopyWith<$Res> {
  __$$VehiclesQuizModelImplCopyWithImpl(_$VehiclesQuizModelImpl _value,
      $Res Function(_$VehiclesQuizModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_$VehiclesQuizModelImpl(
      null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Results8>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VehiclesQuizModelImpl implements _VehiclesQuizModel {
  _$VehiclesQuizModelImpl(
      @JsonKey(name: "results") final List<Results8> results)
      : _results = results;

  factory _$VehiclesQuizModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VehiclesQuizModelImplFromJson(json);

  final List<Results8> _results;
  @override
  @JsonKey(name: "results")
  List<Results8> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'VehiclesQuizModel(results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VehiclesQuizModelImpl &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VehiclesQuizModelImplCopyWith<_$VehiclesQuizModelImpl> get copyWith =>
      __$$VehiclesQuizModelImplCopyWithImpl<_$VehiclesQuizModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VehiclesQuizModelImplToJson(
      this,
    );
  }
}

abstract class _VehiclesQuizModel implements VehiclesQuizModel {
  factory _VehiclesQuizModel(
          @JsonKey(name: "results") final List<Results8> results) =
      _$VehiclesQuizModelImpl;

  factory _VehiclesQuizModel.fromJson(Map<String, dynamic> json) =
      _$VehiclesQuizModelImpl.fromJson;

  @override
  @JsonKey(name: "results")
  List<Results8> get results;
  @override
  @JsonKey(ignore: true)
  _$$VehiclesQuizModelImplCopyWith<_$VehiclesQuizModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Results8 _$Results8FromJson(Map<String, dynamic> json) {
  return _Results8.fromJson(json);
}

/// @nodoc
mixin _$Results8 {
  @JsonKey(name: "category")
  String get category => throw _privateConstructorUsedError;
  @JsonKey(name: "question")
  String get question => throw _privateConstructorUsedError;
  @JsonKey(name: "correct_answer")
  String get correctAnswer => throw _privateConstructorUsedError;
  @JsonKey(name: "incorrect_answers")
  List<dynamic> get incorrectAnswers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $Results8CopyWith<Results8> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Results8CopyWith<$Res> {
  factory $Results8CopyWith(Results8 value, $Res Function(Results8) then) =
      _$Results8CopyWithImpl<$Res, Results8>;
  @useResult
  $Res call(
      {@JsonKey(name: "category") String category,
      @JsonKey(name: "question") String question,
      @JsonKey(name: "correct_answer") String correctAnswer,
      @JsonKey(name: "incorrect_answers") List<dynamic> incorrectAnswers});
}

/// @nodoc
class _$Results8CopyWithImpl<$Res, $Val extends Results8>
    implements $Results8CopyWith<$Res> {
  _$Results8CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? question = null,
    Object? correctAnswer = null,
    Object? incorrectAnswers = null,
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
      correctAnswer: null == correctAnswer
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as String,
      incorrectAnswers: null == incorrectAnswers
          ? _value.incorrectAnswers
          : incorrectAnswers // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Results8ImplCopyWith<$Res>
    implements $Results8CopyWith<$Res> {
  factory _$$Results8ImplCopyWith(
          _$Results8Impl value, $Res Function(_$Results8Impl) then) =
      __$$Results8ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "category") String category,
      @JsonKey(name: "question") String question,
      @JsonKey(name: "correct_answer") String correctAnswer,
      @JsonKey(name: "incorrect_answers") List<dynamic> incorrectAnswers});
}

/// @nodoc
class __$$Results8ImplCopyWithImpl<$Res>
    extends _$Results8CopyWithImpl<$Res, _$Results8Impl>
    implements _$$Results8ImplCopyWith<$Res> {
  __$$Results8ImplCopyWithImpl(
      _$Results8Impl _value, $Res Function(_$Results8Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? question = null,
    Object? correctAnswer = null,
    Object? incorrectAnswers = null,
  }) {
    return _then(_$Results8Impl(
      null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      null == correctAnswer
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as String,
      null == incorrectAnswers
          ? _value._incorrectAnswers
          : incorrectAnswers // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Results8Impl extends _Results8 {
  _$Results8Impl(
      @JsonKey(name: "category") this.category,
      @JsonKey(name: "question") this.question,
      @JsonKey(name: "correct_answer") this.correctAnswer,
      @JsonKey(name: "incorrect_answers") final List<dynamic> incorrectAnswers)
      : _incorrectAnswers = incorrectAnswers,
        super._();

  factory _$Results8Impl.fromJson(Map<String, dynamic> json) =>
      _$$Results8ImplFromJson(json);

  @override
  @JsonKey(name: "category")
  final String category;
  @override
  @JsonKey(name: "question")
  final String question;
  @override
  @JsonKey(name: "correct_answer")
  final String correctAnswer;
  final List<dynamic> _incorrectAnswers;
  @override
  @JsonKey(name: "incorrect_answers")
  List<dynamic> get incorrectAnswers {
    if (_incorrectAnswers is EqualUnmodifiableListView)
      return _incorrectAnswers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_incorrectAnswers);
  }

  @override
  String toString() {
    return 'Results8(category: $category, question: $question, correctAnswer: $correctAnswer, incorrectAnswers: $incorrectAnswers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Results8Impl &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.correctAnswer, correctAnswer) ||
                other.correctAnswer == correctAnswer) &&
            const DeepCollectionEquality()
                .equals(other._incorrectAnswers, _incorrectAnswers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, category, question,
      correctAnswer, const DeepCollectionEquality().hash(_incorrectAnswers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Results8ImplCopyWith<_$Results8Impl> get copyWith =>
      __$$Results8ImplCopyWithImpl<_$Results8Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Results8ImplToJson(
      this,
    );
  }
}

abstract class _Results8 extends Results8 {
  factory _Results8(
      @JsonKey(name: "category") final String category,
      @JsonKey(name: "question") final String question,
      @JsonKey(name: "correct_answer") final String correctAnswer,
      @JsonKey(name: "incorrect_answers")
      final List<dynamic> incorrectAnswers) = _$Results8Impl;
  _Results8._() : super._();

  factory _Results8.fromJson(Map<String, dynamic> json) =
      _$Results8Impl.fromJson;

  @override
  @JsonKey(name: "category")
  String get category;
  @override
  @JsonKey(name: "question")
  String get question;
  @override
  @JsonKey(name: "correct_answer")
  String get correctAnswer;
  @override
  @JsonKey(name: "incorrect_answers")
  List<dynamic> get incorrectAnswers;
  @override
  @JsonKey(ignore: true)
  _$$Results8ImplCopyWith<_$Results8Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
