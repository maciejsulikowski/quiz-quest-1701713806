// class PointsModel {
//   PointsModel({
//      this.totalPoints,
//      this.totalFilmsPoints,
//      this.filmsEasyPoints,
//      this.filmsMediumPoints,
//      this.filmsHardPoints,
//      this.totalGamesPoints,
//      this.gamesEasyPoints,
//      this.gamesMediumPoints,
//      this.gamesHardPoints,
//      this.totalGeographyPoints,
//      this.geographyEasyPoints,
//      this.geographyMediumPoints,
//      this.geographyHardPoints,
//      this.totalHistoryPoints,
//      this.historyEasyPoints,
//      this.historyMediumPoints,
//      this.historyHardPoints,
//      this.totalMusicPoints,
//      this.musicEasyPoints,
//      this.musicMediumPoints,
//      this.musicHardPoints,
//      this.natureEasyPoints,
//      this.natureMediumPoints,
//      this.natureHardPoints,
//      this.totalSportPoints,
//      this.sportEasyPoints,
//      this.sportMediumPoints,
//      this.sportHardPoints,
//      this.totalTvPoints,
//      this.tvEasyPoints,
//      this.tvMediumPoints,
//      this.tvHardPoints,
//   });

//   final int? totalPoints;
//   final int? totalFilmsPoints;
//   final int? filmsEasyPoints;
//   final int? filmsMediumPoints;
//   final int? filmsHardPoints;
//   final int? totalGamesPoints;
//   final int? gamesEasyPoints;
//   final int? gamesMediumPoints;
//   final int? gamesHardPoints;
//   final int? totalGeographyPoints;
//   final int? geographyEasyPoints;
//   final int? geographyMediumPoints;
//   final int? geographyHardPoints;
//   final int? totalHistoryPoints;
//   final int? historyEasyPoints;
//   final int? historyMediumPoints;
//   final int? historyHardPoints;
//   final int? totalMusicPoints;
//   final int? musicEasyPoints;
//   final int? musicMediumPoints;
//   final int? musicHardPoints;
//   final int? natureEasyPoints;
//   final int? natureMediumPoints;
//   final int? natureHardPoints;
//   final int? totalSportPoints;
//   final int? sportEasyPoints;
//   final int? sportMediumPoints;
//   final int? sportHardPoints;
//   final int? totalTvPoints;
//   final int? tvEasyPoints;
//   final int? tvMediumPoints;
//   final int? tvHardPoints;
// }

class PointsModel {
  PointsModel({
    required this.totalPoints,
    required this.categoryPoints,
  });

  final int totalPoints;
  final Map<String, Map<String, int>>
      categoryPoints;
}
