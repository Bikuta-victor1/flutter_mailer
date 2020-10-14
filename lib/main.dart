import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttermailer/MailerWidget.dart';



void main() {
  runApp(
   MaterialApp(
     title: 'Flutter Mailer',
     theme: ThemeData(
       primarySwatch: Colors.grey,
//       visualDensity: VisualDensity.adaptivePlatformDensity,
     ),
     home: MailerWidget(),
   )
  );
}

