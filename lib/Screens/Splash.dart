// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, annotate_overrides, file_names
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'Login.dart';
class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  bool animate =false;
  @override
  void initState() {
    startAnimation();
    super.initState();
  }
  // void initState() {
  //   super.initState();
  //   Timer(
  //       const Duration(seconds: 5),
  //       () => Navigator.pushReplacement(
  //           context, MaterialPageRoute(builder: (context) => const Login())));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF5F9F7),
        body: Stack(
          children: [
            AnimatedPositioned(
              duration: Duration(milliseconds: 1000),
              top: animate? 0 : -600,
              left: 10,
              right: animate ? 0 : -600,
              bottom: 170,
              child: Center(
                  child: Image.asset(
                "assets/images/Group 2036@2x.png",
                height: 170,
              )),
            ),
            AnimatedPositioned(
              duration: Duration(milliseconds: 1000),
              top: 0,
              left: animate ? 0 : -600,
              right: 140,
              bottom:animate ? 0 : -100,
              child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                SvgPicture.asset(
                  "assets/images/Group 122.svg",
                  height: 380,
                )
              ]),
            ),
          ],
        ));
  }
  
  Future startAnimation() async{
    await Future.delayed(Duration(milliseconds: 500));
    setState(() => animate = true,);
    await Future.delayed(Duration(milliseconds: 5000));
    // ignore: use_build_context_synchronously
    Navigator.push(context, MaterialPageRoute(builder: (context)=> Login()));
  }
}
