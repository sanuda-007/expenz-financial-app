import 'package:expenz/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color buttonColor;
  const CustomButton(
      {super.key, required this.text, required this.buttonColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.06,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: buttonColor,
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            color: kWhite,
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
