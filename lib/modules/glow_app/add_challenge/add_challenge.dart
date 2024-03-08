import 'package:flutter/material.dart';
import 'package:glow/layout/glow_app/glow_home_layout.dart';
import 'package:glow/modules/glow_app/comments/glow_comments_screen.dart';
import 'package:glow/modules/glow_app/user_challenge_name/user_challenge_name.dart';
import 'package:glow/shared/components/bottom_bar.dart';
import 'package:glow/shared/components/components.dart';
import 'package:glow/shared/components/rectangle_button.dart';
import 'package:glow/shared/components/topbar_without_img.dart';
import 'package:glow/shared/styles/colors.dart';
import 'package:hexcolor/hexcolor.dart';

class AddChallenge extends StatelessWidget {
  const AddChallenge({super.key});

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
                        itemBuilder: (context, index) => TopBarWithoutImg(
                          text1: 'تحدي',
                          text2: 'جديد',
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
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, top: 5),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  //height: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadiusDirectional.circular(20.0),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 7,
                                        color: Color(0x55000000),
                                        offset: Offset.fromDirection(3, 5),
                                        spreadRadius: 1.5,
                                      )
                                    ],
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20, vertical: 10),
                                        child: Row(
                                          children: [
                                            Text(
                                              'اسم التحدي',
                                              style: TextStyle(
                                                fontSize: 30.0,
                                                fontWeight: FontWeight.normal,
                                                color: defaultTextColor,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      SingleChildScrollView(
                                        child: ConstrainedBox(
                                          constraints: BoxConstraints(
                                            minHeight: 50.0,
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 18, vertical: 1),
                                            child: TextField(
                                              style: TextStyle(fontSize: 22),
                                              decoration: InputDecoration(
                                                border: InputBorder.none,
                                                hintText: 'ادخل اسم التحدي',
                                                hintStyle: TextStyle(
                                                  fontSize: 22,
                                                ),
                                              ),
                                              maxLines:
                                                  null, // Allow multiple lines
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 20,
                                          right: 17,
                                          bottom: 40,
                                        ),
                                        child: Container(
                                          height: 1,
                                          color: Colors.grey, // Line color
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                            ],
                          ),
                        ),
                        separatorBuilder: (BuildContext context, int index) =>
                            SizedBox(
                          height: 25,
                        ),
                        itemCount: 4,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        height: 45,
                        width: 170,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            shape: MaterialStateProperty.all<OutlinedBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                side: BorderSide(
                                    color: defaultTextColor, width: 2),
                              ),
                            ),
                          ),
                          onPressed: () {},
                          child: Icon(
                            Icons.add,
                            color: defaultTextColor,
                            size: 45,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 50,
                            width: 170,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                                shape:
                                    MaterialStateProperty.all<OutlinedBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    side: BorderSide(
                                        color: defaultTextColor, width: 2),
                                  ),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                'عام',
                                style: TextStyle(
                                  color: defaultTextColor,
                                  fontSize: 40,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          SizedBox(
                            height: 50,
                            width: 170,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                                shape:
                                    MaterialStateProperty.all<OutlinedBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    side: BorderSide(
                                        color: defaultTextColor, width: 2),
                                  ),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                'خاص',
                                style: TextStyle(
                                  color: defaultTextColor,
                                  fontSize: 40,
                                ),
                              ),
                            ),
                          ),
                        ],
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
