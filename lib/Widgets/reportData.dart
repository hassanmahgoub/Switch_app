// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_typing_uninitialized_variables
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class data {
  var carName;
  var examineType;
  var reportType;
  var reportNumber;
  var reportNumberName;
  var carIcon;
  data({
    required this.carName,
    required this.examineType,
    required this.reportType,
    required this.reportNumber,
    required this.reportNumberName,
    required this.carIcon,
  });
}
  List <data> reportData = [
    data(
      carName: 'CLS 350 (2012)مرسيدس',
      examineType: 'فحص بودي',
      reportType: 'نوع التقرير',
      reportNumber: '2152',
      reportNumberName: 'رقم التقرير',
      carIcon: SvgPicture.asset('assets/images/merc.svg')
    ),
    data(
      carName: '(2020)اف جي كروزر',
      examineType: 'فحص بودي',
      reportType: 'نوع التقرير',
      reportNumber: '2153',
      reportNumberName: 'رقم التقرير',
      carIcon: Image.asset('assets/images/toyota.png',height: 60,)
    ),
    data(
      carName: 'GL(2020)كامري',
      examineType: 'فحص بودي',
      reportType: 'نوع التقرير',
      reportNumber: '2154',
      reportNumberName: 'رقم التقرير',
      carIcon: Image.asset('assets/images/toyota.png',height: 60)
    ),
  ];

