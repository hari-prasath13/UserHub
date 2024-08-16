import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserdeatailScreen extends StatefulWidget {
  const UserdeatailScreen({super.key});

  @override
  State<UserdeatailScreen> createState() => _UserdeatailScreenState();
}

class _UserdeatailScreenState extends State<UserdeatailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0d121d),
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: const Color(0xFF0d121d),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0.w),
        child: Center(
          child: Container(
            width: 500.w,
            height: 310.h,
            padding: EdgeInsets.all(16.0.w),
            decoration: BoxDecoration(
              color: const Color(0xFF1d2739),
              borderRadius: BorderRadius.circular(8.0.r),
            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Name: Leanne Graham',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0.h),
                Text(
                  'Username: Bret',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(height: 8.0.h),
                Text(
                  'Email: Sincere@april.biz',
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
                  '  Street: Kulas Light',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16.sp,
                  ),
                ),
                Text(
                  '  Suite: Apt. 556',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16.sp,
                  ),
                ),
                Text(
                  '  City: Gwenborough',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16.sp,
                  ),
                ),
                Text(
                  '  Zipcode: 92998-3874',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(height: 6.0.h),
                Text(
                  'Phone: 1-770-736-8031 x56442',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(height: 6.0.h),
                Text(
                  'Website: hildegard.org',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(height: 6.0.h),
                Text(
                  'Company: Romaguera-Crona',
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
