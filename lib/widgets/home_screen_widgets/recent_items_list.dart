import 'package:flutter/material.dart';
import 'package:meal_monkey/constants/colors.dart';

// class RecentItemsList extends StatelessWidget {
//   const RecentItemsList({
//     super.key,
//     required this.recentItems,
//   });

//   final List<Map<dynamic, dynamic>> recentItems;

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
//                 height: 95,
//                 child: Row(
//                   children: [
//                     Container(
//                       height: 75,
//                       width: 75,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(12.5),
//                         image: DecorationImage(
//                           image: AssetImage(recentItems[index]['image']),
//                         ),
//                       ),
//                     ),
//                     SizedBox(width: 20),
//                     Column(
//                       crossAxisAlignment: .start,
//                       children: [
//                         SizedBox(height: 10,),
//                         Text(
//                           recentItems[index]['name'],
//                           style: TextStyle(
//                             color: primaryfontColor,
//                             fontSize: 16,
//                             fontWeight: .bold,
//                           ),
//                         ),
//                         Row(
//                           children: [
//                             SizedBox(height: 3),
//                             Text(
//                               recentItems[index]['type'],
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
//                               recentItems[index]['foodtype'],
//                               style: TextStyle(
//                                 color: seconderyfontColor,
//                                 fontSize: 12,
//                               ),
//                             ),
//                           ],
//                         ),
//                         SizedBox(height: 3),
//                         Row(
//                           children: [
//                             Icon(Icons.star, color: mainColor, size: 21),
//                             Text(
//                               recentItems[index]['rating'],
//                               style: TextStyle(
//                                 color: mainColor,
//                                 fontSize: 11,
//                               ),
//                             ),
//                             SizedBox(width: 5),
//                             Text(
//                               '(' +
//                                   recentItems[index]['numofratings'] +
//                                   " "
//                                       "ratings" +
//                                   ')',
//                               style: TextStyle(
//                                 color: seconderyfontColor,
//                                 fontSize: 12,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               );
//             },
//             childCount: recentItems.length,
//           ),
//         ),
//       ],
//     );
//   }
// }
class RecentItemsList extends StatelessWidget {
  const RecentItemsList({
    super.key,
    required this.recentItems,
  });

  final List<Map<dynamic, dynamic>> recentItems;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(0.0),
      itemCount: recentItems.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return SizedBox(
          height: 95,
          child: Row(
            children: [
              Container(
                height: 75,
                width: 75,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.5),
                  image: DecorationImage(
                    image: AssetImage(recentItems[index]['image']),
                  ),
                ),
              ),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: .start,
                children: [
                  SizedBox(height: 10,),
                  Text(
                    recentItems[index]['name'],
                    style: TextStyle(
                      color: primaryfontColor,
                      fontSize: 16,
                      fontWeight: .bold,
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(height: 3),
                      Text(
                        recentItems[index]['type'],
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
                        recentItems[index]['foodtype'],
                        style: TextStyle(
                          color: seconderyfontColor,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 3),
                  Row(
                    children: [
                      Icon(Icons.star, color: mainColor, size: 21),
                      Text(
                        recentItems[index]['rating'],
                        style: TextStyle(
                          color: mainColor,
                          fontSize: 11,
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        '(' +
                            recentItems[index]['numofratings'] +
                            " "
                                "ratings" +
                            ')',
                        style: TextStyle(
                          color: seconderyfontColor,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
