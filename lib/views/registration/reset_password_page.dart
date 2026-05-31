import 'package:flutter/material.dart';
import 'package:meal_monkey/constants/colors.dart';
import 'package:meal_monkey/views/registration/otp_number_page.dart';
import 'package:meal_monkey/widgets/login_text_field.dart';
import 'package:meal_monkey/widgets/orange_button.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 37.8),
              Text(
                "Reset Password",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w200,
                  color: primaryfontColor,
                ),
              ),
              SizedBox(height: 12),
              Text(
                "Please enter your email to receive a \n link to  create a new password via email",
                style: TextStyle(fontSize: 14, color: primaryfontColor),
                textAlign: .center,
              ),
              SizedBox(height: 60),
              LoginTextField(hint: 'Email'),
              SizedBox(height: 34),
              OrangeButton(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => OtpNumberPage()),
                ),
                text: 'Send',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
