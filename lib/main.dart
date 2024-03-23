// import 'dart:js';
import 'dart:ui';

// import 'package:firebase_core/firebase_core.dart';
import 'package:demo_project/Company.dart';
import 'package:demo_project/DreamCompany.dart';
import 'package:demo_project/FrequentCompany.dart';
import 'package:flutter/material.dart';
import 'package:demo_project/Amcat.dart';
//import 'package:pbl/Amcat.dart';
// import 'package:pbl/forecast.dart';
// import 'package:pbl/location.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:sky_engine/_http/http.dart' as http;
import 'dart:convert';

import 'package:demo_project/register.dart';
import 'package:demo_project/login.dart';
import 'package:demo_project/options.dart';
import 'package:demo_project/studentDisplay.dart';
import 'package:demo_project/Tnp.dart';



void main() async {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'options',//Initial screen for the user should be the location input screen
      routes: {
        'options' : (context) => MyLoginOptionsPage(),
        'login' : (context) => MyLogin(),
        //'forecast': (context) => MyForecast(userLocation: ''),
        'register': (context) => const MyRegister(),
        'studentDisplay' : (context) => const MyStudent(),
        'Amcat' : (context) => const MyAmcat(),
        'Company' : (context) => const MyCompany(),
        'DreamCompany' : (context) => const MyDreamCompany(),
        'FrequentCompany' : (context) => const MyFrequentCompany(),
        'Tnp' : (context) => const MyTnp(),
      }));
}
