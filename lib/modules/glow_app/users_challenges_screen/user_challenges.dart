import 'package:flutter/material.dart';
import 'package:glow/layout/glow_app/glow_home_layout.dart';
import 'package:glow/modules/glow_app/comments/glow_comments_screen.dart';
import 'package:glow/shared/components/bottom_bar.dart';
import 'package:glow/shared/components/components.dart';
import 'package:glow/shared/components/rectangle_button.dart';
import 'package:glow/shared/components/topbar_with_img.dart';
import 'package:glow/shared/components/topbar_without_img.dart';
//import 'package:glow/shared/components/components.dart';
import 'package:hexcolor/hexcolor.dart';

class userChallengeScreen extends StatelessWidget {
  @override
  //text1: 'تحديات',
  //text2: 'المستخدمين',
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
                        itemBuilder: (context, index) => TopBarWithoutImg(
                          text1: 'تحديات',
                          text2: 'المستخدمين',
                        ),
                        separatorBuilder: (context, index) => const SizedBox(
                          height: 50.0,
                        ),
                        itemCount: 1,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) => Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: RectangleButton(
                                  text: 'اي حاجه',
                                ),
                              ),
                          separatorBuilder: (context, index) => SizedBox(
                                height: 0,
                              ),
                          itemCount: 20),
                    ],
                  ),
                ),
              ),
              BottomBar(
                right_image: 'assets/images/Settings.png',
                center_image: 'assets/images/addB.png',
                left_image: 'assets/images/allcomment.png',
                center_icon: () {},
                right_icon: () {},
                left_icon: () {
                  navigateTo(context, GlowCommentsScreen());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
