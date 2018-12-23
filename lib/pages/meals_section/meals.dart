import 'package:flutter/material.dart';
import 'package:flutter_life_app/pages/header_info.dart';
import 'package:flutter_life_app/pages/meals_section/meals_card.dart';

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
                      MealsCard(
                        mealIndex: 1,
                      ),
                      MealsCard(
                        mealIndex: 2,
                      ),
                      MealsCard(
                        mealIndex: 3,
                      ),
                      MealsCard(
                        mealIndex: 4,
                      ),
                      MealsCard(
                        mealIndex: 5,
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
                  height: (MediaQuery.of(context).size.height / 3.33) / 4,
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      'Nutritions',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                ),
                Container(
                  color: Color(0xFFEAEAEA),
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5.0, left: 16.0, right: 16.0, bottom: 5.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Apple',
                          style: TextStyle(fontSize: 15.0),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            _mealNutritions('95', 'kcal'),
                            _mealNutritions('0 gm', 'Fat'),
                            _mealNutritions('0 gm', 'Protein'),
                            _mealNutritions('14 gm', 'carb'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5.0, left: 16.0, right: 16.0, bottom: 5.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'White Bread',
                          style: TextStyle(fontSize: 15.0),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            _mealNutritions('70', 'kcal'),
                            _mealNutritions('1 gm', 'Fat'),
                            _mealNutritions('4 gm', 'Protein'),
                            _mealNutritions('11.6 gm', 'carb'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Color(0xFFEAEAEA),
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5.0, left: 16.0, right: 16.0, bottom: 5.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Eggs',
                          style: TextStyle(fontSize: 15.0),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            _mealNutritions('155', 'kcal'),
                            _mealNutritions('11 gm', 'Fat'),
                            _mealNutritions('13 gm', 'Protein'),
                            _mealNutritions('1.1 gm', 'carb'),
                          ],
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

  Widget _mealNutritions(String title, String subTitle) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(title, style: TextStyle(color: Color(0xFF1FC900))),
        Text(subTitle, style: TextStyle(color: Colors.grey, fontSize: 12.0)),
      ],
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
