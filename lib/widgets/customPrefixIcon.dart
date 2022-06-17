import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

IntrinsicHeight customPrefixIcon({
  required IconData iconData,
  required Color iconColor,
}) {
  return IntrinsicHeight(
    key: UniqueKey(),
    child: Padding(
      padding: EdgeInsets.only(
        left: 10,
      ),
      child: Container(
        constraints: BoxConstraints(
          maxWidth: 45.w,
        ),
        width: 45.h,
        child: Row(
          children: [
            Icon(
              iconData,
              size: 20.h,
              color: iconColor,
            ),
            SizedBox(
              width: 5,
            ),
            Container(
              height: 17.h,
              child: VerticalDivider(
                color: Colors.black.withOpacity(0.1),
                thickness: 2,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
