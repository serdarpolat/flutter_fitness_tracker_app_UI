import 'dart:math';

import 'package:flutter/material.dart';

class CaloriesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        gradient: LinearGradient(
          colors: [
            Color(0xFFD79609),
            Color(0xFFC74318),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Calories',
                  style: TextStyle(
                    fontSize: 26.0,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Container(
                    width: 30.0,
                    height: 30.0,
                    child: Image.asset(
                      'assets/images/fire.png',
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 130.0,
            height: 130.0,
            child: RadialProgressbar(
              trackColor: Colors.white.withOpacity(0.6),
              progressPercent: 0.67,
              progressColor: Colors.white,
              innerPadding: const EdgeInsets.all(6.0),
              child: ClipOval(
                clipper: CircleClipper(),
                child: Container(
                  width: 120.0,
                  height: 120.0,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Column(
                      children: <Widget>[
                        Text(
                          '3642',
                          style: TextStyle(
                            fontSize: 36.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text('kcal',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                            )),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RadialProgressbar extends StatefulWidget {
  final double trackWidth;
  final Color trackColor;
  final double progressWidth;
  final Color progressColor;
  final double progressPercent;
  final EdgeInsets outerPadding;
  final EdgeInsets innerPadding;
  final Widget child;

  RadialProgressbar({
    this.trackWidth = 4.0,
    this.trackColor,
    this.progressWidth = 16.0,
    this.progressColor = Colors.black,
    this.progressPercent = 0.0,
    this.outerPadding = const EdgeInsets.all(0.0),
    this.innerPadding = const EdgeInsets.all(0.0),
    this.child,
  });

  @override
  _RadialProgressbarState createState() => _RadialProgressbarState();
}

class _RadialProgressbarState extends State<RadialProgressbar> {
  EdgeInsets _insetsForPainter() {
    final outerThickness = max(
          widget.trackWidth,
          widget.progressWidth,
        ) /
        2;

    return new EdgeInsets.all(outerThickness);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.outerPadding,
      child: CustomPaint(
        foregroundPainter: RadialSeekBarPainter(
          trackWidth: widget.trackWidth,
          trackColor: widget.trackColor,
          progressWidth: widget.progressWidth,
          progressColor: widget.progressColor,
          progressPercent: widget.progressPercent,
        ),
        child: Padding(
          padding: _insetsForPainter() + widget.innerPadding,
          child: widget.child,
        ),
      ),
    );
  }
}

class RadialSeekBarPainter extends CustomPainter {
  final double trackWidth;
  final Paint trackPaint;
  final double progressWidth;
  final Paint progressPaint;
  final double progressPercent;

  RadialSeekBarPainter({
    @required this.trackWidth,
    @required trackColor,
    @required this.progressWidth,
    @required progressColor,
    @required this.progressPercent,
  })  : trackPaint = new Paint()
          ..color = trackColor
          ..style = PaintingStyle.stroke
          ..strokeWidth = trackWidth,
        progressPaint = new Paint()
          ..color = progressColor
          ..style = PaintingStyle.stroke
          ..strokeWidth = progressWidth
          ..strokeCap = StrokeCap.square;

  @override
  void paint(Canvas canvas, Size size) {
    final outerThickness = max(trackWidth, progressWidth);
    Size constrainedSize = new Size(
      size.width - outerThickness,
      size.height - outerThickness,
    );

    final center = new Offset(size.width / 2, size.height / 2);
    //final radius = min(size.width+10, size.height+10) / 2;
    final radius = min(constrainedSize.width, constrainedSize.height) / 2;

    // Paint track
    canvas.drawCircle(
      center,
      radius,
      trackPaint,
    );

    // Paint progress
    final progressAngle = 2 * pi * progressPercent;
    canvas.drawArc(
      Rect.fromCircle(
        center: center,
        radius: radius,
      ),
      -pi / 2,
      progressAngle,
      false,
      progressPaint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class CircleClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return new Rect.fromCircle(
      center: Offset(size.width / 2, size.height / 2),
      radius: min(size.width, size.height) / 2,
    );
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    return true;
  }
}
