// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'Cars.dart';
import 'Home.dart';
import 'Profile.dart';
import 'Reports.dart';

class PasswordChange extends StatefulWidget {
  const PasswordChange({super.key});
  @override
  State<PasswordChange> createState() => _PasswordChangeState();
}

class _PasswordChangeState extends State<PasswordChange> {
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
            decoration: BoxDecoration(
                color: const Color(0xff1D0D63),
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(7),
                    bottomRight: Radius.circular(7)),
                border: Border.all(width: 1, color: const Color(0xffD0E2E5))),
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
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Profile()));
                      },
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      )),
                  SvgPicture.asset('assets/images/switch.svg'),
                  GestureDetector(
                    child: SvgPicture.asset('assets/images/menu.svg'),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'تعديل كلمة المرور',
                  style: TextStyle(
                      color: Color(0xff009FBD),
                      fontFamily: 'din',
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(7)),
              height: 45,
              child: TextFormField(
                obscureText: true,
                onTap: () async {},
                keyboardType: TextInputType.visiblePassword,
                style: const TextStyle(color: Colors.black),
                //controller: _email,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7),
                        borderSide: const BorderSide(color: Colors.white)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(7)),
                    border:
                        const OutlineInputBorder(borderSide: BorderSide.none),
                    label: const Center(
                      child: Text(
                        'كلمة المرور السابقة',
                        style: TextStyle(
                          fontFamily: 'Din',
                          fontSize: 16,
                          color: Color(0xff52505F),
                        ),
                      ),
                    )),
                // validator: (value) {
                //   if (value!.isEmpty ||
                //       !RegExp(r'[!@#$%^&*(),.?":{}|<>]')
                //           .hasMatch(value)) {
                //     return 'incorrect';
                //   } else {
                //     print(value);
                //   }
                // },
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(7)),
              height: 45,
              child: TextFormField(
                obscureText: true,
                onTap: () async {},
                keyboardType: TextInputType.visiblePassword,
                style: const TextStyle(color: Colors.black),
                //controller: _email,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7),
                        borderSide: const BorderSide(color: Colors.white)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(7)),
                    border:
                        const OutlineInputBorder(borderSide: BorderSide.none),
                    label: const Center(
                      child: Text(
                        'كلمة المرور الجديدة',
                        style: TextStyle(
                          fontFamily: 'Din',
                          fontSize: 16,
                          color: Color(0xff52505F),
                        ),
                      ),
                    )),
                // validator: (value) {
                //   if (value!.isEmpty ||
                //       !RegExp(r'[!@#$%^&*(),.?":{}|<>]')
                //           .hasMatch(value)) {
                //     return 'incorrect';
                //   } else {
                //     print(value);
                //   }
                // },
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(7)),
              height: 45,
              child: TextFormField(
                obscureText: true,
                onTap: () async {},
                keyboardType: TextInputType.visiblePassword,
                style: const TextStyle(color: Colors.black),
                //controller: _email,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7),
                        borderSide: const BorderSide(color: Colors.white)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(7)),
                    border:
                        const OutlineInputBorder(borderSide: BorderSide.none),
                    label: const Center(
                      child: Text(
                        'تكرار كلمة المرور الجديدة',
                        style: TextStyle(
                          fontFamily: 'Din',
                          fontSize: 16,
                          color: Color(0xff52505F),
                        ),
                      ),
                    )),
                // validator: (value) {
                //   if (value!.isEmpty ||
                //       !RegExp(r'[!@#$%^&*(),.?":{}|<>]')
                //           .hasMatch(value)) {
                //     return 'incorrect';
                //   } else {
                //     print(value);
                //   }
                // },
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: InkWell(
                child: Container(
                  height: 40,
                  width: ScreenSize.width,
                  decoration: BoxDecoration(
                      color: const Color(0xff1D0D63),
                      borderRadius: BorderRadius.circular(7)),
                  child: const Center(
                      child: Text(
                    "حفظ التعديلات",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'sst arabic'),
                  )),
                ),
                onTap: () {
                  // if (formKey.currentState!.validate()) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Profile()));
                  //}
                }),
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
