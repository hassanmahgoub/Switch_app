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
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 5),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const Login())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F9F7),
      body: Stack(children: [
        Center(child: Image.asset("assets/images/Group 2036@2x.png",height: 155,)),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children:[ SvgPicture.asset("assets/images/Group 122.svg",height: 320,)]),
      ],)
      
    );
  }
}