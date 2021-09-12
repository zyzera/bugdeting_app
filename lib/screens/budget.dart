import 'package:budget_app/step_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:budget_app/widgets/progress_bars.dart';
import 'package:budget_app/widgets/buttons.dart';

class BudgetPage extends StatelessWidget {
  const BudgetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 1.7;
    return Stack(
      children: [
        GridView.count(
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
        ),
        RemoveButton(),
        AddButton(),
      ],
    );
  }
}
