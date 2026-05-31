import 'package:flutter/material.dart';
import 'package:meal_monkey/constants/colors.dart';
import 'package:meal_monkey/views/registration/new_password_page.dart';
import 'package:meal_monkey/widgets/digits_input.dart';
import 'package:meal_monkey/widgets/orange_button.dart';

class OtpNumberPage extends StatelessWidget {
  const OtpNumberPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 37.8),
              Text(
                "We have sent an OTP to \n your Mobile",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w200,
                  color: primaryfontColor,
                ),
                textAlign: .center,
              ),
              SizedBox(height: 14),
              Text(
                "Please check your mobile number 071*****12 \n continue to reset your password",
                style: TextStyle(fontSize: 14, color: primaryfontColor),
                textAlign: .center,
              ),
              SizedBox(height: 54),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 34),
                child: Row(
                  mainAxisAlignment: .spaceAround,
                  children: [
                    DigitsInput(),
                    DigitsInput(),
                    DigitsInput(),
                    DigitsInput(),
                  ],
                ),
              ),
              SizedBox(height: 36),
              OrangeButton(
                onTap: () => Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => NewPasswordPage()),
                ),
                text: "Next",
              ),
              SizedBox(height: 32),
              Row(
                mainAxisAlignment: .center,
                children: [
                  Text(
                    "Didn't Receive?",
                    style: TextStyle(color: seconderyfontColor, fontSize: 14),
                  ),
                  TextButton(
                    onPressed: () => print('works'),
                    child: Text(
                      'Click Here',
                      style: TextStyle(
                        color: mainColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
