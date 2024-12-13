import 'package:bhumisana/components/design_sistem/static_text_style.dart';
import 'package:bhumisana/components/widgets/widgets.dart';
import 'package:bhumisana/core/navigation/app_router.dart';
import 'package:bhumisana/gen/gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                    height: MediaQuery.of(context).size.height * 0.25,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: ColorName.color276561,
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(12.r),
                      ),
                    ),
                    child: SafeArea(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Halo!',
                                  style: StaticTextStyle.textStyleFs16Fw600(
                                    color: ColorName.white,
                                  ),
                                ),
                                Text(
                                  'Alif Al',
                                  style: StaticTextStyle.textStyleFs14Fw400(
                                    color: ColorName.white,
                                  ),
                                ),
                                SizedBox(
                                  height: 16.h,
                                ),
                                Container(
                                  width: 150.w,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 6.w, vertical: 2.h),
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: ColorName.colorTextPrimary
                                              .withOpacity(0.3),
                                          spreadRadius: 5,
                                          blurRadius: 7,
                                          offset: const Offset(0, 3),
                                        ),
                                      ],
                                      color: ColorName.white,
                                      borderRadius: BorderRadius.circular(8.r)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Total koin kamu',
                                        style:
                                            StaticTextStyle.textStyleFs14Fw600(
                                          color: ColorName.colorTextPrimary,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 6.h,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Icon(
                                            Icons.monetization_on_sharp,
                                            color: Colors.amber[400],
                                          ),
                                          SizedBox(
                                            width: 6.w,
                                          ),
                                          Text(
                                            '274 Koin',
                                            style: StaticTextStyle
                                                .textStyleFs12Fw400(
                                              color: ColorName.colorTextPrimary,
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 60.h,
                            width: 60.w,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: ColorName.grey400,
                              image: DecorationImage(
                                image: Assets.images.icProfile.image().image,
                                fit: BoxFit.cover,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.2,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 16.h),
                        padding: EdgeInsets.all(16.w),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color:
                                  ColorName.colorTextPrimary.withOpacity(0.3),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(0, 3),
                            ),
                          ],
                          color: ColorName.white,
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: Column(
                          children: [
                            Text(
                              '11 KG',
                              style: StaticTextStyle.textStyleFs16Fw600(
                                  color: ColorName.secondary),
                            ),
                            Text(
                              'Sampah Berhasil di Daur Ulang!',
                              style: StaticTextStyle.textStyleFs12Fw400(
                                  color: ColorName.colorTextPrimary),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 32.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, AppRouter.scanWaste);
                    },
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(16.w),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: ColorName.colorTextPrimary
                                      .withOpacity(0.1),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(12.r),
                              ),
                              color: ColorName.primary),
                          child: Assets.images.icCamera
                              .svg(height: 25.h, width: 25.w),
                        ),
                        Container(
                          padding: EdgeInsets.all(8.w),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: ColorName.colorTextPrimary
                                      .withOpacity(0.1),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(12.r),
                              ),
                              color: ColorName.white),
                          child: Text(
                            'Scan Waste',
                            style: StaticTextStyle.textStyleFs12Fw400(
                              color: ColorName.colorTextPrimary,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, AppRouter.leaderboard);
                    },
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(16.w),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: ColorName.colorTextPrimary
                                      .withOpacity(0.1),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(12.r),
                              ),
                              color: ColorName.color276561),
                          child: Icon(
                            Icons.leaderboard,
                            size: 25.w,
                            color: ColorName.white,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(8.w),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: ColorName.colorTextPrimary
                                      .withOpacity(0.1),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(12.r),
                              ),
                              color: ColorName.white),
                          child: Text(
                            'Leaderboard',
                            style: StaticTextStyle.textStyleFs12Fw400(
                              color: ColorName.colorTextPrimary,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 22.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, AppRouter.rewards);
                    },
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(16.w),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: ColorName.colorTextPrimary
                                      .withOpacity(0.1),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(12.r),
                              ),
                              color: ColorName.color1A3636),
                          child: Icon(
                            Icons.card_giftcard_sharp,
                            size: 25.w,
                            color: ColorName.white,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 8.w, horizontal: 21.w),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: ColorName.colorTextPrimary
                                      .withOpacity(0.1),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(12.r),
                              ),
                              color: ColorName.white),
                          child: Text(
                            'Reward',
                            style: StaticTextStyle.textStyleFs12Fw400(
                              color: ColorName.colorTextPrimary,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      String whatsappUrl = "https://whatsapp.com/channel/0029VauobPwJuyAGcdFkHW1K";

                      if (await canLaunchUrl(Uri.parse(whatsappUrl))) {
                        await launchUrl(Uri.parse(whatsappUrl), mode: LaunchMode.externalApplication);
                      } else {
                        throw "Tidak dapat membuka WhatsApp";
                      }
                    },
                    child: Column(
                      children: [
                        Container(
                            padding: EdgeInsets.all(16.w),
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: ColorName.colorTextPrimary
                                        .withOpacity(0.1),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: const Offset(0, 3),
                                  ),
                                ],
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(12.r),
                                ),
                                color: ColorName.color4C4B16),
                            child: Icon(
                              Icons.group,
                              size: 25.w,
                              color: ColorName.white,
                            )),
                        Container(
                          padding: EdgeInsets.all(8.w),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color:
                                      ColorName.colorTextPrimary.withOpacity(0.1),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(12.r),
                              ),
                              color: ColorName.white),
                          child: Text(
                            'Community',
                            style: StaticTextStyle.textStyleFs12Fw400(
                              color: ColorName.colorTextPrimary,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 32.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Text(
                  'Aktivitas Terkni',
                  style: StaticTextStyle.textStyleFs15Fw600(
                    color: ColorName.colorTextPrimary,
                  ),
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              ...List.generate(
                name.length,
                (index) => Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.w, vertical: 8.h),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color:
                                  ColorName.colorTextPrimary.withOpacity(0.1),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(0, 3),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(12.r),
                          color: ColorName.white,
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: 32.h,
                              width: 32.w,
                              decoration: BoxDecoration(
                                color: ColorName.colorTextSecondary,
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: Assets.images.icProfile.image().image,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 12.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  name[index],
                                  style: StaticTextStyle.textStyleFs14Fw400(
                                      color: ColorName.colorTextPrimary),
                                ),
                                Text(
                                  total[index],
                                  style: StaticTextStyle.textStyleFs12Fw400(
                                      color: ColorName.colorTextSecondary),
                                ),
                                Text(
                                  time[index],
                                  style: StaticTextStyle.textStyleFs12Fw400(
                                    color: ColorName.colorTextSecondary,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

final List<String> name = [
  'Alif Al',
  'Alif Al',
  'Mohammad Baharudin',
  'Alif Al',
  'Pratama Adri',
  'Yeheskiel Tame',
  'Yeheskiel Tame',
  'Andi Zaky',
  'Samra Sarongalo',
  'Andi Zaky',
  'Rangga Gardika'
];

final List<String> total = [
  '9 Kg Plastik',
  '1 Kg Kertas',
  '1 Kg Alumunium',
  '1 Kg Plastik',
  '1 Kg Kertas',
  '2 Kg Plastik',
  '1 Kg Kertas',
  '2 Kg Alumunium',
  '3 Kg Kertas',
  '1 Kg kertas',
  '2 Kg Plastik'
];

final List<String> time = [
  '1 Jam yang lalu',
  '1 Jam 24 Menit yang lalu',
  '2 Jam 01 Menit yang lalu',
  '2 Jam 20 Menit yang lalu',
  '2 Jam 30 Menit yang lalu',
  '3 Jam 30 Menit yang lalu',
  '3 Jam 32 Menit yang lalu',
  '3 Jam 45 Menit yang lalu',
  '4 Jam yang lalu',
  '4 Jam 10 Menit yang lalu',
  '4 Jam 50 Menit yang lalu',
];
