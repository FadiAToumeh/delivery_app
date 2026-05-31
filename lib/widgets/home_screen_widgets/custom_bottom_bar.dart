import 'package:flutter/material.dart';
import 'package:meal_monkey/constants/colors.dart';

class CustomBottomBar extends StatefulWidget {
  final int index;
  final ValueChanged<int> onChanged;
  const CustomBottomBar({
    super.key,
    required this.index,
    required this.onChanged,
  });

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(color: Colors.black26 , offset: Offset(0,-5) ,blurRadius: 15),
        ]
      ),
      child: BottomAppBar(
        height: 92,
        shadowColor: Colors.black87,
        shape: CircularNotchedRectangle(),
        color: Colors.white,
        notchMargin: 10,
        child: Row(
          mainAxisAlignment: .spaceAround,
          children: [
            buildBarItem(index: 0, image: 'assets/icons/menu.png' , text: "menu"),
            buildBarItem(index: 1, image: 'assets/icons/offers.png' , text: "offers"),
            SizedBox(width: MediaQuery.of(context).size.width / 4),
            buildBarItem(index: 2, image: 'assets/icons/profile.png' , text: "profile"),
            buildBarItem(index: 3, image: 'assets/icons/more.png' , text: "more"),
          ],
        ),
      ),
    );
  }

  Widget buildBarItem({required int index, required String image , required String text}) {
    final isSelected = index == widget.index;
    return InkWell(
      onTap: () => widget.onChanged(index),
      child: Column(
        mainAxisAlignment: .center,
        children: [
          Image.asset(
            image,
            height: 15,
            width: 20,
            color: isSelected ? mainColor : null,
          ),
          Text(
            text,
            style: TextStyle(
              color: isSelected ? mainColor : seconderyfontColor,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
