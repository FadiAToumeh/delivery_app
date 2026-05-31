import 'package:flutter/material.dart';
import 'package:meal_monkey/constants/colors.dart';

class SocialMediaLoginButton extends StatelessWidget {
  final Function() onTap;
  final Color color;
  final String text;
  final String imagepath;

  const SocialMediaLoginButton({
    super.key,
    required this.color,
    required this.onTap,
    required this.text,
    required this.imagepath,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        fixedSize: Size(307, 56),
        shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(25)),
      ),
      onPressed: onTap,
      child: Center(
        child: Center(
          child: Row(
            mainAxisAlignment: .center,
            children: [
              Image.asset(imagepath),
              SizedBox(width: 32.4,),
              Text(
                text,
                style: TextStyle(color: backgroundColor, fontSize: 16),
              ),
            ],
          ),
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
    //       color: color,
    //       borderRadius: BorderRadius.circular(25),
    //     ),
    //     child: Center(
    //       child: Row(
    //         mainAxisAlignment: .center,
    //         children: [
    //           Image.asset(imagepath),
    //           SizedBox(width: 32.4,),
    //           Text(
    //             text,
    //             style: TextStyle(color: backgroundColor, fontSize: 16),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );