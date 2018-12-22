import 'package:flutter/material.dart';
import 'package:flutter_life_app/pages/water_section/clippers.dart';

class WaterSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> items = [];
    for (var i = 0; i < 14; i++) {
      items.add(
        Container(
          width: 5.0,
          height: i <= 4 ? 40.0 : 5.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color: i <= 4 ? Color(0xFF0066A5) : Colors.white,
          ),
        ),
      );
    }
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Water',
                style: TextStyle(fontSize: 26.0),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(
                  width: 30.0,
                  height: 30.0,
                  child: Image.asset(
                    'assets/images/water.png',
                    color: Color(0xFF0066A5),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(child: Container()),
        Container(
          width: (MediaQuery.of(context).size.width - 30.0) / 2.0,
          child: Stack(
            overflow: Overflow.visible,
            children: [
              ClipPath(
                clipper: WaterClipPathBack(),
                child: Container(
                  width: double.infinity,
                  height: 130.0,
                  decoration: BoxDecoration(
                    color: Color(0xFF0493EE),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                    ),
                  ),
                ),
              ),
              ClipPath(
                clipper: WaterClipPathFront(),
                child: Container(
                  width: double.infinity,
                  height: 130.0,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF65BEF7).withOpacity(0.5),
                        Color(0xFF36A5E9).withOpacity(0.5),
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: -22.0,
                left: 16.0,
                child: Text(
                  'Cups',
                  style: TextStyle(
                    color: Color(0xFF0066A5),
                    fontSize: 18.0,
                  ),
                ),
              ),
              Positioned(
                top: -5.0,
                left: 8.0,
                child: Row(
                  children: <Widget>[
                    Text(
                      '5',
                      style: TextStyle(
                        fontSize: 100.0,
                        fontFamily: 'JosefinSans',
                        color: Color(0xFF0066A5),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Text(
                        '/14',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontFamily: 'JosefinSans',
                          color: Color(0xFF0066A5),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 10.0,
                left: 16.0,
                right: 16.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: items,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
