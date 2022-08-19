import 'package:flutter/material.dart';
import 'package:mightytips/ui/widgets/block/prediction_list/prediction_list.dart';
import 'package:mightytips/ui/widgets/screen/index/index_model.dart';
import 'package:provider/provider.dart';

class IndexWidget extends StatefulWidget {
  const IndexWidget({Key? key}) : super(key: key);

  @override
  State<IndexWidget> createState() => _IndexWidgetState();
}

class _IndexWidgetState extends State<IndexWidget> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    context.read<IndexModel>().setup();
  }

  @override
  Widget build(BuildContext context) {
    return const PredictionList();
  }
}
