import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget circleBoxLinks({
  required String imageURL,
  required VoidCallback press,
}) {
  return GestureDetector(
    onTap: press,
    child: Container(
      padding: EdgeInsets.all(11),
      width: 44.w,
      height: 44.h,
      decoration: BoxDecoration(
        color: Color(0xFFFAFAFA),
        shape: BoxShape.circle,
      ),
      child: SvgPicture.asset(
        imageURL,
        key: UniqueKey(),
      ),
    ),
  );
}
