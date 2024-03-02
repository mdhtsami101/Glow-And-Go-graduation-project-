import 'package:flutter/material.dart';
import 'package:glow/layout/glow_app/glow_home_layout.dart';
import 'package:glow/modules/glow_app/comments/glow_comments_screen.dart';
import 'package:glow/shared/components/bottom_bar.dart';
import 'package:glow/shared/components/components.dart';
import 'package:glow/shared/components/topbar_with_img.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../shared/styles/colors.dart';

class GlowProblemsScreen extends StatelessWidget {
  //'assets/images/Problems.png'
  //'المشاكل'
  //'معلش هي الدنيا كدا كلها مشاكل'
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
                          image: 'assets/images/Problems.png',
                          text1: 'المشاكل',
                          text2: 'معلش هي الدنيا كدا كلها مشاكل',
                        ),
                        separatorBuilder: (context, index) => const SizedBox(
                          height: 50.0,
                        ),
                        itemCount: 1,
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) => Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0),
                                child: Column(
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      height: 55,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20),
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 5,
                                            color: Color(0x55000000),
                                            offset: Offset.fromDirection(3, 4),
                                            spreadRadius: 0.3,
                                          )
                                        ],
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.arrow_back_ios_new,
                                              color: defaultTextColor,
                                            ),
                                          ),
                                          Spacer(),
                                          Text(
                                            'الخوف',
                                            style: TextStyle(
                                                color: defaultTextColor,
                                                fontSize: 22,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Spacer(),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                          separatorBuilder: (context, index) => SizedBox(
                                height: 25.0,
                              ),
                          itemCount: 1),
                      SizedBox(
                        height: 50.0,
                      ),
                    ],
                  ),
                ),
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
    );
  }
}
