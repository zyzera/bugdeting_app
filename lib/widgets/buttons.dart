import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

//ADD Budget Button
class AddButton extends StatelessWidget {
  const AddButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0, left: 0, bottom: 2),
      child: Container(
        alignment: Alignment.bottomRight,
        child: FloatingActionButton.extended(
            shape: CircleBorder(),
            backgroundColor: Colors.transparent,
            elevation: 0,
            onPressed: () {},
            label: Icon(
              Icons.add_circle,
              size: 50,
              color: Colors.green,
            )),
      ),
    );
  }
}

//REMOVE Budget Button
class RemoveButton extends StatelessWidget {
  const RemoveButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0, left: 0, bottom: 2),
      child: Container(
        alignment: Alignment.bottomLeft,
        child: FloatingActionButton.extended(
            shape: CircleBorder(),
            backgroundColor: Colors.transparent,
            elevation: 0,
            onPressed: () {},
            label: Icon(
              Icons.remove_circle,
              size: 50,
              color: Colors.red,
            )),
      ),
    );
  }
}

class ExpenseButton extends StatelessWidget {
  const ExpenseButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: null,
    );
  }
}

class MonthlyButton extends StatelessWidget {
  const MonthlyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: null,
    );
  }
}

class WeeklyButton extends StatelessWidget {
  const WeeklyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class DailyButton extends StatelessWidget {
  const DailyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: null,
    );
  }
}
