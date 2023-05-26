// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:my_network_app/shared/themes/text.dart';

import '../themes/colors.dart';

class ActionButton extends StatelessWidget {
  ActionButton({
    super.key,
    required this.title,
    required this.action,
    this.buttonColor,
    this.buttonWidth,
    this.buttonHeight,
    this.titleStyle,
  });
  String title;
  Function() action;
  Color? buttonColor;
  double? buttonWidth;
  double? buttonHeight;
  TextStyle? titleStyle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: buttonHeight,
      width: buttonWidth,
      child: ElevatedButton(
        onPressed: action,
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(buttonColor ?? orange),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
          ),
        ),
        child: Text(
          title,
          style: titleStyle,
        ),
      ),
    );
  }
}

class ActionButtonwithIcon extends StatelessWidget {
  ActionButtonwithIcon(
      {super.key,
      required this.title,
      required this.icon,
      required this.action,
      this.buttonColor});
  String title;
  IconData icon;
  VoidCallback action;
  Color? buttonColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: Icon(icon),
      label: Text(title),
      onPressed: action,
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(buttonColor ?? orange),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
        ),
      ),
    );
  }
}
