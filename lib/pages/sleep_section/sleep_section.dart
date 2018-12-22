import 'package:flutter/material.dart';

class SleepSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Sleep',
                style: TextStyle(fontSize: 26.0),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(
                  width: 30.0,
                  height: 30.0,
                  child: Image.asset('assets/images/moon.png'),
                ),
              ),
            ],
          ),
        ),
        Text(
          'Hours',
          style: TextStyle(fontSize: 18.0),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '8',
              style: TextStyle(
                fontSize: 80.0,
                fontFamily: 'JosefinSans',
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Text(
                '/8',
                style: TextStyle(
                  fontSize: 24.0,
                  fontFamily: 'JosefinSans',
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
        Expanded(child: Container()),
        Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Text(
            'Goal Achieved',
            style: TextStyle(color: Color(0xFFA5A5A5), fontSize: 20.0),
          ),
        ),
      ],
    );
  }
}
