import 'package:flutter/material.dart';
import 'package:flutter_life_app/pages/meals_section/meals_chart.dart';

class MealsCard extends StatelessWidget {

  final int mealIndex;

  MealsCard({this.mealIndex});

  Widget _dailyMeals(String title) {
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 5.0),
          child: Container(
            width: 12.0,
            height: 12.0,
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
            fontSize: 14.0,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24.0),
        ),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.7,
              height: (MediaQuery.of(context).size.height * 0.5) - 40.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24.0),
                  topRight: Radius.circular(24.0),
                ),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Container(
                            width: 80.0,
                            height: 80.0,
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  width: 80.0,
                                  height: 80.0,
                                  child: CustomPaint(
                                    foregroundPainter: MyPainter(
                                      lineColor: Colors.transparent,
                                      completeColor: Color(0xFFF04D4D),
                                      completePercent: 25.0,
                                      width: 30.0,
                                      startAngle: 0.0,
                                    ),
                                    child: Container(),
                                  ),
                                ),
                                Positioned(
                                  top: 5.0,
                                  left: 5.0,
                                  child: Container(
                                    width: 70.0,
                                    height: 70.0,
                                    child: CustomPaint(
                                      foregroundPainter: MyPainter(
                                        lineColor: Colors.transparent,
                                        completeColor: Color(0xFF6573DE),
                                        completePercent: 15.0,
                                        width: 20.0,
                                        startAngle: 20.4,
                                      ),
                                      child: Container(),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 10.0,
                                  left: 10.0,
                                  child: Container(
                                    width: 60.0,
                                    height: 60.0,
                                    child: CustomPaint(
                                      foregroundPainter: MyPainter(
                                        lineColor: Colors.transparent,
                                        completeColor: Color(0xFF65DADE),
                                        completePercent: 60.0,
                                        width: 10.0,
                                        startAngle: 2.5,
                                      ),
                                      child: Container(),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Container(
                                    width: 16.0,
                                    height: 10.0,
                                    color: Color(0xFFF04D4D),
                                  ),
                                  SizedBox(
                                    width: 8.0,
                                  ),
                                  Text(
                                    'Protein',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12.0,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Container(
                                    width: 16.0,
                                    height: 10.0,
                                    color: Color(0xFF65DADE),
                                  ),
                                  SizedBox(
                                    width: 8.0,
                                  ),
                                  Text('Carbonhydrates',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 12.0)),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Container(
                                    width: 16.0,
                                    height: 10.0,
                                    color: Color(0xFF6573DE),
                                  ),
                                  SizedBox(
                                    width: 8.0,
                                  ),
                                  Text('Fats',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 12.0)),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 0.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Text('$mealIndex',
                                        style: TextStyle(
                                            color: Color(0xFF1FC900),
                                            fontSize: 44.0)),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 26.0),
                                      child: Text('/5',
                                          style: TextStyle(
                                              color: Color(0xFF1FC900),
                                              fontSize: 14.0)),
                                    ),
                                  ],
                                ),
                                Text(
                                  'Meals',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text('Morning Snack at ',
                                      style: TextStyle(color: Colors.black)),
                                  Text('9:30 am',
                                      style: TextStyle(
                                        color: Color(0xFF1FC900),
                                      )),
                                ],
                              ),
                              _dailyMeals('1 Apple'),
                              _dailyMeals('White Bread'),
                              _dailyMeals('Green Vegetables'),
                              _dailyMeals('2 Eggs'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width * 0.7,
              height: 40.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(24.0),
                  bottomRight: Radius.circular(24.0),
                ),
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF26CA01),
                    Color(0xFF99DE0B),
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
              child: Text('MARK AS DONE',
                  style: TextStyle(color: Colors.white, fontSize: 17.0)),
            ),
          ],
        ),
      ),
    );
  }
}
