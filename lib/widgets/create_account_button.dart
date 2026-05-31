import 'package:flutter/material.dart';
import 'package:meal_monkey/constants/colors.dart';

class CreateAccountButton extends StatelessWidget {
  final Function() onTap;
  const CreateAccountButton({super.key , required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        fixedSize: Size(307, 56),
        shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(25),side: BorderSide(color: mainColor)),
      ),
      onPressed: onTap,
      child: Center(
        child: Text(
          'Create an account',
          style: TextStyle(color: mainColor, fontSize: 16),
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
    //       color: backgroundColor,
    //       borderRadius: BorderRadius.circular(25),
    //       border: Border.all(color: mainColor)
    //     ),
    //     child: Center(child: Text('Create an account' , style: TextStyle(color: mainColor , fontSize: 16),)),
    //   ),
    // );