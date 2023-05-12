// ignore_for_file: avoid_print, body_might_complete_normally_nullable, file_names

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/svg.dart';

import 'Login.dart';

class Return extends StatefulWidget {
  const Return({super.key});

  @override
  State<Return> createState() => _ReturnState();
}

class _ReturnState extends State<Return> {
  @override
  Widget build(BuildContext context) {
      // ignore: non_constant_identifier_names
      final ScreenSize=MediaQuery.of(context).size;

    return  Scaffold(
      backgroundColor: const Color(0xffF5F9F7),
      body: Stack(children: [
        SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children:[ SvgPicture.asset("assets/images/Group 122.svg",height: 432,)]),
            
         
         Padding(
           padding: const EdgeInsets.symmetric(vertical: 150),
           child: Stack(
             children:[ 
               Center(child: SvgPicture.asset('assets/images/Rectangle 916.svg')),
              Column(
              children: [
                
           const Text("نسيت كلمة المرور",style: TextStyle(color: Color(0xffBE1E2D),fontSize: 20,fontFamily: "sst arabic",fontWeight: FontWeight.bold),),
               const SizedBox(height: 25,),
               FormBuilder(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(7)),
                                  height: 45,
                                  child: TextFormField(
                                    onTap: () async {
                                      // SharedPreferences _prefs = await SharedPreferences.getInstance();
                                      // _prefs.setString('E', _emailController.text);
                                      // _prefs.setString('P', _passwordController.text);
                                      // print(_emailController);
                                    },
                                    keyboardType: TextInputType.emailAddress,
                                    style: const TextStyle(color: Colors.black),
                                    //controller: _email,
                                    decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(7),
                                        borderSide: const BorderSide( color: Colors.white)),
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Colors.white),
                                            borderRadius: BorderRadius.circular(7)),
                                        border: const OutlineInputBorder(
                                            borderSide: BorderSide.none),
                                        label: 
                                              const Center(
                                                child: Text(
                                                  'رقم الجوال',
                                                  style: TextStyle(
                                                    fontFamily: 'Din',
                                                    fontSize: 16,
                                                    color: Color(0xff52505F),
                                                  ),
                                                ),
                                              )
                                            ),
                                    validator: (value) {
                                      if (value!.isEmpty ||
                                          !RegExp(r'(^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$)')
                                              .hasMatch(value)) {
                                        return 'incorrect';
                                      } else {
                                        print(value);
                                      }
                                    },
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15),
                              child: InkWell(
                                child: Container(height: 40,width: ScreenSize.width,
                                decoration: BoxDecoration(color: const Color(0xff1D0D63),borderRadius: BorderRadius.circular(7)),
                                child: const Center(child: Text("استرجاع كلمة المرور",style: TextStyle(color: Colors.white,fontSize: 16,fontFamily: 'sst bold'),)),
                                ),
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const Login()));
                                },
                              ),
                            ),
                            const SizedBox(height: 180,),
           Container(
                 // width: ScreenSize.width,
                  decoration:  BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                      color: const Color(0xff3D9FD7),
                      gradient: const RadialGradient(
                          radius: 0.4,
                          center: Alignment.center,
                          colors: [
                            Color(0xff3D9FD7),
                          ])),)                 
               ])
            ]),
         ),
      
      ]))]));
  }}
  