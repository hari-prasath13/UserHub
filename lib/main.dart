import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:user_details/Screens/Home_screen.dart';
import 'Blocs/user_bloc.dart';
import 'package:user_details/Repository/User_repository.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return ScreenUtilInit(
      designSize: Size(375, 812),
      child: BlocProvider(
        create: (context) => UserBloc(UserRepository()),
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomeScreen(),

        ),
      ),
    );
  }
}
