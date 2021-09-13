import 'package:flutter/material.dart';
import 'package:budget_app/step_progress_indicator.dart';
import 'package:budget_app/widgets/progress_bars.dart';

class BudgetListTile extends StatelessWidget {
  const BudgetListTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0, right: 14, left: 6, bottom: 3),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(100),
              bottomLeft: Radius.circular(100),
            )),
        height: 82,
        child: Row(
          //main row
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(top: 0, right: 10, bottom: 0, left: 17),
              child: Container(
                child: Icon(
                  Icons.ac_unit_outlined,
                  size: 40,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 4),
                  child: Container(
                    //budget name
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.all(
                          Radius.circular(100),
                        )),
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Text('Name of budget item'),
                    ),
                  ),
                ),
                GridProgressBar(),
                Padding(
                  padding: const EdgeInsets.only(left: 4),
                  child: Container(
                    //budget numbers
                    child: Row(
                      children: [
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(100),
                                  )),
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Text(
                                  '\$500',
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          child: Row(
                            children: [
                              SizedBox(
                                width: 168,
                              ),
                              Text('\$400 '),
                              Text('/ \$900'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
