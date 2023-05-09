// ignore: file_names
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:switch_app/Screens/Noti.dart';

import 'Home.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    final ScreenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xff1D0D63),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const SizedBox(height: 80,),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    InkWell(child: Icon(Icons.arrow_back_ios,color: Colors.white,size: 20,),
                    onTap: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home()));
                    },
                    ),InkWell(child: SvgPicture.asset('assets/images/Group 472 (3).svg'),
                    
                    
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>noti()));
                    },
                    ),
                  ],),
                ),
                const SizedBox(height: 40,),
            Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('!لؤي',style: TextStyle(color: Colors.white,fontFamily: 'sst bold',fontSize: 26),),
            Text(',مرحباً',style: TextStyle(color: Color(0xffBE1E2D),fontFamily: 'sst arabic',fontSize: 26),),
            ],
            ),
            SizedBox(height: 10,),
            SvgPicture.asset('assets/images/Group 2040.svg'),
            const Text('ورشة العربة الذهبية',style: TextStyle(color: Colors.white,fontFamily: 'sst bold',fontSize: 18),),
            const Text('الرياض، السعودية',style: TextStyle(color: Colors.white,fontFamily: 'din',fontSize: 16),),
          
              ],
            ),
            const SizedBox(height: 100,),
            Container(height: ScreenSize.height,width: ScreenSize.width,decoration: const BoxDecoration(
            color: Color(0xffF5F9F7),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(36),topRight: Radius.circular(36))
          ),
          child: Stack(
            children:[ Column(children: [
              const SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                  Text('الملف الشخصي',style: TextStyle(color: Color(0xffBE1E2D),fontFamily: 'sst bold',fontSize: 16),),
                ],),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    Icon(Icons.arrow_back_ios,color: Color(0xff1D0D63),size: 15,),
                    Expanded(child: Container()),
                    Text('تعديل معلوماتي',style: TextStyle(color: Color(0xff1D0D63),fontFamily: 'din',fontSize: 16,fontWeight: FontWeight.bold),),
                    SizedBox(width: 25,),
                    SvgPicture.asset('assets/images/Group 81.svg'),
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    const Icon(Icons.arrow_back_ios,color: Color(0xff1D0D63),size: 15,),
                    Expanded(child: Container()),
                    Text('تغيير كلمة المرور',style: TextStyle(color: Color(0xff1D0D63),fontFamily: 'din',fontSize: 16,fontWeight: FontWeight.bold),),
                    SizedBox(width: 25,),
                    SvgPicture.asset('assets/images/Group 83.svg')
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    Icon(Icons.arrow_back_ios,color: Color(0xff1D0D63),size: 15,),
                    Expanded(child: Container()),
                    Text('تغيير اللغة',style: TextStyle(color: Color(0xff1D0D63),fontFamily: 'din',fontSize: 16,fontWeight: FontWeight.bold),),
                    SizedBox(width: 25,),
                    SvgPicture.asset('assets/images/Group 2041.svg'),
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    Expanded(child: Container()),
                    const Text('خروج',style: TextStyle(color: Color(0xff1D0D63),fontFamily: 'din',fontSize: 16,fontWeight: FontWeight.bold),),
                  SizedBox(width: 25,),
                  SvgPicture.asset('assets/images/Group 2034.svg'),
                  ],
                ),
              ),
              
            ],),
            
          ]),
          ),
          
        ],),
      ),
    );
  }
}