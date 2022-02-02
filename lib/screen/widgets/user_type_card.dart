import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserTypeCard extends StatelessWidget {
  final void Function() ontap;
  final IconData icon;
  final Color color;
  final String title;
  const UserTypeCard(
      {Key? key,
      required this.ontap,
      required this.icon,
      required this.color,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.all(20.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              icon,
              color: Colors.white,
              size: 80.w,
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 30.sp),
            )
          ],
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: color),
      ),
    );
  }
}
