import 'package:flutter/material.dart';

class GridProgressBar extends StatelessWidget {
  const GridProgressBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[400],
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      padding: const EdgeInsets.all(5),
      child: Column(
        children: [
          Column(
            children: [
              Text('Car Repair'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.grey,
                ),
              ),
              Text('\$10 / \$100'),
              SizedBox(
                height: 6,
              ),
              Container(
                child: Center(
                  child: Text('\$90'),
                ),
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Container(
            width: 300,
            height: 10,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: LinearProgressIndicator(
                value: 0.7,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                backgroundColor: Color(0xffD6D6D6),
              ),
            ),
          )
        ],
      ),
    );
  }
}
