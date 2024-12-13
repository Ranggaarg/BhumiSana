import 'dart:io';

import 'package:bhumisana/components/design_sistem/static_text_style.dart';
import 'package:bhumisana/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

class ScanWasteScreen extends StatefulWidget {
  const ScanWasteScreen({super.key});

  @override
  State<ScanWasteScreen> createState() => _ScanWasteScreen();
}

class _ScanWasteScreen extends State<ScanWasteScreen> {
  File? _image;

  Future<void> _pickImage(ImageSource source) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: source);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scan Waste'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: <Widget>[
              _image != null
                  ? Column(
                      children: [
                        Image.file(_image!),
                        const SizedBox(height: 10),
                        const Text('Kertas',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                      ],
                    )
                  : const Text('Tidak ada gambar yang dipilih'),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () => _pickImage(ImageSource.gallery),
                    child: const Text('Pilih dari Galeri'),
                  ),
                  const SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () => _pickImage(ImageSource.camera),
                    child: const Text('Ambil dengan Kamera'),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text('Jumlah'),
              const SizedBox(height: 12),
              _buildTextField(labelText: 'min: 1 Kg'),
              const SizedBox(height: 20),
              const Text('Alamat'),
              const SizedBox(height: 12),
              _buildTextField(labelText: 'ex. Ciledug, Tangerang'),
              const SizedBox(height: 32),
              GestureDetector(
                onTap: () async {
                  await showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text('Scan Sampah Berhasil'),
                  content: const Text('Silahkan menunggu konfirmasi dari admin'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('OK'),
                    ),
                  ],
                );
              },
            );
            Navigator.of(context).pop();
                },
                child: Container(
                  width: double.infinity,
                  height: 40.h,
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          ColorName.primary,
                          ColorName.secondary,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(12.r)),
                  child: Center(
                    child: Text(
                      'Konfirmasi',
                      style: StaticTextStyle.textStyleFs14Fw600(
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

  Widget _buildTextField({
    required String labelText,
  }) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(left: 20.w, right: 5.w),
      width: double.infinity,
      height: 48.h,
      decoration: BoxDecoration(
        color: ColorName.background,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: TextField(
        textAlignVertical: TextAlignVertical.center,
        cursorColor: ColorName.blueLogo,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(bottom: 12.h),
          floatingLabelBehavior: FloatingLabelBehavior.never,
          labelText: labelText,
          labelStyle: StaticTextStyle.textStyleFs12Fw400(
            color: ColorName.grey400,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
