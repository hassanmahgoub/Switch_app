// ignore_for_file: implementation_imports, unnecessary_import, file_names, unused_local_variable, non_constant_identifier_names

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:roundcheckbox/roundcheckbox.dart';
import 'package:switch_app/Screens/Orders.dart';
import 'package:switch_app/Widgets/MyDialog.dart';

class ReportsSub extends StatefulWidget {
  const ReportsSub({Key? key}) : super(key: key);

  @override
  State<ReportsSub> createState() => _ReportsSubState();
}

class _ReportsSubState extends State<ReportsSub> {
  late File image;
  final Imagepicker = ImagePicker();
  uploadImage() async {
    var pickedImage = await Imagepicker.pickImage(source: ImageSource.camera);
  }

  // ignore: unused_field, prefer_final_fields
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xff010037),
      body: Stack(children: [
        Padding(
          padding: const EdgeInsets.only(top: 80, left: 30, right: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                child: const Icon(Icons.arrow_back_ios,
                    size: 20, color: Color(0xffF5F9F7)),
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => const Orders()));
                },
              ),
              SvgPicture.asset('assets/images/menu.svg')
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 200),
          child: Container(
            height: screenSize.height,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 22, right: 22, top: 60),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircularPercentIndicator(
                          radius: 33,
                          lineWidth: 6.5,
                          backgroundWidth: 3,
                          animationDuration: 500,
                          percent: 0.27,
                          circularStrokeCap: CircularStrokeCap.round,
                          backgroundColor: const Color(0xff0474E1),
                          center: const Text("75%",style: TextStyle(color: Color(0xff1D0D63),fontSize: 12,fontFamily: 'sst arabic',fontWeight: FontWeight.bold),),
                          progressColor: const Color(0xFf1D0D63),
                        ),
                        Expanded(child: Container()),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            InkWell(
                              child: Row(
                                children: [
                                  Text(
                                    'CLS 350 (2012)',
                                    style: TextStyle(
                                        color: Color(0xff1D0D63),
                                        fontFamily: 'sst bold',
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'مرسيدس',
                                    style: TextStyle(
                                        color: Color(0xff1D0D63),
                                        fontFamily: 'sst bold',
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              'KMHD641UGHU321730',
                              style: TextStyle(
                                  color: Color(0xff0474E1),
                                  fontFamily: 'sst bold',
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                Text(
                                  '2154',
                                  style: TextStyle(
                                      color: Color(0xffBE1E2D),
                                      fontFamily: 'sst bold',
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'رقم الطلب',
                                  style: TextStyle(
                                      color: Color(0xff1D0D63),
                                      fontFamily: 'sst bold',
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [
                            SvgPicture.asset('assets/images/merc.svg'),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    endIndent: 20,
                    indent: 20,
                    thickness: 1,
                    color: Colors.grey,
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const MyDialog(),
                        Expanded(child: Container()),
                        const Text(
                          'الديكورات',
                          style: TextStyle(
                              color: Color(0xff1D0D63),
                              fontFamily: 'sst bold',
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        RoundCheckBox(
                          uncheckedWidget: const Icon(Icons.done,size: 15,color: Colors.white,),
                          checkedWidget: const Icon(Icons.done,size: 15,color: Colors.white,),
                            borderColor: const Color(0xffD0E2E5),
                            uncheckedColor: const Color(0xffD0E2E5),
                            checkedColor: const Color(0xff009FBD),
                            size: 25,
                            onTap: (value) {})
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const MyDialog(),
                        Expanded(child: Container()),
                        const Text(
                          'المقاعد (المراتب)',
                          style: TextStyle(
                              color: Color(0xff1D0D63),
                              fontFamily: 'sst bold',
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        RoundCheckBox(
                          uncheckedWidget: const Icon(Icons.done,size: 15,color: Colors.white,),
                          checkedWidget: const Icon(Icons.done,size: 15,color: Colors.white,),
                            borderColor: const Color(0xffD0E2E5),
                            uncheckedColor: const Color(0xffD0E2E5),
                            checkedColor: const Color(0xff009FBD),
                            size: 25,
                            onTap: (value) {})
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 30,
                          width: 60,
                          decoration: BoxDecoration(
                              color: const Color(0xffD0E2E5),
                              borderRadius: BorderRadius.circular(7)),
                          child: const Center(
                            child: Center(
                                child: Text(
                              'تقييم',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'sst arabic',
                                fontSize: 12,
                              ),
                            )),
                          ),
                        ),
                        Expanded(child: Container()),
                        const Text(
                          'الوسائد الهوائية (الايرباق)',
                          style: TextStyle(
                              color: Color(0xff1D0D63),
                              fontFamily: 'sst bold',
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        RoundCheckBox(
                          uncheckedWidget: const Icon(Icons.done,size: 15,color: Colors.white,),
                          checkedWidget: const Icon(Icons.done,size: 15,color: Colors.white,),
                            borderColor: const Color(0xffD0E2E5),
                            uncheckedColor: const Color(0xffD0E2E5),
                            checkedColor: const Color(0xff009FBD),
                            size: 25,
                            onTap: (value) {})
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 30,
                          width: 60,
                          decoration: BoxDecoration(
                              color: const Color(0xffD0E2E5),
                              borderRadius: BorderRadius.circular(7)),
                          child: const Center(
                            child: Center(
                                child: Text(
                              'تقييم',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'sst arabic',
                                fontSize: 12,
                              ),
                            )),
                          ),
                        ),
                        Expanded(child: Container()),
                        const Text(
                          'سجاد الأرضية',
                          style: TextStyle(
                              color: Color(0xff1D0D63),
                              fontFamily: 'sst bold',
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        RoundCheckBox(
                          uncheckedWidget: const Icon(Icons.done,size: 15,color: Colors.white,),
                          checkedWidget: const Icon(Icons.done,size: 15,color: Colors.white,),
                            borderColor: const Color(0xffD0E2E5),
                            uncheckedColor: const Color(0xffD0E2E5),
                            checkedColor: const Color(0xff009FBD),
                            size: 25,
                            onTap: (value) {})
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const MyDialog(),
                        Expanded(child: Container()),
                        const Text(
                          'النوافذ',
                          style: TextStyle(
                              color: Color(0xff1D0D63),
                              fontFamily: 'sst bold',
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        RoundCheckBox(
                          uncheckedWidget: const Icon(Icons.done,size: 15,color: Colors.white,),
                          checkedWidget: const Icon(Icons.done,size: 15,color: Colors.white,),
                            borderColor: const Color(0xffD0E2E5),
                            uncheckedColor: const Color(0xffD0E2E5),
                            checkedColor: const Color(0xff009FBD),
                            size: 25,
                            onTap: (value) {})
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const MyDialog(),
                        Expanded(child: Container()),
                        const Text(
                          'التكيف',
                          style: TextStyle(
                              color: Color(0xff1D0D63),
                              fontFamily: 'sst bold',
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        RoundCheckBox(
                          uncheckedWidget: const Icon(Icons.done,size: 15,color: Colors.white,),
                          checkedWidget: const Icon(Icons.done,size: 15,color: Colors.white,),
                            borderColor: const Color(0xffD0E2E5),
                            uncheckedColor: const Color(0xffD0E2E5),
                            checkedColor: const Color(0xff009FBD),
                            size: 25,
                            onTap: (value) {})
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const MyDialog(),
                        Expanded(child: Container()),
                        const Text(
                          'المسجل / الشاشة',
                          style: TextStyle(
                              color: Color(0xff1D0D63),
                              fontFamily: 'sst bold',
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        RoundCheckBox(
                          uncheckedWidget: const Icon(Icons.done,size: 15,color: Colors.white,),
                          checkedWidget: const Icon(Icons.done,size: 15,color: Colors.white,),
                            borderColor: const Color(0xffD0E2E5),
                            uncheckedColor: const Color(0xffD0E2E5),
                            checkedColor: const Color(0xff009FBD),
                            size: 25,
                            onTap: (value) {})
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const MyDialog(),
                        Expanded(child: Container()),
                        const Text(
                          'الطبلون',
                          style: TextStyle(
                              color: Color(0xff1D0D63),
                              fontFamily: 'sst bold',
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        RoundCheckBox(
                          uncheckedWidget: const Icon(Icons.done,size: 15,color: Colors.white,),
                          checkedWidget: const Icon(Icons.done,size: 15,color: Colors.white,),
                            borderColor: const Color(0xffD0E2E5),
                            uncheckedColor: const Color(0xffD0E2E5),
                            checkedColor: const Color(0xff009FBD),
                            size: 25,
                            onTap: (value) {})
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  // ListView.builder(itemBuilder: (i,context){

                  // }),

                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 140,
              ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50)),
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 0),
                      child: CircleAvatar(
                        radius: 55,
                        backgroundColor: Colors.white,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                'assets/images/enter.svg',
                                height: 40,
                              ),
                              const Text('الداخلية',
                                  style: TextStyle(
                                      color: Color(0xff009FBD),
                                      fontFamily: 'sst bold',
                                      fontSize: 10))
                            ]),
                      ),
                    ),
                  ),
                  
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
