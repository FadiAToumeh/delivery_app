import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/constants/colors.dart';
import 'package:meal_monkey/views/homescreen/more_screens/my_orders_page.dart';

class InboxPage extends StatelessWidget {
  const InboxPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Color> colors = [
      backgroundColor,
      Color(0XFFF6F6F6),
      backgroundColor,
      Color(0XFFF6F6F6),
      backgroundColor,
      backgroundColor,
    ];
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Padding(
              padding: EdgeInsetsGeometry.only(
                top: 30.8.h,
                left: 21.w,
                right: 21.w,
                bottom: 47.h,
              ),
              child: headerText(text: 'Inbox', context: context),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: colors.length,
              itemBuilder: (context, index) {
              return customTile(color: colors[index]);
            },)
          ],
        ),
      ),
    );
  }
}

Widget headerText({required String text, required BuildContext context}) {
  return Row(
    mainAxisAlignment: .spaceBetween,
    children: [
      Row(
        children: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back_ios, color: seconderyfontColor),
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.w300,
              color: primaryfontColor,
            ),
          ),
        ],
      ),
      IconButton(
        onPressed: () {
          Navigator.of(
            context,
          ).push(MaterialPageRoute(builder: (context) => MyOrdersPage()));
        },
        icon: Icon(Icons.shopping_cart, color: seconderyfontColor),
      ),
    ],
  );
}

Widget customTile({required Color color}) {
  return Container(
    height: 88.h,
    width: double.infinity,
    color: color,
    child: Padding(
      padding: EdgeInsets.only(left: 15.w , right: 15.w , top: 10.h),
      child: Column(
        mainAxisAlignment: .start,
        children: [
          Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.circle, size: 6.sp , color: mainColor,),
                  SizedBox(width: 3.w,),
                  Text(
                    'MealMonkey Promotions',
                    style: TextStyle(color: primaryfontColor, fontSize: 14.sp),
                  ),
                ],
              ),
              Text(
                '6th July',
                style: TextStyle(fontSize: 9.sp, color: seconderyfontColor),
              ),
            ],
          ),
          SizedBox(height: 11.h),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ',
            style: TextStyle(color: seconderyfontColor, fontSize: 14),
            overflow: .clip,
            maxLines: 1,
          ),
          Align(
            alignment: .bottomEnd,
            child: Icon(Icons.star_border , size: 15.sp, color: mainColor,),
          ),
        ],
      ),
    ),
  );
}
