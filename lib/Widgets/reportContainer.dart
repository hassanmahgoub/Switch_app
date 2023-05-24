// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/svg.dart';

// ignore: camel_case_types
class reportContainer extends StatefulWidget {
  const reportContainer({super.key});

  @override
  State<reportContainer> createState() => _reportContainerState();
}

// ignore: camel_case_types
class _reportContainerState extends State<reportContainer> {
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    final ScreenSize = MediaQuery.of(context).size;
    return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Slidable(
                endActionPane:
                    ActionPane(motion: const StretchMotion(), children: [
                  SlidableAction(
                    autoClose: true,
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(7),
                        bottomRight: Radius.circular(7)),
                    onPressed: ((context) {}),
                    icon: Icons.delete_outline,
                    backgroundColor: const Color(0xffD0E2E5),
                  )
                ]),
                direction: Axis.horizontal,
                enabled: true,
                //endActionPane: ActionPane(motion: motion, children: children),
                //closeOnScroll: true,
                child: Container(
                  height: 100,
                  width: ScreenSize.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(7),
                      border:
                          Border.all(width: 1, color: const Color(0xffD0E2E5))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset('assets/images/Group 205.svg'),
                        Expanded(child: Container()),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'فحص بودي',
                                  style: TextStyle(
                                      color: Color(0xffBE1E2D),
                                      fontFamily: 'sst bold',
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'نوع التقرير',
                                  style: TextStyle(
                                      color: Color(0xff0474E1),
                                      fontFamily: 'sst bold',
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
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
                                  'رقم التقرير',
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
              ),
            );
  }
}