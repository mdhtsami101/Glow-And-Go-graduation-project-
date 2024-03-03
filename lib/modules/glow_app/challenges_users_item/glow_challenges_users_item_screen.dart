import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:glow/shared/components/bottom_bar.dart';
import 'package:glow/shared/components/topbar_with_img.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../shared/components/components.dart';
import '../../../shared/styles/colors.dart';
import '../comments/glow_comments_screen.dart';
import '../problems/glow_problems_screen.dart';
import '../problems_item/glow_problems_item_screen.dart';

class GlowChallengesItemScreen extends StatefulWidget {
  const GlowChallengesItemScreen({super.key});

  @override
  State<GlowChallengesItemScreen> createState() =>
      _GlowChallengesItemScreenState();
}

class _GlowChallengesItemScreenState extends State<GlowChallengesItemScreen> {
  bool val = false;
  bool isVisible = true;
  List<bool> checkBoxValues = [false, false, false, false, false];
  List<bool> visibilityValues = [false, false, false, false, false];
  //'assets/images/topfeed.png'
  //'التغذية'
  //'الاكل السليم في الجسم السليم'
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
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) => TopBarWithImg(
                          image: 'assets/images/topfeed.png',
                          text1: 'التغذية',
                          text2: 'الاكل السليم في الجسم السليم',
                        ),
                        separatorBuilder: (context, index) => SizedBox(
                          height: 50.0,
                        ),
                        itemCount: 1,
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      RatingBar(
                        minRating: 1,
                        maxRating: 5,
                        initialRating: 0,
                        glow: false,
                        allowHalfRating: true,
                        ratingWidget: RatingWidget(
                          full: Icon(
                            Icons.star,
                            color: defaultTextColor,
                          ),
                          half: Icon(
                            Icons.star,
                            color: Colors.grey,
                          ),
                          empty: Icon(
                            Icons.star,
                            color: Colors.grey,
                          ),
                        ),
                        onRatingUpdate: (value) {},
                        itemSize: 35,
                      ),
                      SizedBox(
                        height: 15.0,
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
                                          Spacer(),
                                          Text(
                                            ' اليوم الاول',
                                            style: TextStyle(
                                              color: defaultTextColor,
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Spacer(),
                                          Checkbox(
                                            value: checkBoxValues[index],
                                            checkColor: Colors.green,
                                            side: BorderSide(
                                              color: Colors.red,
                                              width: 2,
                                            ),
                                            fillColor:
                                                MaterialStateProperty.all(
                                                    Colors.white),
                                            onChanged: (value) {
                                              setState(() {
                                                checkBoxValues[index] = value!;
                                              });
                                            },
                                          ),
                                          IconButton(
                                            onPressed: () {
                                              setState(() {
                                                visibilityValues[index] =
                                                    !visibilityValues[index];
                                              });
                                            },
                                            icon: Icon(
                                              Icons.arrow_forward_ios,
                                              color: defaultTextColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15.0,
                                    ),
                                    Visibility(
                                      visible: visibilityValues[index],
                                      child: Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadiusDirectional.circular(
                                                  20.0),
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 7,
                                              color: const Color(0x55000000),
                                              offset:
                                                  Offset.fromDirection(3, 5),
                                              spreadRadius: 1.5,
                                            )
                                          ],
                                        ),
                                        child: Center(
                                          child: Padding(
                                            padding: const EdgeInsets.all(15.0),
                                            child: Text(
                                              'الافطار :\n ٥ ملاعق شوفان مضاف عليه كوب لبن خالى الدسم + ملعقه عسل ابيض + ثلاث تمرات+ بيضه كامله مسلوقه \n\n وجبه خفيفه (بعدها بساعتين):\n كوب شاى اخضر مع ثمره فاكهه أو كوب قهوه ساده مع قطعه شوكولاته غامقه \n\n الغداء:\n ٦ ملاعق رز ابيض+ ٤ صوابع كفته مشويه + سلطه  ',
                                              style: TextStyle(
                                                fontSize: 25.0,
                                                fontWeight: FontWeight.bold,
                                                color: defaultColor,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                          separatorBuilder: (context, index) => SizedBox(
                                height: 25.0,
                              ),
                          itemCount: 5),
                      SizedBox(
                        height: 50.0,
                      ),
                    ],
                  ),
                ),
              ),
              BottomBar(
                right_image: 'assets/images/Settings.png',
                center_image: 'assets/images/alarm.png',
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
