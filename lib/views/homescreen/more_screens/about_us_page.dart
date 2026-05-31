import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/constants/colors.dart';
import 'package:meal_monkey/widgets/home_screen_widgets/header_text.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 30.8.h, left: 21.w, right: 21.w),
              child: headerText(context: context, text: 'About Us'),

            ),
            Expanded(child: ListView.builder(
              padding: EdgeInsets.only(top: 55.h),
              itemBuilder: (context, index) {
                return customListTile();
              },
              itemCount: 3,
            ))
          ],
        ),
      ),
    );
  }
}

Widget customListTile() {
  return ListTile(
    leading: Icon(Icons.circle, color: mainColor, size: 24.sp),
    title: Text(
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      style: TextStyle(color: primaryfontColor , fontSize: 14.sp),
    ),
  );
}
