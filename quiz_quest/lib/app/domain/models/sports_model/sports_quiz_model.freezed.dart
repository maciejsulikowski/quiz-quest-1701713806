// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sports_quiz_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SportsQuizModel _$SportsQuizModelFromJson(Map<String, dynamic> json) {
  return _SportsQuizModel.fromJson(json);
}

/// @nodoc
mixin _$SportsQuizModel {
  @JsonKey(name: "results")
  List<Results1> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SportsQuizModelCopyWith<SportsQuizModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SportsQuizModelCopyWith<$Res> {
  factory $SportsQuizModelCopyWith(
          SportsQuizModel value, $Res Function(SportsQuizModel) then) =
      _$SportsQuizModelCopyWithImpl<$Res, SportsQuizModel>;
  @useResult
  $Res call({@JsonKey(name: "results") List<Results1> results});
}

/// @nodoc
class _$SportsQuizModelCopyWithImpl<$Res, $Val extends SportsQuizModel>
    implements $SportsQuizModelCopyWith<$Res> {
  _$SportsQuizModelCopyWithImpl(this._value, this._then);

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
              as List<Results1>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SportsQuizModelImplCopyWith<$Res>
    implements $SportsQuizModelCopyWith<$Res> {
  factory _$$SportsQuizModelImplCopyWith(_$SportsQuizModelImpl value,
          $Res Function(_$SportsQuizModelImpl) then) =
      __$$SportsQuizModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "results") List<Results1> results});
}

/// @nodoc
class __$$SportsQuizModelImplCopyWithImpl<$Res>
    extends _$SportsQuizModelCopyWithImpl<$Res, _$SportsQuizModelImpl>
    implements _$$SportsQuizModelImplCopyWith<$Res> {
  __$$SportsQuizModelImplCopyWithImpl(
      _$SportsQuizModelImpl _value, $Res Function(_$SportsQuizModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_$SportsQuizModelImpl(
      null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Results1>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SportsQuizModelImpl implements _SportsQuizModel {
  _$SportsQuizModelImpl(@JsonKey(name: "results") final List<Results1> results)
      : _results = results;

  factory _$SportsQuizModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SportsQuizModelImplFromJson(json);

  final List<Results1> _results;
  @override
  @JsonKey(name: "results")
  List<Results1> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'SportsQuizModel(results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SportsQuizModelImpl &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SportsQuizModelImplCopyWith<_$SportsQuizModelImpl> get copyWith =>
      __$$SportsQuizModelImplCopyWithImpl<_$SportsQuizModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SportsQuizModelImplToJson(
      this,
    );
  }
}

abstract class _SportsQuizModel implements SportsQuizModel {
  factory _SportsQuizModel(
          @JsonKey(name: "results") final List<Results1> results) =
      _$SportsQuizModelImpl;

  factory _SportsQuizModel.fromJson(Map<String, dynamic> json) =
      _$SportsQuizModelImpl.fromJson;

  @override
  @JsonKey(name: "results")
  List<Results1> get results;
  @override
  @JsonKey(ignore: true)
  _$$SportsQuizModelImplCopyWith<_$SportsQuizModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Results1 _$Results1FromJson(Map<String, dynamic> json) {
  return _Results1.fromJson(json);
}

/// @nodoc
mixin _$Results1 {
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
  $Results1CopyWith<Results1> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Results1CopyWith<$Res> {
  factory $Results1CopyWith(Results1 value, $Res Function(Results1) then) =
      _$Results1CopyWithImpl<$Res, Results1>;
  @useResult
  $Res call(
      {@JsonKey(name: "category") String category,
      @JsonKey(name: "question") String question,
      @JsonKey(name: "correct_answer") String correctAnswer,
      @JsonKey(name: "incorrect_answers") List<dynamic> incorrectAnswers});
}

/// @nodoc
class _$Results1CopyWithImpl<$Res, $Val extends Results1>
    implements $Results1CopyWith<$Res> {
  _$Results1CopyWithImpl(this._value, this._then);

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
abstract class _$$Results1ImplCopyWith<$Res>
    implements $Results1CopyWith<$Res> {
  factory _$$Results1ImplCopyWith(
          _$Results1Impl value, $Res Function(_$Results1Impl) then) =
      __$$Results1ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "category") String category,
      @JsonKey(name: "question") String question,
      @JsonKey(name: "correct_answer") String correctAnswer,
      @JsonKey(name: "incorrect_answers") List<dynamic> incorrectAnswers});
}

/// @nodoc
class __$$Results1ImplCopyWithImpl<$Res>
    extends _$Results1CopyWithImpl<$Res, _$Results1Impl>
    implements _$$Results1ImplCopyWith<$Res> {
  __$$Results1ImplCopyWithImpl(
      _$Results1Impl _value, $Res Function(_$Results1Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? question = null,
    Object? correctAnswer = null,
    Object? incorrectAnswers = null,
  }) {
    return _then(_$Results1Impl(
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
class _$Results1Impl extends _Results1 {
  _$Results1Impl(
      @JsonKey(name: "category") this.category,
      @JsonKey(name: "question") this.question,
      @JsonKey(name: "correct_answer") this.correctAnswer,
      @JsonKey(name: "incorrect_answers") final List<dynamic> incorrectAnswers)
      : _incorrectAnswers = incorrectAnswers,
        super._();

  factory _$Results1Impl.fromJson(Map<String, dynamic> json) =>
      _$$Results1ImplFromJson(json);

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
    return 'Results1(category: $category, question: $question, correctAnswer: $correctAnswer, incorrectAnswers: $incorrectAnswers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Results1Impl &&
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
  _$$Results1ImplCopyWith<_$Results1Impl> get copyWith =>
      __$$Results1ImplCopyWithImpl<_$Results1Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Results1ImplToJson(
      this,
    );
  }
}

abstract class _Results1 extends Results1 {
  factory _Results1(
      @JsonKey(name: "category") final String category,
      @JsonKey(name: "question") final String question,
      @JsonKey(name: "correct_answer") final String correctAnswer,
      @JsonKey(name: "incorrect_answers")
      final List<dynamic> incorrectAnswers) = _$Results1Impl;
  _Results1._() : super._();

  factory _Results1.fromJson(Map<String, dynamic> json) =
      _$Results1Impl.fromJson;

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
  _$$Results1ImplCopyWith<_$Results1Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
