import 'package:flutter/material.dart';
import 'package:meal_monkey/constants/colors.dart';

class DigitsInput extends StatelessWidget {
  final TextEditingController? controller;
  const DigitsInput({super.key, this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: 56,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.5),
        color: Color(0XFFF2F2F2),
      ),
      child: TextFormField(
        textAlign: .center,
        decoration: InputDecoration(
          border: .none,
          hint: Text('*' , style: TextStyle(color: seconderyfontColor , fontSize: 30),textAlign: .center,),
        ),
      ),
    );
  }
}
