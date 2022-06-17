import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ElevatedButton defaultButton({
  required String text,
  required Color color,
  required VoidCallback press,
}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      textStyle: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 16.sp,
      ),
      minimumSize: Size(293.w, 54.h),
      primary: color,
    ),
    onPressed: press,
    child: Text(text),
  );
}
