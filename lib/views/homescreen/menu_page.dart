import 'package:flutter/material.dart';
import 'package:meal_monkey/constants/colors.dart';
import 'package:meal_monkey/views/homescreen/desserts_page.dart';
import 'package:meal_monkey/widgets/menu_screen_widgets/menu_items.dart';
import 'package:meal_monkey/widgets/search_textfield.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: backgroundColor,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: .start,
              children: [
                SizedBox(height: 30.8),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 21),
                  child: Text(
                    'Menu',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w100),
                  ),
                ),
                SizedBox(height: 24),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 21),
                  child: SearchTextfield(),
                ),
                SizedBox(height: 30),
                Container(
                  width: double.infinity,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      OrangeContainer(),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 21),
                        child: Column(
                          children: [
                            Column(
                              crossAxisAlignment: .center,
                              children: [
                                SizedBox(height: 20),
                                MenuItem(
                                  title: "Food",
                                  subtitle: "120 items",
                                  imagePath: "assets/menu/food.png",
                                  imageHeight: 70,
                                  imageWidth: 70,
                                ),
                                MenuItem(
                                  title: "Beverages",
                                  subtitle: "220 items",
                                  imagePath: "assets/menu/beverages.png",
                                  imageHeight: 70,
                                  imageWidth: 70,
                                ),
                                MenuItem(
                                  title: "Desserts",
                                  subtitle: "150 items",
                                  imagePath: "assets/menu/desserts.png",
                                  imageHeight: 74.72,
                                  imageWidth: 72.97,
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => DessertsPage(),));
                                  },
                                ),
                                MenuItem(
                                  title: "Promotions",
                                  subtitle: "25 items",
                                  imagePath: "assets/menu/promotions.png",
                                  imageHeight: 80,
                                  imageWidth: 80,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// OrangeContainer(),
// Padding(
//   padding: const EdgeInsets.symmetric(horizontal: 21),
//   child: Column(
//     children: [
//       Column(
//         crossAxisAlignment: .center,
//         children: [
//           SizedBox(height: 20),
//           MenuItem(
//             title: "Food",
//             subtitle: "120 items",
//             imagePath: "assets/images/burger.png",
//             shape: CircleBorder(),
//           ),
//           MenuItem(
//             title: "Beverages",
//             subtitle: "220 items",
//             imagePath: "assets/images/burger.png",
//             shape: RoundedRectangleBorder(
//               side: BorderSide.none,
//               borderRadius: BorderRadiusGeometry.all(
//                 Radius.elliptical(25, 25),
//               ),
//             ),
//           ),
//           MenuItem(
//             title: "Desserts",
//             subtitle: "150 items",
//             imagePath: "assets/images/burger.png",
//             shape: StarBorder.polygon(
//               squash: 0.5,
//               sides: 3,
//               pointRounding: 0.7,
//               rotation: 90,
//             ),
//           ),
//           MenuItem(
//             title: "Promotions",
//             subtitle: "25 items",
//             imagePath: "assets/images/burger.png",
//             shape: StarBorder.polygon(
//               squash: 0.5,
//               sides: 4,
//               pointRounding: 0.7,
//               rotation: 90,
//             ),
//           ),
//         ],
//       ),
//     ],
//   ),
// ),

class OrangeContainer extends StatelessWidget {
  const OrangeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(38),
          bottomRight: Radius.circular(38),
        ),
        color: mainColor,
      ),
      height: 485,
      width: 97,
    );
  }
}


// class MenuItem extends StatelessWidget {
//   const MenuItem({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//       height: 87,
//       child: Stack(
//         clipBehavior: Clip.none, // Allow overflow
//         children: [
//           Icon(Icons.abc),
//           // Main container
//           Container(
//             height: 87,
//             width: double.infinity,
//             decoration: BoxDecoration(
//               boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 12)],
//               color: Colors.white,
//               borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(30),
//                   bottomLeft: Radius.circular(30),
//                   bottomRight: Radius.circular(10),
//                   topRight: Radius.circular(10),
//             )),
//             child: Padding(
//               padding: const EdgeInsets.only(left: 56.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     "title",
//                     style: TextStyle(
//                       color: primaryfontColor,
//                       fontSize: 22,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   Text(
//                     'subtitle',
//                     style: TextStyle(
//                       color: seconderyfontColor,
//                       fontSize: 11,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           // Arrow button overflowing to the right
//           Positioned(
//             right: -16, // Negative value to overflow outside
//             top: 0,
//             bottom: 0,
//             child: Center(
//               child: Container(
//                 height: 33,
//                 width: 33,
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   shape: BoxShape.circle,
//                   boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 5)],
//                 ),
//                 child: Icon(Icons.arrow_forward_ios, 
//                   color: mainColor, 
//                   size: 16,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class MenuItem extends StatelessWidget {
//   const MenuItem({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       alignment: .center,
//       children: [
//         Row(
//           children: [
//             Container(
//               height: 87,
//               width: 318,
//               decoration: BoxDecoration(
//                 boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 12)],
//                 color: Colors.white,
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(30),
//                   bottomLeft: Radius.circular(30),
//                   bottomRight: Radius.circular(10),
//                   topRight: Radius.circular(10),
//                 ),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 56.0),
//                 child: Column(
//                   crossAxisAlignment: .start,
//                   mainAxisAlignment: .center,
//                   children: [
//                     Text(
//                       "title",
//                       style: TextStyle(
//                         color: primaryfontColor,
//                         fontSize: 22,
//                         fontWeight: .bold,
//                       ),
//                     ),
//                     Text(
//                       'subtitle',
//                       style: TextStyle(color: seconderyfontColor, fontSize: 11),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Container(
//               height: 87,
//               width: 330,
//               decoration: BoxDecoration(
//                 boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 12)],
//                 color: Colors.white,
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(30),
//                   bottomLeft: Radius.circular(30),
//                   bottomRight: Radius.circular(10),
//                   topRight: Radius.circular(10),
//                 ),
//               ),
//               child: Column(
//                 mainAxisAlignment: .center,
//                 children: [
//                   Row(
//                     children: [
//                       SizedBox(width: 56),
//                       Column(
//                         mainAxisAlignment: .center,
//                         children: [
//                           Text(
//                             "title",
//                             style: TextStyle(
//                               color: primaryfontColor,
//                               fontSize: 22,
//                               fontWeight: .bold,
//                             ),
//                           ),
//                           Text(
//                             'subtitle',
//                             style: TextStyle(
//                               color: seconderyfontColor,
//                               fontSize: 11,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             Positioned(
//               right: 300,
//               child: Container(
//                 height: 33,
//                 width: 33,
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   shape: .circle,
//                   boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 5)],
//                 ),
//                 child: Icon(Icons.arrow_forward_ios, color: mainColor),
//               ),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }
