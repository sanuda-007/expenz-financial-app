import 'package:expenz/constants/colors.dart';
import 'package:flutter/material.dart';

class SharedOnboardingScreens extends StatelessWidget {
  final String title;
  final String imagePath;
  final String description;
  const SharedOnboardingScreens(
      {super.key,
      required this.title,
      required this.imagePath,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            width: 300,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            description,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: kGrey,
            ),
          )
        ],
      ),
    );
  }
}
