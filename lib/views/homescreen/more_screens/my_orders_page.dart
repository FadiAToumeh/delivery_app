import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/constants/colors.dart';
import 'package:meal_monkey/views/homescreen/more_screens/check_out_page.dart';
import 'package:meal_monkey/widgets/orange_button.dart';

class MyOrdersPage extends StatefulWidget {
  const MyOrdersPage({super.key});

  @override
  State<MyOrdersPage> createState() => _MyOrdersPageState();
}

class _MyOrdersPageState extends State<MyOrdersPage> {
  List<Map<String, dynamic>> orderedItems = [
    {'item': 'Beef Burger', 'count': 1, 'price': 16},
    {'item': 'Classic Burger', 'count': 1, 'price': 14},
    {'item': 'Cheese Chicken Burger', 'count': 1, 'price': 17},
    {'item': 'Chicken Legs Basket', 'count': 1, 'price': 15},
    {'item': 'French Fries Large', 'count': 1, 'price': 6},
  ];
  int subTotal = 0;
  int deliveryCost = 2;
  int totalCost = 0;
  @override
  void initState() {
    super.initState();
    for (var item in orderedItems) {
      subTotal = item['price'] + subTotal;
    }
    totalCost = subTotal + deliveryCost;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: .start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 30.8.h),
                child: headerText(text: 'My Orders', context: context),
              ),
              Padding(
                padding: EdgeInsets.only(left: 21.w, top: 27.h),
                child: orderContainer(
                  title: 'King Burgers',
                  rating: '4.5',
                  numberofRatings: '128',
                  itemName: 'Burger',
                  type: 'Western Food',
                  address: 'No 03, 4th Lane, Newyork',
                ),
              ),
              itemsContainer(),
              deliveryInstructions(),
              Padding(
                padding: EdgeInsetsGeometry.symmetric(horizontal: 21.w),
                child: Divider(color: Colors.black12),
              ),
              subTotalWidget(),
              deliveryCostWidget(),
              Padding(
                padding: EdgeInsetsGeometry.only(
                  top: 18.5.h,
                  left: 21.h,
                  right: 21.w,
                ),
                child: Divider(color: Colors.black12),
              ),
              totalCostWidget(),
              Padding(padding: EdgeInsetsGeometry.only(top:24.h , left: 21.w , right: 21.w , bottom: 24.h),
              child:OrangeButton(onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => CheckOutPage(),));
              }, text: "Checkout") ,),
            ],
          ),
        ),
      ),
    );
  }

  Padding totalCostWidget() {
    return Padding(
            padding: EdgeInsetsGeometry.only(
              top: 10.5.h,
              right: 21.w,
              left: 21.w,
            ),
            child: Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Text(
                  "Total",
                  style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: .bold,
                    color: primaryfontColor,
                  ),
                ),

                Text(
                  '\$'
                  '$totalCost',
                  style: TextStyle(
                    color: mainColor,
                    fontSize: 22.sp,
                    fontWeight: .bold,
                  ),
                ),
              ],
            ),
          );
  }

  Padding deliveryCostWidget() {
    return Padding(
            padding: EdgeInsets.only(left: 21.w, right: 21.w, top: 13.h),
            child: Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Text(
                  "Delivery cost",
                  style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: .bold,
                    color: primaryfontColor,
                  ),
                ),

                Text(
                  '\$'
                  '$deliveryCost',
                  style: TextStyle(
                    color: mainColor,
                    fontSize: 13.sp,
                    fontWeight: .bold,
                  ),
                ),
              ],
            ),
          );
  }

  Padding subTotalWidget() {
    return Padding(
            padding: EdgeInsetsGeometry.only(
              top: 14.5.h,
              left: 21.w,
              right: 21.w,
            ),
            child: Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Text(
                  "Sub Total",
                  style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: .bold,
                    color: primaryfontColor,
                  ),
                ),

                Text(
                  '\$'
                  '$subTotal',
                  style: TextStyle(
                    color: mainColor,
                    fontSize: 13.sp,
                    fontWeight: .bold,
                  ),
                ),
              ],
            ),
          );
  }

  Padding deliveryInstructions() {
    return Padding(
      padding: EdgeInsetsGeometry.only(top: 16.h, left: 21.w, right: 21.w),
      child: Row(
        mainAxisAlignment: .spaceBetween,
        children: [
          Text(
            'Delivery Instrusctions',
            style: TextStyle(
              fontSize: 13.sp,
              fontWeight: .bold,
              color: primaryfontColor,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              '+ Add Notes',
              style: TextStyle(fontSize: 13.sp, color: mainColor),
            ),
          ),
        ],
      ),
    );
  }

  Padding itemsContainer() {
    return Padding(
      padding: EdgeInsets.only(top: 37.h),
      child: Container(
        padding: EdgeInsets.all(8),
        height: 231.h,
        width: double.infinity,
        color: Color(0XFFF6F6F6),
        child: Column(
          mainAxisAlignment: .spaceEvenly,
          children: [
            for (var i = 0; i < orderedItems.length; i++)
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 21.w),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: .spaceBetween,
                      children: [
                        Text(
                          orderedItems[i]['item'] +
                              " " +
                              "x"
                                  '${orderedItems[i]['count']}',
                          style: TextStyle(
                            color: seconderyfontColor,
                            fontSize: 13.sp,
                          ),
                        ),
                        Text(
                          "\$"
                          '${orderedItems[i]['price']}',
                          style: TextStyle(
                            color: primaryfontColor,
                            fontSize: 13.sp,
                            fontWeight: .bold,
                          ),
                        ),
                      ],
                    ),
                    if (i < orderedItems.length - 1)
                      Padding(
                        padding: EdgeInsets.only(top: 16.5),
                        child: Divider(
                          height: 1.h,
                          thickness: 1,
                          color: Colors.black12,
                        ),
                      ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

Widget headerText({required String text, required BuildContext context}) {
  return Row(
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
  );
}

Widget orderContainer({
  required String title,
  required String rating,
  required String numberofRatings,
  required String itemName,
  required String type,
  required String address,
}) {
  return SizedBox(
    width: 260.w,
    height: 94.h,
    child: Row(
      children: [
        Container(
          padding: EdgeInsets.only(top: 5.h),
          height: 80.h,
          width: 80.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image: AssetImage('assets/images/burger.png'),
              fit: .cover,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 17.w),
          child: Column(
            crossAxisAlignment: .start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: primaryfontColor,
                  fontSize: 16,
                  fontWeight: .bold,
                ),
              ),
              Padding(
                padding: EdgeInsetsGeometry.only(top: 5.h),
                child: Row(
                  children: [
                    Icon(Icons.star, color: mainColor, size: 12.sp),
                    Text(
                      rating,
                      style: TextStyle(color: mainColor, fontSize: 11.sp),
                    ),
                    Text(
                      ' '
                      '('
                      '$numberofRatings'
                      ' '
                      'ratings'
                      ')',
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: seconderyfontColor,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsGeometry.only(top: 5.h),
                child: Row(
                  children: [
                    Text(
                      itemName,
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: seconderyfontColor,
                      ),
                    ),
                    Text(
                      ' . ',
                      style: TextStyle(color: mainColor, fontSize: 12.sp),
                    ),
                    Text(
                      type,
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: seconderyfontColor,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsGeometry.only(top: 5.h),
                child: Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: mainColor,
                      size: 12.sp,
                    ),
                    Text(
                      ' '
                      '$address',
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: seconderyfontColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

