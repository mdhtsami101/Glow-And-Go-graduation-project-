import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:glow/layout/glow_app/glow_home_layout.dart';
import 'package:glow/modules/glow_app/add_challenge/add_challenge.dart';
import 'package:glow/modules/glow_app/challenge_screen/challenge.dart';
import 'package:glow/modules/glow_app/challenges_users_item/glow_challenges_users_item_screen.dart';
import 'package:glow/modules/glow_app/comments/glow_comments_screen.dart';
import 'package:glow/modules/glow_app/habits_screen/habits_page.dart';
import 'package:glow/modules/glow_app/login/glow_login_screen.dart';
import 'package:glow/modules/glow_app/on_boarding/on_boarding_screen.dart';
import 'package:glow/modules/glow_app/problems/glow_problems_screen.dart';
import 'package:glow/modules/glow_app/problems_item/glow_problems_item_screen.dart';
import 'package:glow/modules/glow_app/register/glow_register_screen.dart';
import 'package:glow/modules/glow_app/users_challenges_screen/user_challenges.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: HexColor('fff'),
            statusBarIconBrightness: Brightness.dark,
          ),
        ),
        fontFamily: 'Glow',
      ),
      home: Directionality(
        textDirection: TextDirection.rtl,
        child: OnBordingScreen(),
      ),
    );
  }
}
