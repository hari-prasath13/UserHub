import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:user_details/Common/User_list.dart';
import 'package:user_details/Screens/New_user.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0d121d),
      appBar: AppBar(
        elevation: 5.0,
        shadowColor: Colors.blue.withOpacity(0.2),
        backgroundColor: const Color(0xFF0d121d),
        title: const Center(
          child: Text(
            "USER HUB",
            style: TextStyle(color: Colors.white),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NewUser(),
                ),
              );
            },
            icon: Icon(
              Icons.add_card,
              color: Colors.white,
              size: 23.sp,
            ),
            // style: ButtonStyle(fixedSize: ,),
          ),
        ],
      ),
      body: UserList(),
    );
  }
}
