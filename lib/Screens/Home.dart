// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:switch_app/Screens/Noti.dart';
import 'Cars.dart';
import 'Profile.dart';
import 'Reports.dart';
class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {
  bool animate = false;
  
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    final ScreenSize = MediaQuery.of(context).size;
    return Scaffold(
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
                          'assets/images/profile.svg',
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
                    'assets/images/cars.svg',
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
                          'assets/images/orders.svg',
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Reports()));
                  },
                ),
                InkWell(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/images/order.svg',
                          height: 20,
                        ),
                        const Text(
                          'الطلبات',
                          style: TextStyle(
                              fontFamily: 'sst bold',
                              fontSize: 9,
                              color: Colors.white),
                        )
                      ]),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Cars()));
                  },
                )
              ],
            ),
          ),
        ),
      )),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xffBE1E2D),
        child: SvgPicture.asset('assets/images/home.svg'),
      ),
      backgroundColor: const Color(0xffF5F9F7),
      body: Stack(children: [
        Container(
          height: 233,
          width: ScreenSize.width,
          decoration: const BoxDecoration(
              color: Color(0xff1D0D63),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      child:
                          SvgPicture.asset('assets/images/noti.svg'),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const noti()));
                      },
                    ),
                    SvgPicture.asset('assets/images/switch.svg'),
                    SvgPicture.asset('assets/images/menu.svg'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 25, bottom: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      child:
                          SvgPicture.asset('assets/images/prof.svg'),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Profile()));
                      },
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'مرحباً بك في سويتش',
                          style: TextStyle(
                              color: Color(0xffBE1E2D),
                              fontFamily: 'sst bold',
                              fontSize: 16),
                        ),
                        Text(
                          'لؤي عثمان',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'sst bold',
                              fontSize: 14),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 235),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 0),
              child: Column(children: [
                const SizedBox(
                  height: 40,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    height: 181,
                    width: ScreenSize.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(
                          width: 1,
                          color: const Color(0xffD0E2E5),
                        )),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 25),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 50),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(left: 3),
                                    child: Column(
                                      children: [
                                        Text(
                                          '1898',
                                          style: TextStyle(
                                              color: Color(0xff707070),
                                              fontFamily: 'din',
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          'مكتمل',
                                          style: TextStyle(
                                              color: Color(0xff34C300),
                                              fontFamily: 'sst bold',
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Container(
                                      height: 50,
                                      width: 1,
                                      color: const Color(0xffDDDDDD),
                                    ),
                                  ),
                                  const Column(
                                    children: [
                                      Text(
                                        '209',
                                        style: TextStyle(
                                            color: Color(0xff707070),
                                            fontFamily: 'din',
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'جاري الفحص',
                                        style: TextStyle(
                                            color: Color(0xff1D0D63),
                                            fontFamily: 'sst bold',
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ]),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 58),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Column(
                                    children: [
                                      Text(
                                        '20',
                                        style: TextStyle(
                                            color: Color(0xff707070),
                                            fontFamily: 'din',
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'ملغي',
                                        style: TextStyle(
                                            color: Color(0xffE00000),
                                            fontFamily: 'sst bold',
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    height: 50,
                                    width: 1,
                                    color: const Color(0xffDDDDDD),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(right: 5),
                                    child: Column(
                                      children: [
                                        Text(
                                          '27',
                                          style: TextStyle(
                                              color: Color(0xff707070),
                                              fontFamily: 'din',
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          'مغلق',
                                          style: TextStyle(
                                              color: Color(0xffE00000),
                                              fontFamily: 'sst bold',
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                ]),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    height: 45,
                    width: ScreenSize.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(
                            width: 1, color: const Color(0xffD0E2E5))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            '2154',
                            style: TextStyle(
                                color: Color(0xffBE1E2D),
                                fontFamily: 'din',
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          Expanded(child: Container()),
                          const Text(
                            'العدد الكلي للطلبات',
                            style: TextStyle(
                                color: Color(0xff1D0D63),
                                fontFamily: 'sst bold',
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: SvgPicture.asset(
                                'assets/images/ordr.svg'),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                            height: 127,
                            width: 0,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(7),
                                border: Border.all(
                                    width: 1, color: const Color(0xffD0E2E5))),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 28),
                              child: InkWell(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SvgPicture.asset(
                                        'assets/images/report.svg',height: 40,),
                                    const Text(
                                      'التقارير',
                                      style: TextStyle(
                                          color: Color(0xff1D0D63),
                                          fontFamily: 'sst bold',
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const Reports()));
                                },
                              ),
                            )),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: InkWell(
                          child: Container(
                            height: 127,
                            width: 127,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(7),
                                border: Border.all(
                                    width: 1, color: const Color(0xffD0E2E5))),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 30),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SvgPicture.asset(
                                      'assets/images/car.svg'),
                                  const Text(
                                    'السيارات',
                                    style: TextStyle(
                                        color: Color(0xff1D0D63),
                                        fontFamily: 'sst bold',
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Cars()));
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                //MyHomeContainer(image: 'assets/images/report.svg', text: ''),
              ]),
            ),
          ),
        ),
      ]),
    );
  }
  // Future startAnimation() async{
  //   await Future.delayed(Duration(milliseconds: 500));
  //   setState(() => animate = true,);
  //   await Future.delayed(Duration(milliseconds: 5000));
  //   // ignore: use_build_context_synchronously
  // }
}

