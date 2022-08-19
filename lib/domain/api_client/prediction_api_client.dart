import 'package:mightytips/domain/api_client/network_client.dart';
import 'package:mightytips/entity/prediction_list.dart';
import 'package:mightytips/configuration/configuration.dart';

class PredictionApiClient {
  final _networkClient = NetworkClient();

  Future<PredictionResponse> predictions() async {
    PredictionResponse parser(dynamic json) {
      final jsonList = json as List<dynamic>;
      final response = PredictionResponse.fromJson(jsonList);
      return response;
    }

    final result = _networkClient.get(
      '${Configuration.api}${Configuration.predictions}',
      parser,
    );
    return result;
  }
}

// class PredictionApiClient {
//   late Response response;
//   Dio dio = Dio();
//
//   Future<PredictionList> predictions() async {
//     PredictionList parser(dynamic json) {
//       final jsonMap = json as List<dynamic>;
//       final response = PredictionList.fromJson(jsonMap);
//       return response;
//     }
//     try {
//       response = await dio.get<dynamic>(
//         '${Configuration.api}${Configuration.predictions}',
//       );
//       final result = parser(response.data);
//       return result;
//     } catch(_) {
//       rethrow;
//     }
//   }
// }
