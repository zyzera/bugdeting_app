import 'package:budget_app/step_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:budget_app/progressbars/progress_bars.dart';

class BudgetPage extends StatelessWidget {
  const BudgetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 1.7;
    return Container(
        child: GridView.count(
      childAspectRatio: (itemWidth / itemHeight),
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 3,
      children: <Widget>[
        GridProgressBar(),
        GridProgressBar(),
        GridProgressBar(),
        GridProgressBar(),
        GridProgressBar(),
        GridProgressBar(),
        GridProgressBar(),
        GridProgressBar(),
        GridProgressBar(),
        GridProgressBar(),
        GridProgressBar(),
        GridProgressBar(),
        GridProgressBar(),
        GridProgressBar(),
        GridProgressBar(),
        GridProgressBar(),
      ],
    ));
  }
}
