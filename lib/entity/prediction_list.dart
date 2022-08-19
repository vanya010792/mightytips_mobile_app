import 'package:json_annotation/json_annotation.dart';

part 'prediction_list_serializable.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class PredictionResponse {
  final List<LeagueList> leagues;

  PredictionResponse({
    required this.leagues,
  });

  factory PredictionResponse.fromJson(List<dynamic> json) =>
      _$PredictionResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PredictionResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class LeagueList {
  final String name;
  final String logo;
  final List<Predictions> predictions;

  LeagueList({
    required this.name,
    required this.logo,
    required this.predictions,
  });

  factory LeagueList.fromJson(Map<String, dynamic> json) =>
      _$LeagueListFromJson(json);

  Map<String, dynamic> toJson() => _$LeagueListToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Predictions {
  final int postId;
  final String link;
  @JsonKey(name: 'team_1_id')
  final String? team1Id;
  @JsonKey(name: 'team_2_id')
  final String? team2Id;
  final String? team1SocTid;
  final String? team2SocTid;
  @JsonKey(name: 'team_1_name')
  final String? team1Name;
  @JsonKey(name: 'team_2_name')
  final String? team2Name;
  final String? matchDate;
  final String matchTime;
  final dynamic matchTstamp;
  final MatchInfo matchInfo;
  final int? m3wayIndex;
  @JsonKey(name: 'team_1_logo')
  final String? team1Logo;
  @JsonKey(name: 'team_2_logo')
  final String? team2Logo;
  final Agree agree;

  Predictions({
    required this.postId,
    required this.link,
    required this.team1Id,
    required this.team2Id,
    required this.team1SocTid,
    required this.team2SocTid,
    required this.team1Name,
    required this.team2Name,
    required this.matchDate,
    required this.matchTime,
    required this.matchTstamp,
    required this.matchInfo,
    required this.m3wayIndex,
    required this.team1Logo,
    required this.team2Logo,
    required this.agree,
  });

  factory Predictions.fromJson(Map<String, dynamic> json) =>
      _$PredictionsFromJson(json);

  Map<String, dynamic> toJson() => _$PredictionsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Agree {
  final int yes;
  final int yesPrc;
  final int no;
  final int noPrc;
  final int you;
  final int total;

  Agree({
    required this.yes,
    required this.yesPrc,
    required this.no,
    required this.noPrc,
    required this.you,
    required this.total,
  });

  factory Agree.fromJson(Map<String, dynamic> json) => _$AgreeFromJson(json);

  Map<String, dynamic> toJson() => _$AgreeToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class MatchInfo {
  final String? id;
  final int leagueId;
  final String? seasonId;
  final String? stageId;
  final String? roundId;
  final String? groupId;
  final int? venueId;
  final String? refereeId;
  final String? localteamId;
  final String? visitorteamId;
  final int? aggregateId;
  final int? winnerTeamId;
  final String? weatherReport;
  final String? commentaries;
  final String? attendance;
  final String? pitch;
  final String? details;
  final String? neutralVenue;
  final double? winningOddsCalculated;

  MatchInfo({
    required this.id,
    required this.leagueId,
    required this.seasonId,
    required this.stageId,
    required this.roundId,
    required this.groupId,
    required this.venueId,
    required this.refereeId,
    required this.localteamId,
    required this.visitorteamId,
    required this.aggregateId,
    required this.winnerTeamId,
    required this.weatherReport,
    required this.commentaries,
    required this.attendance,
    required this.pitch,
    required this.details,
    required this.neutralVenue,
    required this.winningOddsCalculated,
  });

  factory MatchInfo.fromJson(Map<String, dynamic> json) =>
      _$MatchInfoFromJson(json);

  Map<String, dynamic> toJson() => _$MatchInfoToJson(this);
}

// @JsonSerializable(fieldRename: FieldRename.snake)
// class PredictionResponse {
//   late List<LeagueList> leagues;
//
//   PredictionResponse({
//     required this.leagues,
//   });
//
//   PredictionResponse.fromJson(List<dynamic> json) {
//     leagues = json['leagues'] != null ? Agree.fromJson(json['agree']) : null;
//   }
// }
//
// @JsonSerializable(fieldRename: FieldRename.snake)
// class LeagueList {
//   late String name;
//   late String logo;
//   late List<Predictions> predictions;
//   LeagueList({
//     required this.name,
//     required this.logo,
//     required this.predictions,
//   });
//
//   LeagueList.fromJson(dynamic json) {
//     name = json['name'] as String;
//     logo = json['logo'] as String;
//     if (json['predictions'] != null) {
//       predictions = [];
//       for(var item in json['predictions']) {
//         predictions.add(Predictions.fromJson(item));
//       }
//     }
//   }
// }
//
// @JsonSerializable(fieldRename: FieldRename.snake)
// class Predictions {
//   late int postId;
//   late String link;
//   late String team1Id;
//   late String team2Id;
//   late String team1SocTid;
//   late String team2SocTid;
//   late String team1Name;
//   late String team2Name;
//   late String matchDate;
//   late String matchTime;
//   late dynamic matchTstamp;
//   late MatchInfo? matchInfo;
//   late int m3wayIndex;
//   late String team1Logo;
//   late String team2Logo;
//   late Agree? agree;
//
//   Predictions({
//     required this.postId,
//     required this.link,
//     required this.team1Id,
//     required this.team2Id,
//     required this.team1SocTid,
//     required this.team2SocTid,
//     required this.team1Name,
//     required this.team2Name,
//     required this.matchDate,
//     required this.matchTime,
//     required this.matchTstamp,
//     required this.matchInfo,
//     required this.m3wayIndex,
//     required this.team1Logo,
//     required this.team2Logo,
//     required this.agree,
//   });
//
//   Predictions.fromJson(dynamic json) {
//     postId = json['post_id'] as int;
//     link = json['link'] as String;
//     team1Id = json['team_1_id'] as String;
//     team2Id = json['team_2_id'] as String;
//     team1SocTid = json['team_1_soc_tid'] as String;
//     team2SocTid = json['team_2_soc_tid'] as String;
//     team1Name = json['team_1_name'] as String;
//     team2Name = json['team_2_name'] as String;
//     matchDate = json['match_date'] as String;
//     matchTime = json['match_time'] as String;
//     matchTstamp = json['match_tstamp'] as dynamic;
//     matchInfo = json['match_info'] != null
//         ? MatchInfo.fromJson(json['match_info'])
//         : null;
//     m3wayIndex = json['m_3way_index'] as int;
//     team1Logo = json['team_1_logo'] as String;
//     team2Logo = json['team_2_logo'] as String;
//     agree = json['agree'] != null ? Agree.fromJson(json['agree']) : null;
//   }
// }
//
// @JsonSerializable(fieldRename: FieldRename.snake)
// class Agree {
//   late int yes;
//   late int yesPrc;
//   late int no;
//   late int noPrc;
//   late int you;
//   late int total;
//   Agree({
//     required this.yes,
//     required this.yesPrc,
//     required this.no,
//     required this.noPrc,
//     required this.you,
//     required this.total,
//   });
//
//   Agree.fromJson(dynamic json) {
//     yes = json['yes'] as int;
//     yesPrc = json['yes_prc'] as int;
//     no = json['no'] as int;
//     noPrc = json['no_prc'] as int;
//     you = json['you'] as int;
//     total = json['total'] as int;
//   }
// }
//
// @JsonSerializable(fieldRename: FieldRename.snake)
// class MatchInfo {
//   late String id;
//   late int leagueId;
//   late String seasonId;
//   late String stageId;
//   late String roundId;
//   late String groupId;
//   late dynamic venueId;
//   late String refereeId;
//   late String localteamId;
//   late String visitorteamId;
//   late dynamic aggregateId;
//   late dynamic winnerTeamId;
//   late dynamic weatherReport;
//   late dynamic commentaries;
//   late dynamic attendance;
//   late dynamic pitch;
//   late dynamic details;
//   late dynamic neutralVenue;
//   late dynamic winningOddsCalculated;
//   MatchInfo({
//     required this.id,
//     required this.leagueId,
//     required this.seasonId,
//     required this.stageId,
//     required this.roundId,
//     required this.groupId,
//     required this.venueId,
//     required this.refereeId,
//     required this.localteamId,
//     required this.visitorteamId,
//     required this.aggregateId,
//     required this.winnerTeamId,
//     required this.weatherReport,
//     required this.commentaries,
//     required this.attendance,
//     required this.pitch,
//     required this.details,
//     required this.neutralVenue,
//     required this.winningOddsCalculated,
//   });
//
//   MatchInfo.fromJson(dynamic json) {
//     id = json['id'] as String;
//     leagueId = json['league_id'] as int;
//     seasonId = json['season_id'] as String;
//     stageId = json['stage_id'] as String;
//     roundId = json['round_id'] as String;
//     groupId = json['group_id'] as String;
//     venueId = json['venue_id'];
//     refereeId = json['referee_id'] as String;
//     localteamId = json['localteam_id'] as String;
//     visitorteamId = json['visitorteam_id'] as String;
//     aggregateId = json['aggregate_id'];
//     winnerTeamId = json['winner_team_id'];
//     weatherReport = json['weather_report'];
//     commentaries = json['commentaries'];
//     attendance = json['attendance'];
//     pitch = json['pitch'];
//     details = json['details'];
//     neutralVenue = json['neutral_venue'];
//     winningOddsCalculated = json['winning_odds_calculated'];
//   }
// }
