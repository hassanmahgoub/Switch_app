// ignore_for_file: implementation_imports, unnecessary_import, file_names, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:switch_app/Screens/Cars.dart';

import 'ReportsSub.dart';

class Orders extends StatefulWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
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
                      MaterialPageRoute(builder: (context) => const Cars()));
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
                          radius: 35.0,
                          lineWidth: 6.5,
                          backgroundWidth: 3,
                          animationDuration: 500,
                          percent: 0.27,
                          circularStrokeCap: CircularStrokeCap.round,
                          backgroundColor: const Color(0xff0474E1),
                          center: const Text('75%',style: TextStyle(color: Color(0xff1D0D63),fontSize: 12,fontFamily: 'sst arabic',fontWeight: FontWeight.bold),),
                          progressColor: const Color(0xFf1D0D63),
                        ),
                        // ignore: prefer_const_constructors
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            Row(
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
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    color: Colors.grey,
                    endIndent: 20,
                    indent: 20,
                    thickness: 1,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          child: Column(children: [
                            SvgPicture.asset('assets/images/enter.svg'),
                            const Text(
                              'الداخلية',
                              style: TextStyle(
                                  color: Color(0xff009FBD),
                                  fontFamily: 'sst arabic',
                                  fontSize: 10),
                            ),
                            //const SizedBox(height: 10,),
                            const Row(
                              children: [
                                Text(
                                  'نقطة',
                                  style: TextStyle(
                                      color: Color(0xff1D0D63),
                                      fontFamily: 'sst arabic',
                                      fontSize: 10),
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  '26',
                                  style: TextStyle(
                                      color: Color(0xff3D9FD7),
                                      fontFamily: 'sst bold',
                                      fontSize: 13),
                                ),
                              ],
                            )
                          ]),
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ReportsSub()));
                          },
                        ),
                        InkWell(
                          child: Column(children: [
                            SvgPicture.asset('assets/images/body.svg'),
                            const Text(
                              'البودي',
                              style: TextStyle(
                                  color: Color(0xff009FBD),
                                  fontFamily: 'sst bold',
                                  fontSize: 10),
                            ),
                            const Row(
                              children: [
                                Text(
                                  'نقطة',
                                  style: TextStyle(
                                      color: Color(0xff1D0D63),
                                      fontFamily: 'sst arabic',
                                      fontSize: 10),
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  '25',
                                  style: TextStyle(
                                      color: Color(0xff3D9FD7),
                                      fontFamily: 'sst bold',
                                      fontSize: 13),
                                ),
                              ],
                            )
                          ]),
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ReportsSub()));
                          },
                        ),
                        InkWell(
                          child: Column(children: [
                            SvgPicture.asset('assets/images/engine.svg'),
                            const Text(
                              'المحرك',
                              style: TextStyle(
                                  color: Color(0xff009FBD),
                                  fontFamily: 'sst bold',
                                  fontSize: 10),
                            ),
                            const Row(
                              children: [
                                Text(
                                  'نقطة',
                                  style: TextStyle(
                                      color: Color(0xff1D0D63),
                                      fontFamily: 'sst arabic',
                                      fontSize: 10),
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  '70',
                                  style: TextStyle(
                                      color: Color(0xff3D9FD7),
                                      fontFamily: 'sst bold',
                                      fontSize: 13),
                                ),
                              ],
                            )
                          ]),
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ReportsSub()));
                          },
                        ),
                        InkWell(
                          child: Column(children: [
                            SvgPicture.asset('assets/images/frame.svg'),
                            const Text(
                              'الهيكل',
                              style: TextStyle(
                                  color: Color(0xff009FBD),
                                  fontFamily: 'sst bold',
                                  fontSize: 10),
                            ),
                            const Row(
                              children: [
                                Text(
                                  'نقطة',
                                  style: TextStyle(
                                      color: Color(0xff1D0D63),
                                      fontFamily: 'sst arabic',
                                      fontSize: 10),
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  '15',
                                  style: TextStyle(
                                      color: Color(0xff3D9FD7),
                                      fontFamily: 'sst bold',
                                      fontSize: 13),
                                ),
                              ],
                            )
                          ]),
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ReportsSub()));
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          child: Column(children: [
                            SvgPicture.asset('assets/images/road.svg'),
                            const Text(
                              'فحص طريق',
                              style: TextStyle(
                                  color: Color(0xff009FBD),
                                  fontFamily: 'sst arabic',
                                  fontSize: 10),
                            ),
                            //const SizedBox(height: 10,),
                            const Row(
                              children: [
                                Text(
                                  'نقطة',
                                  style: TextStyle(
                                      color: Color(0xff1D0D63),
                                      fontFamily: 'sst arabic',
                                      fontSize: 10),
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  '20',
                                  style: TextStyle(
                                      color: Color(0xff3D9FD7),
                                      fontFamily: 'sst bold',
                                      fontSize: 13),
                                ),
                              ],
                            )
                          ]),
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ReportsSub()));
                          },
                        ),
                        InkWell(
                          child: Column(children: [
                            SvgPicture.asset('assets/images/emergn.svg'),
                            const Text(
                              'الكهرباء',
                              style: TextStyle(
                                  color: Color(0xff009FBD),
                                  fontFamily: 'sst bold',
                                  fontSize: 10),
                            ),
                            const Row(
                              children: [
                                Text(
                                  'نقطة',
                                  style: TextStyle(
                                      color: Color(0xff1D0D63),
                                      fontFamily: 'sst arabic',
                                      fontSize: 10),
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  '20',
                                  style: TextStyle(
                                      color: Color(0xff3D9FD7),
                                      fontFamily: 'sst bold',
                                      fontSize: 13),
                                ),
                              ],
                            )
                          ]),
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ReportsSub()));
                          },
                        ),
                        InkWell(
                          child: Column(children: [
                            SvgPicture.asset('assets/images/brake.svg'),
                            const Text(
                              'الفرامل',
                              style: TextStyle(
                                  color: Color(0xff009FBD),
                                  fontFamily: 'sst bold',
                                  fontSize: 10),
                            ),
                            const Row(
                              children: [
                                Text(
                                  'نقطة',
                                  style: TextStyle(
                                      color: Color(0xff1D0D63),
                                      fontFamily: 'sst arabic',
                                      fontSize: 10),
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  '70',
                                  style: TextStyle(
                                      color: Color(0xff3D9FD7),
                                      fontFamily: 'sst bold',
                                      fontSize: 13),
                                ),
                              ],
                            )
                          ]),
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ReportsSub()));
                          },
                        ),
                        InkWell(
                          child: Column(children: [
                            SvgPicture.asset('assets/images/tire.svg'),
                            const Text(
                              'الاطارات',
                              style: TextStyle(
                                  color: Color(0xff009FBD),
                                  fontFamily: 'sst bold',
                                  fontSize: 10),
                            ),
                            const Row(
                              children: [
                                Text(
                                  'نقطة',
                                  style: TextStyle(
                                      color: Color(0xff1D0D63),
                                      fontFamily: 'sst arabic',
                                      fontSize: 10),
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  '15',
                                  style: TextStyle(
                                      color: Color(0xff3D9FD7),
                                      fontFamily: 'sst bold',
                                      fontSize: 13),
                                ),
                              ],
                            ),
                          ]),
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ReportsSub()));
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 180,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: InkWell(
                      child: Container(
                        height: 40,
                        width: screenSize.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: const Color(0xff1D0D63)),
                        child: const Center(
                            child: Text(
                          'إغلاق التقرير وارسال للمراجعة',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'sst bold',
                              fontSize: 16),
                        )),
                      ),
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Cars()));
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  )
                ],
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 140, right: 40),
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
                        radius: 60,
                        backgroundColor: Colors.white,
                        child: SvgPicture.asset('assets/images/merc.svg'),
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

