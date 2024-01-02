// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'geography_quiz_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GeographyQuizModel _$GeographyQuizModelFromJson(Map<String, dynamic> json) {
  return _GeographyQuizModel.fromJson(json);
}

/// @nodoc
mixin _$GeographyQuizModel {
  @JsonKey(name: "results")
  List<Results5> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeographyQuizModelCopyWith<GeographyQuizModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeographyQuizModelCopyWith<$Res> {
  factory $GeographyQuizModelCopyWith(
          GeographyQuizModel value, $Res Function(GeographyQuizModel) then) =
      _$GeographyQuizModelCopyWithImpl<$Res, GeographyQuizModel>;
  @useResult
  $Res call({@JsonKey(name: "results") List<Results5> results});
}

/// @nodoc
class _$GeographyQuizModelCopyWithImpl<$Res, $Val extends GeographyQuizModel>
    implements $GeographyQuizModelCopyWith<$Res> {
  _$GeographyQuizModelCopyWithImpl(this._value, this._then);

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
              as List<Results5>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GeographyQuizModelImplCopyWith<$Res>
    implements $GeographyQuizModelCopyWith<$Res> {
  factory _$$GeographyQuizModelImplCopyWith(_$GeographyQuizModelImpl value,
          $Res Function(_$GeographyQuizModelImpl) then) =
      __$$GeographyQuizModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "results") List<Results5> results});
}

/// @nodoc
class __$$GeographyQuizModelImplCopyWithImpl<$Res>
    extends _$GeographyQuizModelCopyWithImpl<$Res, _$GeographyQuizModelImpl>
    implements _$$GeographyQuizModelImplCopyWith<$Res> {
  __$$GeographyQuizModelImplCopyWithImpl(_$GeographyQuizModelImpl _value,
      $Res Function(_$GeographyQuizModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_$GeographyQuizModelImpl(
      null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Results5>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GeographyQuizModelImpl implements _GeographyQuizModel {
  _$GeographyQuizModelImpl(
      @JsonKey(name: "results") final List<Results5> results)
      : _results = results;

  factory _$GeographyQuizModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GeographyQuizModelImplFromJson(json);

  final List<Results5> _results;
  @override
  @JsonKey(name: "results")
  List<Results5> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'GeographyQuizModel(results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeographyQuizModelImpl &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GeographyQuizModelImplCopyWith<_$GeographyQuizModelImpl> get copyWith =>
      __$$GeographyQuizModelImplCopyWithImpl<_$GeographyQuizModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeographyQuizModelImplToJson(
      this,
    );
  }
}

abstract class _GeographyQuizModel implements GeographyQuizModel {
  factory _GeographyQuizModel(
          @JsonKey(name: "results") final List<Results5> results) =
      _$GeographyQuizModelImpl;

  factory _GeographyQuizModel.fromJson(Map<String, dynamic> json) =
      _$GeographyQuizModelImpl.fromJson;

  @override
  @JsonKey(name: "results")
  List<Results5> get results;
  @override
  @JsonKey(ignore: true)
  _$$GeographyQuizModelImplCopyWith<_$GeographyQuizModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Results5 _$Results5FromJson(Map<String, dynamic> json) {
  return _Results5.fromJson(json);
}

/// @nodoc
mixin _$Results5 {
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
  $Results5CopyWith<Results5> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Results5CopyWith<$Res> {
  factory $Results5CopyWith(Results5 value, $Res Function(Results5) then) =
      _$Results5CopyWithImpl<$Res, Results5>;
  @useResult
  $Res call(
      {@JsonKey(name: "category") String category,
      @JsonKey(name: "question") String question,
      @JsonKey(name: "correct_answer") String correctAnswer,
      @JsonKey(name: "incorrect_answers") List<dynamic> incorrectAnswers});
}

/// @nodoc
class _$Results5CopyWithImpl<$Res, $Val extends Results5>
    implements $Results5CopyWith<$Res> {
  _$Results5CopyWithImpl(this._value, this._then);

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
abstract class _$$Results5ImplCopyWith<$Res>
    implements $Results5CopyWith<$Res> {
  factory _$$Results5ImplCopyWith(
          _$Results5Impl value, $Res Function(_$Results5Impl) then) =
      __$$Results5ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "category") String category,
      @JsonKey(name: "question") String question,
      @JsonKey(name: "correct_answer") String correctAnswer,
      @JsonKey(name: "incorrect_answers") List<dynamic> incorrectAnswers});
}

/// @nodoc
class __$$Results5ImplCopyWithImpl<$Res>
    extends _$Results5CopyWithImpl<$Res, _$Results5Impl>
    implements _$$Results5ImplCopyWith<$Res> {
  __$$Results5ImplCopyWithImpl(
      _$Results5Impl _value, $Res Function(_$Results5Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? question = null,
    Object? correctAnswer = null,
    Object? incorrectAnswers = null,
  }) {
    return _then(_$Results5Impl(
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
class _$Results5Impl implements _Results5 {
  _$Results5Impl(
      @JsonKey(name: "category") this.category,
      @JsonKey(name: "question") this.question,
      @JsonKey(name: "correct_answer") this.correctAnswer,
      @JsonKey(name: "incorrect_answers") final List<dynamic> incorrectAnswers)
      : _incorrectAnswers = incorrectAnswers;

  factory _$Results5Impl.fromJson(Map<String, dynamic> json) =>
      _$$Results5ImplFromJson(json);

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
    return 'Results5(category: $category, question: $question, correctAnswer: $correctAnswer, incorrectAnswers: $incorrectAnswers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Results5Impl &&
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
  _$$Results5ImplCopyWith<_$Results5Impl> get copyWith =>
      __$$Results5ImplCopyWithImpl<_$Results5Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Results5ImplToJson(
      this,
    );
  }
}

abstract class _Results5 implements Results5 {
  factory _Results5(
      @JsonKey(name: "category") final String category,
      @JsonKey(name: "question") final String question,
      @JsonKey(name: "correct_answer") final String correctAnswer,
      @JsonKey(name: "incorrect_answers")
      final List<dynamic> incorrectAnswers) = _$Results5Impl;

  factory _Results5.fromJson(Map<String, dynamic> json) =
      _$Results5Impl.fromJson;

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
  _$$Results5ImplCopyWith<_$Results5Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
