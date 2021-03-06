import 'package:bmi_calc/utils/bmi_calc.dart';
import 'package:bmi_calc/widgets/bottom_button.dart';
import 'package:bmi_calc/utils/constants.dart';
import 'package:bmi_calc/widgets/data_input_card.dart';
import 'package:bmi_calc/widgets/gender_card.dart';
import 'package:bmi_calc/widgets/input_container.dart';
import 'package:bmi_calc/screens/results.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// enum Gender { male, female }

class InputView extends StatefulWidget {
  @override
  _InputViewState createState() => _InputViewState();
}

class _InputViewState extends State<InputView> {
  int weight = 140;
  int age = 21;
  double height = 5.0;

  Gender gender;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: InputContainer(
                  child: GenderCard(
                    icon: FontAwesomeIcons.mars,
                    gender: Gender.male.index,
                    genderLabel: 'MALE',
                    handleTap: selectGender,
                  ),
                  selected: gender == Gender.male,
                ),
              ),
              Expanded(
                child: InputContainer(
                  child: GenderCard(
                    icon: FontAwesomeIcons.venus,
                    gender: Gender.female.index,
                    genderLabel: 'FEMALE',
                    handleTap: selectGender,
                  ),
                  selected: gender == Gender.female,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: InputContainer(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'HEIGHT',
                  style: kLabelStyle,
                  textAlign: TextAlign.center,
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: '$height',
                        style: kDataStyle,
                      ),
                      TextSpan(
                        text: 'ft',
                        style: kLabelStyle,
                      )
                    ],
                  ),
                ),
                SliderTheme(
                  data: SliderThemeData(
                    activeTrackColor: kSliderActiveColor,
                    inactiveTrackColor: kSliderInactiveColor,
                    thumbColor: kButtonColor,
                    thumbShape: RoundSliderThumbShape(
                      enabledThumbRadius: 14.0,
                    ),
                    overlayColor: kButtonColor.withAlpha(0x1f),
                    overlayShape: RoundSliderOverlayShape(
                      overlayRadius: 30.0,
                    ),
                  ),
                  child: Slider(
                    min: 0.0,
                    max: 10.0,
                    value: height,
                    onChanged: (double h) => setState(
                      () => height = double.parse(h.toStringAsFixed(1)),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                child: InputContainer(
                  child: DataInputCard(
                    label: 'WEIGHT',
                    data: weight,
                    handlePress: (int oper) =>
                        setState(() => weight = bounds(weight + oper, 1, 1500)),
                  ),
                ),
              ),
              Expanded(
                child: InputContainer(
                  child: DataInputCard(
                    label: 'AGE',
                    data: age,
                    handlePress: (int oper) =>
                        setState(() => age = bounds(age + oper, 1, 200)),
                  ),
                ),
              ),
            ],
          ),
        ),
        BottomButton(
          label: 'CALCULATE',
          enabled: gender != null,
          height: 50.0,
          handlePress: showResults,
        ),
      ],
    );
  }

  void showResults() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Results(
            bmi: BMI(height: height, weight: weight),
          ),
        ));
  }

  void selectGender(int selectedGender) {
    setState(() {
      gender = Gender.values[selectedGender];
    });
  }

  int bounds(int count, int low, int high) {
    return count < low ? low : count > high ? high : count;
  }
}
