import 'package:farmer/core/utils/app_color.dart';
import 'package:farmer/feature/auth/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Farmer extends StatelessWidget {
  const Farmer({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(414, 736),
      builder: (context, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
              textButtonTheme: TextButtonThemeData(
                  style: ButtonStyle(
                foregroundColor:
                    MaterialStateProperty.all(AppColors.primaryColor),
              ))),
          home: LoginScreen(),
        );
      },
    );
  }
}
