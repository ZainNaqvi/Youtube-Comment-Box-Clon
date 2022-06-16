import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

OutlineInputBorder customOutlineDecoration() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(10.r),
    borderSide: BorderSide(
      color: Colors.transparent,
    ),
    gapPadding: 2,
  );
}
