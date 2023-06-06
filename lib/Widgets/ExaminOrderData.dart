// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_typing_uninitialized_variables
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

// ignore: camel_case_types
class examineOrder {
  var precentIndicator;
  var carName;
  var shasNumber;
  var orderNumber;
  var orderName;
  var image;
  examineOrder({
    required this.precentIndicator,
    required this.carName,
    required this.shasNumber,
    required this.orderNumber,
    required this.orderName,
    required this.image,
  });
}
List<examineOrder> examineOrderData = [
  examineOrder(
    precentIndicator: CircularPercentIndicator(
                              radius: 30,
                              lineWidth: 6.5,
                              backgroundWidth: 3,
                              animationDuration: 500,
                              percent: 0.27,
                              circularStrokeCap: CircularStrokeCap.round,
                              backgroundColor: const Color(0xff0474E1),
                              center: const Text('75%',style: TextStyle(color: Color(0xff1D0D63),fontSize: 12,fontFamily: 'sst arabic',fontWeight: FontWeight.bold),),
                              progressColor: const Color(0xFf1D0D63),
                              
                            ),
    carName: 'CLS 350 (2012)مرسيدس',
    shasNumber: 'KMHD641UGHU321730',
    orderNumber: '2152',
    orderName: 'رقم الطلب',
    image: SvgPicture.asset('assets/images/merc.svg')
  ),
  examineOrder(
    precentIndicator: CircularPercentIndicator(
                              radius: 30,
                              lineWidth: 6.5,
                              backgroundWidth: 3,
                              animationDuration: 500,
                              percent: 0.27,
                              circularStrokeCap: CircularStrokeCap.round,
                              backgroundColor: const Color(0xff0474E1),
                              center: const Text('75%',style: TextStyle(color: Color(0xff1D0D63),fontSize: 12,fontFamily: 'sst arabic',fontWeight: FontWeight.bold),),
                              progressColor: const Color(0xFf1D0D63),
                            ),
    carName: 'CLS 350 (2012)مرسيدس',
    shasNumber: 'KMHD641UGHU321730',
    orderNumber: '2152',
    orderName: 'رقم الطلب',
    image: Image.asset('assets/images/toyota.png',height: 60,)
  ),
  examineOrder(
    precentIndicator: CircularPercentIndicator(
                              radius: 30,
                              lineWidth: 6.5,
                              backgroundWidth: 3,
                              animationDuration: 500,
                              percent: 0.27,
                              circularStrokeCap: CircularStrokeCap.round,
                              backgroundColor: const Color(0xff0474E1),
                              center: const Text('75%',style: TextStyle(color: Color(0xff1D0D63),fontSize: 12,fontFamily: 'sst arabic',fontWeight: FontWeight.bold),),
                              progressColor: const Color(0xFf1D0D63),
                            ),
    carName: 'CLS 350 (2012)مرسيدس',
    shasNumber: 'KMHD641UGHU321730',
    orderNumber: '2152',
    orderName: 'رقم الطلب',
    image: Image.asset('assets/images/toyota.png',height: 60)
  ),
];
