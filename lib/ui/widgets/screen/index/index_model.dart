import 'package:flutter/material.dart';
import 'package:mightytips/domain/services/prediction_service.dart';
import 'package:mightytips/entity/prediction_list.dart';

class PredictionRowData {
  final int postId;
  final String team1Name;
  final String team2Name;
  final String matchDate;
  final String matchTime;
  final String team1Logo;
  final String team2Logo;

  PredictionRowData({
    required this.postId,
    required this.team1Name,
    required this.team2Name,
    required this.matchDate,
    required this.matchTime,
    required this.team1Logo,
    required this.team2Logo,
  });
}

class IndexModel extends ChangeNotifier {
  final _predictionService = PredictionService();
  late PredictionResponse _predictionsResponse;
  final _predictionRowData = <PredictionRowData>[];
  final _predictionRow = <PredictionRowData>[];
  late bool _isLoading;
  late int _page;
  late int _visibleCard;
  final int _cardOnPage = 20;

  List<PredictionRowData> get predictions => List.unmodifiable(_predictionRow);

  void setup() {
    _isLoading = true;
    _reset();
  }

  Future<void> _reset() async {
    _page = 1;
    _visibleCard = _cardOnPage;
    await _getPredictions();
    _loadNextPage();
  }

  void _loadNextPage() {
    if(_isLoading) {
      final int start = (_page - 1) * _cardOnPage;
      final curPrediction = _predictionRowData.sublist(start, _visibleCard);
      _predictionRow.addAll(curPrediction);
      _page += 1;
      _visibleCard += _cardOnPage;
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> _getPredictions() async {
    _predictionsResponse = await _predictionService.predictionList();
    final List<List<PredictionRowData>> leagueList = _predictionsResponse.leagues
        .map((e) => e.predictions.map(_makePredictionRowData).toList()).toList();
    var predictionList = <PredictionRowData>[];
    for(var a = 0; a < leagueList.length; a++) {
      predictionList.addAll(leagueList[a]);
    }
    for(var b = 0; b < predictionList.length; b++) {
      if(predictionList[b].matchDate != 'Jan 01, 1970') {
        _predictionRowData.add(predictionList[b]);
      }
    }
  }

  void showedPredictionAtIndex(int index) {
    if (index < _predictionRow.length - 1) return;
    _isLoading = true;
    _loadNextPage();
  }

  PredictionRowData _makePredictionRowData(Predictions data) {
    return PredictionRowData(
      postId: data.postId,
      team1Name: data.team1Name ?? '',
      team2Name: data.team2Name ?? '',
      matchDate: data.matchDate ?? '',
      matchTime: data.matchTime,
      team1Logo: data.team1Logo ?? '',
      team2Logo: data.team2Logo ?? '',
    );
  }
}
