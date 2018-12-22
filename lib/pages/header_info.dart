import 'package:flutter/material.dart';

class HeaderInfo extends StatelessWidget {
  final bool isMain;
  final String sectionTitle;

  HeaderInfo({this.isMain, this.sectionTitle});

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
    return Padding(
      padding: const EdgeInsets.only(bottom: 6.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          isMain ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Week 7, Day 2',
                style: TextStyle(
                  color: Color(0xFFA5A5A5),
                  fontSize: 16.0,
                  fontFamily: 'JosefinSans',
                ),
              ),
              Text(
                'Today, ${now.day}nd, $month, ${now.year}',
                style: TextStyle(fontSize: 24.0),
              ),
            ],
          ) : Row(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: (){
                  Navigator.pop(context);
                },
              ),
              Text(sectionTitle, style: TextStyle(fontSize: 24.0),),
            ],
          ),
          Container(
            width: 40.0,
            height: 40.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              image: DecorationImage(
                image: AssetImage('assets/images/serdar.jpg'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}