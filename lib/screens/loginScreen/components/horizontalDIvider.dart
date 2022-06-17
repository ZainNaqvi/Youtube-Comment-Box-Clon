import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Row horizontalDivider() {
  return Row(
    children: [
      Expanded(
        child: Divider(
          color: Colors.grey,
        ),
      ),
      SizedBox(
        width: 16.w,
      ),
      Text(
        "Or Continue with",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      SizedBox(
        width: 16.w,
      ),
      Expanded(
        child: Divider(
          color: Colors.grey,
        ),
      ),
    ],
  );
}
