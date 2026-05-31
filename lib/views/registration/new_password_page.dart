import 'package:flutter/material.dart';
import 'package:meal_monkey/constants/colors.dart';
import 'package:meal_monkey/widgets/login_text_field.dart';
import 'package:meal_monkey/widgets/orange_button.dart';

class NewPasswordPage extends StatelessWidget {
  const NewPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: .center,
              children: [
                SizedBox(height: 37.8),
                Text(
                  'New Password',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w100),
                ),
                SizedBox(height: 12),
                Text(
                  'Please enter your email to receive a \n link to  create a new password via email',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w100),
                ),
                SizedBox(height: 39,),
                LoginTextField(hint: 'New Password'),
                SizedBox(height: 28,),
                LoginTextField(hint: 'Confirm Password'),
                SizedBox(height: 28,),
                OrangeButton(onTap: (){}, text: "Next"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
