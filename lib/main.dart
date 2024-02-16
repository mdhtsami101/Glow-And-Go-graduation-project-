 import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:glow/layout/glow_app/glow_home_layout.dart';
import 'package:glow/modules/glow_app/login/glow_login_screen.dart';
import 'package:glow/modules/glow_app/on_boarding/on_boarding_screen.dart';
import 'package:glow/modules/glow_app/register/glow_register_screen.dart';
import 'package:hexcolor/hexcolor.dart';



 void main() {
   runApp( MyApp());
 }

 class MyApp extends StatelessWidget {

   Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       theme: ThemeData(
         appBarTheme: AppBarTheme(
           systemOverlayStyle:SystemUiOverlayStyle(
             statusBarColor: HexColor('fff'),
             statusBarIconBrightness:Brightness.dark,
           ),
         ),
         fontFamily: 'Jannah',
       ),


       home:Directionality(
         textDirection: TextDirection.rtl ,

         child:OnBordingScreen() ,

       ),
     );   }
 }







