// ignore_for_file: implementation_imports, unnecessary_import, file_names, unused_local_variable, prefer_const_constructors

import 'package:custom_check_box/custom_check_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:roundcheckbox/roundcheckbox.dart';
import 'package:switch_app/Screens/Orders.dart';

class ReportsSub7 extends StatefulWidget {
  const ReportsSub7({Key? key}) : super(key: key);

  @override
  State<ReportsSub7> createState() => _ReportsSub7State();
}

class _ReportsSub7State extends State<ReportsSub7> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xff010037),
      body: Stack(children: [
        Padding(
          padding: const EdgeInsets.only(top: 80,left: 30,right: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            InkWell(child: const Icon(Icons.arrow_back_ios,size: 20, color: Color(0xffF5F9F7)),
            onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const Orders()));
            },
            ),
            SvgPicture.asset('assets/images/Group 2056.svg')
          ],),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 200),
          child: Container(
            height: screenSize.height,
            decoration: const BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))),
            child: SingleChildScrollView(
              child: Column(
                children:  [
                  
                  const SizedBox(
                    height: 15,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 22,right: 22,top: 60),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        
                      CircularPercentIndicator(
                        radius: 35.0,
                    lineWidth: 6.5,
                    backgroundWidth: 3,
                    animationDuration: 500,
                    percent: 0.27,
                    circularStrokeCap: CircularStrokeCap.round,
                    backgroundColor: const Color(0xff0474E1),
                    center:  const Text("75%"),
                    progressColor: const Color(0xFf1D0D63),
                      
                      ),
                      Expanded(child: Container()),
                      
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          
                        InkWell(
                          child: Row(
                            children: const [
                              Text('CLS 350 (2012)',style: TextStyle(color: Color(0xff1D0D63),fontFamily: 'sst bold',fontSize: 12,fontWeight: FontWeight.bold),),
                            SizedBox(width: 5,),
                            Text('مرسيدس',style: TextStyle(color: Color(0xff1D0D63),fontFamily: 'sst bold',fontSize: 12,fontWeight: FontWeight.bold),),
                            ],
                          ),
                         
                        ),
                        const Text('KMHD641UGHU321730',style: TextStyle(color: Color(0xff0474E1),fontFamily: 'sst bold',fontSize: 12,fontWeight: FontWeight.bold),),
                        Row(
                          children: const [
                            Text('2154',style: TextStyle(color: Color(0xffBE1E2D),fontFamily: 'sst bold',fontSize: 14,fontWeight: FontWeight.bold),),
                            SizedBox(width: 5,),
                            Text('رقم الطلب',style: TextStyle(color: Color(0xff1D0D63),fontFamily: 'sst bold',fontSize: 10,fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ],),
                      const SizedBox(width: 40,),
                      Column(children: [
                        SvgPicture.asset('assets/images/Group 2077.svg'),
                        const Text('الاطارات',style: TextStyle(color: Color(0xffBE1E2D),fontFamily: 'sst bold',fontSize: 10)
                      )],)
                    ],),
                  ),
                  const SizedBox(height: 10,),
                  const Divider(endIndent: 20,indent: 20,thickness: 1,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      const Text('تعليق',style: TextStyle(color: Color(0xff1D0D63),fontFamily: 'sst arabic',fontSize: 12,),),
                     CustomCheckBox(
                      borderWidth: 2.5,
                      shouldShowBorder: true,
                      borderColor: const Color(0xff1D0D63),
                      checkBoxSize: 12,
                      borderRadius: 9,
                      value: false, onChanged: (value){}),
                      //SizedBox(width: 5,),
                      const Text('اجتياز',style: TextStyle(color: Color(0xff1D0D63),fontFamily: 'sst arabic',fontSize: 12,),),
                     CustomCheckBox(
                      borderWidth: 2.5,
                      shouldShowBorder: true,
                      borderColor: const Color(0xff1D0D63),
                      checkBoxSize: 12,
                      borderRadius: 9,
                      value: false, onChanged: (value){}),
                      Expanded(child: Container()),
                      const Text('الديكورات',style: TextStyle(color: Color(0xff1D0D63),fontFamily: 'sst bold',fontSize: 14,fontWeight: FontWeight.bold),),
                    const SizedBox(width: 10,),
                    RoundCheckBox(
                      borderColor: const Color(0xffD0E2E5),
                      uncheckedColor: const Color(0xffD0E2E5),
                      checkedColor: const Color(0xff0474E1),
                      size: 25,
                      onTap: (value){})
                    ],),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      const Text('تعليق',style: TextStyle(color: Color(0xff1D0D63),fontFamily: 'sst arabic',fontSize: 12,),),
                     CustomCheckBox(
                      borderWidth: 2.5,
                      shouldShowBorder: true,
                      borderColor: const Color(0xff1D0D63),
                      checkBoxSize: 12,
                      borderRadius: 9,
                      value: false, onChanged: (value){}),
                      //SizedBox(width: 5,),
                      const Text('اجتياز',style: TextStyle(color: Color(0xff1D0D63),fontFamily: 'sst arabic',fontSize: 12,),),
                     CustomCheckBox(
                      borderWidth: 2.5,
                      shouldShowBorder: true,
                      borderColor: const Color(0xff1D0D63),
                      checkBoxSize: 12,
                      borderRadius: 9,
                      value: false, onChanged: (value){}),
                      Expanded(child: Container()),
                      const Text('المقاعد (المراتب)',style: TextStyle(color: Color(0xff1D0D63),fontFamily: 'sst bold',fontSize: 14,fontWeight: FontWeight.bold),),
                    const SizedBox(width: 10,),
                    RoundCheckBox(
                      borderColor: const Color(0xffD0E2E5),
                      uncheckedColor: const Color(0xffD0E2E5),
                      checkedColor: const Color(0xff0474E1),
                      size: 25,
                      onTap: (value){})
                    ],),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      const Text('تعليق',style: TextStyle(color: Color(0xff1D0D63),fontFamily: 'sst arabic',fontSize: 12,),),
                     CustomCheckBox(
                      borderWidth: 2.5,
                      shouldShowBorder: true,
                      borderColor: const Color(0xff1D0D63),
                      checkBoxSize: 12,
                      borderRadius: 9,
                      value: false, onChanged: (value){}),
                      //SizedBox(width: 5,),
                      const Text('اجتياز',style: TextStyle(color: Color(0xff1D0D63),fontFamily: 'sst arabic',fontSize: 12,),),
                     CustomCheckBox(
                      borderWidth: 2.5,
                      shouldShowBorder: true,
                      borderColor: const Color(0xff1D0D63),
                      checkBoxSize: 12,
                      borderRadius: 9,
                      value: false, onChanged: (value){}),
                      Expanded(child: Container()),
                      const Text('الوسائد الهوائية (الايرباق)',style: TextStyle(color: Color(0xff1D0D63),fontFamily: 'sst bold',fontSize: 14,fontWeight: FontWeight.bold),),
                    const SizedBox(width: 10,),
                    RoundCheckBox(
                      borderColor: const Color(0xffD0E2E5),
                      uncheckedColor: const Color(0xffD0E2E5),
                      checkedColor: const Color(0xff0474E1),
                      size: 25,
                      onTap: (value){})
                    ],),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      const Text('تعليق',style: TextStyle(color: Color(0xffD0E2E5),fontFamily: 'sst arabic',fontSize: 12,),),
                     CustomCheckBox(
                      borderWidth: 2.5,
                      shouldShowBorder: true,
                      borderColor: const Color(0xffD0E2E5),
                      checkBoxSize: 12,
                      borderRadius: 9,
                      value: false, onChanged: (value){}),
                      //SizedBox(width: 5,),
                      const Text('اجتياز',style: TextStyle(color: Color(0xffD0E2E5),fontFamily: 'sst arabic',fontSize: 12,),),
                     CustomCheckBox(
                      borderWidth: 2.5,
                      shouldShowBorder: true,
                      borderColor: const Color(0xffD0E2E5),
                      checkBoxSize: 12,
                      borderRadius: 9,
                      value: false, onChanged: (value){}),
                      Expanded(child: Container()),
                      const Text('سجاد الأرضية',style: TextStyle(color: Color(0xff1D0D63),fontFamily: 'sst bold',fontSize: 14,fontWeight: FontWeight.bold),),
                    const SizedBox(width: 10,),
                    RoundCheckBox(
                      borderColor: const Color(0xffD0E2E5),
                      uncheckedColor: const Color(0xffD0E2E5),
                      checkedColor: const Color(0xff0474E1),
                      size: 25,
                      onTap: (value){})
                    ],),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      const Text('تعليق',style: TextStyle(color: Color(0xff1D0D63),fontFamily: 'sst arabic',fontSize: 12,),),
                     CustomCheckBox(
                      borderWidth: 2.5,
                      shouldShowBorder: true,
                      borderColor: const Color(0xff1D0D63),
                      checkBoxSize: 12,
                      borderRadius: 9,
                      value: false, onChanged: (value){}),
                      //SizedBox(width: 5,),
                      const Text('اجتياز',style: TextStyle(color: Color(0xff1D0D63),fontFamily: 'sst arabic',fontSize: 12,),),
                     CustomCheckBox(
                      borderWidth: 2.5,
                      shouldShowBorder: true,
                      borderColor: const Color(0xff1D0D63),
                      checkBoxSize: 12,
                      borderRadius: 9,
                      value: false, onChanged: (value){}),
                      Expanded(child: Container()),
                      const Text('النوافذ',style: TextStyle(color: Color(0xff1D0D63),fontFamily: 'sst bold',fontSize: 14,fontWeight: FontWeight.bold),),
                    const SizedBox(width: 10,),
                    RoundCheckBox(
                      borderColor: const Color(0xffD0E2E5),
                      uncheckedColor: const Color(0xffD0E2E5),
                      checkedColor: const Color(0xff0474E1),
                      size: 25,
                      onTap: (value){})
                    ],),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      const Text('تعليق',style: TextStyle(color: Color(0xff1D0D63),fontFamily: 'sst arabic',fontSize: 12,),),
                     CustomCheckBox(
                      borderWidth: 2.5,
                      shouldShowBorder: true,
                      borderColor: const Color(0xff1D0D63),
                      checkBoxSize: 12,
                      borderRadius: 9,
                      value: false, onChanged: (value){}),
                      //SizedBox(width: 5,),
                      const Text('اجتياز',style: TextStyle(color: Color(0xff1D0D63),fontFamily: 'sst arabic',fontSize: 12,),),
                     CustomCheckBox(
                      borderWidth: 2.5,
                      shouldShowBorder: true,
                      borderColor: const Color(0xff1D0D63),
                      checkBoxSize: 12,
                      borderRadius: 9,
                      value: false, onChanged: (value){}),
                      Expanded(child: Container()),
                      const Text('التكيف',style: TextStyle(color: Color(0xff1D0D63),fontFamily: 'sst bold',fontSize: 14,fontWeight: FontWeight.bold),),
                    const SizedBox(width: 10,),
                    RoundCheckBox(
                      borderColor: const Color(0xffD0E2E5),
                      uncheckedColor: const Color(0xffD0E2E5),
                      checkedColor: const Color(0xff0474E1),
                      size: 25,
                      onTap: (value){})
                    ],),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      const Text('تعليق',style: TextStyle(color: Color(0xff1D0D63),fontFamily: 'sst arabic',fontSize: 12,),),
                     CustomCheckBox(
                      borderWidth: 2.5,
                      shouldShowBorder: true,
                      borderColor: const Color(0xff1D0D63),
                      checkBoxSize: 12,
                      borderRadius: 9,
                      value: false, onChanged: (value){}),
                      //SizedBox(width: 5,),
                      const Text('اجتياز',style: TextStyle(color: Color(0xff1D0D63),fontFamily: 'sst arabic',fontSize: 12,),),
                     CustomCheckBox(
                      borderWidth: 2.5,
                      shouldShowBorder: true,
                      borderColor: const Color(0xff1D0D63),
                      checkBoxSize: 12,
                      borderRadius: 9,
                      value: false, onChanged: (value){}),
                      Expanded(child: Container()),
                      const Text('المسجل / الشاشة',style: TextStyle(color: Color(0xff1D0D63),fontFamily: 'sst bold',fontSize: 14,fontWeight: FontWeight.bold),),
                    const SizedBox(width: 10,),
                    RoundCheckBox(
                      borderColor: const Color(0xffD0E2E5),
                      uncheckedColor: const Color(0xffD0E2E5),
                      checkedColor: const Color(0xff0474E1),
                      size: 25,
                      onTap: (value){})
                    ],),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      const Text('تعليق',style: TextStyle(color: Color(0xff1D0D63),fontFamily: 'sst arabic',fontSize: 12,),),
                     CustomCheckBox(
                      borderWidth: 2.5,
                      shouldShowBorder: true,
                      checkedFillColor: const Color(0xff1D0D63),
                      borderColor: const Color(0xff1D0D63),
                      checkBoxSize: 12,
                      borderRadius: 9,
                      value: false, onChanged: (value){}),
                      //SizedBox(width: 5,),
                      const Text('اجتياز',style: TextStyle(color: Color(0xff1D0D63),fontFamily: 'sst arabic',fontSize: 12,),),
                     CustomCheckBox(
                      
                      borderWidth: 2.5,
                      shouldShowBorder: true,
                      borderColor: const Color(0xff1D0D63),
                      checkBoxSize: 12,
                      borderRadius: 9,
                      value: false, onChanged: (value){}),
                      Expanded(child: Container()),
                      const Text('الطبلون',style: TextStyle(color: Color(0xff1D0D63),fontFamily: 'sst bold',fontSize: 14,fontWeight: FontWeight.bold),),
                    const SizedBox(width: 10,),
                    RoundCheckBox(
                      borderColor: const Color(0xffD0E2E5),
                      uncheckedColor: const Color(0xffD0E2E5),
                      checkedColor: const Color(0xff0474E1),
                      size: 25,
                      onTap: (value){})
                    ],),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 25),
                   child: Container(
                    height: 73,
                    width: screenSize.width,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,color: const Color(0xffD0E2E5)),
                      borderRadius: BorderRadius.circular(7),color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          children: [
                            const SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const [
                              Text('يوجد تشققات في جلد البون وبهتان اللون',style: TextStyle(color: Color(0xff1D0D63),fontFamily: 'sst arabic',fontSize: 10,),),
                            ],),
                          ],
                        ),
                      ),
                      ),
                 ),
                  // ListView.builder(itemBuilder: (i,context){

                  // }),
                   
                   const SizedBox(height: 20,),
                  
                ],
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 140,right: 40),
              child: Column(
                children:  [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50)),
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 0),
                      child: CircleAvatar(
                        radius: 60,
                        backgroundColor: Colors.white,
                        child: SvgPicture.asset('assets/images/Group 2020.svg'),
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
