import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class onBoarding {
  final String image;
  final String title;
  final String subtitle;

  onBoarding({
    required this.image,
    required this.title,
    required this.subtitle,
  });
}

Widget Boardingstyle(onBoarding model) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(model.image),
      SizedBox(height: 5),
      SizedBox(height: 30.0),
      Text(
        model.title,
        style: TextStyle(
          fontSize: 32.0,
          fontWeight: FontWeight.bold,
          color: Color(0xFF24252C),
        ),
      ),
      SizedBox(height: 20.0),
      Text(
        model.subtitle,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w400,
          color: Color(0xFF6E6A7C),
        ),
      ),
    ],
  );
}

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  bool islast = false;
  String textonboarding = "Next";
  List<onBoarding> Pages = [
    onBoarding(
      image: "assets/images/onboarding/1.png",
      title: "Manage your tasks",
      subtitle:
          "You can easily manage all of your daily tasks in DoMe for free",
    ),
    onBoarding(
      image: "assets/images/onboarding/2.png",
      title: "Create daily routine",
      subtitle:
          "In Tasky  you can create your personalized routine to stay productive",
    ),
    onBoarding(
      image: "assets/images/onboarding/3.png",
      title: "Orgonaize your tasks",
      subtitle:
          "You can organize your daily tasks by adding your tasks into separate categories",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                itemCount: Pages.length,
                itemBuilder: (context, index) => Boardingstyle(Pages[index]),
                controller: _controller,
                onPageChanged: (index) {
                  setState(() {
                    if (index == Pages.length - 1) {
                      islast = true;
                      textonboarding = "Get Started";
                    } else {
                      islast = false;
                      textonboarding = "Next";
                    }
                  });
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SmoothPageIndicator(
                  controller: _controller,
                  count: Pages.length,
                  effect: ExpandingDotsEffect(
                    dotColor: Colors.grey,
                    activeDotColor: Color(0xFF5F33E1),
                    dotWidth: 10,
                    dotHeight: 10,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: MaterialButton(
                    onPressed: () {},
                    child: Text(
                      "$textonboarding",
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Color(0xFF5F33E1),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
