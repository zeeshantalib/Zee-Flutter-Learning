import 'package:flutter/material.dart';
import '/Login_Signup/project_5/theme.dart';

class CustomPrimaryButton extends StatelessWidget {
  //const CustomPrimaryButton({Key? key}) : super(key: key);

  late Color buttonColor;
  late String textValue;
  late Color textColor;

  CustomPrimaryButton(
      {Key? key,
      required this.buttonColor,
      this.textValue = '',
      required this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(14.0),
      elevation: 0,
      child: Container(
        height: 56,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(14.0),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(14.0),
            child: Center(
              child: Text(
                textValue,
                style: heading5.copyWith(color: textColor),
              ),
            ),
          ),
        ),
      ),
    );
    ;
  }
}

class name extends StatelessWidget {
  const name({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class CustomPrimaryButton1 extends StatelessWidget {
  const CustomPrimaryButton1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
