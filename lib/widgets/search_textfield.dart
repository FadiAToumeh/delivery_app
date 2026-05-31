import 'package:flutter/material.dart';
import 'package:meal_monkey/constants/colors.dart';

class SearchTextfield extends StatelessWidget {
  const SearchTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: 307,
      decoration: BoxDecoration(
        color: Color(0xffF2F2F2),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: TextField(
            cursorColor: mainColor,
            decoration: InputDecoration(
              icon: Icon(Icons.search , color: primaryfontColor,),
              border: InputBorder.none,
              hint: Text(
                'Search',
                style: TextStyle(
                  color: primaryfontColor,
                  fontWeight: FontWeight.w200,
                ),
              ),
            ),
            controller: null,
          ),
        ),
      ),
    );
  }
}