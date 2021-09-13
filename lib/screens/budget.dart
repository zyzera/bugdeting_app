import 'package:budget_app/step_progress_indicator.dart';
import 'package:budget_app/widgets/temporal_nav.dart';
import 'package:flutter/material.dart';
import 'package:budget_app/widgets/progress_bars.dart';
import 'package:budget_app/widgets/buttons.dart';
import 'package:budget_app/widgets/list_tiles_budget.dart';

class BudgetPage extends StatelessWidget {
  const BudgetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 1.7;
    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 3),
          child: Scrollbar(
            radius: Radius.circular(100),
            thickness: 10,
            isAlwaysShown: true,
            child: Padding(
              padding: const EdgeInsets.all(0),
              child: ListView(
                children: [
                  BudgetListTile(),
                  BudgetListTile(),
                  BudgetListTile(),
                  BudgetListTile(),
                  BudgetListTile(),
                  BudgetListTile(),
                  BudgetListTile(),
                  BudgetListTile(),
                  BudgetListTile(),
                ],
              ),
            ),
          ),
        ),
        RemoveButton(),
        AddButton(),
      ],
    );
  }
}
