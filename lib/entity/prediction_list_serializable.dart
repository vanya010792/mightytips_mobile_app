// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prediction_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PredictionResponse _$PredictionResponseFromJson(List<dynamic> json) =>
    PredictionResponse(
          leagues: json
              .map((dynamic e) => LeagueList.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$PredictionResponseToJson(PredictionResponse instance) =>
    <String, dynamic>{
      'leagues': instance.leagues,
    };

LeagueList _$LeagueListFromJson(Map<String, dynamic> json) => LeagueList(
      name: json['name'] as String,
      logo: json['logo'] as String,
      predictions: (json['predictions'] as List<dynamic>)
          .map((dynamic e) => Predictions.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LeagueListToJson(LeagueList instance) =>
    <String, dynamic>{
      'name': instance.name,
      'logo': instance.logo,
      'predictions': instance.predictions,
    };

Predictions _$PredictionsFromJson(Map<String, dynamic> json) => Predictions(
      postId: json['post_id'] as int,
      link: json['link'] as String,
      team1Id: json['team_1_id'] as String?,
      team2Id: json['team_2_id'] as String?,
      team1SocTid: json['team1_soc_tid'] as String?,
      team2SocTid: json['team2_soc_tid'] as String?,
      team1Name: json['team_1_name'] as String?,
      team2Name: json['team_2_name'] as String?,
      matchDate: json['match_date'] as String?,
      matchTime: json['match_time'] as String,
      matchTstamp: json['match_tstamp'],
      matchInfo: MatchInfo.fromJson(json['match_info'] as Map<String, dynamic>),
      m3wayIndex: json['m3way_index'] as int?,
      team1Logo: json['team_1_logo'] as String?,
      team2Logo: json['team_2_logo'] as String?,
      agree: Agree.fromJson(json['agree'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PredictionsToJson(Predictions instance) =>
    <String, dynamic>{
      'post_id': instance.postId,
      'link': instance.link,
      'team_1_id': instance.team1Id,
      'team_2_id': instance.team2Id,
      'team1_soc_tid': instance.team1SocTid,
      'team2_soc_tid': instance.team2SocTid,
      'team_1_name': instance.team1Name,
      'team_2_name': instance.team2Name,
      'match_date': instance.matchDate,
      'match_time': instance.matchTime,
      'match_tstamp': instance.matchTstamp,
      'match_info': instance.matchInfo,
      'm3way_index': instance.m3wayIndex,
      'team_1_logo': instance.team1Logo,
      'team_2_logo': instance.team2Logo,
      'agree': instance.agree,
    };

Agree _$AgreeFromJson(Map<String, dynamic> json) => Agree(
      yes: json['yes'] as int,
      yesPrc: json['yes_prc'] as int,
      no: json['no'] as int,
      noPrc: json['no_prc'] as int,
      you: json['you'] as int,
      total: json['total'] as int,
    );

Map<String, dynamic> _$AgreeToJson(Agree instance) => <String, dynamic>{
      'yes': instance.yes,
      'yes_prc': instance.yesPrc,
      'no': instance.no,
      'no_prc': instance.noPrc,
      'you': instance.you,
      'total': instance.total,
    };

MatchInfo _$MatchInfoFromJson(Map<String, dynamic> json) => MatchInfo(
      id: json['id'] as String?,
      leagueId: json['league_id'] as int,
      seasonId: json['season_id'] as String?,
      stageId: json['stage_id'] as String?,
      roundId: json['round_id'] as String?,
      groupId: json['group_id'] as String?,
      venueId: json['venue_id'] as int?,
      refereeId: json['referee_id'] as String?,
      localteamId: json['localteam_id'] as String?,
      visitorteamId: json['visitorteam_id'] as String?,
      aggregateId: json['aggregate_id'] as int?,
      winnerTeamId: json['winner_team_id'] as int?,
      weatherReport: json['weather_report'] as String?,
      commentaries: json['commentaries'] as String?,
      attendance: json['attendance'] as String?,
      pitch: json['pitch'] as String?,
      details: json['details'] as String?,
      neutralVenue: json['neutral_venue'] as String?,
      winningOddsCalculated:
          (json['winning_odds_calculated'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$MatchInfoToJson(MatchInfo instance) => <String, dynamic>{
      'id': instance.id,
      'league_id': instance.leagueId,
      'season_id': instance.seasonId,
      'stage_id': instance.stageId,
      'round_id': instance.roundId,
      'group_id': instance.groupId,
      'venue_id': instance.venueId,
      'referee_id': instance.refereeId,
      'localteam_id': instance.localteamId,
      'visitorteam_id': instance.visitorteamId,
      'aggregate_id': instance.aggregateId,
      'winner_team_id': instance.winnerTeamId,
      'weather_report': instance.weatherReport,
      'commentaries': instance.commentaries,
      'attendance': instance.attendance,
      'pitch': instance.pitch,
      'details': instance.details,
      'neutral_venue': instance.neutralVenue,
      'winning_odds_calculated': instance.winningOddsCalculated,
    };
