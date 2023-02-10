import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BookInfo extends StatelessWidget {
  const BookInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 65.w,
          child: Text(
            "Harry Potter and the Goblet of fire.",
            maxLines: 2,
            style: TextStyle(
                color: Colors.white.withOpacity(0.95),
                fontSize: 15.sp,
                fontWeight: FontWeight.w400),
          ),
        ),
        SizedBox(height: 2.h),
        Text(
          "Anas Nabih",
          style: TextStyle(
              color: Colors.white.withOpacity(0.7),
              fontSize: 15.sp,
              fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 2.h),
        SizedBox(
          width: 60.w,
          child: Row(
            children: [
              Text(
                "19.99 \$",
                style: TextStyle(
                    color: Colors.white.withOpacity(0.9),
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w700),
              ),
              const Spacer(),
              Icon(Icons.star, size: 2.5.h, color: Colors.amber),
              Text(
                "4.8",
                style: TextStyle(
                    color: Colors.white.withOpacity(0.9),
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(width: 1.5.w),
              Text(
                "(2390)",
                style: TextStyle(
                    color: Colors.white.withOpacity(0.5),
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        )
      ],
    );
  }
}