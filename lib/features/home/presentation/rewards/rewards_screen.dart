import 'package:bhumisana/components/design_sistem/static_text_style.dart';
import 'package:bhumisana/core/core.dart';
import 'package:bhumisana/gen/colors.gen.dart';
import 'package:bhumisana/gen/gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RewardsScreen extends StatelessWidget {
  const RewardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.background,
      appBar: AppBar(
        title: Text(
          'Reward',
          style: StaticTextStyle.textStyleFs16Fw600(
            color: ColorName.colorTextPrimary,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: 12.h,
        ),
        child: GridView.builder(
          itemCount: images.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: Constants.two,
              mainAxisSpacing: 20.h,
              crossAxisSpacing: 18.w),
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.all(8.w),
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 75.h,
                    width: 70.w,
                    padding: EdgeInsets.all(4.w),
                    decoration: BoxDecoration(
                      color: ColorName.secondary,
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: images[index].image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Text(
                    imagesName[index],
                    style: StaticTextStyle.textStyleFs14Fw600(
                      color: ColorName.colorTextPrimary,
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.monetization_on_sharp,
                        color: Colors.amber[400],
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      Text(
                        '${coinExchange[index]} Koin',
                        style: StaticTextStyle.textStyleFs12Fw400(
                            color: ColorName.colorTextSecondary),
                      )
                    ],
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

final List<Image> images = [
  Assets.images.baju.image(),
  Assets.images.jam.image(),
  Assets.images.headphone.image(),
  Assets.images.sarungTangan.image(),
  Assets.images.totebag.image(),
  Assets.images.tempatSampah.image(),
  Assets.images.sepatu.image(),
];

final List<String> imagesName = [
  'Baju',
  'Jam',
  'Headphone',
  'Sarung Tangan',
  'Totebag',
  'Tempat Sampah',
  'Sepatu',
];

final List<String> coinExchange = [
  '1500',
  '2500',
  '2700',
  '1300',
  '1000',
  '1700',
  '3000',
];
