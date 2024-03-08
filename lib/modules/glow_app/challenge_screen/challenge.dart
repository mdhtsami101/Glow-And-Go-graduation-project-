import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glow/layout/glow_app/glow_home_layout.dart';
import 'package:glow/modules/glow_app/challenges_users_item/glow_challenges_users_item_screen.dart';
import 'package:glow/modules/glow_app/comments/glow_comments_screen.dart';
import 'package:glow/modules/glow_app/user_private_challenges/user_private.dart';
import 'package:glow/modules/glow_app/users_challenges_screen/user_challenges.dart';
import 'package:glow/shared/components/bottom_bar.dart';
import 'package:glow/shared/components/components.dart';
import 'package:glow/shared/components/squared_button.dart';
import 'package:glow/shared/components/topbar_with_img.dart';
import 'package:glow/shared/styles/colors.dart';
import 'package:hexcolor/hexcolor.dart';

class callengesScreen extends StatelessWidget {
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
                          text1: 'تحديات',
                          text2: 'نبذه عنها',
                          image: 'assets/images/topchall.png',
                        ),
                        separatorBuilder: (context, index) => const SizedBox(
                          height: 50.0,
                        ),
                        itemCount: 1,
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      ListView.separated(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.all(0),
                          child: Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 30, right: 30),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (Context) {
                                      return GlowChallengesItemScreen();
                                    }));
                                  },
                                  child: SquaredButton(
                                    image: 'assets/images/feed.png',
                                    text: 'تغذيه',
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (Context) {
                                    return GlowChallengesItemScreen();
                                  }));
                                },
                                child: SquaredButton(
                                  image: 'assets/images/sport.png',
                                  text: 'رياضه',
                                ),
                              ),
                            ],
                          ),
                        ),
                        separatorBuilder: (context, index) => SizedBox(
                          height: 50.0,
                        ),
                        itemCount: 5,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) => Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (Context) {
                                      return userChallengeScreen();
                                    }));
                                  },
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadiusDirectional
                                                    .circular(20.0),
                                            boxShadow: [
                                              BoxShadow(
                                                blurRadius: 7,
                                                color: Color(0x55000000),
                                                offset:
                                                    Offset.fromDirection(3, 5),
                                                spreadRadius: 1.5,
                                              )
                                            ],
                                          ),
                                          child: Row(
                                            children: [
                                              Column(
                                                children: [
                                                  IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.arrow_back_ios,
                                                      color: Colors.blue,
                                                      size: 40,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 1,
                                                            right: 100),
                                                    child: Text(
                                                      'تحديات ',
                                                      style: TextStyle(
                                                        fontSize: 40.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: defaultTextColor,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                      right: 50,
                                                    ),
                                                    child: Text(
                                                      ' المستخدمين',
                                                      style: TextStyle(
                                                        fontSize: 40.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: defaultTextColor,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 15),
                                                child: Image(
                                                  image: AssetImage(
                                                      'assets/images/allcomment.png'),
                                                  //width: 90.0,
                                                  height: 70.0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                          separatorBuilder: (context, index) => SizedBox(
                                height: 50.0,
                              ),
                          itemCount: 1),
                      ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) => Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (Context) {
                                      return UserPrivateChallenges();
                                    }));
                                  },
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadiusDirectional
                                                    .circular(20.0),
                                            boxShadow: [
                                              BoxShadow(
                                                blurRadius: 7,
                                                color: Color(0x55000000),
                                                offset:
                                                    Offset.fromDirection(3, 5),
                                                spreadRadius: 1.5,
                                              )
                                            ],
                                          ),
                                          child: Row(
                                            children: [
                                              Column(
                                                children: [
                                                  IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.arrow_back_ios,
                                                      color: Colors.blue,
                                                      size: 40,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 1, right: 80),
                                                    child: Text(
                                                      'تحدياتي',
                                                      style: TextStyle(
                                                        fontSize: 40.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: defaultTextColor,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                      right: 60,
                                                    ),
                                                    child: Text(
                                                      ' الخاصه',
                                                      style: TextStyle(
                                                        fontSize: 40.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: defaultTextColor,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 40),
                                                child: Image(
                                                  image: AssetImage(
                                                      'assets/images/allcomment.png'),
                                                  //width: 90.0,
                                                  height: 70.0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                          separatorBuilder: (context, index) => SizedBox(
                                height: 50.0,
                              ),
                          itemCount: 1),
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
