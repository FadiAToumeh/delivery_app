import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/constants/colors.dart';

class ChangeAddressPage extends StatelessWidget {
  const ChangeAddressPage({super.key});

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
                padding: EdgeInsetsGeometry.only(
                  top: 30.8.w,
                  left: 21.w,
                  right: 21.w,
                ),
                child: headerText(text: 'Change Address', context: context),
              ),
              mapContainer(context: context),
              customSearchBar(),
              savedPlace(),
            ],
          ),
        ),
      ),
    );
  }

  Padding customSearchBar() {
    return Padding(
      padding: EdgeInsets.only(left: 21.w, right: 21.w),
      child: SearchBar(
        padding: WidgetStatePropertyAll(EdgeInsets.all(10)),
        leading: Icon(Icons.search, color: seconderyfontColor),
        hintText: 'Search Adress',
        hintStyle: WidgetStatePropertyAll(TextStyle(color: primaryfontColor)),
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

Widget mapContainer({required BuildContext context}) {
  return Padding(
    padding: EdgeInsets.only(top: 15.h, bottom: 19.h),
    child: Container(
      height: MediaQuery.of(context).size.height * 0.6,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: .cover,
          image: AssetImage('assets/more/map.png'),
        ),
      ),
    ),
  );
}

Widget savedPlace() {
  return Padding(
    padding: EdgeInsetsGeometry.only(left: 21.w, right: 21.w , top: 24.h),
    child: SizedBox(
      height: 36.h,
      width: 333.w,
      child: Row(
        mainAxisAlignment: .spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 36.h,
                width: 36.w,
                decoration: BoxDecoration(
                  shape: .circle,
                  color: mainColor.withOpacity(0.3),
                ),
                child: Icon(Icons.star, color: mainColor),
              ),
              SizedBox(width: 10.w,),
              Text('Choose a saved place' , style: TextStyle(fontSize: 14 , color: primaryfontColor),),
            ],
          ),
          Icon(Icons.arrow_forward_ios , color: primaryfontColor,),
        ],
      ),
    ),
  );
}
