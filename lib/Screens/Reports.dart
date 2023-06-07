// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/svg.dart';
import 'package:switch_app/Widgets/reportData.dart';
import 'Cars.dart';
import 'Home.dart';
import 'Noti.dart';
import 'Profile.dart';

class Reports extends StatefulWidget {
  const Reports({super.key});
  @override
  State<Reports> createState() => _ReportsState();
}

class _ReportsState extends State<Reports> {
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    final ScreenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xffF5F9F7),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            height: 74,
            decoration:  BoxDecoration(
                color: const Color(0xff1D0D63),
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(7),
                    bottomRight: Radius.circular(7)),
                    border: Border.all(
                            width: 1, color: const Color(0xffD0E2E5))
                    ),
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
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
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
                  Column(
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
                              builder: (context) => const Cars()));
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
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
                  InkWell(
                    child: SvgPicture.asset('assets/images/noti.svg'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const noti()));
                    },
                  ),
                  SvgPicture.asset('assets/images/switch.svg'),
                  GestureDetector(
                    child: SvgPicture.asset('assets/images/menu.svg'),
                    onTap: () {
                      Scaffold.of(context).openDrawer();
                    },
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              height: 45,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7),
                  border: Border.all(width: 1, color: const Color(0xffD0E2E5))),
              child: TextField(
                style: const TextStyle(color: Color(0xff1D0D63)),
                textAlign: TextAlign.end,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    border:
                        const OutlineInputBorder(borderSide: BorderSide.none),
                    enabled: true,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(10),
                      child: SvgPicture.asset(
                        'assets/images/search.svg',
                        height: 10,
                      ),
                    ),
                    hintText: 'بحث',
                    hintStyle: const TextStyle(
                      fontFamily: 'din',
                      color: Color(0xff52505F),
                      fontSize: 16,
                    )),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'التقارير',
                  style: TextStyle(
                      color: Color(0xff009FBD),
                      fontFamily: 'sst bold',
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: reportData.length,
                itemBuilder: (context, index) {
                  final data = reportData[index];
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10,left: 10,right: 10),
                    child: Slidable(
                        endActionPane:
                            ActionPane(
                              motion: const StretchMotion(), children: [
                          SlidableAction(
                            autoClose: true,
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(7),
                                bottomRight: Radius.circular(7)),
                            onPressed: ((context) {}),
                            icon: Icons.delete_outline,
                            backgroundColor: const Color(0xffD0E2E5),
                          )
                        ]),
                        direction: Axis.horizontal,
                        enabled: true,
                        child: Container(
                          height: 100,
                          width: ScreenSize.width,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(7),
                              border: Border.all(
                                  width: 1, color: const Color(0xffD0E2E5))),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SvgPicture.asset('assets/images/glass.svg'),
                                  //data.glassIcon,
                                  Expanded(child: Container()),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        data.carName,
                                        style: const TextStyle(
                                            color: Color(0xff1D0D63),
                                            fontFamily: 'sst bold',
                                            fontSize: 12),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            data.examineType,
                                            style: const TextStyle(
                                                color: Color(0xff009FBD),
                                                fontFamily: 'din',
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            data.reportType,
                                            style: const TextStyle(
                                                color: Color(0xff1D0D63),
                                                fontFamily: 'sst arabic',
                                                fontSize: 12),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            data.reportNumber,
                                            style: const TextStyle(
                                                color: Color(0xffBE1E2D),
                                                fontFamily: 'din',
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            data.reportNumberName,
                                            style: const TextStyle(
                                                color: Color(0xff1D0D63),
                                                fontFamily: 'sst arabic',
                                                fontSize: 12),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  data.carIcon
                                ]),
                          ),
                        )),
                  );
                }),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Home()));
        },
        backgroundColor: const Color(0xff009FBD),
        child: SvgPicture.asset('assets/images/home.svg'),
      ),
    );
  }
}
