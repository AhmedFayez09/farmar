import 'package:farmer/core/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MinButton extends StatelessWidget {
  const MinButton({super.key, this.onPress, required this.text});

  final VoidCallback? onPress;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(AppColors.primaryColor),
        foregroundColor: MaterialStateProperty.all(Colors.white),
        padding:
            MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 10.h)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700),
      ),
    );
  }
}
