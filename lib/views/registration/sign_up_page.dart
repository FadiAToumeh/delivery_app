import 'package:flutter/material.dart';
import 'package:meal_monkey/constants/colors.dart';
import 'package:meal_monkey/views/carousel/on_boarding_page.dart';
import 'package:meal_monkey/views/registration/login_page.dart';
import 'package:meal_monkey/widgets/login_text_field.dart';
import 'package:meal_monkey/widgets/orange_button.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 37.8),
                Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w200,
                    color: primaryfontColor,
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  'Add your details to sign up',
                  style: TextStyle(fontSize: 14, color: primaryfontColor),
                ),
                SizedBox(height: 36),
                LoginTextField(contntroller: null, hint: 'Name'),
                SizedBox(height: 24),
                LoginTextField(contntroller: null, hint: 'Email'),
                SizedBox(height: 24),
                LoginTextField(contntroller: null, hint: 'Mobile No'),
                SizedBox(height: 24),
                LoginTextField(contntroller: null, hint: 'Address'),
                SizedBox(height: 24),
                LoginTextField(contntroller: null, hint: 'Password'),
                SizedBox(height: 24),
                LoginTextField(contntroller: null, hint: 'Confirm Password'),
                SizedBox(height: 28),
                OrangeButton(
                  onTap: () => Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => OnBoardingPage()),
                  ),
                  text: "Sign Up",
                ),
                Row(
                  mainAxisAlignment: .center,
                  children: [
                    Text(
                      'Already have an Account?',
                      style: TextStyle(fontSize: 14, color: seconderyfontColor),
                    ),
                    TextButton(
                      onPressed: () => Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      ),
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: mainColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
