import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:user_details/Model/User_model.dart';
import 'package:user_details/Common/Color_Constant.dart';

class UserdeatailScreen extends StatelessWidget {
  final User user;

  const UserdeatailScreen({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.mainblue,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: ColorConstant.mainblue,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0.w),
        child: Center(
          child: Container(
            width: 500.w,
            height: 340.h,
            padding: EdgeInsets.all(16.0.w),
            decoration: BoxDecoration(
              color: ColorConstant.lightblue,
              borderRadius: BorderRadius.circular(8.0.r),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Name: ${user.name}',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0.h),
                Text(
                  'Username: ${user.username}',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(height: 8.0.h),
                Text(
                  'Email: ${user.email}',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(height: 8.0.h),
                Text(
                  'Address:',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '  Street: ${user.street}',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16.sp,
                  ),
                ),
                Text(
                  '  Suite: ${user.suite}',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16.sp,
                  ),
                ),
                Text(
                  '  City: ${user.city}',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16.sp,
                  ),
                ),
                Text(
                  '  Zipcode: ${user.zipcode}',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(height: 6.0.h),
                Text(
                  'Phone: ${user.phone}',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(height: 6.0.h),
                Text(
                  'Website: ${user.website}',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(height: 6.0.h),
                Text(
                  'Company: ${user.companyName}',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16.sp,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}