// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'art_quiz_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ArtQuizModel _$ArtQuizModelFromJson(Map<String, dynamic> json) {
  return _ArtQuizModel.fromJson(json);
}

/// @nodoc
mixin _$ArtQuizModel {
  @JsonKey(name: "results")
  List<Results3> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArtQuizModelCopyWith<ArtQuizModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtQuizModelCopyWith<$Res> {
  factory $ArtQuizModelCopyWith(
          ArtQuizModel value, $Res Function(ArtQuizModel) then) =
      _$ArtQuizModelCopyWithImpl<$Res, ArtQuizModel>;
  @useResult
  $Res call({@JsonKey(name: "results") List<Results3> results});
}

/// @nodoc
class _$ArtQuizModelCopyWithImpl<$Res, $Val extends ArtQuizModel>
    implements $ArtQuizModelCopyWith<$Res> {
  _$ArtQuizModelCopyWithImpl(this._value, this._then);

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
abstract class _$$ArtQuizModelImplCopyWith<$Res>
    implements $ArtQuizModelCopyWith<$Res> {
  factory _$$ArtQuizModelImplCopyWith(
          _$ArtQuizModelImpl value, $Res Function(_$ArtQuizModelImpl) then) =
      __$$ArtQuizModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "results") List<Results3> results});
}

/// @nodoc
class __$$ArtQuizModelImplCopyWithImpl<$Res>
    extends _$ArtQuizModelCopyWithImpl<$Res, _$ArtQuizModelImpl>
    implements _$$ArtQuizModelImplCopyWith<$Res> {
  __$$ArtQuizModelImplCopyWithImpl(
      _$ArtQuizModelImpl _value, $Res Function(_$ArtQuizModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_$ArtQuizModelImpl(
      null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Results3>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArtQuizModelImpl implements _ArtQuizModel {
  _$ArtQuizModelImpl(@JsonKey(name: "results") final List<Results3> results)
      : _results = results;

  factory _$ArtQuizModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArtQuizModelImplFromJson(json);

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
    return 'ArtQuizModel(results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtQuizModelImpl &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtQuizModelImplCopyWith<_$ArtQuizModelImpl> get copyWith =>
      __$$ArtQuizModelImplCopyWithImpl<_$ArtQuizModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArtQuizModelImplToJson(
      this,
    );
  }
}

abstract class _ArtQuizModel implements ArtQuizModel {
  factory _ArtQuizModel(
          @JsonKey(name: "results") final List<Results3> results) =
      _$ArtQuizModelImpl;

  factory _ArtQuizModel.fromJson(Map<String, dynamic> json) =
      _$ArtQuizModelImpl.fromJson;

  @override
  @JsonKey(name: "results")
  List<Results3> get results;
  @override
  @JsonKey(ignore: true)
  _$$ArtQuizModelImplCopyWith<_$ArtQuizModelImpl> get copyWith =>
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
  bool operator ==(dynamic other) {
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
