import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/constants/colors.dart';
import 'package:meal_monkey/widgets/home_screen_widgets/header_text.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> notifications = [
      {
        'title': 'Your orders has been picked up',
        'date': 'Now',
        'isRead': true,
      },
      {
        'title': 'Your order has been delivered',
        'date': '1h ago',
        'isRead': false,
      },
      {
        'title':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
        'date': '3h ago',
        'isRead': true,
      },
      {
        'title':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
        'date': '5h ago',
        'isRead': true,
      },
      {
        'title':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
        'date': '05 Sep 2020',
        'isRead': false,
      },
      {
        'title':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
        'date': '12 Aug 2020',
        'isRead': false,
      },
      {
        'title':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
        'date': '20 Jul 2020',
        'isRead': true,
      },
      {
        'title':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
        'date': '12 Jul 2020',
        'isRead': true,
      },
    ];
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsetsGeometry.only(
                top: 30.8.h,
                left: 21.w,
                right: 21.w,
              ),
              child: headerText(context: context, text: "Notifications"),
            ),
            Expanded(
              child: ListView.builder(
                physics:AlwaysScrollableScrollPhysics(),
                itemCount: notifications.length,
                itemBuilder: (context, index) {
                  return customListTile(
                    title: notifications[index]['title'],
                    date: notifications[index]['date'],
                    isRead: notifications[index]['isRead'],
                  );
                },
              ),
            ),
            SizedBox(height: 30.h,)
          ],
        ),
      ),
    );
  }
}

ListTile customListTile({
  required String title,
  required String date,
  required bool isRead,
}) {
  return ListTile(
    contentPadding: EdgeInsets.only(top: 14.h),
    tileColor: isRead ? backgroundColor : Color(0XFFF6F6F6),
    leading: Icon(Icons.circle, color: mainColor, size: 20),
    title: Text(
      title,
      style: TextStyle(color: primaryfontColor, fontSize: 14.sp),
      overflow: .clip,
      maxLines: 1,
    ),
    subtitle: Text(
      date,
      style: TextStyle(color: seconderyfontColor, fontSize: 12.sp),
      maxLines: 1,
    ),
  );
}

