// ignore_for_file: prefer_const_constructors, use_full_hex_values_for_flutter_colors, file_names

import 'dart:io';

import 'package:flutter/material.dart';

enum DialogAction { yes, cancel }

class AlertDialogs {
  static Future<DialogAction> yesCancelDialog(
    BuildContext context,
    String title,
    String s,
    //String body,
  ) async {
    final action = await showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            title: Center(
                child: Text(
              title,
              style: TextStyle(
                  fontSize: 15, fontFamily: 'sst arabic', fontWeight: FontWeight.bold),
            )),
            //content:  Text(body),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                          color: Color(0xff1D0D63),
                          borderRadius: BorderRadius.circular(5)),
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).pop(DialogAction.cancel);
                        },
                        child: Text(
                          'إلغاء',
                          style: TextStyle(
                              fontFamily: 'din',
                              fontSize: 15,
                              
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Expanded(
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                          color: Color(0xff1D0D63),
                          borderRadius: BorderRadius.circular(5)),
                      child: TextButton(
                        onPressed: () {
                          exit(0);
                        },
                        child: Text(
                          'تأكيد',
                          style: TextStyle(
                              fontFamily: 'din',
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          );
        });
    return (action != null) ? action : DialogAction.cancel;
  }
}
