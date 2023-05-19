// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:switch_app/Screens/Noti.dart';
import 'package:switch_app/Widgets/Examine.dart';
import 'Home.dart';
import 'Profile.dart';
import 'Reports.dart';

class Cars extends StatelessWidget {
  const Cars({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    final ScreenSize = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: FloatingActionButton(
        focusNode: null,
        mouseCursor: MouseCursor.uncontrolled,
        isExtended: false,
        disabledElevation: null,
        elevation: 1,
        focusElevation: null,
        mini: false,
        clipBehavior: Clip.none,
        onPressed: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => const Home()));
        },
        backgroundColor: const Color(0xffBE1E2D),
        child: SvgPicture.asset('assets/images/Group 149.svg'),
      ),
      bottomNavigationBar: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          height: 74,
          decoration: const BoxDecoration(
              color: Color(0xff1D0D63),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(7),
                  bottomRight: Radius.circular(7))),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/images/Group 96.svg',
                          height: 20,
                        ),
                        const Text(
                          'حسابي',
                          style: TextStyle(
                              fontFamily: 'sst bold',
                              fontSize: 9,
                              color: Colors.white),
                        )
                      ]),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Profile()));
                  },
                ),
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                  SvgPicture.asset(
                    'assets/images/Group 2064.svg',
                    height: 20,
                  ),
                  const Text(
                    'المركبات',
                    style: TextStyle(
                        fontFamily: 'sst bold',
                        fontSize: 9,
                        color: Colors.white),
                  )
                ]),
                const SizedBox(
                  width: 5,
                ),
                InkWell(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/images/Group 2062 (1).svg',
                          height: 20,
                        ),
                        const Text(
                          'التقارير',
                          style: TextStyle(
                              fontFamily: 'sst bold',
                              fontSize: 9,
                              color: Colors.white),
                        )
                      ]),
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Reports()));
                  },
                ),
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                  SvgPicture.asset(
                    'assets/images/Icon ionic-md-paper.svg',
                    height: 20,
                  ),
                  const Text(
                    'الطلبات',
                    style: TextStyle(
                        fontFamily: 'sst bold',
                        fontSize: 9,
                        color: Colors.white),
                  )
                ])
              ],
            ),
          ),
        ),
      )),
      backgroundColor: const Color(0xffF5F9F7),
      body: Stack(
        children: [
          Container(
            height: 144,
            width: ScreenSize.width,
            decoration: const BoxDecoration(
                color: Color(0xff1D0D63),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 40),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      child: SvgPicture.asset(
                        'assets/images/Group 472 (5).svg',
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const noti()));
                      },
                    ),
                    SvgPicture.asset('assets/images/Group 121 (1).svg'),
                    SvgPicture.asset('assets/images/Group 5 (1).svg'),
                  ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 150),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(7),
                          border: Border.all(
                              width: 1, color: const Color(0xffD0E2E5))),
                      child: TextField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            border: const OutlineInputBorder(
                                borderSide: BorderSide.none),
                            //enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(7),borderSide: const BorderSide(width: 1,color: Colors.white)),
                            enabled: true,
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(10),
                              child: SvgPicture.asset(
                                'assets/images/Group 2057.svg',
                                height: 10,
                              ),
                            ),
                            labelText: 'بحث',
                            hintStyle: const TextStyle(
                              fontFamily: 'din',
                              color: Color(0xff52505F),
                              fontSize: 16,
                            )),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'طلبات الفحص',
                          style: TextStyle(
                              color: Color(0xffBE1E2D),
                              fontFamily: 'sst bold',
                              fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Examine(),
                  const SizedBox(
                    height: 10,
                  ),
                  const Examine(),
                  const SizedBox(
                    height: 10,
                  ),
                  const Examine(),
                  const SizedBox(
                    height: 40,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
