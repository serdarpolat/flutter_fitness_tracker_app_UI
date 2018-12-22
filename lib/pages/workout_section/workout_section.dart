import 'dart:math';
import 'package:flutter/material.dart';

class WorkoutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        gradient: LinearGradient(
          colors: [
            Color(0xFF921AEA),
            Color(0xFF390095),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Workout',
                      style: TextStyle(
                        fontSize: 22.0,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Biceps & Triceps',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Container(
                    width: 26.0,
                    height: 26.0,
                    child: Image.asset(
                      'assets/images/dumbbell.png',
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(),
          ),
          Container(
            width: 110.0,
            height: 110.0,
            child: Stack(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      height: double.infinity,
                      child: CustomPaint(
                        painter: TickerPainter(),
                      ),
                    ),
                    Positioned(
                      top: 20.0,
                                          child: Text(
                        '1:30',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32.0,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 22.0,
                                          child: Text(
                        'hours',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0, top: 3.0),
            child: Text(
              'Goal Achieved',
              style: TextStyle(color: Colors.white, fontSize: 16.0),
            ),
          ),
        ],
      ),
    );
  }
}

class TickerPainter extends CustomPainter {
  final tickPaint;

  TickerPainter() : tickPaint = Paint() {
    tickPaint.color = Colors.white;
    tickPaint.strokeWidth = 1.0;
  }

  @override
  void paint(Canvas canvas, Size size) {
    canvas.translate(size.width / 2, size.height / 2);

    canvas.save();

    final radius = size.width / 2;

    for (var i = 0; i < 180; ++i) {
      canvas.drawLine(Offset(0.0, radius), Offset(0.0, radius - 14), tickPaint);
      canvas.rotate(2 * pi / 90);
    }

    canvas.restore();
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
