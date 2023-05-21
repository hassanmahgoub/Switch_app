// ignore_for_file: file_names

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';

class MyDialog extends StatefulWidget {
  const MyDialog({super.key});

  @override
  State<MyDialog> createState() => _MyDialogState();
}

class _MyDialogState extends State<MyDialog> {
   int selectedValue = 0;
   int selectedValue1 =0;
  @override
  // ignore: override_on_non_overriding_member
  late File image;
  // ignore: non_constant_identifier_names
  final Imagepicker = ImagePicker();
  uploadImage() async {
    // ignore: unused_local_variable
    var pickedImage = await Imagepicker.pickImage(source: ImageSource.camera);
    // ignore: unused_local_variable, no_leading_underscores_for_local_identifiers
  }

  // ignore: prefer_final_fields
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 30,
        width: 60,
        decoration: BoxDecoration(
          color: const Color(0xff1D0D63),
          borderRadius: BorderRadius.circular(7),
        ),
        child: const Center(
            child: Text(
          'تقييم',
          style: TextStyle(
              fontFamily: 'sst arabic', color: Colors.white, fontSize: 12),
        )),
      ),
      onTap: () {
        showDialog(
            context: context,
            builder: (builder) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 190),
                child: AlertDialog(
                  title: const Center(
                    child: Text(
                      'المقاعد (المراتب)',
                      style: TextStyle(
                        color: Color(0xff1D0D63),
                        fontFamily: 'sst arabic',
                        fontSize: 14,
                      ),
                    ),
                  ),
                  content: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Text(
                            'اجتياز',
                            style: TextStyle(
                              color: Color(0xff1D0D63),
                              fontFamily: 'sst arabic',
                              fontSize: 14,
                            ),
                          ),
                          Radio(
                              activeColor: const Color(0xff1D0D63),
                              value: 1,
                              groupValue: selectedValue,
                              onChanged: (value) => setState(()=> selectedValue = 1
                              )
                            ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                              child: SvgPicture.asset(
                                  'assets/images/Icon feather-camera.svg'),
                              onTap: () => uploadImage()),
                          Expanded(child: Container()),
                          const Text(
                            'تعليق',
                            style: TextStyle(
                              color: Color(0xff1D0D63),
                              fontFamily: 'sst arabic',
                              fontSize: 14,
                            ),
                          ),
                          Radio(
                            
                              activeColor: const Color(0xff1D0D63),
                              value: 1,
                              groupValue: selectedValue1,
                              onChanged: (value) => setState (()=> selectedValue1 = 0
                              ))
                        ],
                      ),
                      Container(
                        height: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            border: Border.all(
                                width: 1, color: const Color(0xff1D0D63))),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Container(
                                  height: 30,
                                  width: 164,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    color: const Color(0xff1D0D63),
                                  ),
                                  child: const Center(
                                      child: Text(
                                    'الغاء',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'sst arabic',
                                      fontSize: 12,
                                    ),
                                  )))),
                          const SizedBox(
                            width: 5,
                          ),
                          Expanded(
                              child: Container(
                                  height: 30,
                                  width: 164,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    color: const Color(0xff1D0D63),
                                  ),
                                  child: const Center(
                                      child: Text(
                                    'حفظ التقييم',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'sst arabic',
                                      fontSize: 12,
                                    ),
                                  ))))
                        ],
                      ),
                    ],
                  ),
                ),
              );
            });
      },
    );
  }
}
