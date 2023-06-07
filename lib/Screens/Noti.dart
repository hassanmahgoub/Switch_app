// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:switch_app/Screens/Home.dart';

import 'Orders.dart';
import 'Profile.dart';
import 'Reports.dart';

class noti extends StatefulWidget {
  const noti({super.key});

  @override
  State<noti> createState() => _notiState();
}

class _notiState extends State<noti> {
  @override
  Widget build(BuildContext context) {
    final textScale = MediaQuery.of(context).textScaleFactor;
    // ignore: avoid_print
    print(textScale);
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
                    Navigator.pushReplacement(
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Orders()));
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
        onPressed: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => const Home()));
        },
        backgroundColor: const Color(0xff009FBD),
        child: SvgPicture.asset('assets/images/home.svg'),
      ),
      backgroundColor: const Color(0xffF5F9F7),
      body: Column(
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
              padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset('assets/images/noti.svg'),
                  SvgPicture.asset('assets/images/switch.svg'),
                  SvgPicture.asset('assets/images/menu.svg'),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'حذف الكل',
                  style: TextStyle(
                      color: Color(0xff009FBD),
                      fontFamily: 'sst bold',
                      fontSize: 12),
                ),
                Text(
                  'التنبيهات',
                  style: TextStyle(
                      color: Color(0xff009FBD),
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
              height: 77,
              width: ScreenSize.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7),
                  border: Border.all(width: 1, color: const Color(0xffD0E2E5))),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'تهنئة عبد الفطر المبارك',
                          maxLines: 1,
                          style: TextStyle(
                              color: Color(0xff009FBD),
                              fontFamily: 'sst bold',
                              fontSize: 10,
                              overflow: TextOverflow.ellipsis),
                        ),
                        Text(
                          'كل عام وانتم بخير، تطبيق سويتش يهنيكم بعد الفطر المبارك',
                          style: TextStyle(
                              color: Color(0xff1D0D63),
                              fontFamily: 'sst arabic',
                              fontSize: 9.5),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text(
                              'June 08, 2023',
                              style: TextStyle(
                                  color: Color(0xff1D0D63),
                                  fontFamily: 'din',
                                  fontSize: 10),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              '03:47 PM',
                              style: TextStyle(
                                  color: Color(0xff1D0D63),
                                  fontFamily: 'din',
                                  fontSize: 10),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    SvgPicture.asset('assets/images/notif.svg'),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              height: 77,
              width: ScreenSize.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7),
                  border: Border.all(width: 1, color: const Color(0xffD0E2E5))),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'عن التطبيق',
                          style: TextStyle(
                              color: Color(0xff009FBD),
                              fontFamily: 'sst bold',
                              fontSize: 10),
                        ),
                        Text(
                          'تطبيق سويتش التطبيق الوحيد الذي يقدم خدمة الفحص الشامل'
                          '.والدقيق \n للمركبات لغرض الصيانة او البيع ',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            overflow: TextOverflow.ellipsis,
                            color: const Color(0xff1D0D63),
                            fontFamily: 'sst arabic',
                            fontSize: 9.5 * textScale,
                          ),
                          maxLines: 1,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Row(
                          children: [
                            Text(
                              'June 08, 2023',
                              style: TextStyle(
                                  color: Color(0xff1D0D63),
                                  fontFamily: 'din',
                                  fontSize: 10),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              '03:47 PM',
                              style: TextStyle(
                                  overflow: TextOverflow.ellipsis,
                                  color: Color(0xff1D0D63),
                                  fontFamily: 'din',
                                  fontSize: 10),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    SvgPicture.asset('assets/images/notif.svg'),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              height: 77,
              width: ScreenSize.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7),
                  border: Border.all(width: 1, color: const Color(0xffD0E2E5))),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'فحص جديد',
                          style: TextStyle(
                              color: Color(0xff009FBD),
                              fontFamily: 'sst bold',
                              fontSize: 10),
                        ),
                        Text(
                          'مرحباً لؤي عثمان، تم اسناد طلب فحص جديد لسيارة من نوع نيسان تندرا',
                          maxLines: 1,
                          style: TextStyle(
                              color: Color(0xff1D0D63),
                              fontFamily: 'sst arabic',
                              fontSize: 9.5,
                              overflow: TextOverflow.ellipsis),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text(
                              'June 08, 2023',
                              style: TextStyle(
                                  color: Color(0xff1D0D63),
                                  fontFamily: 'din',
                                  fontSize: 10),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              '03:47 PM',
                              style: TextStyle(
                                  color: Color(0xff1D0D63),
                                  fontFamily: 'din',
                                  fontSize: 10),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    SvgPicture.asset('assets/images/notif.svg'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
