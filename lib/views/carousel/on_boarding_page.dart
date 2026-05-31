import 'package:flutter/material.dart';
import 'package:meal_monkey/constants/colors.dart';
import 'package:meal_monkey/views/homescreen/home_screen.dart';
import 'package:meal_monkey/widgets/orange_button.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> pages = [
      {
        "title": "Find Food You Love",
        "desc":
            "Discover the best foods from over 1,000 \n restaurants and fast delivery to your doorstep",
        "image": "assets/images/Find_food_you_love_vector.png",
      },
      {
        "title": "Fast Delivery",
        "desc": "Fast food delivery to your home, office \n wherever you are",
        "image": "assets/images/Delivery_vector.png",
      },
      {
        "title": "Live Tracking",
        "desc":
            "Real time tracking of your food on the app \n once you placed the order",
        "image": "assets/images/Live_tracking_vector.png",
      },
    ];
    return Scaffold(
      backgroundColor: backgroundColor,
      body: GestureDetector(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Image.asset(
              "${pages[currentPage]["image"]}",
              height: 270.61,
              width: 373.26,
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: .center,
              children: [
                TabPageSelectorIndicator(
                  backgroundColor: currentPage == 0
                      ? mainColor
                      : seconderyfontColor,
                  borderColor: Colors.transparent,
                  size: 8,
                ),
                TabPageSelectorIndicator(
                  backgroundColor: currentPage == 1
                      ? mainColor
                      : seconderyfontColor,
                  borderColor: Colors.transparent,
                  size: 8,
                ),
                TabPageSelectorIndicator(
                  backgroundColor: currentPage == 2
                      ? mainColor
                      : seconderyfontColor,
                  borderColor: Colors.transparent,
                  size: 8,
                ),
              ],
            ),
            SizedBox(height: 32),
            Text(
              '${pages[currentPage]["title"]}',
              style: TextStyle(fontSize: 28, color: primaryfontColor),
            ),
            SizedBox(height: 32),
            Text(
              '${pages[currentPage]['desc']}',
              textAlign: .center,
              style: TextStyle(fontSize: 13, color: primaryfontColor),
            ),
            SizedBox(height: 32),
            OrangeButton(
              onTap: () {
                nextPage();
              },
              text: "Next",
            ),
          ],
        ),
      ),
    );
  }

  void nextPage() {
    setState(() {
      if (currentPage < 2) {
        currentPage++;
      } else {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
      }
    });
  }
}
