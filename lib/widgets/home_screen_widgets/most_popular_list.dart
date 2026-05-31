import 'package:flutter/material.dart';
import 'package:meal_monkey/constants/colors.dart';

// class MostPopularList extends StatelessWidget {
//   const MostPopularList({
//     super.key,
//     required this.mostPopular,
//     required this.popularRestaurants,
//   });

//   final List<Map<dynamic, dynamic>> mostPopular;
//   final List<Map<dynamic, dynamic>> popularRestaurants;

//   @override
//   Widget build(BuildContext context) {
//     return ConstrainedBox(
//       constraints: BoxConstraints(maxHeight: 210),
//       child: CustomScrollView(
//         shrinkWrap: true,
//         scrollDirection: Axis.horizontal,
//         slivers: [
//           SliverList(
//             delegate: SliverChildBuilderDelegate(
//               (context, index) {
//                 return Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(12.5),
//                     ),
//                     height: 185,
//                     width: 228,
//                     child: Column(
//                       crossAxisAlignment: .start,
//                       children: [
//                         Image.asset(mostPopular[index]['image']),
//                         SizedBox(height: 10),
//                         Text(
//                           popularRestaurants[index]['name'],
//                           style: TextStyle(
//                             color: primaryfontColor,
//                             fontSize: 16,
//                             fontWeight: .bold,
//                           ),
//                         ),
//                         Row(
//                           children: [
//                             Text(
//                               mostPopular[index]['type'],
//                               style: TextStyle(
//                                 color: seconderyfontColor,
//                                 fontSize: 12,
//                               ),
//                             ),
//                             SizedBox(width: 5),
//                             Text(
//                               '.',
//                               style: TextStyle(
//                                 color: mainColor,
//                                 fontSize: 12,
//                               ),
//                             ),
//                             SizedBox(width: 5),
//                             Text(
//                               mostPopular[index]['foodtype'],
//                               style: TextStyle(
//                                 color: seconderyfontColor,
//                                 fontSize: 12,
//                               ),
//                             ),
//                             SizedBox(width: 13.9,),
//                             Icon(Icons.star, color: mainColor, size: 21),
//                             Text(
//                               mostPopular[index]['rating'],
//                               style: TextStyle(
//                                 color: mainColor,
//                                 fontSize: 11,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 );
//               },
//               childCount: mostPopular.length,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

class MostPopularList extends StatelessWidget {
  const MostPopularList({
    super.key,
    required this.mostPopular,
    required this.popularRestaurants,
  });

  final List<Map<dynamic, dynamic>> mostPopular;
  final List<Map<dynamic, dynamic>> popularRestaurants;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: 210),
      child: ListView.builder(
        padding: EdgeInsets.all(0.0),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: mostPopular.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.5),
              ),
              height: 185,
              width: 228,
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Image.asset(mostPopular[index]['image']),
                  SizedBox(height: 10),
                  Text(
                    popularRestaurants[index]['name'],
                    style: TextStyle(
                      color: primaryfontColor,
                      fontSize: 16,
                      fontWeight: .bold,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        mostPopular[index]['type'],
                        style: TextStyle(
                          color: seconderyfontColor,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        '.',
                        style: TextStyle(
                          color: mainColor,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        mostPopular[index]['foodtype'],
                        style: TextStyle(
                          color: seconderyfontColor,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(width: 13.9,),
                      Icon(Icons.star, color: mainColor, size: 21),
                      Text(
                        mostPopular[index]['rating'],
                        style: TextStyle(
                          color: mainColor,
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
