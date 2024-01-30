// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_quiz_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HistoryQuizModel _$HistoryQuizModelFromJson(Map<String, dynamic> json) {
  return _HistoryQuizModel.fromJson(json);
}

/// @nodoc
mixin _$HistoryQuizModel {
  @JsonKey(name: "results")
  List<Results6> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HistoryQuizModelCopyWith<HistoryQuizModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryQuizModelCopyWith<$Res> {
  factory $HistoryQuizModelCopyWith(
          HistoryQuizModel value, $Res Function(HistoryQuizModel) then) =
      _$HistoryQuizModelCopyWithImpl<$Res, HistoryQuizModel>;
  @useResult
  $Res call({@JsonKey(name: "results") List<Results6> results});
}

/// @nodoc
class _$HistoryQuizModelCopyWithImpl<$Res, $Val extends HistoryQuizModel>
    implements $HistoryQuizModelCopyWith<$Res> {
  _$HistoryQuizModelCopyWithImpl(this._value, this._then);

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
              as List<Results6>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HistoryQuizModelImplCopyWith<$Res>
    implements $HistoryQuizModelCopyWith<$Res> {
  factory _$$HistoryQuizModelImplCopyWith(_$HistoryQuizModelImpl value,
          $Res Function(_$HistoryQuizModelImpl) then) =
      __$$HistoryQuizModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "results") List<Results6> results});
}

/// @nodoc
class __$$HistoryQuizModelImplCopyWithImpl<$Res>
    extends _$HistoryQuizModelCopyWithImpl<$Res, _$HistoryQuizModelImpl>
    implements _$$HistoryQuizModelImplCopyWith<$Res> {
  __$$HistoryQuizModelImplCopyWithImpl(_$HistoryQuizModelImpl _value,
      $Res Function(_$HistoryQuizModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_$HistoryQuizModelImpl(
      null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Results6>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HistoryQuizModelImpl implements _HistoryQuizModel {
  _$HistoryQuizModelImpl(@JsonKey(name: "results") final List<Results6> results)
      : _results = results;

  factory _$HistoryQuizModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HistoryQuizModelImplFromJson(json);

  final List<Results6> _results;
  @override
  @JsonKey(name: "results")
  List<Results6> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'HistoryQuizModel(results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryQuizModelImpl &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryQuizModelImplCopyWith<_$HistoryQuizModelImpl> get copyWith =>
      __$$HistoryQuizModelImplCopyWithImpl<_$HistoryQuizModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HistoryQuizModelImplToJson(
      this,
    );
  }
}

abstract class _HistoryQuizModel implements HistoryQuizModel {
  factory _HistoryQuizModel(
          @JsonKey(name: "results") final List<Results6> results) =
      _$HistoryQuizModelImpl;

  factory _HistoryQuizModel.fromJson(Map<String, dynamic> json) =
      _$HistoryQuizModelImpl.fromJson;

  @override
  @JsonKey(name: "results")
  List<Results6> get results;
  @override
  @JsonKey(ignore: true)
  _$$HistoryQuizModelImplCopyWith<_$HistoryQuizModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Results6 _$Results6FromJson(Map<String, dynamic> json) {
  return _Results6.fromJson(json);
}

/// @nodoc
mixin _$Results6 {
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
  $Results6CopyWith<Results6> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Results6CopyWith<$Res> {
  factory $Results6CopyWith(Results6 value, $Res Function(Results6) then) =
      _$Results6CopyWithImpl<$Res, Results6>;
  @useResult
  $Res call(
      {@JsonKey(name: "category") String category,
      @JsonKey(name: "question") String question,
      @JsonKey(name: "correct_answer") String correctAnswer,
      @JsonKey(name: "incorrect_answers") List<dynamic> incorrectAnswers});
}

/// @nodoc
class _$Results6CopyWithImpl<$Res, $Val extends Results6>
    implements $Results6CopyWith<$Res> {
  _$Results6CopyWithImpl(this._value, this._then);

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
abstract class _$$Results6ImplCopyWith<$Res>
    implements $Results6CopyWith<$Res> {
  factory _$$Results6ImplCopyWith(
          _$Results6Impl value, $Res Function(_$Results6Impl) then) =
      __$$Results6ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "category") String category,
      @JsonKey(name: "question") String question,
      @JsonKey(name: "correct_answer") String correctAnswer,
      @JsonKey(name: "incorrect_answers") List<dynamic> incorrectAnswers});
}

/// @nodoc
class __$$Results6ImplCopyWithImpl<$Res>
    extends _$Results6CopyWithImpl<$Res, _$Results6Impl>
    implements _$$Results6ImplCopyWith<$Res> {
  __$$Results6ImplCopyWithImpl(
      _$Results6Impl _value, $Res Function(_$Results6Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? question = null,
    Object? correctAnswer = null,
    Object? incorrectAnswers = null,
  }) {
    return _then(_$Results6Impl(
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
class _$Results6Impl implements _Results6 {
  _$Results6Impl(
      @JsonKey(name: "category") this.category,
      @JsonKey(name: "question") this.question,
      @JsonKey(name: "correct_answer") this.correctAnswer,
      @JsonKey(name: "incorrect_answers") final List<dynamic> incorrectAnswers)
      : _incorrectAnswers = incorrectAnswers;

  factory _$Results6Impl.fromJson(Map<String, dynamic> json) =>
      _$$Results6ImplFromJson(json);

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
    return 'Results6(category: $category, question: $question, correctAnswer: $correctAnswer, incorrectAnswers: $incorrectAnswers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Results6Impl &&
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
  _$$Results6ImplCopyWith<_$Results6Impl> get copyWith =>
      __$$Results6ImplCopyWithImpl<_$Results6Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Results6ImplToJson(
      this,
    );
  }
}

abstract class _Results6 implements Results6 {
  factory _Results6(
      @JsonKey(name: "category") final String category,
      @JsonKey(name: "question") final String question,
      @JsonKey(name: "correct_answer") final String correctAnswer,
      @JsonKey(name: "incorrect_answers")
      final List<dynamic> incorrectAnswers) = _$Results6Impl;

  factory _Results6.fromJson(Map<String, dynamic> json) =
      _$Results6Impl.fromJson;

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
  _$$Results6ImplCopyWith<_$Results6Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
