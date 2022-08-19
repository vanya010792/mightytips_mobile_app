import 'package:flutter/material.dart';
import 'package:mightytips/ui/widgets/screen/index/index_model.dart';
import 'package:provider/provider.dart';

class PredictionList extends StatelessWidget {
  const PredictionList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = context.watch<IndexModel>();
    final len = model.predictions.length;
    if (model.predictions.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }
    return ListView.builder(
      padding: const EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 10),
      itemCount: len,
      itemExtent: 100,
      itemBuilder: (BuildContext context, int index) {
        model.showedPredictionAtIndex(index);
        return _PredictionCard(
          index: index,
        );
      },
    );
  }
}

class _PredictionCard extends StatelessWidget {
  // final PredictionRowData prediction;
  final int index;

  const _PredictionCard({
    Key? key,
    // required this.prediction,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = context.read<IndexModel>();
    final prediction = model.predictions[index];
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 5),
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black.withOpacity(0.2)),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 50,
                  height: 30,
                  child: Image(
                    image: AssetImage('assets/images/logo-app.png'),
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(
                  height: 35,
                  child: Text(
                    prediction.team1Name,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.05,
            child: const Text(
              ' -',
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Image(
                  image: AssetImage('assets/images/logo-app.png'),
                  width: 50,
                  height: 30,
                ),
                SizedBox(
                  height: 35,
                  child: Text(
                    prediction.team2Name,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
