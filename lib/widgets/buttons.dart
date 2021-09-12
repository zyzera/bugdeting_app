import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

//ADD Budget Button
class AddButton extends StatelessWidget {
  const AddButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0, right: 0, bottom: 15),
      child: Container(
        alignment: Alignment.bottomRight,
        child: FloatingActionButton.extended(
            backgroundColor: Colors.transparent,
            elevation: 0,
            onPressed: () {
              showBottomSheet(
                context: context,
                builder: (context) => Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    color: Colors.red,
                  ),
                  height: 500,
                  alignment: Alignment.center,
                  child: Expanded(
                    child: Padding(
                      padding:
                          EdgeInsets.only(top: 4, right: 4, left: 4, bottom: 0),
                      child: Container(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Text('Add Budget Item'),
                              SizedBox(
                                height: 20,
                              ),
                              ToggleSwitch(
                                minWidth: 90.0,
                                minHeight: 40.0,
                                fontSize: 16.0,
                                initialLabelIndex: 1,
                                activeBgColor: [Colors.grey.shade600],
                                activeFgColor: Colors.black,
                                inactiveBgColor: Colors.grey[200],
                                inactiveFgColor: Colors.grey[300],
                                totalSwitches: 2,
                                labels: [
                                  'Income',
                                  'Expense',
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.ac_unit),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    TextField(
                                      decoration: const InputDecoration(
                                          border: OutlineInputBorder(),
                                          hintText: 'Enter a name'),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
            label: Icon(
              Icons.add_circle,
              size: 50,
              color: Color(0xff0fd142),
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
      padding: const EdgeInsets.only(top: 0, left: 0, bottom: 15),
      child: Container(
        alignment: Alignment.bottomLeft,
        child: FloatingActionButton.extended(
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
