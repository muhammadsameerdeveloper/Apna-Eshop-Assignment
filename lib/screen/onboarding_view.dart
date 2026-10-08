import 'package:apnashop/utils/app_colors.dart';
import 'package:apnashop/utils/size_config.dart';
import 'package:apnashop/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  PageController pageController = PageController();
  List<String> images = [
    "assets/images/onboarding1.jpg",
    "assets/images/onboarding2.jpg",
    "assets/images/onboarding3.jpg",
  ];
  List<String> titles = [
    "Various Collections Of The Latest Products",
    "Complete Collection Of Colors And Sizes",
    "Find The Most Suitable Outfit For You",
  ];

  List<String> descriptions = [
    "Uram amet, suspendisse ullamcorper ac elit diam facilisis cursus vestibulum.",
    "Uram amet, suspendisse ullamcorper ac elit diam facilisis cursus vestibulum.",
    "Uram amet, suspendisse ullamcorper ac elit diam facilisis cursus vestibulum.",
  ];
  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  controller: pageController,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          width: SizeConfig.width * 0.8,
                          height: SizeConfig.height * 0.4,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset(
                              images[index],
                              width: double.infinity,
                              height: double.infinity,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        SizedBox(height: 30),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 45),
                          child: Text(
                            titles[index],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: SizeConfig.text(0.06),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(height: 30),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Text(
                            descriptions[index],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: SizeConfig.text(0.04),
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        SizedBox(height: 30),
                        SmoothPageIndicator(
                          controller: pageController,
                          count: 3,
                          effect: WormEffect(
                            dotHeight: 7,
                            dotWidth: 7,
                            spacing: 5,
                            activeDotColor: Color(0xff5149B8),
                            dotColor: Color(0xffD9DCE5),
                          ),
                        ),
                        SizedBox(height: 30),
                        CustomButton(text: "Create Account", onPressed: () {}),
                        SizedBox(height: 30),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Already Have on Account",
                            style: TextStyle(
                              color: AppColors.blueColor,
                              fontSize: SizeConfig.text(0.045),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
