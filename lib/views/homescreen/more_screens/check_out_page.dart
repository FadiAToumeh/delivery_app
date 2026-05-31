import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/constants/colors.dart';
import 'package:meal_monkey/views/homescreen/home_screen.dart';
import 'package:meal_monkey/views/homescreen/more_screens/change_address_page.dart';
import 'package:meal_monkey/widgets/orange_button.dart';

class CheckOutPage extends StatefulWidget {
  const CheckOutPage({super.key});

  @override
  State<CheckOutPage> createState() => _CheckOutPageState();
}

class _CheckOutPageState extends State<CheckOutPage> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsetsGeometry.only(
                  top: 30.8.h,
                  left: 21.w,
                  right: 21.h,
                ),
                child: headerText(text: 'Checkout', context: context),
              ),
              deliveryAdressInfo(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChangeAddressPage(),
                    ),
                  );
                },
              ),
              SizedBox(height: 17.h),
              Divider(color: Color(0xFFF6F6F6), thickness: 10),
              paymetMethod(
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
                                  onPressed: () => Navigator.of(context).pop(),
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
              SizedBox(height: 24.h),
              Divider(color: Color(0xFFF6F6F6), thickness: 10),
              pricesInformation(),

              Divider(color: Color(0xFFF6F6F6), thickness: 10),
              SizedBox(height: 17.h),
              OrangeButton(
                onTap: () {
                  return showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    builder: (context) {
                      return Container(
                        height: 642.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                          ),
                          color: backgroundColor,
                        ),
                        child: Column(
                          crossAxisAlignment: .center,
                          children: [
                            SizedBox(height: 38.h),
                            Image.asset(
                              'assets/more/cash.png',
                              height: 254.28.h,
                              width: 223.5.w,
                            ),
                            SizedBox(height: 29.7.h),
                            Text(
                              'Thank You!',
                              style: TextStyle(
                                color: primaryfontColor,
                                fontWeight: .bold,
                                fontSize: 26.sp,
                              ),
                            ),
                            SizedBox(height: 4.h),
                            Text(
                              'For your order',
                              style: TextStyle(
                                color: primaryfontColor,
                                fontWeight: .bold,
                                fontSize: 17.sp,
                              ),
                            ),
                            SizedBox(height: 19.h),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Your Order is now being processed. We will let you know once the order is picked from the outlet. Check the status of your Order',
                                textAlign: .center,
                                style: TextStyle(
                                  color: primaryfontColor,
                                  fontSize: 14.sp,
                                ),
                              ),
                            ),
                            SizedBox(height: 14.h),
                            OrangeButton(onTap: () {}, text: 'Track My Order'),
                            SizedBox(height: 17.h),
                            TextButton(
                              onPressed: () => Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => HomeScreen(),
                                ),
                              ),
                              child: Text(
                                'Back To Home',
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  color: primaryfontColor,
                                  fontWeight: .bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                text: 'Send Order',
              ),
              SizedBox(height: 20.h),
            ],
          ),
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

Widget deliveryAdressInfo({required Function() onPressed}) {
  return Padding(
    padding: EdgeInsets.only(top: 35.h, left: 21.w, right: 21.w),
    child: SizedBox(
      height: 85.h,
      width: 333.w,
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Text(
            'Delivery Address',
            style: TextStyle(color: primaryfontColor, fontSize: 13),
          ),
          SizedBox(height: 16.h),
          Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              Text(
                '653 Nostrand Ave., \n Brooklyn, NY 11216',
                textAlign: .start,
                style: TextStyle(
                  color: primaryfontColor,
                  fontSize: 15,
                  fontWeight: .bold,
                ),
              ),
              TextButton(
                onPressed: onPressed,
                child: Text(
                  'Change',
                  style: TextStyle(
                    color: mainColor,
                    fontSize: 15,
                    fontWeight: .bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget paymetMethod({required Function() onPressed}) {
  return Padding(
    padding: EdgeInsets.only(left: 21.w, right: 21.w, top: 20.h),
    child: SizedBox(
      height: 300.h,
      width: 333.w,
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              Text(
                'Payment method',
                style: TextStyle(color: primaryfontColor, fontSize: 13),
              ),
              TextButton(
                onPressed: onPressed,
                child: Text(
                  '+  Add Card',
                  style: TextStyle(
                    color: mainColor,
                    fontSize: 15,
                    fontWeight: .bold,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20.h),
          paymentTile(null, false, text: 'Cash on delivery'),
          paymentTile(
            'assets/more/visacard.png',
            true,
            text: '**** **** **** 2187',
          ),
          paymentTile(
            'assets/more/paypal.png',
            true,
            text: 'johndoe@email.com',
          ),
        ],
      ),
    ),
  );
}

Widget paymentTile(String? image, bool hasImage, {required String text}) {
  return Padding(
    padding: EdgeInsetsGeometry.only(top: 13.h),
    child: Container(
      height: 63.h,
      width: 333.w,
      decoration: BoxDecoration(
        color: Color(0XFFF6F6F6),
        borderRadius: BorderRadius.circular(12.sp),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 21.w),
        child: Row(
          mainAxisAlignment: .spaceBetween,
          children: [
            Row(
              children: [
                hasImage
                    ? Row(
                        children: [
                          Image.asset(image!, height: 22.h, width: 37.w),
                          Text(text),
                        ],
                      )
                    : Row(children: [Text(text)]),
              ],
            ),
            Checkbox(
              value: false,
              onChanged: (value) => null,
              shape: CircleBorder(),
              side: BorderSide(color: mainColor),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget pricesInformation() {
  return Padding(
    padding: EdgeInsets.only(left: 21.w, right: 21.h, top: 14.h),
    child: SizedBox(
      height: 170.h,
      width: 333.w,
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              Text(
                'Sub Toatal',
                style: TextStyle(color: primaryfontColor, fontSize: 13.sp),
              ),
              Text(
                '\$68',
                style: TextStyle(
                  color: primaryfontColor,
                  fontSize: 13.sp,
                  fontWeight: .bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              Text(
                'Delivery Cost',
                style: TextStyle(color: primaryfontColor, fontSize: 13.sp),
              ),
              Text(
                '\$2',
                style: TextStyle(
                  color: primaryfontColor,
                  fontSize: 13.sp,
                  fontWeight: .bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              Text(
                'Discount',
                style: TextStyle(color: primaryfontColor, fontSize: 13.sp),
              ),
              Text(
                '\$-4',
                style: TextStyle(
                  color: primaryfontColor,
                  fontSize: 13.sp,
                  fontWeight: .bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 15.5.h),
          Divider(color: seconderyfontColor, thickness: 0.5),
          SizedBox(height: 12.5.h),
          Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              Text(
                'Total',
                style: TextStyle(color: primaryfontColor, fontSize: 13.sp),
              ),
              Text(
                '\$66',
                style: TextStyle(
                  color: primaryfontColor,
                  fontSize: 13.sp,
                  fontWeight: .bold,
                ),
              ),
            ],
          ),
        ],
      ),
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
