import 'package:flutter/material.dart';
import 'package:meal_monkey/constants/colors.dart';


// class CategoryList extends StatelessWidget {
//   const CategoryList({
//     super.key,
//     required this.listTitles,
//     required this.listImages,
//   });

//   final List<String> listTitles;
//   final List<String> listImages;

//   @override
//   Widget build(BuildContext context) {
//     return ConstrainedBox(
//       constraints: BoxConstraints(
//         maxHeight: 113,
//         maxWidth: double.infinity,
//       ),
//       child: CustomScrollView(
//         scrollDirection: Axis.horizontal,
//         slivers: [
//           SliverList(
//             delegate: SliverChildBuilderDelegate(
//               (context, index) {
//                 return Column(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 6),
//                       child: SizedBox(
//                         height: 88,
//                         width: 88,
//                         child: Image.asset(listImages[index]),
//                       ),
//                     ),
//                     SizedBox(height: 5),
//                     Text(
//                       listTitles[index],
//                       style: TextStyle(
//                         fontSize: 14,
//                         color: primaryfontColor,
//                         fontWeight: .bold,
//                       ),
//                     ),
//                   ],
//                 );
//               },
//               childCount: listTitles.length,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

class CategoryList extends StatelessWidget {
  const CategoryList({
    super.key,
    required this.listTitles,
    required this.listImages,
  });

  final List<String> listTitles;
  final List<String> listImages;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: 113,
        maxWidth: double.infinity,
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: listTitles.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6),
                child: SizedBox(
                  height: 88,
                  width: 88,
                  child: Image.asset(listImages[index]),
                ),
              ),
              SizedBox(height: 5),
              Text(
                listTitles[index],
                style: TextStyle(
                  fontSize: 14,
                  color: primaryfontColor,
                  fontWeight: .bold,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
