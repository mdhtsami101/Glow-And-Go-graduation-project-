import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:glow/layout/glow_app/glow_home_layout.dart';
import 'package:glow/modules/glow_app/comments/glow_comments_screen.dart';
import 'package:glow/shared/components/bottom_bar.dart';
import 'package:glow/shared/components/calendartry.dart';
import 'package:glow/shared/components/components.dart';
import 'package:glow/shared/components/custom_calendar.dart';
import 'package:glow/shared/components/topbar_with_img.dart';

import 'package:glow/shared/styles/colors.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(HabitsPage());
}

class HabitsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('FAFAFAFF'),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) => TopBarWithImg(
                          image: 'assets/images/tophabit.png',
                          text1: 'عاداتي',
                          text2: 'نبذه عنها',
                        ),
                        separatorBuilder: (context, index) => const SizedBox(
                          height: 50.0,
                        ),
                        itemCount: 1,
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      CustomCalendar(
                        text: 'عادات يوميه',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      CustomCalendar(
                        text: 'مهام',
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      BottomBar(
                        right_image: 'assets/images/Settings.png',
                        center_image: 'assets/images/home.png',
                        left_image: 'assets/images/allcomment.png',
                        center_icon: () {
                          navigateTo(context, GlowHomeLayoutScreen());
                        },
                        right_icon: () {},
                        left_icon: () {
                          navigateTo(context, GlowCommentsScreen());
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
