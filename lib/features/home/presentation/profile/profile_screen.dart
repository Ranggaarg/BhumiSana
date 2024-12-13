import 'package:bhumisana/components/design_sistem/static_text_style.dart';
import 'package:bhumisana/components/widgets/custom_app_liquid_refresher.dart';
import 'package:bhumisana/components/widgets/menu_item_section.dart';
import 'package:bhumisana/core/navigation/app_router.dart';
import 'package:bhumisana/gen/gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorName.background,
        child: CustomAppLiquidRefresher(
          bgColor: ColorName.primary,
          onRefresh: () async {},
          child: ListView(
            children: [
              Stack(
                children: [
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: ColorName.color276561,
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(12.r),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 130.h,
                          width: 130.w,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: ColorName.grey400,
                            image: DecorationImage(
                              image: Assets.images.icProfile.image().image,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 32.h,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                margin: EdgeInsets.symmetric(horizontal: 16.w),
                decoration: BoxDecoration(
                  color: ColorName.white,
                  borderRadius: BorderRadius.circular(12.r),
                  boxShadow: [
                    BoxShadow(
                      color: ColorName.colorTextPrimary.withOpacity(0.1),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),
                    MenuItem(
                      onTap: () {
                        Navigator.pushNamed(context, AppRouter.username);
                      },
                      label: 'Username',
                      icon: Assets.images.icProfileCircle,
                    ),
                    MenuItem(
                      onTap: () {
                        Navigator.pushNamed(context, AppRouter.address);
                      },
                      label: 'Alamat',
                      icon: Assets.images.icProfileCircle,
                    ),
                    MenuItem(
                      onTap: () {
                        Navigator.pushNamed(context, AppRouter.age);
                      },
                      label: 'Usia',
                      icon: Assets.images.icProfileCircle,
                    ),
                    MenuItem(
                      onTap: () {
                        Navigator.pushNamed(context, AppRouter.gender);
                      },
                      label: 'Jenis Kelamin',
                      icon: Assets.images.icProfileCircle,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              GestureDetector(
                onTap: (){
                  SystemNavigator.pop();
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                  padding: EdgeInsets.symmetric(vertical: 12.h),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24.r),
                    color: ColorName.grey400,
                  ),
                  child: Center(
                    child: Text(
                      'Keluar',
                      style: StaticTextStyle.textStyleFs16Fw600(
                        color: ColorName.white,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
