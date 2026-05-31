import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/constants/colors.dart';


// class PopularRestaurantsList extends StatelessWidget {
//   const PopularRestaurantsList({
//     super.key,
//     required this.popularRestaurants,
//   });

//   final List<Map<dynamic, dynamic>> popularRestaurants;

//   @override
//   Widget build(BuildContext context) {
//     return CustomScrollView(
//       physics: const NeverScrollableScrollPhysics(),
//       shrinkWrap: true,
//       slivers: [
//         SliverList(
//           delegate: SliverChildBuilderDelegate(
//             (context, index) {
//               return SizedBox(
//                 width: double.infinity,
//                 height: 282.19,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Image.asset(popularRestaurants[index]['image']),
//                     const SizedBox(height: 7),
//                     Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 21),
//                       child: Text(
//                         popularRestaurants[index]['name'],
//                         style: TextStyle(
//                           color: primaryfontColor,
//                           fontSize: 16,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 5),
//                     Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 21),
//                       child: Row(
//                         children: [
//                           Icon(Icons.star, color: mainColor, size: 21),
//                           Text(
//                             popularRestaurants[index]['rating'],
//                             style: TextStyle(color: mainColor, fontSize: 11),
//                           ),
//                           const SizedBox(width: 5),
//                           Text(
//                             '(' +
//                                 popularRestaurants[index]['numofratings'] +
//                                 " ratings" +
//                                 ')',
//                             style: TextStyle(
//                               color: seconderyfontColor,
//                               fontSize: 12,
//                             ),
//                           ),
//                           const SizedBox(width: 5),
//                           Text(
//                             popularRestaurants[index]['type'],
//                             style: TextStyle(
//                               color: seconderyfontColor,
//                               fontSize: 12,
//                             ),
//                           ),
//                           const SizedBox(width: 5),
//                           Text(
//                             '.',
//                             style: TextStyle(color: mainColor, fontSize: 12),
//                           ),
//                           const SizedBox(width: 5),
//                           Text(
//                             popularRestaurants[index]['foodtype'],
//                             style: TextStyle(
//                               color: seconderyfontColor,
//                               fontSize: 12,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     const SizedBox(height: 31.8),
//                   ],
//                 ),
//               );
//             },
//             childCount: popularRestaurants.length,
//           ),
//         ),
//       ],
//     );
//   }
// }

class PopularRestaurantsList extends StatelessWidget {
  const PopularRestaurantsList({
    super.key,
    required this.popularRestaurants,
  });

  final List<Map<dynamic, dynamic>> popularRestaurants;
  

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    final isLandscape = orientation == Orientation.landscape;
    return ListView.builder(
      padding: EdgeInsets.all(0.0),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: popularRestaurants.length,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return SizedBox(
          width: double.infinity,
          height: isLandscape ? 1100.h :282.19.h,
          child: Column(
            crossAxisAlignment: .start,
            children: [
              Image.asset(popularRestaurants[index]['image']),
              SizedBox(height: 7),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 21),
                child: Text(
                  popularRestaurants[index]['name'],
                  style: TextStyle(
                    color: primaryfontColor,
                    fontSize: 16,
                    fontWeight: .bold,
                  ),
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 21),
                child: Row(
                  children: [
                    Icon(Icons.star, color: mainColor, size: 21),
                    Text(
                      popularRestaurants[index]['rating'],
                      style: TextStyle(color: mainColor, fontSize: 11),
                    ),
                    SizedBox(width: 5),
                    Text(
                      '(' +
                          popularRestaurants[index]['numofratings'] +
                          " "
                              "ratings" +
                          ')',
                      style: TextStyle(
                        color: seconderyfontColor,
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(width: 5),
                    Text(
                      popularRestaurants[index]['type'],
                      style: TextStyle(
                        color: seconderyfontColor,
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(width: 5),
                    Text(
                      '.',
                      style: TextStyle(color: mainColor, fontSize: 12),
                    ),
                    SizedBox(width: 5),
                    Text(
                      popularRestaurants[index]['foodtype'],
                      style: TextStyle(
                        color: seconderyfontColor,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 31.8),
            ],
          ),
        );
      },
    );
  }
}
