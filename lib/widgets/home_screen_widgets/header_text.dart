import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/constants/colors.dart';
import 'package:meal_monkey/views/homescreen/more_screens/my_orders_page.dart';

Row headerText({required BuildContext context, required String text}) {
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
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyOrdersPage(),));
        },
        icon: Icon(Icons.shopping_cart_rounded, color: seconderyfontColor),
      ),
    ],
  );
}
