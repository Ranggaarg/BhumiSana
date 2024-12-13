import 'package:bhumisana/core/navigation/app_router.dart';
import 'package:bhumisana/gen/gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    WidgetsFlutterBinding.ensureInitialized();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed(AppRouter.login);
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200.h,
                width: 207.w,
                padding: EdgeInsets.all(25.h),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: ColorName.blueLogo,
                ),
                child: Assets.images.bhumisanaLogo.image(),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.35,),
              Assets.images.bhumiSana.image(height: 28.h)
            ],
          ),
        ),
      ),
    );
  }
}