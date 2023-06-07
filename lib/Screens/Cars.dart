// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:switch_app/Screens/Noti.dart';
import 'package:switch_app/Screens/Orders.dart';
import 'package:switch_app/Widgets/ExaminOrderData.dart';
import 'Home.dart';
import 'Profile.dart';
import 'Reports.dart';

class Cars extends StatelessWidget {
  const Cars({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    final ScreenSize = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: FloatingActionButton(
        focusNode: null,
        isExtended: false,
        disabledElevation: null,
        elevation: 1,
        focusElevation: null,
        mini: false,
        clipBehavior: Clip.none,
        onPressed: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => const Home()));
        },
        backgroundColor: const Color(0xff009FBD),
        child: SvgPicture.asset('assets/images/home.svg'),
      ),
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
                    Navigator.push(
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
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Reports()));
                  },
                ),
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
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
                ])
              ],
            ),
          ),
        ),
      )),
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
              padding: const EdgeInsets.only(left: 30, right: 30, top: 40),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      child: SvgPicture.asset(
                        'assets/images/noti.svg',
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const noti()));
                      },
                    ),
                    SvgPicture.asset('assets/images/switch.svg'),
                    SvgPicture.asset('assets/images/menu.svg'),
                  ]),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    height: 45,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(
                            width: 1, color: const Color(0xffD0E2E5))),
                    child: TextField(
                      style: TextStyle(color: Color(0xff1D0D63)),
                      textAlign: TextAlign.end,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          border: const OutlineInputBorder(
                              borderSide: BorderSide.none),
                          //enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(7),borderSide: const BorderSide(width: 1,color: Colors.white)),
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
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'طلبات الفحص',
                        style: TextStyle(
                            color: Color(0xff009FBD),
                            fontFamily: 'sst bold',
                            fontSize: 12),
                      ),
                    ],
                  ),
                ),
                
                
              ],
            ),
          ),
          Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: examineOrderData.length,
                      itemBuilder: (context, index){
                        final examineOrder = examineOrderData[index];
                        return Padding(
                          padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                              const Icon(Icons.arrow_back_ios,size: 15,color: Color(0xffD0E2E5),),
                              examineOrder.precentIndicator,
                              Expanded(child: Container()),
                              Padding(
                                padding: const EdgeInsets.only(top: 15,bottom: 15),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Orders()));
                                      },
                                      child: Text(examineOrder.carName,style: const TextStyle(color: Color(0xff1D0D63),fontFamily: 'sst arabic',fontSize: 12,fontWeight: FontWeight.bold),)),
                                    Text(examineOrder.shasNumber,style: const TextStyle(color: Color(0xff0474E1),fontFamily: 'din',fontSize: 12,),),
                                  Row(children: [
                                    Text(examineOrder.orderNumber,style: const TextStyle(color: Color(0xffBE1E2D),fontFamily: 'din',fontSize: 14,fontWeight: FontWeight.bold),),
                                  const SizedBox(width: 5,),
                                  Text(examineOrder.orderName,style: const TextStyle(color: Color(0xff1D0D63),fontFamily: 'sst arabic',fontSize: 12,),),
                                  ],)
                                  ],
                                ),
                              ),
                              SizedBox(width: 20,),
                              examineOrder.image
                            ],),
                          )
                          ),
                        );
                    }),
                  )
        ],
      ),
    );
  }
}
