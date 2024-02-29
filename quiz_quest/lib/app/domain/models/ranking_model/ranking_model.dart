import 'package:freezed_annotation/freezed_annotation.dart';

part 'ranking_model.freezed.dart';

// class RankingModel {
//   RankingModel({
//     required this.userID,
//     required this.userName,
//     required this.filmsEPoints,
//     required this.filmsMPoints,
//     required this.filmsHPoints,
//     required this.sportEPoints,
//     required this.sportMPoints,
//     required this.sportHPoints,
//     required this.generalEPoints,
//     required this.generalMPoints,
//     required this.generalHPoints,
//     required this.geoEPoints,
//     required this.geoMPoints,
//     required this.geoHPoints,
//     required this.musicEPoints,
//     required this.musicMPoints,
//     required this.musicHPoints,
//     required this.historyEPoints,
//     required this.historyMPoints,
//     required this.historyHPoints,
//     required this.natureEPoints,
//     required this.natureMPoints,
//     required this.natureHPoints,
//     required this.gamesEPoints,
//     required this.gamesMPoints,
//     required this.gamesHPoints,
//     required this.tvEPoints,
//     required this.tvMPoints,
//     required this.tvHPoints,
//     required this.totalPoints,
//   });

//   final String userID;
//   final String userName;
//   final int filmsEPoints;
//   final int filmsMPoints;
//   final int filmsHPoints;
//   final int gamesEPoints;
//   final int gamesMPoints;
//   final int gamesHPoints;
//   final int generalEPoints;
//   final int generalMPoints;
//   final int generalHPoints;
//   final int geoEPoints;
//   final int geoMPoints;
//   final int geoHPoints;
//   final int historyEPoints;
//   final int historyMPoints;
//   final int historyHPoints;
//   final int musicEPoints;
//   final int musicMPoints;
//   final int musicHPoints;
//   final int natureEPoints;
//   final int natureMPoints;
//   final int natureHPoints;
//   final int sportEPoints;
//   final int sportMPoints;
//   final int sportHPoints;
//   final int tvEPoints;
//   final int tvMPoints;
//   final int tvHPoints;
//   final int totalPoints;
// }

@freezed
class RankingModel with _$RankingModel {
  factory RankingModel({
    required String userID,
    required String userName,
    required int filmsEPoints,
    required int filmsMPoints,
    required int filmsHPoints,
    required int gamesEPoints,
    required int gamesMPoints,
    required int gamesHPoints,
    required int generalEPoints,
    required int generalMPoints,
    required int generalHPoints,
    required int geoEPoints,
    required int geoMPoints,
    required int geoHPoints,
    required int historyEPoints,
    required int historyMPoints,
    required int historyHPoints,
    required int musicEPoints,
    required int musicMPoints,
    required int musicHPoints,
    required int natureEPoints,
    required int natureMPoints,
    required int natureHPoints,
    required int sportEPoints,
    required int sportMPoints,
    required int sportHPoints,
    required int tvEPoints,
    required int tvMPoints,
    required int tvHPoints,
    required int totalPoints,
  }) = _RankingModel;
}
