import 'package:flutter/material.dart';
import 'package:meal_monkey/views/registration/login_page.dart';
import 'package:meal_monkey/views/registration/sign_up_page.dart';
import 'package:meal_monkey/widgets/create_account_button.dart';
import 'package:meal_monkey/widgets/orange_button.dart';
import '../../constants/colors.dart';
import 'package:inner_half_circle_container/inner_half_circle_container.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        alignment: .topCenter,
        children: [
          Column(
            children: [
              InnerHalfCircleContainer(
                notches: [
                  HalfCircleNotch(
                    edge: NotchEdge.bottom,
                    center: MediaQuery.of(context).size.width / 2,
                    radius: 100,
                  ),
                ],
                height: 382,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/objects.png'),
                    fit: BoxFit.cover,
                  ),
                  color: mainColor,
                ),
              ),
            ],
          ),
          Positioned(
            top: 314,
            child: Image.asset('assets/images/monkeyface.png' ,width: 103.11 ,height: 105.1,),
          ),
          Positioned(
            top: 433,
            child: Column(
              children: [
                SizedBox(height: 20),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Meal',
                        style: TextStyle(
                          color: mainColor,
                          fontSize: 43,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: 'Monkey',
                        style: TextStyle(
                          color: primaryfontColor,
                          fontSize: 43,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Text('Food Delivery', style: TextStyle(fontSize: 10)),
                SizedBox(height: 44),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'Discover the best foods from over 1,000 \n restaurants and fast delivery to your doorstep',
                    textAlign: .center,
                    style: TextStyle(fontSize: 13),
                  ),
                ),
                SizedBox(height: 20),
                OrangeButton(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  ),
                  text: 'Login',
                ),
                SizedBox(height: 20),
                CreateAccountButton(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUpPage(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/* Column(
        children: [
          Stack(
            alignment: .center,
            children: [
              Column(
                children: [
                  InnerHalfCircleContainer(
                    notches: [
                      HalfCircleNotch(
                        edge: NotchEdge.bottom,
                        center: MediaQuery.of(context).size.width / 2,
                        radius: 100,
                      ),
                    ],
                    height: 382,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/objects.png'),
                        fit: BoxFit.contain,
                      ),
                      color: mainColor,
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 295,
                left: 0,
                right: 0,
                bottom: 0,
                child: Image.asset('assets/images/monkeyface.png'),
              ),
            ],
          ),
          SizedBox(height: 20),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Meal',
                  style: TextStyle(
                    color: mainColor,
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: 'Monkey',
                  style: TextStyle(
                    color: primaryfontColor,
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Text('Food Delivery'),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text('Discover the best foods from over 1,000 restaurants and fast delivery to your doorstep' , textAlign: .center,),
          ),
          SizedBox(height: 20,),
          LoginButton(onTap: () => print('works'),),
          SizedBox(height: 20,),
          CreateAccountButton(onTap: () => print("Works"),),
        ],
      ), */
