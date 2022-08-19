import 'package:mightytips/domain/api_client/prediction_api_client.dart';
import 'package:mightytips/entity/prediction_list.dart';

class PredictionService {
  final _predictionApiClient = PredictionApiClient();

  Future<PredictionResponse> predictionList() async =>
      _predictionApiClient.predictions();
}
