import 'package:farmer/core/utils/app_images.dart';
import 'package:farmer/core/widgets/main_button.dart';
import 'package:farmer/feature/auth/screens/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(AppImages.authLogo),
            Text(
              "Log In",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 32.sp),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: Text(
                "please sign in to continue",
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFFB0ABAB)),
              ),
            ),
            SizedBox(height: 10.h),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.mail),
                hintText: "Email",
              ),
            ),
            SizedBox(height: 10.h),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.visibility_off),
                hintText: "password",
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: const Text("Forget Password"),
              ),
            ),
            SizedBox(height: 10.h),
            const MinButton(text: "Login"),
            SizedBox(height: 10.h),
            Row(
              children: [
                Expanded(child: Container(height: 2, color: Colors.black45)),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: const Text("or sign in with"),
                ),
                Expanded(child: Container(height: 2, color: Colors.black45)),
              ],
            ),
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(AppImages.faceBook),
                Image.asset(AppImages.google),
              ],
            ),
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don’t have an account?"),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RegisterScreen(),
                      ),
                    );
                  },
                  child: const Text("sign up"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
