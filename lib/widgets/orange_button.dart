import 'package:flutter/material.dart';
import 'package:meal_monkey/constants/colors.dart';

class OrangeButton extends StatelessWidget {
  final String text;
  final Function() onTap;
  const OrangeButton({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: mainColor,
        fixedSize: Size(307, 56),
        shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(25)),
      ),
      onPressed: onTap,
      child: Center(
        child: Text(
          text,
          style: TextStyle(color: backgroundColor, fontSize: 16),
        ),
      ),
    );
  }
}

// InkWell(
    //   onTap: onTap,
    //   child: Container(
    //     height: 56,
    //     width: 307,
    //     decoration: BoxDecoration(
    //       color: mainColor,
    //       borderRadius: BorderRadius.circular(25),
    //     ),
    //     child: Center(child: Text(text , style: TextStyle(color: backgroundColor , fontSize: 16),)),
    //   ),
    // );