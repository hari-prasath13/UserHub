import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:user_details/Common/Color_Constant.dart';
import 'package:user_details/Screens/Home_screen.dart';

class NewUser extends StatefulWidget {
  const NewUser({super.key});

  @override
  State<NewUser> createState() => _NewUserState();
}

class _NewUserState extends State<NewUser> {
  @override
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _streetController = TextEditingController();
  final TextEditingController _suiteController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _zipcodeController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _websiteController = TextEditingController();
  final TextEditingController _companyController = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.mainblue,
      appBar: AppBar(
        title: Text("NEW USER", style: TextStyle(color: Colors.white,fontSize: 18.sp)),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: ColorConstant.mainblue,
      ),
      body: Form(
        key: _formKey,
        child: Container(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0.w),
            child: ListView(
              children: [
                _buildTextFormField(_nameController, 'Name'),
                _buildTextFormField(_usernameController, 'Username'),
                _buildTextFormField(_emailController, 'Email ID'),
                _buildTextFormField(_streetController, 'Street'),
                _buildTextFormField(_suiteController, 'Suite'),
                _buildTextFormField(_cityController, 'City'),
                _buildTextFormField(_zipcodeController, 'Zip Code'),
                _buildTextFormField(_phoneController, 'Phone Number'),
                _buildTextFormField(_websiteController, 'Website'),
                _buildTextFormField(_companyController, 'Company Name'),
                const SizedBox(height: 20),
                Container(
                  height: 41.h,
                  decoration: BoxDecoration(
                    color: ColorConstant.lightblue,
                    borderRadius: BorderRadius.circular(8.0.r),

                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ColorConstant.lightblue,

                    ),
                    child: Text(
                      'Create',style: TextStyle(fontSize: 16.sp, color: Colors.white60),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextFormField(TextEditingController controller, String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7.0),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(color: Colors.white),
          border: const OutlineInputBorder(),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
        style: const TextStyle(color: Colors.white),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter $label';
          }
          return null;
        },
      ),
    );
  }
}
