// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:switch_app/Screens/Home.dart';

import 'Orders.dart';
import 'Profile.dart';

class noti extends StatefulWidget {
  const noti({super.key});

  @override
  State<noti> createState() => _notiState();
}

class _notiState extends State<noti> {
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    final ScreenSize = MediaQuery.of(context).size;
    return  Scaffold(
      bottomNavigationBar: SafeArea(child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          height: 74,
          decoration: const BoxDecoration(
            color: Color(0xff1D0D63),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20),bottomLeft: Radius.circular(7),bottomRight: Radius.circular(7))
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              InkWell(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[ SvgPicture.asset('assets/images/Group 96.svg',height: 20,),
                const Text('حسابي',style: TextStyle(fontFamily: 'sst bold',fontSize: 9,color: Colors.white),)
                ]),
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const Profile()));
                },
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[ SvgPicture.asset('assets/images/Group 2064.svg',height: 20,),
              const Text('المركبات',style: TextStyle(fontFamily: 'sst bold',fontSize: 9,color: Colors.white),)
              ]),
              const SizedBox(width: 5,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[ SvgPicture.asset('assets/images/Group 2062 (1).svg',height: 20,),
              const Text('التقارير',style: TextStyle(fontFamily: 'sst bold',fontSize: 9,color: Colors.white),)
              ]),
              InkWell(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[ SvgPicture.asset('assets/images/Icon ionic-md-paper.svg',height: 20,),
                const Text('الطلبات',style: TextStyle(fontFamily: 'sst bold',fontSize: 9,color: Colors.white),)
                ]),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const Orders()));
                },
              )
            ],),
          ),
        ),
      )),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home()));
      },
      backgroundColor: const Color(0xffBE1E2D),
      
      child: SvgPicture.asset('assets/images/Group 149.svg'),
      ),
      backgroundColor: const Color(0xffF5F9F7),
      body: Column(children: [
        Container(height: 144,width: ScreenSize.width,
        decoration: const BoxDecoration(
          color: Color(0xff1D0D63),
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))),
        child: Padding(
          padding: const EdgeInsets.only(top: 30,left: 30,right: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            SvgPicture.asset('assets/images/Group 472 (3).svg'),
                    SvgPicture.asset('assets/images/Group 121 (1).svg'),
                    SvgPicture.asset('assets/images/Group 5 (1).svg'),
          ],),
        ),
        ),
        const SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
            Text('حذف الكل',style: TextStyle(color: Color(0xffBE1E2D),fontFamily: 'sst bold',fontSize: 12),),
            Text('التنبيهات',style: TextStyle(color: Color(0xffBE1E2D),fontFamily: 'sst bold',fontSize: 12),),
          ],),
        ),
        const SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(height: 77,width: ScreenSize.width,
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(7),border: Border.all(width: 1,color: const Color(0xffD0E2E5))),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                const Text('تهنئة عبد الفطر المبارك',style: TextStyle(color: Color(0xffBE1E2D),fontFamily: 'sst bold',fontSize: 10),),
              
              const Text('كل عام عام وانتم بخير، تطبيق سويتش يهنيكم بعد الفطر المبارك',style: TextStyle(color: Color(0xff1D0D63),fontFamily: 'sst arabic',fontSize: 10),),
              const SizedBox(height: 5,),
              Row(children: const [
                Text('June 08, 2023',style: TextStyle(color: Color(0xff1D0D63),fontFamily: 'din',fontSize: 10),),
                SizedBox(width: 15,),
                Text('03:47 PM',style: TextStyle(color: Color(0xff1D0D63),fontFamily: 'din',fontSize: 10),),
              ],)
              ],),
              const SizedBox(width: 15,),
              SvgPicture.asset('assets/images/Group 2107.svg'),
            ],),
          ),
          ),
        ),
        const SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(height: 77,width: ScreenSize.width,
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(7),border: Border.all(width: 1,color: const Color(0xffD0E2E5))),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                const Text('عن التطبيق',style: TextStyle(color: Color(0xffBE1E2D),fontFamily: 'sst bold',fontSize: 10),),
              
              const Text('تطبيق سويتش التطبيق الوحيد الذي يقدم خدمة الفحص الشامل.والدقيق \n للمركبات لغرض الصيانة او البيع ',textAlign: TextAlign.end, style: TextStyle(color: Color(0xff1D0D63),fontFamily: 'sst arabic',fontSize: 10),),
              //const SizedBox(height: 5,),
              Row(children: const [
                Text('June 08, 2023',style: TextStyle(color: Color(0xff1D0D63),fontFamily: 'din',fontSize: 10),),
                SizedBox(width: 15,),
                Text('03:47 PM',style: TextStyle(color: Color(0xff1D0D63),fontFamily: 'din',fontSize: 10),),
              ],)
              ],),
              const SizedBox(width: 15,),
              SvgPicture.asset('assets/images/Group 2107.svg'),
            ],),
          ),
          ),
        ),
        const SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(height: 77,width: ScreenSize.width,
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(7),border: Border.all(width: 1,color: const Color(0xffD0E2E5))),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                const Text('فحص جديد',style: TextStyle(color: Color(0xffBE1E2D),fontFamily: 'sst bold',fontSize: 10),),
              
              const Text('مرحباً لؤي عثمان، تم اسناد طلب فحص جديد لسيارة من نوع نيسان تندرا',style: TextStyle(color: Color(0xff1D0D63),fontFamily: 'sst arabic',fontSize: 10),),
              const SizedBox(height: 5,),
              Row(children: const [
                Text('June 08, 2023',style: TextStyle(color: Color(0xff1D0D63),fontFamily: 'din',fontSize: 10),),
                SizedBox(width: 15,),
                Text('03:47 PM',style: TextStyle(color: Color(0xff1D0D63),fontFamily: 'din',fontSize: 10),),
              ],)
              ],),
              const SizedBox(width: 15,),
              SvgPicture.asset('assets/images/Group 2107.svg'),
            ],),
          ),
          ),
        ),
      ],),
    );
  }
}