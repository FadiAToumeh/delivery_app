import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/constants/colors.dart';
import 'package:meal_monkey/views/homescreen/more_screens/my_orders_page.dart';

class ProductDetailsPage extends StatefulWidget {
  final double price;
  final String image;
  final String name;
  const ProductDetailsPage({
    super.key,
    required this.image,
    required this.name,
    required this.price,
  });

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height; //800
    final width = MediaQuery.of(context).size.width; //360

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Container(
            height: 365.h,
            width: 375.w,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.image),
                fit: BoxFit.cover,
              ),
            ),
          ),

          Column(
            children: [
              SizedBox(height: 40.8.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 21.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.shopping_cart, color: Colors.white),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => MyOrdersPage(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  child: Column(
                    children: [
                      SizedBox(height: height * 0.25),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50),
                          ),
                        ),
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 21.w),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: height * 0.03625),
                                  Text(
                                    widget.name,
                                    style: TextStyle(
                                      fontSize: 22.sp,
                                      fontWeight: FontWeight.w300,
                                      color: seconderyfontColor,
                                    ),
                                  ),
                                  SizedBox(height: 6.h),
                                  ratingWidget(),
                                  SizedBox(height: 4.h),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "4 Star Rating",
                                        style: TextStyle(
                                          fontSize: 11.sp,
                                          color: mainColor,
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            "Rs. ${widget.price}",
                                            style: TextStyle(
                                              fontSize: 31.sp,
                                              fontWeight: FontWeight.bold,
                                              color: primaryfontColor,
                                            ),
                                          ),
                                          Text(
                                            "/per Portion",
                                            style: TextStyle(
                                              fontSize: 12.sp,
                                              color: primaryfontColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 29.h),
                                  Text(
                                    'Description',
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.bold,
                                      color: primaryfontColor,
                                    ),
                                  ),
                                  SizedBox(height: 11.h),
                                  Text(
                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ornare leo non mollis id cursus. Eu euismod faucibus in leo malesuada',
                                    style: TextStyle(
                                      fontSize: 11.sp,
                                      color: primaryfontColor,
                                    ),
                                  ),
                                  SizedBox(height: 31.h),
                                  Text(
                                    "Customize your Order",
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.bold,
                                      color: primaryfontColor,
                                    ),
                                  ),
                                  SizedBox(height: 20.h),
                                  dropdownContainer(
                                    title: '- Select the size of portion -',
                                  ),
                                  SizedBox(height: 14.h),
                                  dropdownContainer(
                                    title: '- Select the ingredients -',
                                  ),
                                  SizedBox(height: 28.h),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Number of Portions",
                                        style: TextStyle(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.bold,
                                          color: primaryfontColor,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          substractButton(),
                                          SizedBox(width: 3.w),
                                          quantityContainer(),
                                          SizedBox(width: 3.w),
                                          addButton(),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 27.h),
                                  addtocartContainer(),
                                  SizedBox(height: 30.h), // Add bottom padding
                                ],
                              ),
                            ),
                            favoriteButton(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  SizedBox addtocartContainer() {
    return SizedBox(
      height: 171.h,
      width: 354.w,
      child: Stack(
        children: [
          Container(
            width: 97.w,
            height: 171.h,
            decoration: BoxDecoration(
              color: mainColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
            ),
          ),
          Center(
            child: Container(
              height: 122.h,
              width: 277.w,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 5)],
                borderRadius: BorderRadius.circular(35),
              ),
              child: Column(
                mainAxisAlignment: .center,
                children: [
                  Text(
                    'Total Price',
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: primaryfontColor,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(height: 3.h),
                  Text(
                    'LKR ${widget.price * number}',
                    style: TextStyle(
                      fontSize: 21.sp,
                      fontWeight: .bold,
                      color: primaryfontColor,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: mainColor,
                      fixedSize: Size(157.w, 29.h),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: .spaceEvenly,
                      children: [
                        Icon(Icons.add_shopping_cart, color: Colors.white),
                        Text(
                          'Add to cart',
                          style: TextStyle(color: Colors.white, fontSize: 11),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 0.w,
            top: 60.h,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: CircleBorder(),
                minimumSize: Size(47.w, 47.h),
              ),
              onPressed: () {
                Navigator.of(
                  context,
                ).push(MaterialPageRoute(builder: (context) => MyOrdersPage()));
              },
              child: Icon(Icons.shopping_cart, color: mainColor),
            ),
          ),
        ],
      ),
    );
  }

  ElevatedButton addButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(52.w, 30.h),
        backgroundColor: mainColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(25),
        ),
      ),
      onPressed: () {
        setState(() {
          number++;
        });
      },
      child: Text('+', style: TextStyle(color: Colors.white)),
    );
  }

  Container quantityContainer() {
    return Container(
      height: 30.h,
      width: 52.w,
      decoration: BoxDecoration(
        border: BoxBorder.all(color: mainColor),
        borderRadius: BorderRadius.circular(25),
        color: backgroundColor,
      ),
      child: Center(
        child: Text('$number', style: TextStyle(color: mainColor)),
      ),
    );
  }

  ElevatedButton substractButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(52.w, 30.h),
        backgroundColor: mainColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(25),
        ),
      ),
      onPressed: () {
        setState(() {
          if (number > 0) {
            number--;
          }
        });
      },
      child: Text('-', style: TextStyle(color: Colors.white)),
    );
  }

  Positioned favoriteButton() {
    return Positioned(
      top: -25.h,
      right: 5.w,
      child: Container(
        height: 55.63.h,
        width: 55.81.w,
        decoration: ShapeDecoration(
          shadows: [
            BoxShadow(color: Colors.black26, blurRadius: 3, blurStyle: .outer),
          ],
          color: Colors.white,
          shape: StarBorder.polygon(
            pointRounding: 0.65,
            sides: 3,
            rotation: 200,
          ),
        ),
        child: Icon(Icons.favorite, color: mainColor, size: 20),
      ),
    );
  }

  Container dropdownContainer({required String title}) {
    return Container(
      height: 45.h,
      width: 332.w,
      color: Color(0xFFF2F2F2),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32.w),
        child: Row(
          mainAxisAlignment: .spaceBetween,
          children: [Text(title), Icon(Icons.arrow_drop_down)],
        ),
      ),
    );
  }

  Row ratingWidget() {
    return Row(
      children: [
        Icon(Icons.star, color: mainColor, size: 15),
        Icon(Icons.star, color: mainColor, size: 15),
        Icon(Icons.star, color: mainColor, size: 15),
        Icon(Icons.star, color: mainColor, size: 15),
        Icon(Icons.star_border, color: mainColor, size: 15),
      ],
    );
  }
}
