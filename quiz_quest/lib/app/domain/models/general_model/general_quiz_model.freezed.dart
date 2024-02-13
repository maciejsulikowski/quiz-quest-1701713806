// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'general_quiz_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GeneralQuizModel _$GeneralQuizModelFromJson(Map<String, dynamic> json) {
  return _GeneralQuizModel.fromJson(json);
}

/// @nodoc
mixin _$GeneralQuizModel {
  @JsonKey(name: "results")
  List<Results9> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeneralQuizModelCopyWith<GeneralQuizModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeneralQuizModelCopyWith<$Res> {
  factory $GeneralQuizModelCopyWith(
          GeneralQuizModel value, $Res Function(GeneralQuizModel) then) =
      _$GeneralQuizModelCopyWithImpl<$Res, GeneralQuizModel>;
  @useResult
  $Res call({@JsonKey(name: "results") List<Results9> results});
}

/// @nodoc
class _$GeneralQuizModelCopyWithImpl<$Res, $Val extends GeneralQuizModel>
    implements $GeneralQuizModelCopyWith<$Res> {
  _$GeneralQuizModelCopyWithImpl(this._value, this._then);

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
              as List<Results9>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GeneralQuizModelImplCopyWith<$Res>
    implements $GeneralQuizModelCopyWith<$Res> {
  factory _$$GeneralQuizModelImplCopyWith(_$GeneralQuizModelImpl value,
          $Res Function(_$GeneralQuizModelImpl) then) =
      __$$GeneralQuizModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "results") List<Results9> results});
}

/// @nodoc
class __$$GeneralQuizModelImplCopyWithImpl<$Res>
    extends _$GeneralQuizModelCopyWithImpl<$Res, _$GeneralQuizModelImpl>
    implements _$$GeneralQuizModelImplCopyWith<$Res> {
  __$$GeneralQuizModelImplCopyWithImpl(_$GeneralQuizModelImpl _value,
      $Res Function(_$GeneralQuizModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_$GeneralQuizModelImpl(
      null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Results9>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GeneralQuizModelImpl implements _GeneralQuizModel {
  _$GeneralQuizModelImpl(@JsonKey(name: "results") final List<Results9> results)
      : _results = results;

  factory _$GeneralQuizModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GeneralQuizModelImplFromJson(json);

  final List<Results9> _results;
  @override
  @JsonKey(name: "results")
  List<Results9> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'GeneralQuizModel(results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeneralQuizModelImpl &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GeneralQuizModelImplCopyWith<_$GeneralQuizModelImpl> get copyWith =>
      __$$GeneralQuizModelImplCopyWithImpl<_$GeneralQuizModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeneralQuizModelImplToJson(
      this,
    );
  }
}

abstract class _GeneralQuizModel implements GeneralQuizModel {
  factory _GeneralQuizModel(
          @JsonKey(name: "results") final List<Results9> results) =
      _$GeneralQuizModelImpl;

  factory _GeneralQuizModel.fromJson(Map<String, dynamic> json) =
      _$GeneralQuizModelImpl.fromJson;

  @override
  @JsonKey(name: "results")
  List<Results9> get results;
  @override
  @JsonKey(ignore: true)
  _$$GeneralQuizModelImplCopyWith<_$GeneralQuizModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Results9 _$Results9FromJson(Map<String, dynamic> json) {
  return _Results9.fromJson(json);
}

/// @nodoc
mixin _$Results9 {
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
  $Results9CopyWith<Results9> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Results9CopyWith<$Res> {
  factory $Results9CopyWith(Results9 value, $Res Function(Results9) then) =
      _$Results9CopyWithImpl<$Res, Results9>;
  @useResult
  $Res call(
      {@JsonKey(name: "category") String category,
      @JsonKey(name: "question") String question,
      @JsonKey(name: "correct_answer") String correctAnswer,
      @JsonKey(name: "incorrect_answers") List<dynamic> incorrectAnswers});
}

/// @nodoc
class _$Results9CopyWithImpl<$Res, $Val extends Results9>
    implements $Results9CopyWith<$Res> {
  _$Results9CopyWithImpl(this._value, this._then);

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
abstract class _$$Results9ImplCopyWith<$Res>
    implements $Results9CopyWith<$Res> {
  factory _$$Results9ImplCopyWith(
          _$Results9Impl value, $Res Function(_$Results9Impl) then) =
      __$$Results9ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "category") String category,
      @JsonKey(name: "question") String question,
      @JsonKey(name: "correct_answer") String correctAnswer,
      @JsonKey(name: "incorrect_answers") List<dynamic> incorrectAnswers});
}

/// @nodoc
class __$$Results9ImplCopyWithImpl<$Res>
    extends _$Results9CopyWithImpl<$Res, _$Results9Impl>
    implements _$$Results9ImplCopyWith<$Res> {
  __$$Results9ImplCopyWithImpl(
      _$Results9Impl _value, $Res Function(_$Results9Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? question = null,
    Object? correctAnswer = null,
    Object? incorrectAnswers = null,
  }) {
    return _then(_$Results9Impl(
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
class _$Results9Impl implements _Results9 {
  _$Results9Impl(
      @JsonKey(name: "category") this.category,
      @JsonKey(name: "question") this.question,
      @JsonKey(name: "correct_answer") this.correctAnswer,
      @JsonKey(name: "incorrect_answers") final List<dynamic> incorrectAnswers)
      : _incorrectAnswers = incorrectAnswers;

  factory _$Results9Impl.fromJson(Map<String, dynamic> json) =>
      _$$Results9ImplFromJson(json);

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
    return 'Results9(category: $category, question: $question, correctAnswer: $correctAnswer, incorrectAnswers: $incorrectAnswers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Results9Impl &&
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
  _$$Results9ImplCopyWith<_$Results9Impl> get copyWith =>
      __$$Results9ImplCopyWithImpl<_$Results9Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Results9ImplToJson(
      this,
    );
  }
}

abstract class _Results9 implements Results9 {
  factory _Results9(
      @JsonKey(name: "category") final String category,
      @JsonKey(name: "question") final String question,
      @JsonKey(name: "correct_answer") final String correctAnswer,
      @JsonKey(name: "incorrect_answers")
      final List<dynamic> incorrectAnswers) = _$Results9Impl;

  factory _Results9.fromJson(Map<String, dynamic> json) =
      _$Results9Impl.fromJson;

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
  _$$Results9ImplCopyWith<_$Results9Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
