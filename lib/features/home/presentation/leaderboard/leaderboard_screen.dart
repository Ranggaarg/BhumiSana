import 'package:bhumisana/components/design_sistem/static_text_style.dart';
import 'package:bhumisana/core/utils/app_constants.dart';
import 'package:bhumisana/gen/gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LeaderBoardScreen extends StatelessWidget {
  const LeaderBoardScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        backgroundColor: ColorName.color6A85B6,
        title: Text(
          'LeaderBoard',
          style: StaticTextStyle.textStyleFs16Fw600(
            color: ColorName.white,
          ),
        ),
      ),
      backgroundColor: ColorName.color6A85B6,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50.w),
              child: Column(
                children: [
                  SizedBox(
                    height: 16.h,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: 86.w,
                        height: 130.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              ColorName.color32AFE4,
                              ColorName.color4801FF,
                            ],
                          ),
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Positioned(
                              top: -18,
                              left: 58,
                              child: Text(
                                Constants.two.toString(),
                                style: TextStyle(
                                  fontSize: 60.sp,
                                  color: ColorName.colorTextPrimary
                                      .withOpacity(0.1),
                                  fontFamily: FontFamily.poppins,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8.5.w, vertical: 8.h),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    height: 56.h,
                                    width: 56.w,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        width: 1.w,
                                        color: ColorName.white,
                                      ),
                                      image: DecorationImage(
                                        image: Assets.images.icProfile
                                            .image()
                                            .image,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4.h,
                                  ),
                                  Text(
                                    leaderboard[Constants.one],
                                    style: StaticTextStyle.textStyleFs12Fw400(
                                      color: ColorName.white.withOpacity(0.8),
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  SizedBox(
                                    height: 4.h,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.monetization_on_sharp,
                                        color: Colors.amber[400],
                                      ),
                                      SizedBox(
                                        width: 2.5.w,
                                      ),
                                      Text(
                                        224.toString(),
                                        style:
                                            StaticTextStyle.textStyleFs12Fw600(
                                                color: ColorName.white),
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
                        width: 86.w,
                        height: 145.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              ColorName.colorF9D423,
                              ColorName.colorF83600,
                            ],
                          ),
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Positioned(
                              top: -18,
                              left: 72,
                              child: Text(
                                Constants.one.toString(),
                                style: TextStyle(
                                  fontSize: 60.sp,
                                  color: ColorName.colorTextPrimary
                                      .withOpacity(0.1),
                                  fontFamily: FontFamily.poppins,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8.5.w, vertical: 8.h),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    height: 56.h,
                                    width: 56.w,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: ColorName.white,
                                      ),
                                      image: DecorationImage(
                                        image: Assets.images.icProfile
                                            .image()
                                            .image,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4.h,
                                  ),
                                  Text(
                                    leaderboard[Constants.zero],
                                    style: StaticTextStyle.textStyleFs12Fw400(
                                      color: ColorName.white.withOpacity(0.8),
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  SizedBox(
                                    height: 4.h,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.monetization_on_sharp,
                                        color: Colors.amber[400],
                                      ),
                                      SizedBox(
                                        width: 2.5.w,
                                      ),
                                      Text(
                                        274.toString(),
                                        style:
                                            StaticTextStyle.textStyleFs12Fw600(
                                                color: ColorName.white),
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
                        width: 86.w,
                        height: 115.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              ColorName.color0BFF6D,
                              ColorName.color0E8953,
                            ],
                          ),
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Positioned(
                              top: -18,
                              left: 58,
                              child: Text(
                                Constants.three.toString(),
                                style: TextStyle(
                                  fontSize: 60.sp,
                                  color: ColorName.colorTextPrimary
                                      .withOpacity(0.1),
                                  fontFamily: FontFamily.poppins,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  right: 8.5.w, left: 8.5.w, bottom: 8.h),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    height: 56.h,
                                    width: 56.w,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: ColorName.white,
                                      ),
                                      image: DecorationImage(
                                        image: Assets.images.icProfile
                                            .image()
                                            .image,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4.h,
                                  ),
                                  Text(
                                    leaderboard[Constants.two],
                                    style: StaticTextStyle.textStyleFs12Fw400(
                                      color: ColorName.white.withOpacity(0.8),
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  SizedBox(
                                    height: 4.h,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.monetization_on_sharp,
                                        color: Colors.amber[400],
                                      ),
                                      SizedBox(
                                        width: 2.5.w,
                                      ),
                                      Text(
                                        189.toString(),
                                        style:
                                            StaticTextStyle.textStyleFs12Fw600(
                                                color: ColorName.white),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 13.h,
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  ...List.generate(
                    next.length,
                    (index) => Container(
                      margin: EdgeInsets.symmetric(horizontal: 8.w),
                      padding: EdgeInsets.symmetric(horizontal: 12.w),
                      width: double.infinity,
                      height: 50.h,
                      decoration: BoxDecoration(
                        color: ColorName.white,
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Text(
                                  '${index + Constants.four}',
                                  style: StaticTextStyle.textStyleFs14Fw400(
                                      color: ColorName.colorTextSecondary),
                                ),
                                SizedBox(
                                  width: 12.w,
                                ),
                                Container(
                                  height: 25.h,
                                  width: 25.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4.r),
                                    image: DecorationImage(
                                      image:
                                          Assets.images.icProfile.image().image,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 12.w,
                                ),
                                Text(
                                  next[index],
                                  style: StaticTextStyle.textStyleFs14Fw400(),
                                )
                              ],
                            ),
                          ),
                          Icon(
                            Icons.monetization_on_sharp,
                            color: Colors.amber[400],
                          ),
                          SizedBox(
                            width: 2.5.w,
                          ),
                          Text(
                            coin[index],
                            style: StaticTextStyle.textStyleFs12Fw600(
                              color: ColorName.colorTextPrimary,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ].fold(
                  [],
                  (previousValue, element) => [
                    ...previousValue,
                    ...[
                      if (previousValue.isNotEmpty)
                        SizedBox(
                          height: 12.h,
                        ),
                      element
                    ]
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

final List<String> leaderboard = [
  'Alif Al',
  'Yeheskiel Tame',
  'Samra Sarongalo',
  'Andi Zaky',
  'Pratama Adri',
  'Mohammad Baharudin',
  'Rangga Gardika'
];

final List<String> next = [
  'Andi Zaky',
  'Pratama Adri',
  'Mohammad Baharudin',
  'Rangga Gardika'
];


final List<String> coin = [
  '145',
  '111',
  '99',
  '87'
];

