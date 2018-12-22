import 'package:flutter/material.dart';

class HeartRate extends StatelessWidget {
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
                'Heart Rate',
                style: TextStyle(fontSize: 20.0),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(
                  width: 24.0,
                  height: 24.0,
                  child: Image.asset(
                    'assets/images/heart_rate.png',
                    color: Color(0xFFFF0045),
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
          width: (MediaQuery.of(context).size.width - 30.0) / 2.0,
          height: 152.0,
          child: Stack(
            overflow: Overflow.visible,
            children: [
              ClipPath(
                clipper: HeartRateClipper(),
                child: Container(
                  width: double.infinity,
                  height: 150.0,
                  decoration: BoxDecoration(
                    color: Color(0xFFFF0045),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0.0,
                right: 0.0,
                bottom: 0.0,
                child: ClipPath(
                  clipper: HeartRateClipper(),
                  child: Container(
                    width: double.infinity,
                    height: 150.0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFFFFAFC4),
                          Colors.white,
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0),
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 17.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '129',
                        style: TextStyle(
                          color: Color(0xFFFF0045),
                          fontSize: 66.0,
                          letterSpacing: 1.0,
                        ),
                      ),
                      Text('bpm',
                          style: TextStyle(
                              color: Color(0xFFA5A5A5), fontSize: 20.0))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class HeartRateClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();

    path.lineTo(0.0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 20.0);
    path.quadraticBezierTo(size.width * 0.90, 0.0, size.width * 0.80, 20.0);
    path.quadraticBezierTo(size.width * 0.70, 50.0, size.width * 0.60, 30.0);
    path.quadraticBezierTo(size.width * 0.50, 0.0, size.width * 0.40, 10.0);
    path.quadraticBezierTo(size.width * 0.30, 20.0, size.width * 0.20, 10.0);
    path.quadraticBezierTo(size.width * 0.10, 0.0, size.width * 0.0, 10.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
