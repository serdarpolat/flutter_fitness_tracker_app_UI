import 'package:flutter/material.dart';

class MealsSection extends StatelessWidget {
  Widget _dailyMeals(String title) {
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 5.0),
          child: Container(
            width: 8.0,
            height: 8.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6.0),
              border: Border.all(
                color: Color(0xFF1FC700),
                width: 1.3,
              ),
            ),
          ),
        ),
        Text(
          title,
          style: TextStyle(
            color: Color(0xFFA5A5A5),
            fontSize: 11.0,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 12.0, 10.0, 20.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Meals',
                style: TextStyle(fontSize: 24.0),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: Container(
                  width: 28.0,
                  height: 28.0,
                  child: Image.asset(
                    'assets/images/tray.png',
                    color: Color(0xFF1FC700),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    '2',
                    style: TextStyle(
                      fontSize: 80.0,
                      fontFamily: 'JosefinSans',
                      color: Color(0xFF1FC700),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Text(
                      '/5',
                      style: TextStyle(
                        fontSize: 22.0,
                        fontFamily: 'JosefinSans',
                        color: Color(0xFF1FC700),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    _dailyMeals('1 Apple'),
                    _dailyMeals('White Bread'),
                    _dailyMeals('Green Veggies'),
                    _dailyMeals('2 Eggs'),
                  ],
                ),
              ),
            ],
          ),
        ),
        Expanded(child: Container()),
        Padding(
            padding: const EdgeInsets.only(bottom: 5.0),
            child: Column(
              children: <Widget>[
                Text('02:19:06',
                    style: TextStyle(color: Color(0xFF1FC700), fontSize: 22.0)),
                Text('For Next Meal',
                    style: TextStyle(color: Color(0xFFA5A5A5), fontSize: 16.0)),
              ],
            )),
      ],
    );
  }
}
