import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:user_details/Common/User_list.dart';
import 'package:user_details/Screens/New_user.dart';
import 'package:user_details/Common/Color_Constant.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.mainblue,
      appBar: AppBar(
        elevation: 5.0,
        shadowColor: Colors.blue.withOpacity(0.2),
        backgroundColor: ColorConstant.mainblue,
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


      body:UserList(),

    );
  }
}





// body: BlocConsumer<UserBloc, UserState>(
//   listener: (context, state) {
//     if (state is UserLoaded){
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => const UserList(),
//         ),
//       );
//     }
//     if(state is UserError){
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(
//           content: Text('Failed to load users: ${state.message}'),
//         ),
//       );
//     }
//   },
//   builder: (context, state) {
//     if(state is UserInitial){
//       context.read<UserBloc>().add(FetchUsers());
//       return Center(child: CircularProgressIndicator());
//     } else if (state is UserLoading) {
//       return Center(child: CircularProgressIndicator());
//     } else {
//       return Center(child: Text('Something went wrong'));
//     }
//   },
// ),