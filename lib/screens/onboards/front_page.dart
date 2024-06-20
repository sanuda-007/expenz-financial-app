import 'package:expenz/constants/colors.dart';
import 'package:flutter/material.dart';

class FrontPage extends StatelessWidget {
  const FrontPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/logo.png",
          width: 100,
          fit: BoxFit.cover,
        ),
        const SizedBox(
          height: 5,
        ),
        const Text(
          "Expenz",
          style: TextStyle(
            color: kMainColor,
            fontSize: 50,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
