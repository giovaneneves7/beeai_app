import 'package:flutter/material.dart';
import 'package:beeai/features/onboarding/screens/onboarding_screen1.dart'; // Make sure your import paths are correct
import 'package:beeai/features/onboarding/screens/onboarding_screen2.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _pageController; 
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose(); 
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (int index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              children: [
                OnboardingPage1(),
                OnboardingPage2(),
              ],
            ),
          ),
          _buildIndicator(context),
        ],
      ),
    );
  }

  Widget _buildIndicator(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(2, (index) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 4),
          width: 8,
          height: 8,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _currentIndex == index
                ? theme.textTheme.bodyText1!.color
                : theme.textTheme.bodyText1!.color!.withOpacity(0.4),
          ),
        );
      }),
    );
  }
}
