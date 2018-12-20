import 'package:flutter/material.dart';
import 'package:flutter_life_app/pages/calories_section/calories_section.dart';
import 'package:flutter_life_app/pages/header_info.dart';
import 'package:flutter_life_app/pages/heart_rate/heart_rate.dart';
import 'package:flutter_life_app/pages/meals_section/meals_section.dart';
import 'package:flutter_life_app/pages/sections.dart';
import 'package:flutter_life_app/pages/sleep_section/sleep_section.dart';
import 'package:flutter_life_app/pages/water_section/water_section.dart';
import 'package:flutter_life_app/pages/workout_section/workout_section.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _widthFull = MediaQuery.of(context).size.width;
    //var _heightFull = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xFFEAEAEA),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 30.0, 16.0, 16.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          child: Column(
            children: <Widget>[
              HeaderInfo(
                isMain: true,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Sections(
                    widthFull: _widthFull,
                    child: SleepSection(),
                  ),
                  Sections(
                    widthFull: _widthFull,
                    child: WaterSection(),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Sections(
                    widthFull: _widthFull,
                    child: CaloriesSection(),
                  ),
                  Sections(
                    widthFull: _widthFull,
                    child: HeartRate(),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Sections(
                    widthFull: _widthFull,
                    child: MealsSection(),
                  ),
                  Sections(
                    widthFull: _widthFull,
                    child: WorkoutSection(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
