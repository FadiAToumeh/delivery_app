import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/constants/colors.dart';
import 'package:meal_monkey/views/homescreen/more_screens/my_orders_page.dart';
import 'package:meal_monkey/widgets/orange_button.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 21.0.w),
          child: ListView(
            children: [
              SizedBox(height: 30.8.h),
              Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Text(
                    'Profile',
                    style: TextStyle(
                      color: primaryfontColor,
                      fontSize: 20,
                      fontWeight: .w500,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => MyOrdersPage()),
                      );
                    },
                    icon: Icon(
                      Icons.shopping_cart_sharp,
                      color: primaryfontColor,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30.h),
              Column(
                mainAxisAlignment: .center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(
                      'assets/profile/profilepic.png',
                    ),
                    radius: 51.h,
                  ),
                  SizedBox(height: 18.h),
                  TextButton(
                    onPressed: () {},
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        maxHeight: 14.h,
                        maxWidth: 100.w,
                      ),
                      child: Row(
                        mainAxisAlignment: .center,
                        children: [
                          Icon(Icons.mode_edit_outlined, color: mainColor),
                          Text(
                            'Edit Profile',
                            style: TextStyle(color: mainColor, fontSize: 10),
                          ),
                          SizedBox(height: 8.h),
                        ],
                      ),
                    ),
                  ),
                  Text(
                    "Hi there Emilia!",
                    style: TextStyle(
                      color: primaryfontColor,
                      fontSize: 16,
                      fontWeight: .bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Sign Out',
                      style: TextStyle(fontSize: 11, color: seconderyfontColor),
                    ),
                  ),
                  SizedBox(height: 47.h),
                  customTextField('Name', false),
                  SizedBox(height: 17.h),
                  customTextField('Email', false),
                  SizedBox(height: 17.h),
                  customTextField('Mobile No', false),
                  SizedBox(height: 17.h),
                  customTextField('Address', false),
                  SizedBox(height: 17.h),
                  customTextField('Password', true),
                  SizedBox(height: 17.h),
                  customTextField('Confirm Password', true),
                  SizedBox(height: 17.h),
                  OrangeButton(onTap: () {}, text: 'Save'),
                  SizedBox(height: 40.h),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container customTextField(String type, bool isPassword) => Container(
    height: 56.h,
    width: 333.w,
    decoration: BoxDecoration(
      color: Color(0xFFF2F2F2),
      borderRadius: BorderRadius.circular(25),
    ),
    child: Padding(
      padding: EdgeInsets.only(left: 34.w, top: 5.h),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Text(
            type,
            style: TextStyle(color: seconderyfontColor, fontSize: 10.sp),
          ),
          SizedBox(
            height: 19.h,
            child: TextField(
              obscureText: isPassword == true ? true : false,
              cursorColor: mainColor,
              decoration: InputDecoration(border: .none),
            ),
          ),
        ],
      ),
    ),
  );
}
