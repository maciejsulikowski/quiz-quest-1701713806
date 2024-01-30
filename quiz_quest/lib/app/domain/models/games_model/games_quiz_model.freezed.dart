// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'games_quiz_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GamesQuizModel _$GamesQuizModelFromJson(Map<String, dynamic> json) {
  return _GamesQuizModel.fromJson(json);
}

/// @nodoc
mixin _$GamesQuizModel {
  @JsonKey(name: "results")
  List<Results3> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GamesQuizModelCopyWith<GamesQuizModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GamesQuizModelCopyWith<$Res> {
  factory $GamesQuizModelCopyWith(
          GamesQuizModel value, $Res Function(GamesQuizModel) then) =
      _$GamesQuizModelCopyWithImpl<$Res, GamesQuizModel>;
  @useResult
  $Res call({@JsonKey(name: "results") List<Results3> results});
}

/// @nodoc
class _$GamesQuizModelCopyWithImpl<$Res, $Val extends GamesQuizModel>
    implements $GamesQuizModelCopyWith<$Res> {
  _$GamesQuizModelCopyWithImpl(this._value, this._then);

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
              as List<Results3>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GamesQuizModelImplCopyWith<$Res>
    implements $GamesQuizModelCopyWith<$Res> {
  factory _$$GamesQuizModelImplCopyWith(_$GamesQuizModelImpl value,
          $Res Function(_$GamesQuizModelImpl) then) =
      __$$GamesQuizModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "results") List<Results3> results});
}

/// @nodoc
class __$$GamesQuizModelImplCopyWithImpl<$Res>
    extends _$GamesQuizModelCopyWithImpl<$Res, _$GamesQuizModelImpl>
    implements _$$GamesQuizModelImplCopyWith<$Res> {
  __$$GamesQuizModelImplCopyWithImpl(
      _$GamesQuizModelImpl _value, $Res Function(_$GamesQuizModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_$GamesQuizModelImpl(
      null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Results3>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GamesQuizModelImpl implements _GamesQuizModel {
  _$GamesQuizModelImpl(@JsonKey(name: "results") final List<Results3> results)
      : _results = results;

  factory _$GamesQuizModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GamesQuizModelImplFromJson(json);

  final List<Results3> _results;
  @override
  @JsonKey(name: "results")
  List<Results3> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'GamesQuizModel(results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GamesQuizModelImpl &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GamesQuizModelImplCopyWith<_$GamesQuizModelImpl> get copyWith =>
      __$$GamesQuizModelImplCopyWithImpl<_$GamesQuizModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GamesQuizModelImplToJson(
      this,
    );
  }
}

abstract class _GamesQuizModel implements GamesQuizModel {
  factory _GamesQuizModel(
          @JsonKey(name: "results") final List<Results3> results) =
      _$GamesQuizModelImpl;

  factory _GamesQuizModel.fromJson(Map<String, dynamic> json) =
      _$GamesQuizModelImpl.fromJson;

  @override
  @JsonKey(name: "results")
  List<Results3> get results;
  @override
  @JsonKey(ignore: true)
  _$$GamesQuizModelImplCopyWith<_$GamesQuizModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Results3 _$Results3FromJson(Map<String, dynamic> json) {
  return _Results3.fromJson(json);
}

/// @nodoc
mixin _$Results3 {
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
  $Results3CopyWith<Results3> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Results3CopyWith<$Res> {
  factory $Results3CopyWith(Results3 value, $Res Function(Results3) then) =
      _$Results3CopyWithImpl<$Res, Results3>;
  @useResult
  $Res call(
      {@JsonKey(name: "category") String category,
      @JsonKey(name: "question") String question,
      @JsonKey(name: "correct_answer") String correctAnswer,
      @JsonKey(name: "incorrect_answers") List<dynamic> incorrectAnswers});
}

/// @nodoc
class _$Results3CopyWithImpl<$Res, $Val extends Results3>
    implements $Results3CopyWith<$Res> {
  _$Results3CopyWithImpl(this._value, this._then);

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
abstract class _$$Results3ImplCopyWith<$Res>
    implements $Results3CopyWith<$Res> {
  factory _$$Results3ImplCopyWith(
          _$Results3Impl value, $Res Function(_$Results3Impl) then) =
      __$$Results3ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "category") String category,
      @JsonKey(name: "question") String question,
      @JsonKey(name: "correct_answer") String correctAnswer,
      @JsonKey(name: "incorrect_answers") List<dynamic> incorrectAnswers});
}

/// @nodoc
class __$$Results3ImplCopyWithImpl<$Res>
    extends _$Results3CopyWithImpl<$Res, _$Results3Impl>
    implements _$$Results3ImplCopyWith<$Res> {
  __$$Results3ImplCopyWithImpl(
      _$Results3Impl _value, $Res Function(_$Results3Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? question = null,
    Object? correctAnswer = null,
    Object? incorrectAnswers = null,
  }) {
    return _then(_$Results3Impl(
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
class _$Results3Impl implements _Results3 {
  _$Results3Impl(
      @JsonKey(name: "category") this.category,
      @JsonKey(name: "question") this.question,
      @JsonKey(name: "correct_answer") this.correctAnswer,
      @JsonKey(name: "incorrect_answers") final List<dynamic> incorrectAnswers)
      : _incorrectAnswers = incorrectAnswers;

  factory _$Results3Impl.fromJson(Map<String, dynamic> json) =>
      _$$Results3ImplFromJson(json);

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
    return 'Results3(category: $category, question: $question, correctAnswer: $correctAnswer, incorrectAnswers: $incorrectAnswers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Results3Impl &&
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
  _$$Results3ImplCopyWith<_$Results3Impl> get copyWith =>
      __$$Results3ImplCopyWithImpl<_$Results3Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Results3ImplToJson(
      this,
    );
  }
}

abstract class _Results3 implements Results3 {
  factory _Results3(
      @JsonKey(name: "category") final String category,
      @JsonKey(name: "question") final String question,
      @JsonKey(name: "correct_answer") final String correctAnswer,
      @JsonKey(name: "incorrect_answers")
      final List<dynamic> incorrectAnswers) = _$Results3Impl;

  factory _Results3.fromJson(Map<String, dynamic> json) =
      _$Results3Impl.fromJson;

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
  _$$Results3ImplCopyWith<_$Results3Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
