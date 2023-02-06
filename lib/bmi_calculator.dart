import 'package:calculator/calculatebutton.dart';
import 'package:calculator/floatingbutton.dart';
import 'package:calculator/re_use_container.dart';
import 'package:calculator/slider_content.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';

Color colorMale = Colors.blueGrey.shade400;
Color colorFemale = Colors.blueGrey.shade400;
Color changeColor = Colors.pink;
enum Gender {
  male,
  female,
}
Gender? gender;
double currentValue = 150;
int count = 50;
int age = 25;

class BmiCalculatorPage extends StatefulWidget {
  const BmiCalculatorPage({Key? key}) : super(key: key);

  @override
  State<BmiCalculatorPage> createState() => _BmiCalculatorPageState();
}

class _BmiCalculatorPageState extends State<BmiCalculatorPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueGrey.shade300,
        appBar: AppBar(
          title: Text("BMI Calculator"),
          centerTitle: true,
          backgroundColor: Colors.blueGrey.shade300,
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                      child: ReuseableContainer(
                    gestureTap: () {
                      setState(() {
                        gender = Gender.male;
                      });
                    },
                    clr: gender == Gender.male ? changeColor : colorMale,
                    containerChild: IconContent(
                      genderIcon: FontAwesomeIcons.mars,
                      genderName: "MALE",
                    ),
                  )),
                  Expanded(
                      child: ReuseableContainer(
                    gestureTap: () {
                      setState(() {
                        gender = Gender.female;
                      });
                    },
                    clr: gender == Gender.female ? changeColor : colorFemale,
                    containerChild: IconContent(
                      genderIcon: FontAwesomeIcons.venus,
                      genderName: "FEMALE",
                    ),
                  )),
                ],
              ),
            ),
            Expanded(
              child: ReuseableContainer(
                gestureTap: () {},
                clr: Colors.blueGrey.shade400,
                containerChild: SliderContainer(
                    title: "HEIGHT",
                    cm: "CM",
                    value: currentValue,
                    onChange: (value) {
                      setState(() {
                        currentValue = value;
                      });
                    }),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                      child: ReuseableContainer(
                    gestureTap: () {},
                    clr: Colors.blueGrey.shade400,
                    containerChild: FloatingactionButton(
                      title: "WEIGHT",
                      weight: count,
                      onPress1: () {
                        setState(() {
                          count--;
                        });
                      },
                      onPress2: () {
                        setState(() {
                          count++;
                        });
                      },
                    ),
                  )),
                  Expanded(
                      child: ReuseableContainer(
                    gestureTap: () {},
                    clr: Colors.blueGrey.shade400,
                    containerChild: FloatingactionButton(
                      title: "AGE",
                      weight: age,
                      onPress1: () {
                        setState(() {
                          age--;
                        });
                      },
                      onPress2: () {
                        setState(() {
                          age++;
                        });
                      },
                    ),
                  )),
                ],
              ),
            ),
            CalculateButton(ontap: () {}, title: "CALCULATE"),
          ],
        ),
      ),
    );
  }
}
