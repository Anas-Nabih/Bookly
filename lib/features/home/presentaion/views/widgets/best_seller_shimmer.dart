import 'package:bookly/res/colors.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';

class BestSellerShimmer extends StatelessWidget {
  const BestSellerShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 10,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => Shimmer.fromColors(
          baseColor: MColors.kBaseColor,
          highlightColor: MColors.kHighlightColor,
          child: Padding(
            padding: EdgeInsets.only(bottom: 2.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 20.h,
                  width: 15.h,
                  margin: EdgeInsets.only(left: 2.w),
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(.5),
                      borderRadius: BorderRadius.circular(8)),
                ),
                SizedBox(width: 4.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 2.h),
                    Container(
                      height: 1.3.h,
                      width: 27.h,
                      margin: EdgeInsets.only(left: 2.w),
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(.5),
                          borderRadius: BorderRadius.circular(4)),
                    ),
                    SizedBox(height: 1.h),
                    Container(
                      height: 1.3.h,
                      width: 25.h,
                      margin: EdgeInsets.only(left: 2.w),
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(.5),
                          borderRadius: BorderRadius.circular(4)),
                    ),
                    SizedBox(height: 1.h),
                    Container(
                      height: 1.3.h,
                      width: 15.h,
                      margin: EdgeInsets.only(left: 2.w),
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(.5),
                          borderRadius: BorderRadius.circular(4)),
                    ),
                    Container(
                      height: 1.3.h,
                      width: 20.h,
                      margin: EdgeInsets.only(top: 4.h, bottom: 2.h, left: 2.w),
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(.5),
                          borderRadius: BorderRadius.circular(4)),
                    ),

                    SizedBox(
                      width: 65.w,
                      height:7.h,
                      child: Row(
                        children: [
                          Container(
                            height: 1.3.h,
                            width: 4.h,
                            margin:
                                EdgeInsets.only(left: 2.w),
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(.5),
                                borderRadius: BorderRadius.circular(4)),
                          ),
                          const Spacer(),
                          Container(
                            height: 1.3.h,
                            width: 4.h,
                            margin:
                                EdgeInsets.only(left: 2.w),
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(.5),
                                borderRadius: BorderRadius.circular(4)),
                          ),
                          Container(
                            height: 1.3.h,
                            width: 6.h,
                            margin:
                                EdgeInsets.only( left: 2.w),
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(.5),
                                borderRadius: BorderRadius.circular(4)),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}
