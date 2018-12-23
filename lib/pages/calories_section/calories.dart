import 'package:flutter/material.dart';
import 'package:flutter_life_app/pages/header_info.dart';
import 'dart:math';

class CaloriesPage extends StatefulWidget {
  static String tag = 'calories-page';
  @override
  _CaloriesPageState createState() => _CaloriesPageState();
}

class _CaloriesPageState extends State<CaloriesPage> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    var calories = 1000;
    List<Widget> caloriesList = [];

    var tabHeight = MediaQuery.of(context).size.height * 0.45;
    var tabWidth = MediaQuery.of(context).size.height;

    for (var i = 0; i < 5; i++) {
      caloriesList.add(
        Text(
          '$calories',
          style: TextStyle(color: Colors.white, fontSize: 12.0),
        ),
      );

      calories -= 500;
    }

    List<Widget> hourList = [];
    var firstHour = 6;
    var amPm = 'am';

    for (var i = 0; i < 9; i++) {
      hourList.add(
        Text(
          '$firstHour $amPm',
          style: TextStyle(
            color: Colors.white,
            fontSize: 12.0,
          ),
        ),
      );
      if (firstHour == 12) {
        firstHour = 0;
        amPm = 'pm';
      }

      firstHour += 2;
    }

    List<Widget> caloriesUpColumn = [];

    for (var i = 0; i < 20; i++) {
      var _height = Random().nextInt(100);
      if (_height < 35) _height = 0;
      caloriesUpColumn.add(
        Container(
          width: 5.0,
          height: _height.toDouble(),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(3.0),
              topRight: Radius.circular(3.0),
            ),
            color: Colors.white,
          ),
        ),
      );
    }

    List<Widget> caloriesDownColumn = [];

    for (var i = 1; i <= 20; i++) {
      var _height = 15 + Random().nextInt(90);

      if (_height >= 85) _height = 0;

      caloriesDownColumn.add(
        Container(
          width: 5.0,
          height: _height.toDouble(),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(3.0),
              bottomRight: Radius.circular(3.0),
            ),
            color: Colors.white.withOpacity(0.6),
          ),
        ),
      );
    }
    return Scaffold(
      backgroundColor: Color(0xFFEAEAEA),
      body: Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: HeaderInfo(
                  isMain: false,
                  sectionTitle: 'Calories',
                ),
              ),
              Container(
                height: 85 + (MediaQuery.of(context).size.height * 0.45),
                child: Stack(
                  overflow: Overflow.visible,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 200.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24.0),
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 16.0),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Burned',
                                  style: TextStyle(
                                    color: Color(0xFFA5A5A5),
                                    fontSize: 14.0,
                                  ),
                                ),
                                Text(
                                  '3642 kcal',
                                  style: TextStyle(fontSize: 20.0),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Target',
                                  style: TextStyle(
                                      color: Color(0xFFA5A5A5), fontSize: 14.0),
                                ),
                                Text(
                                  '3900 kcal',
                                  style: TextStyle(fontSize: 20.0),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Consumed',
                                  style: TextStyle(
                                      color: Color(0xFFA5A5A5), fontSize: 14.0),
                                ),
                                Text(
                                  '4729 kcal',
                                  style: TextStyle(fontSize: 20.0),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 65.0,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24.0),
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFFFEA600),
                              Color(0xFFDE3E20),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    16.0, 14.0, 16.0, 3.0),
                                child: CaloriesHeader(),
                              ),
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Colors.white.withOpacity(0.5),
                                    width: 1.0,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: hourList,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    height: tabHeight-100.0,
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 10.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: caloriesList,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: (tabHeight - 100.0)/1.45,
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        width: MediaQuery.of(context).size.width,
                        height: (tabHeight - 100.0)/1.9,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.white.withOpacity(0.5),
                              width: 0.5,
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 42.0, right: 16.0),
                          child: Container(
                            width: tabWidth-58.0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: caloriesUpColumn,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 14.0,
                      child: Container(
                        alignment: Alignment.topCenter,
                        width: MediaQuery.of(context).size.width,
                        height: (tabHeight - 100.0)/1.65,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 42.0, right: 16.0),
                          child: Container(
                            width: tabWidth - 58.0,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: caloriesDownColumn,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0.0,
                      left: 40.0,
                      child: Stack(
                        children: <Widget>[
                          Material(
                            elevation: 5.0,
                            borderRadius: BorderRadius.circular(40.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width - 80,
                              height: 40.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40.0),
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 5.0,
                            left: 5 +
                                (MediaQuery.of(context).size.width - 90) /
                                    4 *
                                    index,
                            child: Container(
                              width:
                                  (MediaQuery.of(context).size.width - 90) / 4,
                              height: 30.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xFFFEA600),
                                    Color(0xFFDE3E20),
                                  ],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 24.0, vertical: 10.0),
                            width: MediaQuery.of(context).size.width - 80,
                            height: 40.0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      index = 0;
                                    });
                                  },
                                  child: Text(
                                    'Today',
                                    style: TextStyle(
                                      color: index == 0
                                          ? Colors.white
                                          : Colors.grey,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      index = 1;
                                    });
                                  },
                                  child: Text(
                                    'Weeks',
                                    style: TextStyle(
                                      color: index == 1
                                          ? Colors.white
                                          : Colors.grey,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      index = 2;
                                    });
                                  },
                                  child: Text(
                                    'Months',
                                    style: TextStyle(
                                      color: index == 2
                                          ? Colors.white
                                          : Colors.grey,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      index = 3;
                                    });
                                  },
                                  child: Text(
                                    'Years',
                                    style: TextStyle(
                                      color: index == 3
                                          ? Colors.white
                                          : Colors.grey,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
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
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left:16.0, top: 5.0, bottom: 5.0),
                        child: Text(
                          'Activities',
                          style: TextStyle(fontSize: 18.0),
                        ),
                      ),
                    ),
                    Container(
                      color: Color(0xFFEAEAEA),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 5.0, left: 16.0, bottom: 5.0),
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
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8.0, left: 16.0, bottom: 5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('Running',
                                    style: TextStyle(fontSize: 15.0)),
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
                      child: Padding(
                        padding: const EdgeInsets.only(top: 5.0, left: 16.0, bottom: 5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('Breakfast',
                                    style: TextStyle(fontSize: 15.0)),
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
                      child: Padding(
                        padding: const EdgeInsets.only(top: 5.0, left: 16.0, bottom: 5.0),
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
        ),
      ),
    );
  }
}

class CaloriesHeader extends StatelessWidget {
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
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    width: 10.0,
                    height: 10.0,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    'Burned',
                    style: TextStyle(color: Colors.white, fontSize: 13.0),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    width: 10.0,
                    height: 10.0,
                    color: Colors.white.withOpacity(0.5),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    'Consumed',
                    style: TextStyle(color: Colors.white, fontSize: 13.0),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
