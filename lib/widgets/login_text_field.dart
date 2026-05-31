import 'package:flutter/material.dart';
import 'package:meal_monkey/constants/colors.dart';

class LoginTextField extends StatelessWidget {
  final String hint;
  final TextEditingController? contntroller;
  const LoginTextField({
    super.key,
    this.contntroller,
    required this.hint,
  });

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
              border: InputBorder.none,
              hint: Text(
                hint,
                style: TextStyle(
                  color: primaryfontColor,
                  fontWeight: FontWeight.w100,
                ),
              ),
            ),
            controller: contntroller,
          ),
        ),
      ),
    );
  }
}
