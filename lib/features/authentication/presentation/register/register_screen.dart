import 'package:bhumisana/components/design_sistem/static_text_style.dart';
import 'package:bhumisana/core/navigation/app_router.dart';
import 'package:bhumisana/gen/gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Assets.images.bhumiSana.image(height: 24.h),
              SizedBox(height: 50.h),
              _buildTextField(
                controller: usernameController,
                labelText: 'Username',
                isPassword: false,
              ),
              SizedBox(height: 16.h),
              _buildTextField(
                controller: emailController,
                labelText: 'Email',
                isPassword: false,
              ),
              SizedBox(height: 16.h),
              _buildTextField(
                controller: passwordController,
                labelText: 'Password',
                isPassword: true,
              ),
              SizedBox(height: 34.h),
              GestureDetector(
                onTap: () {
                  if (usernameController.text.isEmpty &&
                      passwordController.text.isEmpty &&
                      emailController.text.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                            'Silahkan isi semua kolom untuk masuk kedalam aplikasi'),
                      ),
                    );
                  } else {
                    Navigator.pushReplacementNamed(context, AppRouter.main);
                  }
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 22.w),
                  width: double.infinity,
                  height: 48.h,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [ColorName.primary, ColorName.secondary],
                    ),
                    borderRadius: BorderRadius.circular(24.r),
                  ),
                  child: Center(
                    child: Text(
                      'Daftar',
                      style: StaticTextStyle.textStyleFs15Fw600(
                        color: ColorName.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Sudah punya akun? ',
                    style: StaticTextStyle.textStyleFs12Fw400(
                      color: ColorName.grey400,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, AppRouter.login);
                    },
                    child: Text(
                      'login.',
                      style: StaticTextStyle.textStyleFs12Fw400(
                        color: ColorName.secondary,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String labelText,
    required bool isPassword,
  }) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.symmetric(horizontal: 22.w),
      padding: EdgeInsets.only(left: 20.w, right: 5.w),
      width: double.infinity,
      height: 48.h,
      decoration: BoxDecoration(
        color: ColorName.background,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: TextField(
        controller: controller,
        obscureText: isPassword ? !_isPasswordVisible : false,
        textAlignVertical: TextAlignVertical.center,
        cursorColor: ColorName.secondary,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(bottom: 12.h),
          floatingLabelBehavior: FloatingLabelBehavior.never,
          labelText: labelText,
          labelStyle: StaticTextStyle.textStyleFs12Fw400(
            color: ColorName.grey400,
          ),
          border: InputBorder.none,
          suffixIcon: isPassword
              ? IconButton(
                  icon: Icon(
                    _isPasswordVisible
                        ? Icons.visibility
                        : Icons.visibility_off,
                    color: ColorName.grey400,
                  ),
                  onPressed: () {
                    setState(
                      () {
                        _isPasswordVisible = !_isPasswordVisible;
                      },
                    );
                  },
                )
              : null,
        ),
      ),
    );
  }
}
