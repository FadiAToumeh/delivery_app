import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/constants/colors.dart';
import 'package:meal_monkey/views/homescreen/more_screens/about_us_page.dart';
import 'package:meal_monkey/views/homescreen/more_screens/inbox_page.dart';
import 'package:meal_monkey/views/homescreen/more_screens/my_orders_page.dart';
import 'package:meal_monkey/views/homescreen/more_screens/notifications_page.dart';
import 'package:meal_monkey/views/homescreen/more_screens/payment_details_page.dart';

class MorePage extends StatefulWidget {
  const MorePage({super.key});

  @override
  State<MorePage> createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      PaymentDetailsPage(),
      MyOrdersPage(),
      NotificationsPage(),
      InboxPage(),
      AboutUsPage(),
    ];
    final orientation = MediaQuery.of(context).orientation;
    final isLandscape = orientation == Orientation.landscape;

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 21.w),
          child: SafeArea(
            child: Column(
              children: [
                SizedBox(height: 30.8.h),
                Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Text(
                      'More',
                      style: TextStyle(
                        color: primaryfontColor,
                        fontSize: 20,
                        fontWeight: .w500,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyOrdersPage(),));
                      },
                      icon: Icon(
                        Icons.shopping_cart_sharp,
                        color: primaryfontColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30.h),
                customTile(
                  'Payment',
                  'assets/more/1.png',
                  false,
                  0,
                  pages,
                  context,
                ),
                SizedBox(height: isLandscape ? 19.h : 25.h),
                customTile(
                  'My Orders',
                  'assets/more/2.png',
                  false,
                  1,
                  pages,
                  context,
                ),
                SizedBox(height: isLandscape ? 19.h : 25.h),
                customTile(
                  'Notifications',
                  'assets/more/3.png',
                  true,
                  2,
                  pages,
                  context,
                ),
                SizedBox(height: isLandscape ? 19.h : 25.h),
                customTile(
                  'Inbox',
                  'assets/more/4.png',
                  false,
                  3,
                  pages,
                  context,
                ),
                SizedBox(height: isLandscape ? 19.h : 25.h),
                customTile(
                  'About Us',
                  'assets/more/5.png',
                  false,
                  4,
                  pages,
                  context,
                ),
                SizedBox(height: 50.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget customTile(
  String title,
  String image,
  bool isNotification,
  int index,
  List pages,
  BuildContext context,
) {
  return GestureDetector(
    onTap: () => Navigator.of(
      context,
    ).push(MaterialPageRoute(builder: (context) => pages[index])),
    child: Stack(
      clipBehavior: .none,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: .circular(12.5),
            color: Color(0XFFF6F6F6),
          ),
          height: 75.h,
          width: 333.w,
          child: Padding(
            padding: EdgeInsets.only(left: 13.w),
            child: isNotification
                ? Row(
                    children: [
                      Container(
                        height: 53.h,
                        width: 53.w,
                        decoration: BoxDecoration(
                          shape: .circle,
                          color: Color(0XFFD8D8D8),
                        ),
                        child: Center(
                          child: Image.asset(image, height: 30.h, width: 30.w),
                        ),
                      ),
                      SizedBox(width: 19.w),
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: .w300,
                          color: primaryfontColor,
                        ),
                      ),
                      SizedBox(width: 103.w),
                      Container(
                        height: 20.29.h,
                        width: 20.29.w,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          shape: .circle,
                        ),
                        child: Center(
                          child: Text(
                            '15',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.sp,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                : Row(
                    children: [
                      Container(
                        height: 53.h,
                        width: 53.w,
                        decoration: BoxDecoration(
                          shape: .circle,
                          color: Color(0XFFD8D8D8),
                        ),
                        child: Center(
                          child: Image.asset(image, height: 30.h, width: 30.w),
                        ),
                      ),
                      SizedBox(width: 19.w),
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: .w300,
                          color: primaryfontColor,
                        ),
                      ),
                    ],
                  ),
          ),
        ),
        Positioned(
          right: -25.w,
          top: 12.h,
          child: IconButton(
            style: IconButton.styleFrom(
              backgroundColor: Color(0XFFF6F6F6),
              shadowColor: Colors.black12,
            ),
            onPressed: () {},
            icon: Icon(Icons.arrow_forward_ios),
          ),
        ),
      ],
    ),
  );
}
