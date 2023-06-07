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
   @override
  @override
  void initState(){
    super.initState();
    Timer(const Duration(seconds: 5), ()=>Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>const Login())));
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF5F9F7),
        body:
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 100),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center ,
                    children: [
                      Center(
                        child: Image.asset(
                          "assets/images/switch.png",
                          height:120,
                        ),
                      ),
                      Center(child: SvgPicture.asset('assets/images/switchname.svg')),
                    ],
                  ),
                ),
                
             
            Expanded(child: Container()),
            Stack(
              children: [
                Positioned(
                  bottom: -40,
                  left: -20,
                  child: SvgPicture.asset(
                    "assets/images/splash.svg",
                    height: 300,
                  ),
                ),
              ],
            ),
   ],
            ),
        );
        
  }
  
}
