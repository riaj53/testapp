import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BooksCard extends StatelessWidget {
  final String image;
  final void Function() onTap;
  final String title;
  const BooksCard(
      {Key? key, required this.image, required this.onTap, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Container(
          clipBehavior: Clip.hardEdge,
          padding: EdgeInsets.only(top: 120.h),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
              image: DecorationImage(image: AssetImage(image))),
          child: Container(
            color: Colors.black87,
            alignment: Alignment.center,
            child: Text(
              title,
              style: TextStyle(
                color: Colors.amber,
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          
        ),
        );
  }
}
