// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'computer_science_quiz_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ComputerScienceQuizModel _$ComputerScienceQuizModelFromJson(
    Map<String, dynamic> json) {
  return _ComputerScienceQuizModel.fromJson(json);
}

/// @nodoc
mixin _$ComputerScienceQuizModel {
  @JsonKey(name: "results")
  List<Results4> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComputerScienceQuizModelCopyWith<ComputerScienceQuizModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComputerScienceQuizModelCopyWith<$Res> {
  factory $ComputerScienceQuizModelCopyWith(ComputerScienceQuizModel value,
          $Res Function(ComputerScienceQuizModel) then) =
      _$ComputerScienceQuizModelCopyWithImpl<$Res, ComputerScienceQuizModel>;
  @useResult
  $Res call({@JsonKey(name: "results") List<Results4> results});
}

/// @nodoc
class _$ComputerScienceQuizModelCopyWithImpl<$Res,
        $Val extends ComputerScienceQuizModel>
    implements $ComputerScienceQuizModelCopyWith<$Res> {
  _$ComputerScienceQuizModelCopyWithImpl(this._value, this._then);

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
              as List<Results4>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ComputerScienceQuizModelImplCopyWith<$Res>
    implements $ComputerScienceQuizModelCopyWith<$Res> {
  factory _$$ComputerScienceQuizModelImplCopyWith(
          _$ComputerScienceQuizModelImpl value,
          $Res Function(_$ComputerScienceQuizModelImpl) then) =
      __$$ComputerScienceQuizModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "results") List<Results4> results});
}

/// @nodoc
class __$$ComputerScienceQuizModelImplCopyWithImpl<$Res>
    extends _$ComputerScienceQuizModelCopyWithImpl<$Res,
        _$ComputerScienceQuizModelImpl>
    implements _$$ComputerScienceQuizModelImplCopyWith<$Res> {
  __$$ComputerScienceQuizModelImplCopyWithImpl(
      _$ComputerScienceQuizModelImpl _value,
      $Res Function(_$ComputerScienceQuizModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_$ComputerScienceQuizModelImpl(
      null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Results4>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ComputerScienceQuizModelImpl implements _ComputerScienceQuizModel {
  _$ComputerScienceQuizModelImpl(
      @JsonKey(name: "results") final List<Results4> results)
      : _results = results;

  factory _$ComputerScienceQuizModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ComputerScienceQuizModelImplFromJson(json);

  final List<Results4> _results;
  @override
  @JsonKey(name: "results")
  List<Results4> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'ComputerScienceQuizModel(results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ComputerScienceQuizModelImpl &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ComputerScienceQuizModelImplCopyWith<_$ComputerScienceQuizModelImpl>
      get copyWith => __$$ComputerScienceQuizModelImplCopyWithImpl<
          _$ComputerScienceQuizModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ComputerScienceQuizModelImplToJson(
      this,
    );
  }
}

abstract class _ComputerScienceQuizModel implements ComputerScienceQuizModel {
  factory _ComputerScienceQuizModel(
          @JsonKey(name: "results") final List<Results4> results) =
      _$ComputerScienceQuizModelImpl;

  factory _ComputerScienceQuizModel.fromJson(Map<String, dynamic> json) =
      _$ComputerScienceQuizModelImpl.fromJson;

  @override
  @JsonKey(name: "results")
  List<Results4> get results;
  @override
  @JsonKey(ignore: true)
  _$$ComputerScienceQuizModelImplCopyWith<_$ComputerScienceQuizModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Results4 _$Results4FromJson(Map<String, dynamic> json) {
  return _Results4.fromJson(json);
}

/// @nodoc
mixin _$Results4 {
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
  $Results4CopyWith<Results4> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Results4CopyWith<$Res> {
  factory $Results4CopyWith(Results4 value, $Res Function(Results4) then) =
      _$Results4CopyWithImpl<$Res, Results4>;
  @useResult
  $Res call(
      {@JsonKey(name: "category") String category,
      @JsonKey(name: "question") String question,
      @JsonKey(name: "correct_answer") String correctAnswer,
      @JsonKey(name: "incorrect_answers") List<dynamic> incorrectAnswers});
}

/// @nodoc
class _$Results4CopyWithImpl<$Res, $Val extends Results4>
    implements $Results4CopyWith<$Res> {
  _$Results4CopyWithImpl(this._value, this._then);

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
abstract class _$$Results4ImplCopyWith<$Res>
    implements $Results4CopyWith<$Res> {
  factory _$$Results4ImplCopyWith(
          _$Results4Impl value, $Res Function(_$Results4Impl) then) =
      __$$Results4ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "category") String category,
      @JsonKey(name: "question") String question,
      @JsonKey(name: "correct_answer") String correctAnswer,
      @JsonKey(name: "incorrect_answers") List<dynamic> incorrectAnswers});
}

/// @nodoc
class __$$Results4ImplCopyWithImpl<$Res>
    extends _$Results4CopyWithImpl<$Res, _$Results4Impl>
    implements _$$Results4ImplCopyWith<$Res> {
  __$$Results4ImplCopyWithImpl(
      _$Results4Impl _value, $Res Function(_$Results4Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? question = null,
    Object? correctAnswer = null,
    Object? incorrectAnswers = null,
  }) {
    return _then(_$Results4Impl(
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
class _$Results4Impl implements _Results4 {
  _$Results4Impl(
      @JsonKey(name: "category") this.category,
      @JsonKey(name: "question") this.question,
      @JsonKey(name: "correct_answer") this.correctAnswer,
      @JsonKey(name: "incorrect_answers") final List<dynamic> incorrectAnswers)
      : _incorrectAnswers = incorrectAnswers;

  factory _$Results4Impl.fromJson(Map<String, dynamic> json) =>
      _$$Results4ImplFromJson(json);

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
    return 'Results4(category: $category, question: $question, correctAnswer: $correctAnswer, incorrectAnswers: $incorrectAnswers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Results4Impl &&
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
  _$$Results4ImplCopyWith<_$Results4Impl> get copyWith =>
      __$$Results4ImplCopyWithImpl<_$Results4Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Results4ImplToJson(
      this,
    );
  }
}

abstract class _Results4 implements Results4 {
  factory _Results4(
      @JsonKey(name: "category") final String category,
      @JsonKey(name: "question") final String question,
      @JsonKey(name: "correct_answer") final String correctAnswer,
      @JsonKey(name: "incorrect_answers")
      final List<dynamic> incorrectAnswers) = _$Results4Impl;

  factory _Results4.fromJson(Map<String, dynamic> json) =
      _$Results4Impl.fromJson;

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
  _$$Results4ImplCopyWith<_$Results4Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
