import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

enum Gender { male, female, other }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender gender = Gender.other;
  num height = 180; // cm
  num weight = 78; // kg
  num age = 32; // years

  void updateGender(Gender selectedGender) {
    gender = (selectedGender == gender) ? Gender.other : selectedGender;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
        centerTitle: true,
      ),
      body: Column(
        // mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Row(
              children: [
                ReusableCard(
                  child: IconContent(
                    icon: FontAwesomeIcons.mars,
                    label: "MALE",
                  ),
                  onTap: () {
                    setState(() => updateGender(Gender.male));
                  },
                  color: gender == Gender.male
                      ? activeCardColor
                      : inactiveCardColor,
                ),
                ReusableCard(
                  child: IconContent(
                    icon: FontAwesomeIcons.venus,
                    label: "FEMALE",
                  ),
                  onTap: () {
                    setState(() => updateGender(Gender.female));
                  },
                  color: gender == Gender.female
                      ? activeCardColor
                      : inactiveCardColor,
                ),
              ],
            ),
          ),
          ReusableCard(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("HEIGHT", style: labelTextStyle),
                Row(
                  children: [
                    Text("$height", style: largeLabelTextStyle),
                    Text(" cm", style: labelTextStyle)
                  ],
                  textBaseline: TextBaseline.alphabetic,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: Color(0xFFEB1555),
                    inactiveTrackColor: Color(0xFF8D8E98),
                    thumbColor: activeControlerColor,
                    overlayColor: activeControlerColor.withAlpha(0x29),
                  ),
                  child: Slider(
                    value: height,
                    min: 50,
                    max: 300,
                    onChanged: (value) {
                      setState(() {
                        height = value.round();
                      });
                    },
                  ),
                )
              ],
            ),
            color: activeCardColor,
          ),
          Expanded(
            child: Row(
              children: [
                ReusableCard(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("WEIGHT", style: labelTextStyle),
                        Row(
                          children: [
                            Text("$weight", style: largeLabelTextStyle),
                            Text(" kg", style: labelTextStyle)
                          ],
                          textBaseline: TextBaseline.alphabetic,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          mainAxisAlignment: MainAxisAlignment.center,
                        ),
                        SizedBox(height: 20, width: 10),
                        Text("+   -  (TODO)")
                      ]),
                  color: activeCardColor,
                ),
                ReusableCard(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("AGE", style: labelTextStyle),
                        Row(
                          children: [
                            Text("$age", style: largeLabelTextStyle),
                            Text("", style: labelTextStyle) // years
                          ],
                          textBaseline: TextBaseline.alphabetic,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          mainAxisAlignment: MainAxisAlignment.center,
                        ),
                        SizedBox(height: 20, width: 10),
                        Text("+   -  (TODO)")
                      ]),
                  color: activeCardColor,
                ),
              ],
            ),
          ),
          Container(
            child: Text(
              "CALCULATE BMI",
              style: labelTextStyle,
              textAlign: TextAlign.center,
            ),
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: 60,
            alignment: Alignment.center,
          )
        ],
      ),
    );
  }
}
