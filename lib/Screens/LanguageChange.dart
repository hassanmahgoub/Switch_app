// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'Cars.dart';
import 'Home.dart';
import 'Profile.dart';
import 'Reports.dart';

class LanguageChange extends StatefulWidget {
  const LanguageChange({super.key});
  @override
  State<LanguageChange> createState() => _LanguageChangeState();
}

class _LanguageChangeState extends State<LanguageChange> {
    final formKey = GlobalKey<FormState>();

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
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Reports()));
                    },
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
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));
                    },
                    child: const Icon(Icons.arrow_back_ios,color: Colors.white,)),
                  SvgPicture.asset('assets/images/switch.svg'),
                  GestureDetector(
                    child: SvgPicture.asset('assets/images/menu.svg'),
                    onTap: () {
                    },
                  ),
                ],
              ),
            ),
          ),
          
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
