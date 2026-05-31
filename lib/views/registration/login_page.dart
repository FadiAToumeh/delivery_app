import 'package:flutter/material.dart';
import 'package:meal_monkey/constants/colors.dart';
import 'package:meal_monkey/views/homescreen/home_screen.dart';
import 'package:meal_monkey/views/registration/reset_password_page.dart';
import 'package:meal_monkey/views/registration/sign_up_page.dart';
import 'package:meal_monkey/widgets/orange_button.dart';
import 'package:meal_monkey/widgets/login_text_field.dart';
import 'package:meal_monkey/widgets/social_media_login_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

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
                  'Login',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w100),
                ),
                SizedBox(height: 12),
                Text(
                  'Add your details to login',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w100),
                ),
                SizedBox(height: 36),
                LoginTextField(
                  contntroller: emailController,
                  hint: 'Your Email',
                ),
                SizedBox(height: 28),
                LoginTextField(
                  contntroller: passwordController,
                  hint: 'Password',
                ),
                SizedBox(height: 28),
                OrangeButton(onTap: () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomeScreen(),)), text: 'Login'),
                SizedBox(height: 24),
                TextButton(
                  onPressed: () => print('works 2'),
                  child: TextButton(
                    onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ResetPasswordPage(),)),
                    child: Text(
                      'Forgot your password?',
                      style: TextStyle(
                        color: seconderyfontColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 35),
                Text(
                  'or Login With',
                  style: TextStyle(
                    color: seconderyfontColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w200,
                  ),
                ),
                SizedBox(height: 27),
                SocialMediaLoginButton(
                  color: Color(0xff367FC0),
                  onTap: () {
                    print('Facebook');
                  },
                  text: 'Login with Facebook',
                  imagepath: 'assets/images/facebook-letter-logo.png',
                ),
                SizedBox(height: 28),
                SocialMediaLoginButton(
                  color: Color(0xffDD4B39),
                  onTap: () {
                    print('Google');
                  },
                  text: 'Login with Google',
                  imagepath: 'assets/images/google-plus-logo.png',
                ),
                SizedBox(height: 24),
                Row(
                  mainAxisAlignment: .center,
                  children: [
                    Text(
                      "Don't have an Account?",
                      style: TextStyle(color: seconderyfontColor, fontSize: 14),
                    ),
                    TextButton(
                      onPressed: () => Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => SignUpPage()),
                      ),
                      child: Text(
                        'Sign Up',
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
      ),
    );
  }
}
