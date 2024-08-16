import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:user_details/Blocs/user_bloc.dart';
import 'package:user_details/Model/User_model.dart';
import 'package:user_details/Screens/Userdeatail_Screen.dart';
import 'package:user_details/Common/Color_Constant.dart';

class UserList extends StatefulWidget {
  const UserList({super.key});

  @override
  State<UserList> createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  late TextEditingController _searchController;
  List<User> _allUsers = [];
  List<User> _filteredUsers = [];

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
    _searchController.addListener(_filterUsers);
    context.read<UserBloc>().add(FetchUsers());
  }

  void _filterUsers() {
    final query = _searchController.text.toLowerCase();
    setState(() {
      _filteredUsers = _allUsers.where((user) {
        final userName = user.name.toLowerCase();
        return userName.contains(query);
      }).toList();
    });
  }

  Future<void> _refreshData() async {
    context.read<UserBloc>().add(FetchUsers());
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 9.h),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: TextField(
              controller: _searchController,
              style: const TextStyle(color: Colors.white),
              cursorColor: Colors.white,
              decoration: const InputDecoration(
                labelText: 'Search',
                suffixIcon: Icon(
                  Icons.search,
                  size: 30,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.h),
          Expanded(
            child: BlocBuilder<UserBloc, UserState>(
              builder: (context, state) {
                if (state is UserLoading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (state is UserLoaded) {
                  if (_allUsers.isEmpty) {
                    _allUsers = state.users;
                    _filteredUsers = _allUsers;
                  }
                  return RefreshIndicator(
                    onRefresh: _refreshData,
                    child: ListView.builder(
                      itemCount: _filteredUsers.length,
                      itemBuilder: (context, index) {
                        final user = _filteredUsers[index];
                        return Padding(
                          padding: EdgeInsets.all(8.0.w),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => UserdeatailScreen(user: user),
                                ),
                              );
                            },
                            child: Container(
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
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 7),
                                  Text(
                                    'Email: ${user.email}',
                                    style: TextStyle(
                                      fontSize: 15.sp,
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
                  );
                } else if (state is UserError) {
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(state.message)),
                    );
                  });
                  return const Center(
                    child: Text(
                      'Failed to load users',
                      style: TextStyle(color: Colors.white),
                    ),
                  );
                }
                return const Center(
                  child: Text(
                    'No data available',
                    style: TextStyle(color: Colors.white),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}