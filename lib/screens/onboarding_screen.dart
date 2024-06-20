import 'package:expenz/constants/colors.dart';
import 'package:expenz/data/onboarding_data.dart';
import 'package:expenz/screens/onboards/front_page.dart';
import 'package:expenz/screens/onboards/shared_onboarding_screens.dart';
import 'package:expenz/screens/user_data_screen.dart';
import 'package:expenz/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  //Page Controller
  final PageController _controller = PageController();

  bool showDetailsPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                PageView(
                  controller: _controller,
                  onPageChanged: (index) {
                    setState(() {
                      showDetailsPage = index == 3;
                    });
                  },
                  children: [
                    const FrontPage(),
                    SharedOnboardingScreens(
                      title: OnboardingData.onboardingDataList[0].title,
                      imagePath: OnboardingData.onboardingDataList[0].imagePath,
                      description:
                          OnboardingData.onboardingDataList[0].description,
                    ),
                    SharedOnboardingScreens(
                      title: OnboardingData.onboardingDataList[1].title,
                      imagePath: OnboardingData.onboardingDataList[1].imagePath,
                      description:
                          OnboardingData.onboardingDataList[1].description,
                    ),
                    SharedOnboardingScreens(
                      title: OnboardingData.onboardingDataList[2].title,
                      imagePath: OnboardingData.onboardingDataList[2].imagePath,
                      description:
                          OnboardingData.onboardingDataList[2].description,
                    ),
                  ],
                ),
                Container(
                  alignment: const Alignment(0, 0.75),
                  child: SmoothPageIndicator(
                    controller: _controller,
                    count: 4,
                    effect: const WormEffect(
                      activeDotColor: kMainColor,
                      dotColor: kLightGrey,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 20,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                    ),
                    child: !showDetailsPage
                        ? GestureDetector(
                            onTap: () {
                              _controller.animateToPage(
                                _controller.page!.toInt() + 1,
                                duration: const Duration(microseconds: 400),
                                curve: Curves.easeInOut,
                              );
                            },
                            child: CustomButton(
                              buttonColor: kMainColor,
                              text: showDetailsPage ? "Get Started" : "Next",
                            ),
                          )
                        : GestureDetector(
                            //Navigate to user data screen
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const UserDataScreen(),
                                ),
                              );
                            },
                            child: CustomButton(
                              buttonColor: kMainColor,
                              text: showDetailsPage ? "Get Started" : "Next",
                            ),
                          ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
