import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/views/splash_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      
      designSize: Size(375, 812),
      builder: (_, child) {
        return MaterialApp(
          
          debugShowCheckedModeBanner: false,
          title: 'Meal Monkey',
          theme: ThemeData(),
          home: SplashScreen(),
        );
      },
    );
  }
}
