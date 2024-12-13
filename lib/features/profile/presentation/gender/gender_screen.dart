import 'package:bhumisana/components/design_sistem/static_text_style.dart';
import 'package:bhumisana/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GenderScreen extends StatelessWidget{
  GenderScreen({super.key});

  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Jenis Kelamin', style: StaticTextStyle.textStyleFs16Fw600(color: ColorName.colorTextPrimary),),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.w),
            child: textEditingController.text.isNotEmpty ? GestureDetector(
              onTap: (){},
              child: Text('Simpan', style: StaticTextStyle.textStyleFs14Fw500(color: ColorName.primary),),
            ) : Text('Simpan', style: StaticTextStyle.textStyleFs14Fw500(color: ColorName.primary.withOpacity(0.15)),)
          )
          ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        child: Container(
          padding: EdgeInsets.only(right: 14.w, left: 16.w,),
          height: 44.h,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22.r),
            color: ColorName.background,
          ),
          child: TextField(
            controller: textEditingController,
            textAlignVertical: TextAlignVertical.center,
            cursorColor: ColorName.secondary,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(bottom: 17.h),
              floatingLabelBehavior: FloatingLabelBehavior.never,
              labelText: 'Jenis Kelamin',
              labelStyle: StaticTextStyle.textStyleFs12Fw400(color: ColorName.grey400),
              border: InputBorder.none
            ),
          ),
        ),
      ),
    );
  }
}