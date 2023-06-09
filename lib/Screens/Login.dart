// ignore_for_file: body_might_complete_normally_nullable, avoid_print, file_names



import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../Widgets/themeConstant.dart';
import 'Home.dart';
import 'Return.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
   
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    TextTheme _textTheme = Theme.of(context).textTheme;
  bool isDark = Theme.of(context).brightness == Brightness.dark;
    // ignore: non_constant_identifier_names
    final ScreenSize = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: const Color(0xffF5F9F7),
        body: Stack(children: [
          // Switch(value: _themeManager.themeMode == ThemeMode.dark, onChanged: (newValue){
          //                 _themeManager.toggleTheme(newValue);
          //               }),
          Positioned(
            right: -130,
            child: SvgPicture.asset(
              "assets/images/splash.svg",
              height: 600,
            ),
          ),
          SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                   Padding(
                    padding: const EdgeInsets.only(top: 80, left: 20),
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/images/languicon.svg'),
                        const SizedBox(
                          width: 6,
                        ),
                        const Text(
                          "English",
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Din',
                              color: Color(0xff1D0D63)),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 200),
                  ),
                  Stack(children: [
                    Center(
                        child: SvgPicture.asset(
                            'assets/images/rectangle.svg')),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "تسجيل الدخول",
                          style: TextStyle(
                            color: Color(0xff009FBD),
                            fontSize: 20,
                            fontFamily: "sst bold",
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(7)),
                            height: 45,
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              style: const TextStyle(color: Colors.black),
                              //controller: _email,
                              decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(7),
                                      borderSide: const BorderSide(
                                          color: Colors.white)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          const BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(7)),
                                  border: const OutlineInputBorder(
                                      borderSide: BorderSide.none),
                                  label: const Center(
                                    child: Text(
                                      'رقم الجوال',
                                      style: TextStyle(
                                        fontFamily: 'Din',
                                        fontSize: 16,
                                        color: Color(0xff52505F),
                                      ),
                                    ),
                                  )),
                              // validator: (value) {
                              //   if (value!.isEmpty ||
                              //       !RegExp(r'^(?:[+0][1-9])?[0-9]{10,12}$')
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
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(7)),
                            height: 45,
                            child: TextFormField(
                              onTap: () async {},
                              keyboardType: TextInputType.emailAddress,
                              style: const TextStyle(color: Colors.black),
                              //controller: _email,
                              decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(7),
                                      borderSide: const BorderSide(
                                          color: Colors.white)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          const BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(7)),
                                  border: const OutlineInputBorder(
                                      borderSide: BorderSide.none),
                                  label: const Center(
                                    child: Text(
                                      'كلمة المرور',
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
                                  "تسجيل دخول",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontFamily: 'sst arabic'),
                                )),
                              ),
                              onTap: () {
                                if (formKey.currentState!.validate()) {
                                   Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Home()));
                                }
                              }),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              child: const Text(
                                'استرجعها',
                                style: TextStyle(
                                    color: Color(0xff1D0D63),
                                    fontFamily: 'sst bold'),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Return()));
                              },
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              'هل نسيت كلمة المرور؟',
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xFF2F2362),
                                  fontFamily: 'sst arabic'),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 148,
                        ),
                      ],
                    ),
                  ])
                ],
              ),
            ),
          )
        ]));
  }
  // Future startAnimation() async{
  //   await Future.delayed(Duration(milliseconds: 500));
  //   setState(() => animate = true,);
  //   await Future.delayed(Duration(milliseconds: 5000));
  //   // ignore: use_build_context_synchronously
  //   Navigator.push(context, MaterialPageRoute(builder: (context)=> Login()));
  // }
}
