import 'package:bmi_calc/constants.dart';
import 'package:bmi_calc/data_input_card.dart';
import 'package:bmi_calc/gender_card.dart';
import 'package:bmi_calc/input_container.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender { male, female }

class InputView extends StatefulWidget {
  @override
  _InputViewState createState() => _InputViewState();
}

class _InputViewState extends State<InputView> {
  int weight = 205;
  int age = 49;
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
                Slider(
                  min: 0.0,
                  max: 10.0,
                  activeColor: kSliderActiveColor,
                  inactiveColor: kSliderInactiveColor,
                  value: height,
                  onChanged: (double h) => setState(
                    () => height = double.parse(h.toStringAsFixed(1)),
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
                  ),
                ),
              ),
              Expanded(
                child: InputContainer(
                  child: DataInputCard(
                    label: 'AGE',
                    data: age,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: FlatButton(
            color: kButtonColor,
            disabledColor: kCardColor,
            onPressed: gender == null ? null : () => {},
            child: Container(
              alignment: Alignment.center,
              width: double.maxFinite,
              height: 50.0,
              child: Text('CALCULATE'),
            ),
          ),
        ),
      ],
    );
  }

  void selectGender(int selectedGender) {
    setState(() {
      gender = Gender.values[selectedGender];
    });
  }
}
