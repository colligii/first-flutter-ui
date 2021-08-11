import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CounterState();
  }
}

class CounterState extends State<Counter> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 10,
      ),
      child: Container(
        child: Row(
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  quantity = quantity + 1;
                });
              },
              child: Text(
                "+",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: Text("$quantity"),
            ),
            ElevatedButton(
              onPressed: () {
                if (quantity > 1) {
                  setState(() {
                    quantity = quantity - 1;
                  });
                }
              },
              child: Text(
                "-",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
