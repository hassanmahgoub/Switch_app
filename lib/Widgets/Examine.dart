import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../Screens/Orders.dart';

class Examine extends StatefulWidget {
  const Examine({super.key});

  @override
  State<Examine> createState() => _ExamineState();
}

class _ExamineState extends State<Examine> {
  @override
  Widget build(BuildContext context) {
    final ScreenSize = MediaQuery.of(context).size;
    return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                      height: 100,
                      width: ScreenSize.width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(7),
                          border: Border.all(
                              width: 1, color: const Color(0xffD0E2E5))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(
                              Icons.arrow_back_ios,
                              color: Color(0xffD0E2E5),
                              size: 15,
                            ),
                            //const SizedBox(width: 10,),
                            CircularPercentIndicator(
                              radius: 30,
                              lineWidth: 6.5,
                              backgroundWidth: 3,
                              animationDuration: 500,
                              percent: 0.27,
                              circularStrokeCap: CircularStrokeCap.round,
                              backgroundColor: const Color(0xff0474E1),
                              center: const Text("75%"),
                              progressColor: const Color(0xFf1D0D63),
                            ),
                            Expanded(child: Container()),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                InkWell(
                                  child: const Row(
                                    children: [
                                      Text(
                                        'CLS 350 (2012)',
                                        style: TextStyle(
                                            color: Color(0xff1D0D63),
                                            fontFamily: 'sst bold',
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      //SizedBox(width: 5,),
                                      Text(
                                        'مرسيدس',
                                        style: TextStyle(
                                            color: Color(0xff1D0D63),
                                            fontFamily: 'sst bold',
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  onTap: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Orders()));
                                  },
                                ),
                                const Text(
                                  'KMHD641UGHU321730',
                                  style: TextStyle(
                                      color: Color(0xff0474E1),
                                      fontFamily: 'sst bold',
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Row(
                                  children: [
                                    Text(
                                      '2154',
                                      style: TextStyle(
                                          color: Color(0xffBE1E2D),
                                          fontFamily: 'sst bold',
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'رقم الطلب',
                                      style: TextStyle(
                                          color: Color(0xff1D0D63),
                                          fontFamily: 'sst bold',
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: SvgPicture.asset(
                                'assets/images/Group 2020.svg',
                                height: 45,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
  }
}