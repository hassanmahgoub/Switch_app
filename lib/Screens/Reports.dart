import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/svg.dart';

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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const Profile()));
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
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const Cars()));
                },
              )
            ],),
          ),
        ),
      )),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const Home()));
      },
      backgroundColor: const Color(0xffBE1E2D),
      
      child: SvgPicture.asset('assets/images/Group 149.svg'),
      ),
      body: Column(
        children: [
          
          Container(height: 144,width: ScreenSize.width,
            decoration: const BoxDecoration(
              color: Color(0xff1D0D63),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.only(top: 30,left: 30,right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                InkWell(child: SvgPicture.asset('assets/images/Group 472 (3).svg'),
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const noti()));
                        },
                        ),
                        SvgPicture.asset('assets/images/Group 121 (1).svg'),
                        SvgPicture.asset('assets/images/Group 5 (1).svg'),
              ],),
            ),
            ),
            const SizedBox(height: 20,),
            Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(height: 45,width: ScreenSize.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(7),
            border: Border.all(width: 1,color: const Color(0xffD0E2E5))
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                SvgPicture.asset('assets/images/Icon feather-search (1).svg'),
                const Text('بحث',style: TextStyle(color: Color(0xff52505F),fontFamily: 'sst bold',fontSize: 12,fontWeight: FontWeight.bold),),
              ],),
            ),
            ),
          ),
          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
              Text('التقارير',style: TextStyle(color: Color(0xffBE1E2D),fontFamily: 'sst bold',fontSize: 12,fontWeight: FontWeight.bold),),
            ],),
          ),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Slidable(
                endActionPane: ActionPane(motion: const StretchMotion(), children: [
                  SlidableAction(
                    autoClose: true,
                    borderRadius: const BorderRadius.only(topRight: Radius.circular(7),bottomRight: Radius.circular(7)),
                    onPressed: ((context){
                  
                  }),
                  icon: Icons.delete_outline,
                  backgroundColor: const Color(0xffD0E2E5),
                  )
                ]),
                direction: Axis.horizontal,
                enabled: true,
                //endActionPane: ActionPane(motion: motion, children: children),
                //closeOnScroll: true,
                child: Container(height: 100,
                width: ScreenSize.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(7),
                border: Border.all(width: 1,color: const Color(0xffD0E2E5))
                ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset('assets/images/Group 205.svg'),
                    Expanded(child: Container()),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children:  const [
                           Text('CLS 350 (2012)',style: TextStyle(color: Color(0xff1D0D63),fontFamily: 'sst bold',fontSize: 12,fontWeight: FontWeight.bold),),
                              //SizedBox(width: 5,),
                            Text('مرسيدس',style: TextStyle(color: Color(0xff1D0D63),fontFamily: 'sst bold',fontSize: 12,fontWeight: FontWeight.bold),),
                        ],),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Text('فحص بودي',style: TextStyle(color: Color(0xffBE1E2D),fontFamily: 'sst bold',fontSize: 12,fontWeight: FontWeight.bold),),
                          SizedBox(width: 5,),
                          Text('نوع التقرير',style: TextStyle(color: Color(0xff0474E1),fontFamily: 'sst bold',fontSize: 12,fontWeight: FontWeight.bold),),
                          ],
                        ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const [
                                Text('2154',style: TextStyle(color: Color(0xffBE1E2D),fontFamily: 'sst bold',fontSize: 14,fontWeight: FontWeight.bold),),
                                SizedBox(width: 5,),
                                Text('رقم التقرير',style: TextStyle(color: Color(0xff1D0D63),fontFamily: 'sst bold',fontSize: 10,fontWeight: FontWeight.bold),),
                              ],
                            ),
                      ],
                    ),
                    const SizedBox(width: 20,),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: SvgPicture.asset('assets/images/Group 2020.svg',height: 45,),
                      )
                  ],
                ),
              ),
              ),
              
              ),
            ),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Slidable(
                endActionPane: ActionPane(motion: const StretchMotion(), children: [
                  SlidableAction(
                    autoClose: true,
                    borderRadius: const BorderRadius.only(topRight: Radius.circular(7),bottomRight: Radius.circular(7)),
                    onPressed: ((context){
                  
                  }),
                  icon: Icons.delete_outline,
                  backgroundColor: const Color(0xffD0E2E5),
                  )
                ]),
                direction: Axis.horizontal,
                enabled: true,
                //endActionPane: ActionPane(motion: motion, children: children),
                //closeOnScroll: true,
                child: Container(height: 100,
                width: ScreenSize.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(7),
                border: Border.all(width: 1,color: const Color(0xffD0E2E5))
                ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset('assets/images/Group 205.svg'),
                    Expanded(child: Container()),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children:  const [
                            
                           Text('(2020)',style: TextStyle(color: Color(0xff1D0D63),fontFamily: 'sst bold',fontSize: 12,fontWeight: FontWeight.bold),),
                              //SizedBox(width: 5,),
                            Text('اف جي كروزر',style: TextStyle(color: Color(0xff1D0D63),fontFamily: 'sst bold',fontSize: 12,fontWeight: FontWeight.bold),),
                        ],),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Text('فحص شامل',style: TextStyle(color: Color(0xffBE1E2D),fontFamily: 'sst bold',fontSize: 12,fontWeight: FontWeight.bold),),
                          SizedBox(width: 5,),
                          Text('نوع التقرير',style: TextStyle(color: Color(0xff0474E1),fontFamily: 'sst bold',fontSize: 12,fontWeight: FontWeight.bold),),
                          ],
                        ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const [
                                Text('2154',style: TextStyle(color: Color(0xffBE1E2D),fontFamily: 'sst bold',fontSize: 14,fontWeight: FontWeight.bold),),
                                SizedBox(width: 5,),
                                Text('رقم التقرير',style: TextStyle(color: Color(0xff1D0D63),fontFamily: 'sst bold',fontSize: 10,fontWeight: FontWeight.bold),),
                              ],
                            ),
                      ],
                    ),
                    const SizedBox(width: 20,),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Image.asset('assets/images/Group 2011.png',height: 50,),
                      )
                  ],
                ),
              ),
              ),
              
              ),
            ),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Slidable(
                endActionPane: ActionPane(motion: const StretchMotion(), children: [
                  SlidableAction(
                    autoClose: true,
                    borderRadius: const BorderRadius.only(topRight: Radius.circular(7),bottomRight: Radius.circular(7)),
                    onPressed: ((context){
                  
                  }),
                  icon: Icons.delete_outline,
                  backgroundColor: const Color(0xffD0E2E5),
                  )
                ]),
                direction: Axis.horizontal,
                enabled: true,
                //endActionPane: ActionPane(motion: motion, children: children),
                //closeOnScroll: true,
                child: Container(height: 100,
                width: ScreenSize.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(7),
                border: Border.all(width: 1,color: const Color(0xffD0E2E5))
                ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset('assets/images/Group 205.svg'),
                    Expanded(child: Container()),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children:  const [
                            
                           Text('GL (2020)',style: TextStyle(color: Color(0xff1D0D63),fontFamily: 'sst bold',fontSize: 12,fontWeight: FontWeight.bold),),
                              //SizedBox(width: 5,),
                            Text('كامري',style: TextStyle(color: Color(0xff1D0D63),fontFamily: 'sst bold',fontSize: 12,fontWeight: FontWeight.bold),),
                        ],),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Text('فحص شامل',style: TextStyle(color: Color(0xffBE1E2D),fontFamily: 'sst bold',fontSize: 12,fontWeight: FontWeight.bold),),
                          SizedBox(width: 5,),
                          Text('نوع التقرير',style: TextStyle(color: Color(0xff0474E1),fontFamily: 'sst bold',fontSize: 12,fontWeight: FontWeight.bold),),
                          ],
                        ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const [
                                Text('2154',style: TextStyle(color: Color(0xffBE1E2D),fontFamily: 'sst bold',fontSize: 14,fontWeight: FontWeight.bold),),
                                SizedBox(width: 5,),
                                Text('رقم التقرير',style: TextStyle(color: Color(0xff1D0D63),fontFamily: 'sst bold',fontSize: 10,fontWeight: FontWeight.bold),),
                              ],
                            ),
                      ],
                    ),
                    const SizedBox(width: 20,),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Image.asset('assets/images/Group 2011.png',height: 50,),
                      )
                  ],
                ),
              ),
              ),
              
              ),
            )
        ],
      ),
    );
  }
}