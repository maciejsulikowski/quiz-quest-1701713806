// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nature_quiz_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NatureQuizModel _$NatureQuizModelFromJson(Map<String, dynamic> json) {
  return _NatureQuizModel.fromJson(json);
}

/// @nodoc
mixin _$NatureQuizModel {
  @JsonKey(name: "results")
  List<Results7> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NatureQuizModelCopyWith<NatureQuizModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NatureQuizModelCopyWith<$Res> {
  factory $NatureQuizModelCopyWith(
          NatureQuizModel value, $Res Function(NatureQuizModel) then) =
      _$NatureQuizModelCopyWithImpl<$Res, NatureQuizModel>;
  @useResult
  $Res call({@JsonKey(name: "results") List<Results7> results});
}

/// @nodoc
class _$NatureQuizModelCopyWithImpl<$Res, $Val extends NatureQuizModel>
    implements $NatureQuizModelCopyWith<$Res> {
  _$NatureQuizModelCopyWithImpl(this._value, this._then);

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
              as List<Results7>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NatureQuizModelImplCopyWith<$Res>
    implements $NatureQuizModelCopyWith<$Res> {
  factory _$$NatureQuizModelImplCopyWith(_$NatureQuizModelImpl value,
          $Res Function(_$NatureQuizModelImpl) then) =
      __$$NatureQuizModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "results") List<Results7> results});
}

/// @nodoc
class __$$NatureQuizModelImplCopyWithImpl<$Res>
    extends _$NatureQuizModelCopyWithImpl<$Res, _$NatureQuizModelImpl>
    implements _$$NatureQuizModelImplCopyWith<$Res> {
  __$$NatureQuizModelImplCopyWithImpl(
      _$NatureQuizModelImpl _value, $Res Function(_$NatureQuizModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_$NatureQuizModelImpl(
      null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Results7>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NatureQuizModelImpl implements _NatureQuizModel {
  _$NatureQuizModelImpl(@JsonKey(name: "results") final List<Results7> results)
      : _results = results;

  factory _$NatureQuizModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NatureQuizModelImplFromJson(json);

  final List<Results7> _results;
  @override
  @JsonKey(name: "results")
  List<Results7> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'NatureQuizModel(results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NatureQuizModelImpl &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NatureQuizModelImplCopyWith<_$NatureQuizModelImpl> get copyWith =>
      __$$NatureQuizModelImplCopyWithImpl<_$NatureQuizModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NatureQuizModelImplToJson(
      this,
    );
  }
}

abstract class _NatureQuizModel implements NatureQuizModel {
  factory _NatureQuizModel(
          @JsonKey(name: "results") final List<Results7> results) =
      _$NatureQuizModelImpl;

  factory _NatureQuizModel.fromJson(Map<String, dynamic> json) =
      _$NatureQuizModelImpl.fromJson;

  @override
  @JsonKey(name: "results")
  List<Results7> get results;
  @override
  @JsonKey(ignore: true)
  _$$NatureQuizModelImplCopyWith<_$NatureQuizModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Results7 _$Results7FromJson(Map<String, dynamic> json) {
  return _Results7.fromJson(json);
}

/// @nodoc
mixin _$Results7 {
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
  $Results7CopyWith<Results7> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Results7CopyWith<$Res> {
  factory $Results7CopyWith(Results7 value, $Res Function(Results7) then) =
      _$Results7CopyWithImpl<$Res, Results7>;
  @useResult
  $Res call(
      {@JsonKey(name: "category") String category,
      @JsonKey(name: "question") String question,
      @JsonKey(name: "correct_answer") String correctAnswer,
      @JsonKey(name: "incorrect_answers") List<dynamic> incorrectAnswers});
}

/// @nodoc
class _$Results7CopyWithImpl<$Res, $Val extends Results7>
    implements $Results7CopyWith<$Res> {
  _$Results7CopyWithImpl(this._value, this._then);

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
abstract class _$$Results7ImplCopyWith<$Res>
    implements $Results7CopyWith<$Res> {
  factory _$$Results7ImplCopyWith(
          _$Results7Impl value, $Res Function(_$Results7Impl) then) =
      __$$Results7ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "category") String category,
      @JsonKey(name: "question") String question,
      @JsonKey(name: "correct_answer") String correctAnswer,
      @JsonKey(name: "incorrect_answers") List<dynamic> incorrectAnswers});
}

/// @nodoc
class __$$Results7ImplCopyWithImpl<$Res>
    extends _$Results7CopyWithImpl<$Res, _$Results7Impl>
    implements _$$Results7ImplCopyWith<$Res> {
  __$$Results7ImplCopyWithImpl(
      _$Results7Impl _value, $Res Function(_$Results7Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? question = null,
    Object? correctAnswer = null,
    Object? incorrectAnswers = null,
  }) {
    return _then(_$Results7Impl(
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
class _$Results7Impl implements _Results7 {
  _$Results7Impl(
      @JsonKey(name: "category") this.category,
      @JsonKey(name: "question") this.question,
      @JsonKey(name: "correct_answer") this.correctAnswer,
      @JsonKey(name: "incorrect_answers") final List<dynamic> incorrectAnswers)
      : _incorrectAnswers = incorrectAnswers;

  factory _$Results7Impl.fromJson(Map<String, dynamic> json) =>
      _$$Results7ImplFromJson(json);

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
    return 'Results7(category: $category, question: $question, correctAnswer: $correctAnswer, incorrectAnswers: $incorrectAnswers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Results7Impl &&
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
  _$$Results7ImplCopyWith<_$Results7Impl> get copyWith =>
      __$$Results7ImplCopyWithImpl<_$Results7Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Results7ImplToJson(
      this,
    );
  }
}

abstract class _Results7 implements Results7 {
  factory _Results7(
      @JsonKey(name: "category") final String category,
      @JsonKey(name: "question") final String question,
      @JsonKey(name: "correct_answer") final String correctAnswer,
      @JsonKey(name: "incorrect_answers")
      final List<dynamic> incorrectAnswers) = _$Results7Impl;

  factory _Results7.fromJson(Map<String, dynamic> json) =
      _$Results7Impl.fromJson;

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
  _$$Results7ImplCopyWith<_$Results7Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
