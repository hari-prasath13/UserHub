import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:user_details/Screens/Userdeatail_Screen.dart';

class UserList extends StatefulWidget {
  const UserList({super.key});

  @override
  State<UserList> createState() => _UserListState();
}

class _UserListState extends State<UserList> {

  final List<Map<String, String>> users = [
    {'name': 'Alice Smith', 'email': 'alice.smith@example.com'},
    {'name': 'Bob Johnson', 'email': 'bob.johnson@example.com'},
    {'name': 'Charlie Brown', 'email': 'charlie.brown@example.com'},
    {'name': 'David Wilson', 'email': 'david.wilson@example.com'},
    {'name': 'Eva Green', 'email': 'eva.green@example.com'},
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 9.h),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: const TextField(
              decoration: InputDecoration(
                labelText: 'Search',
                suffixIcon: Icon(Icons.search,size: 30,),
              ),
            ),
          ),
          SizedBox(height: 10.h,),

          Expanded(
            child: ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                final user = users[index];
                return Padding(
                  padding: EdgeInsets.all(8.0.w),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => UserdeatailScreen(),
                        ),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(16.0.w),
                      decoration: BoxDecoration(
                        color: Color(0xFF1d2739),
                        borderRadius: BorderRadius.circular(8.0.r),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Name: ${user['name']}',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Email: ${user['email']}',
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
