import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/constants/colors.dart';
import 'package:meal_monkey/views/homescreen/more_page.dart';
import 'package:meal_monkey/views/homescreen/more_screens/my_orders_page.dart';

class PaymentDetailsPage extends StatefulWidget {
  const PaymentDetailsPage({super.key});

  @override
  State<PaymentDetailsPage> createState() => _PaymentDetailsPageState();
}

class _PaymentDetailsPageState extends State<PaymentDetailsPage> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    final orientaion = MediaQuery.of(context).orientation;
    final isLandscape = orientaion == Orientation.landscape;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 21.w),
            child: Column(
              crossAxisAlignment: .start,
              children: [
                SizedBox(height: 30.8.h),
                headerText(context),
                SizedBox(height: 28.h),
                Text(
                  'Customize your payment method',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: .bold,
                    color: primaryfontColor,
                  ),
                ),
                SizedBox(height: 16.5.h),
                Divider(color: Color(0XFF707070), thickness: 0.2),
                SizedBox(height: 18.5.h),
                paymentBox(isLandscape),
                SizedBox(height: 35.h),
                customButton(
                  text: 'Add Another Credit/Debit Card',
                  onPressed: () {
                    return showModalBottomSheet(
                      backgroundColor: backgroundColor,
                      isScrollControlled: true,
                      context: context,
                      builder: (context) {
                        return StatefulBuilder(
                          builder: (context, setState) => Padding(
                            padding: EdgeInsets.symmetric(horizontal: 21.w),
                            child: Container(
                              height: 642.h,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: backgroundColor,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(25),
                                  topRight: Radius.circular(25),
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: .start,
                                children: [
                                  SizedBox(height: 23.h),
                                  Text(
                                    'Add Credit/Debit Card',
                                    style: TextStyle(
                                      color: primaryfontColor,
                                      fontSize: 14,
                                      fontWeight: .bold,
                                    ),
                                  ),
                                  SizedBox(height: 18.5.h),
                                  Divider(
                                    color: seconderyfontColor.withOpacity(0.3),
                                  ),
                                  SizedBox(height: 18.5.h),
                                  customContainer(
                                    height: 56.h,
                                    width: 333.w,
                                    text: 'Card Number',
                                    istextCentered: false,
                                  ),
                                  SizedBox(height: 19.h),
                                  Row(
                                    mainAxisAlignment: .spaceEvenly,
                                    children: [
                                      Text(
                                        'Expiry',
                                        style: TextStyle(
                                          color: primaryfontColor,
                                          fontSize: 14.sp,
                                        ),
                                      ),
                                      customContainer(
                                        height: 56.h,
                                        width: 103.w,
                                        text: 'MM',
                                        istextCentered: true,
                                      ),
                                      customContainer(
                                        height: 56.h,
                                        width: 103.w,
                                        text: 'YY',
                                        istextCentered: true,
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 19.h),
                                  customContainer(
                                    height: 56.h,
                                    width: 333.w,
                                    text: 'Security Code',
                                    istextCentered: false,
                                  ),
                                  SizedBox(height: 19.h),
                                  customContainer(
                                    height: 56.h,
                                    width: 333.w,
                                    text: 'First Name',
                                    istextCentered: false,
                                  ),
                                  SizedBox(height: 19.h),
                                  customContainer(
                                    height: 56.h,
                                    width: 333.w,
                                    text: 'Last Name',
                                    istextCentered: false,
                                  ),
                                  SizedBox(height: 39.h),
                                  Row(
                                    mainAxisAlignment: .spaceBetween,
                                    children: [
                                      Text(
                                        'You can remove this card \n at anytime ',
                                        style: TextStyle(
                                          color: seconderyfontColor,
                                          fontSize: 14.sp,
                                        ),
                                      ),
                                      Switch(
                                        inactiveThumbColor: primaryfontColor,
                                        activeThumbColor: seconderyfontColor,
                                        value: isSelected,
                                        onChanged: (_) {
                                          setState(() {
                                            isSelected = !isSelected;
                                          });
                                        },
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 38.h),
                                  customButton(
                                    onPressed: () =>
                                        Navigator.of(context).pop(),
                                    text: '               Add Card',
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row headerText(BuildContext context) {
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
              'Payment Details',
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
          icon: Icon(Icons.shopping_cart_rounded, color: seconderyfontColor),
        ),
      ],
    );
  }
}

Widget paymentBox(bool isLandscape) {
  return Container(
    height: isLandscape ? 300 : 198.h,
    width: double.maxFinite,
    decoration: BoxDecoration(
      color: Color(0XFFF7F7F7),
      boxShadow: [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 20,
          offset: Offset(0, 30.w),
        ),
      ],
    ),
    child: Padding(
      padding: .only(
        top: 26.h,
        bottom: 25.h,
        left: 45 - 21.w,
        right: 54.5 - 21.w,
      ),
      child: Column(
        mainAxisAlignment: .center,
        crossAxisAlignment: .start,
        children: [
          Text(
            'Cash/Card on delivery',
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: .bold,
              color: primaryfontColor,
            ),
          ),
          SizedBox(width: 284.02.w, child: Divider()),
          Row(
            children: [
              Image.asset(
                'assets/more/visacard.png',
                height: 31.h,
                width: 53.w,
              ),
              SizedBox(width: 15.w),
              Text("*** *** ****", style: TextStyle(fontSize: 12.sp)),
              SizedBox(width: 15.h),
              Text("2189", style: TextStyle(fontSize: 12.sp)),
              Spacer(),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(25),
                    side: BorderSide(color: mainColor),
                  ),
                  minimumSize: Size(86.w, 25.h),
                ),
                onPressed: () {},
                child: Text(
                  "Delete Card",
                  textAlign: .center,
                  style: TextStyle(
                    color: mainColor,
                    fontSize: 8.sp,
                    fontWeight: .bold,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: 284.02.w, child: Divider()),
          TextButton(
            onPressed: () {},
            child: Text(
              'Other Metods',
              style: TextStyle(
                color: primaryfontColor,
                fontSize: 12.sp,
                fontWeight: .bold,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget customButton({required Function() onPressed, required String text}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: mainColor,
      fixedSize: Size(333.w, 52.h),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(25),
      ),
    ),
    onPressed: onPressed,
    child: Row(
      children: [
        Text('+', style: TextStyle(color: Colors.white, fontSize: 30)),
        SizedBox(width: 23.5.w),
        Text(text, style: TextStyle(color: Colors.white, fontSize: 16)),
      ],
    ),
  );
}

Widget customContainer({
  required double height,
  required double width,
  required String text,
  required bool istextCentered,
}) {
  return SizedBox(
    height: height,
    width: width,
    child: TextField(
      cursorColor: mainColor,
      decoration: InputDecoration(
        contentPadding: istextCentered
            ? EdgeInsets.all(5)
            : EdgeInsets.only(left: 10),
        filled: true,
        hint: istextCentered
            ? Center(
                child: Text(
                  text,
                  style: TextStyle(color: seconderyfontColor, fontSize: 14),
                ),
              )
            : Align(
                alignment: .centerStart,
                child: Text(
                  text,
                  style: TextStyle(color: seconderyfontColor, fontSize: 14),
                ),
              ),
        border: .none,
        fillColor: Color(0XFFF2F2F2),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: .none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: .none,
        ),
      ),
    ),
  );
}
