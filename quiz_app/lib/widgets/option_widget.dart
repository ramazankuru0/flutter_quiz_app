import 'package:flutter/material.dart';
import 'package:quiz_app/constants/constants.dart';

class OptionWidget extends StatelessWidget {
  const OptionWidget({super.key, required this.option, required this.color});
  final String option;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Card(
        color: color,
        child: ListTile(
          title: Text(
            option,
            style: TextStyle(fontSize: 22, color: color.red != color.green ? AppColors.white : Colors.black),
            textAlign: TextAlign.center,
          ),
        ));
  }
}
