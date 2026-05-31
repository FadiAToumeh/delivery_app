import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/constants/colors.dart';
import 'package:meal_monkey/views/homescreen/menu_page.dart';
import 'package:meal_monkey/views/homescreen/more_page.dart';
import 'package:meal_monkey/views/homescreen/more_screens/my_orders_page.dart';
import 'package:meal_monkey/views/homescreen/offers_page.dart';
import 'package:meal_monkey/views/homescreen/product_details_page.dart';
import 'package:meal_monkey/views/homescreen/profile_page.dart';
import 'package:meal_monkey/widgets/home_screen_widgets/category_list.dart';
import 'package:meal_monkey/widgets/home_screen_widgets/custom_bottom_bar.dart';
import 'package:meal_monkey/widgets/home_screen_widgets/most_popular_list.dart';
import 'package:meal_monkey/widgets/home_screen_widgets/popular_restaurant_list.dart';
import 'package:meal_monkey/widgets/home_screen_widgets/recent_items_list.dart';
import 'package:meal_monkey/widgets/search_textfield.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 5;
  List<String> listImages = [
    "assets/images/burger.png",
    "assets/images/srilankan.png",
    "assets/images/italian.png",
    "assets/images/indian.png",
  ];
  List<String> listTitles = ["Offers", "Sri Lankan", "Italian", "Indian"];
  List<Map> popularRestaurants = [
    {
      'name': 'Minute by tuk tuk',
      'image': 'assets/images/pizza.png',
      'rating': '4.9',
      'numofratings': '124',
      'type': 'Café',
      'foodtype': 'Western Food',
    },
    {
      'name': 'Café de Noir',
      'image': 'assets/images/breakfast.png',
      'rating': '4.9',
      'numofratings': '124',
      'type': 'Café',
      'foodtype': 'Western Food',
    },
    {
      'name': 'Bakes by Tella',
      'image': 'assets/images/pastries.png',
      'rating': '4.9',
      'numofratings': '124',
      'type': 'Café',
      'foodtype': 'Western Food',
    },
  ];
  List<Map> mostPopular = [
    {
      'name': 'Café De Bambaa',
      'image': 'assets/images/most_popular1.png',
      'rating': '4.4',
      'type': 'Café',
      'foodtype': 'Italian',
    },
    {
      'name': 'Burger by Bella',
      'image': 'assets/images/most_popular2.png',
      'rating': '4.1',
      'type': 'Burger House',
      'foodtype': 'Western Food',
    },
  ];
  List<Map> recentItems = [
    {
      'name': 'Mulberry Pizza by Josh',
      'image': 'assets/images/recent_item1.png',
      'rating': '4.4',
      'type': 'Café',
      'foodtype': 'Western Food',
      'numofratings': '134',
    },
    {
      'name': 'Barita',
      'image': 'assets/images/recent_item2.png',
      'rating': '4.7',
      'type': 'Café',
      'foodtype': 'Coffee',
      'numofratings': '442',
    },
    {
      'name': 'Pizza Rush Hour',
      'image': 'assets/images/recent_item3.png',
      'rating': '4.9',
      'type': 'Café',
      'foodtype': 'Italian',
      'numofratings': '314',
    },
  ];
  List<Widget> pages = [MenuPage(), OffersPage(), ProfilePage(), MorePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backgroundColor,
      body: index == 5
          ? SingleChildScrollView(
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  SizedBox(height: 55.h),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 21),
                    child: Row(
                      mainAxisAlignment: .spaceBetween,
                      children: [
                        Text(
                          "Hello Fadi",
                          style: TextStyle(
                            color: primaryfontColor,
                            fontSize: 20,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyOrdersPage(),));
                          },
                          icon: SizedBox(
                            height: 20.h,
                            width: 22.76.w,
                            child: Icon(
                              Icons.shopping_cart_outlined,
                              color: primaryfontColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 21.h),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 21),
                    child: Text(
                      "Delivering to",
                      style: TextStyle(color: seconderyfontColor, fontSize: 11),
                    ),
                  ),
                  SizedBox(height: 3.h),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 21),
                    child: Row(
                      mainAxisAlignment: .start,
                      children: [
                        Text(
                          "Current Location",
                          style: TextStyle(
                            color: seconderyfontColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(width: 40.5.w),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.keyboard_arrow_down,
                            color: mainColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 34.h),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 21),
                    child: SearchTextfield(),
                  ),
                  SizedBox(height: 30.h),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 21),
                    child: CategoryList(
                      listTitles: listTitles,
                      listImages: listImages,
                    ),
                  ),
                  SizedBox(height: 50.h),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 21),
                    child: Row(
                      mainAxisAlignment: .spaceBetween,
                      children: [
                        Text(
                          'Popular Restaurants',
                          style: TextStyle(
                            color: primaryfontColor,
                            fontSize: 20,
                            fontWeight: .w500,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "View all",
                            style: TextStyle(color: mainColor, fontSize: 13),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 32.h),
                  PopularRestaurantsList(
                    popularRestaurants: popularRestaurants,
                  ),
                  SizedBox(height: 32.8.h),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 21),
                    child: Row(
                      mainAxisAlignment: .spaceBetween,
                      children: [
                        Text(
                          'Most Popular',
                          style: TextStyle(
                            color: primaryfontColor,
                            fontSize: 20,
                            fontWeight: .w500,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "View all",
                            style: TextStyle(color: mainColor, fontSize: 13),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 32.h),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 21),
                    child: MostPopularList(
                      mostPopular: mostPopular,
                      popularRestaurants: popularRestaurants,
                    ),
                  ),
                  SizedBox(height: 37.h),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 21),
                    child: Row(
                      mainAxisAlignment: .spaceBetween,
                      children: [
                        Text(
                          'Recent Items',
                          style: TextStyle(
                            color: primaryfontColor,
                            fontSize: 20,
                            fontWeight: .w500,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "View all",
                            style: TextStyle(color: mainColor, fontSize: 13),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 26.h),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 21),
                    child: RecentItemsList(recentItems: recentItems),
                  ),
                  SizedBox(height: 150.h),
                ],
              ),
            )
          : pages[index],
      floatingActionButton: SizedBox(
        height: 72.h,
        width: 72.w,
        child: FloatingActionButton(
          shape: CircleBorder(),
          onPressed: () {
            setState(() {
              index = 5;
            });
            print(index);
          },
          backgroundColor: index == 5 ? mainColor : Color(0xFFB6B7B7),
          child: Image.asset(
            'assets/icons/home.png',
            height: 28.98.h,
            width: 30.49.w,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomBottomBar(
        index: index,
        onChanged: (value) {
          setState(() {
            index = value;
            print(index);
          });
        },
      ),
      extendBody: true,
    );
  }
}



// bottomNavigationBar: BottomAppBar(
      //   color: Colors.white,
      //   shape: CircularNotchedRectangle(),
      //   notchMargin: 20,
      //   padding: EdgeInsets.all(8.0),
      //   shadowColor: Colors.black,
      //   child: Row(
      //     mainAxisAlignment: .spaceEvenly,
      //     children: [
      //       InkWell(
      //         onTap: () {
      //           setState(() {
      //             navigationIndex = 0;
      //           });
      //           if (navigationIndex == 0) {
      //             isSelected[1] = true;
      //             isSelected[0] = false;
      //             isSelected[2] = false;
      //             isSelected[3] = false;
      //             isSelected[4] = false;
      //           }
      //         },
      //         child: Column(
      //           mainAxisAlignment: .center,
      //           children: [
      //             Image.asset(
      //               'assets/icons/menu.png',
      //               height: 15,
      //               width: 15,
      //               color: isSelected[1] ? mainColor : null,
      //             ),
      //             Text(
      //               'menu',
      //               style: TextStyle(
      //                 color: isSelected[1] ? mainColor : seconderyfontColor,
      //                 fontSize: 12,
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //       InkWell(
      //         onTap: () {
      //           setState(() {
      //             navigationIndex = 1;
      //           });
      //           if (navigationIndex == 1) {
      //             isSelected[2] = true;
      //             isSelected[1] = false;
      //             isSelected[3] = false;
      //             isSelected[4] = false;
      //             isSelected[0] = false;
      //           }
      //         },
      //         child: Column(
      //           mainAxisAlignment: .center,
      //           children: [
      //             Image.asset(
      //               'assets/icons/offers.png',
      //               height: 15,
      //               width: 15,
      //               color: isSelected[2] ? mainColor : null,
      //             ),
      //             Text(
      //               'offers',
      //               style: TextStyle(
      //                 color: isSelected[2] ? mainColor : seconderyfontColor,
      //                 fontSize: 12,
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //       SizedBox(width: MediaQuery.of(context).size.width / 3.5),
      //       InkWell(
      //         onTap: () {
      //           setState(() {
      //             navigationIndex = 3;
      //           });
      //           if(navigationIndex == 3)
      //           {
      //             isSelected[3] = true;
      //             isSelected[0] = false;
      //             isSelected[2] = false;
      //             isSelected[1] = false;
      //             isSelected[4] = false;
      //           }
      //         },
      //         child: Column(
      //           mainAxisAlignment: .center,
      //           children: [
      //             Image.asset(
      //               'assets/icons/profile.png',
      //               height: 15,
      //               width: 15,
      //               color: isSelected[3] ? mainColor : null,
      //             ),
      //             Text(
      //               'profile',
      //               style: TextStyle(
      //                 color: isSelected[3] ? mainColor : seconderyfontColor,
      //                 fontSize: 12,
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //       InkWell(
      //         onTap: () {
      //           setState(() {
      //             navigationIndex = 3;
      //             if (navigationIndex == 3) {
      //               isSelected[4] = true;
      //               isSelected[0] = false;
      //               isSelected[2] = false;
      //               isSelected[3] = false;
      //               isSelected[1] = false;
      //             }
      //           });
      //         },
      //         child: Column(
      //           mainAxisAlignment: .center,
      //           children: [
      //             Image.asset(
      //               'assets/icons/more.png',
      //               height: 15,
      //               width: 15,
      //               color: isSelected[4] ? mainColor : null,
      //             ),
      //             Text(
      //               'more',
      //               style: TextStyle(
      //                 color: isSelected[4] ? mainColor : seconderyfontColor,
      //                 fontSize: 12,
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //     ],
      //   ),
      // ),