import 'package:flutter/material.dart';
import 'package:flutter_life_app/pages/main_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Oswald',
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(bottom: 50.0),
          child: MainPage(),
        ),
        Positioned(
          bottom: 0.0,
          left: 0.0,
          right: 0.0,
          child: Material(
            child: Container(
              width: double.infinity,
              height: 70.0,
              color: Color(0xFFEAEAEA),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    BottomButton(
                      imgPath: 'assets/images/four-squares.png',
                      index: 0,
                      isPlus: false,
                      isTapped: true,
                    ),
                    BottomButton(
                      imgPath: 'assets/images/first-aid.png',
                      index: 1,
                      isPlus: false,
                      isTapped: false,
                    ),
                    BottomButton(
                      imgPath: 'assets/images/add.png',
                      index: 2,
                      isPlus: true,
                      isTapped: false,
                    ),
                    BottomButton(
                      imgPath: 'assets/images/dumbbell.png',
                      index: 3,
                      isPlus: false,
                      isTapped: false,
                    ),
                    BottomButton(
                      imgPath: 'assets/images/user.png',
                      index: 4,
                      isPlus: false,
                      isTapped: false,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class BottomButton extends StatelessWidget {
  final String imgPath;
  final int index;
  final bool isTapped;
  final bool isPlus;

  BottomButton({this.imgPath, this.index, this.isTapped, this.isPlus});
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 0.0,
      //shape: CircleBorder(),
      color: Colors.transparent,
      child: Container(
        alignment: Alignment.center,
        width: 50.0,
        height: 50.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40.0),
          color: isPlus  ? Colors.white : isTapped ? Colors.grey : Colors.transparent,
        ),
        child: InkWell(
          onTap: () {
            print(index);
          },
          child: Image.asset(
            imgPath,
            width: 30.0,
          ),
        ),
      ),
    );
  }
}
