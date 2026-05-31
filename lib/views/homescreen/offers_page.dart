import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/constants/colors.dart';
import 'package:meal_monkey/views/homescreen/more_screens/my_orders_page.dart';

class OffersPage extends StatelessWidget {
  const OffersPage({super.key});
  @override
  Widget build(BuildContext context) {
    List<Map> offersList = [
      {
        'name': 'Café de Noires',
        'image': 'assets/offers/offer1.png',
        'rating': '4.9',
        'numofratings': '124',
        'foodtype': 'Western Food',
      },
      {
        'name': 'Isso',
        'image': 'assets/offers/offer2.png',
        'rating': '4.9',
        'numofratings': '124',
        'foodtype': 'Western Food',
      },
      {
        'name': 'Cafe Beans',
        'image': 'assets/offers/offer3.png',
        'rating': '4.9',
        'numofratings': '124',
        'foodtype': 'Western Food',
      },
    ];
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: .start,
            children: [
              SizedBox(height: 30.8.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 21.w),
                child: Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Text(
                      'Latest Offers',
                      style: TextStyle(
                        color: primaryfontColor,
                        fontSize: 20.sp,
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
              ),
              SizedBox(height: 6.h),
              Padding(
                padding: EdgeInsetsGeometry.symmetric(horizontal: 21.w),
                child: Text(
                  "Find discounts, Offers special \n meals and more!",
                  style: TextStyle(fontSize: 14.sp, color: seconderyfontColor),
                  textAlign: .start,
                ),
              ),
              SizedBox(height: 22.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 21.h),
                child: checkoffersButton(),
              ),
              SizedBox(height: 22.h),
              offersListView(offersList),
              SizedBox(height: 40.h),
            ],
          ),
        ),
      ),
    );
  }
}

ElevatedButton checkoffersButton() {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      fixedSize: Size(157.w, 29.h),
      backgroundColor: mainColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(25),
      ),
    ),
    onPressed: () {},
    child: Center(
      child: Text(
        "Check Offers",
        style: TextStyle(color: Colors.white, fontSize: 11),
      ),
    ),
  );
}

ListView offersListView(List offersList) {
  return ListView.builder(
    padding: EdgeInsets.all(0.0),
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    itemCount: offersList.length,
    scrollDirection: Axis.vertical,
    itemBuilder: (context, index) {
      return SizedBox(
        width: double.infinity,
        height: 282.19,
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Image.asset(offersList[index]['image']),
            SizedBox(height: 7),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 21),
              child: Text(
                offersList[index]['name'],
                style: TextStyle(
                  color: primaryfontColor,
                  fontSize: 16,
                  fontWeight: .bold,
                ),
              ),
            ),
            SizedBox(height: 5.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 21.w),
              child: Row(
                children: [
                  Icon(Icons.star, color: mainColor, size: 21.sp),
                  Text(
                    offersList[index]['rating'],
                    style: TextStyle(color: mainColor, fontSize: 11.sp),
                  ),
                  SizedBox(width: 5.w),
                  Text(
                    '('
                    '${offersList[index]['numofratings']}'
                    " "
                    "ratings"
                    ')',
                    style: TextStyle(color: seconderyfontColor, fontSize: 12),
                  ),
                  SizedBox(width: 5.w),
                  Text('.', style: TextStyle(color: mainColor, fontSize: 12)),
                  SizedBox(width: 5.w),
                  Text(
                    offersList[index]['foodtype'],
                    style: TextStyle(color: seconderyfontColor, fontSize: 12),
                  ),
                ],
              ),
            ),
            SizedBox(height: 9.8.h),
          ],
        ),
      );
    },
  );
}
