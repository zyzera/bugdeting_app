import 'package:flutter/material.dart';

class TemporalNav extends StatelessWidget {
  const TemporalNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(100),
          topRight: Radius.circular(100),
        ),
        color: Colors.blue,
      ),
      height: 50,
      child: Container(
        width: 250,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Day'),
            Text('Week'),
            Text('Month'),
          ],
        ),
      ),
    );
  }
}
