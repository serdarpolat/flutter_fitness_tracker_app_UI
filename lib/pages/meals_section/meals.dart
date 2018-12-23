import 'package:flutter/material.dart';
import 'package:flutter_life_app/pages/header_info.dart';
import 'dart:math';

import 'package:flutter_life_app/radial_progress.dart';

class MealsPage extends StatefulWidget {
  static String tag = 'meals-page';
  @override
  _MealsPageState createState() => _MealsPageState();
}

class _MealsPageState extends State<MealsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEAEAEA),
      body: ListView(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: HeaderInfo(
              isMain: false,
              sectionTitle: 'Meals',
            ),
          ),
          Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 140.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24.0),
                    topRight: Radius.circular(24.0),
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
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: MealsHeader(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.7,
                          height: MediaQuery.of(context).size.height * 0.5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24.0),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 16.0),
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      RadialProgressbar(
                                        trackColor: Color(0xFF65DADE),
                                        trackWidth: 16.0,
                                        progressWidth: 24.0,
                                        progressPercent: 0.25,
                                        progressColor: Color(0xFFF04D4D),
                                        innerPadding: const EdgeInsets.all(0.0),
                                        child: Container(
                                          width: 90.0,
                                          height: 90.0,
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
                                              SizedBox(width: 8.0,),
                                              Text('Protein', style: TextStyle(color: Colors.grey, fontSize: 16.0)),
                                            ],
                                          ),
                                          Row(
                                            children: <Widget>[
                                              Container(
                                                width: 16.0,
                                                height: 10.0,
                                                color: Color(0xFF65DADE),
                                              ),
                                              SizedBox(width: 8.0,),
                                              Text('Carbonhydrates', style: TextStyle(color: Colors.grey, fontSize: 16.0)),
                                            ],
                                          ),
                                          Row(
                                            children: <Widget>[
                                              Container(
                                                width: 16.0,
                                                height: 10.0,
                                                color: Color(0xFF6573DE),
                                              ),
                                              SizedBox(width: 8.0,),
                                              Text('Fats', style: TextStyle(color: Colors.grey, fontSize: 16.0)),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 3.33,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24.0),
                topRight: Radius.circular(24.0),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: (MediaQuery.of(context).size.height / 3.33) / 5,
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      'Activities',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                ),
                Container(
                  color: Color(0xFFEAEAEA),
                  height: (MediaQuery.of(context).size.height / 3.33) / 5,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5.0, left: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Gym workout',
                              style: TextStyle(fontSize: 15.0),
                            ),
                            Text(
                              '1:30 hours, Biceps & Triceps',
                              style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 16.0),
                          child: Text(
                            '-847 kcal',
                            style: TextStyle(color: Color(0xFFEC6A13)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: (MediaQuery.of(context).size.height / 3.33) / 5,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0, left: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Running', style: TextStyle(fontSize: 15.0)),
                            Text('5.0 km',
                                style: TextStyle(
                                    fontSize: 12.0, color: Colors.grey)),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 16.0),
                          child: Text(
                            '-1127 kcal',
                            style: TextStyle(color: Color(0xFFEC6A13)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Color(0xFFEAEAEA),
                  height: (MediaQuery.of(context).size.height / 3.33) / 5,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5.0, left: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Breakfast', style: TextStyle(fontSize: 15.0)),
                            Text('2 Eggs, White bread, Orange juice',
                                style: TextStyle(
                                    fontSize: 12.0, color: Colors.grey)),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 16.0),
                          child: Text(
                            '+768 kcal',
                            style: TextStyle(color: Color(0xFFEC6A13)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: (MediaQuery.of(context).size.height / 3.33) / 5,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5.0, left: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Walk', style: TextStyle(fontSize: 15.0)),
                            Text('1.2 km',
                                style: TextStyle(
                                    fontSize: 12.0, color: Colors.grey)),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 16.0),
                          child: Text(
                            '-142 kcal',
                            style: TextStyle(color: Color(0xFFEC6A13)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MealsHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String month;

    switch (now.month.toInt()) {
      case 1:
        month = 'Jan';
        break;
      case 2:
        month = 'Feb';
        break;
      case 3:
        month = 'Mar';
        break;
      case 4:
        month = 'Apr';
        break;
      case 5:
        month = 'May';
        break;
      case 6:
        month = 'Jun';
        break;
      case 7:
        month = 'Jul';
        break;
      case 8:
        month = 'Aug';
        break;
      case 9:
        month = 'Sep';
        break;
      case 10:
        month = 'Oct';
        break;
      case 11:
        month = 'Now';
        break;
      case 12:
        month = 'Dec';
        break;
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Week 7, Day 2',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14.0,
                fontFamily: 'JosefinSans',
              ),
            ),
            Text(
              'Today, ${now.day}nd, $month, ${now.year}',
              style: TextStyle(color: Colors.white, fontSize: 18.0),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Text(
              '02:19:06',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
            Text(
              'For Next Meal',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14.0,
                fontFamily: 'JosefinSans',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
