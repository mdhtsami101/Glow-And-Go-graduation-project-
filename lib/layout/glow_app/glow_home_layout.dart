import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glow/modules/glow_app/challenge_screen/challenge.dart';
import 'package:glow/modules/glow_app/comments/glow_comments_screen.dart';
import 'package:glow/modules/glow_app/habits_screen/habits_page.dart';
import 'package:glow/modules/glow_app/login/glow_login_screen.dart';
import 'package:glow/modules/glow_app/problems/glow_problems_screen.dart';
import 'package:glow/modules/glow_app/problems_item/glow_problems_item_screen.dart';
import 'package:glow/modules/glow_app/side_menu/side_menu.dart';
import 'package:glow/shared/components/bottom_bar.dart';
import 'package:glow/shared/components/components.dart';
import 'package:glow/shared/styles/colors.dart';
import 'package:hexcolor/hexcolor.dart';

class GlowHomeLayoutScreen extends StatelessWidget {
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
                        itemBuilder: (context, index) => Container(
                          // height: 250,
                          child: Stack(
                            alignment: AlignmentDirectional.topCenter,
                            children: [
                              Container(
                                width: double.infinity,
                                height: 200.0,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      const BorderRadiusDirectional.only(
                                    bottomEnd: Radius.circular(200.0),
                                    bottomStart: Radius.circular(200.0),
                                  ),
                                  gradient: defaultGradient,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 7,
                                      color: const Color(0x55000000),
                                      offset: Offset.fromDirection(3, 1),
                                      spreadRadius: 4,
                                    )
                                  ],
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  /*IconButton(
                                    onPressed: () {
                                      navigateTo(context, SideMenu());
                                    },
                                    icon: const Icon(
                                      Icons.menu,
                                      color: Colors.white,
                                      size: 30.0,
                                    ),
                                  ),*/
                                  Builder(
                                    builder: (context) => IconButton(
                                      onPressed: () {
                                        Scaffold.of(context).openDrawer();
                                      },
                                      icon: Icon(
                                        Icons.menu,
                                        color: Colors.white,
                                        size: 30.0,
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 30.0),
                                    child: Text(
                                      'لحياةُ أجمل عندما نشكر الله على ما ذهب منا وما بقي لدينا، وما سيأتي',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(20.0),
                                    child: Center(
                                      child: Text(
                                        'medhat sami',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 1),
                                    child: Expanded(
                                      child: Center(
                                        child: ElevatedButton(
                                          onPressed: () {},
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      Colors.transparent),
                                              elevation:
                                                  MaterialStateProperty.all(0)),
                                          child: const CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 45.0,
                                            backgroundImage: AssetImage(
                                                'assets/images/alarm.png'),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        separatorBuilder: (context, index) => const SizedBox(
                          height: 50.0,
                        ),
                        itemCount: 1,
                      ),
                      const SizedBox(
                        height: 50.0,
                      ),
                      ListView.separated(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) => Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.push(context,
                                              MaterialPageRoute(
                                                  builder: (Context) {
                                            return GlowProblemsScreen();
                                          }));
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadiusDirectional
                                                    .circular(20.0),
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
                                          child: Column(
                                            children: [
                                              const Image(
                                                image: AssetImage(
                                                    'assets/images/Problems.png'),
                                                width: 100.0,
                                                height: 80.0,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    bottom: 10.0),
                                                child: Text(
                                                  'مشاكل',
                                                  style: TextStyle(
                                                    fontSize: 20.0,
                                                    fontWeight: FontWeight.bold,
                                                    color: defaultTextColor,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 20.0,
                                    ),
                                    Expanded(
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.push(context,
                                              MaterialPageRoute(
                                                  builder: (Context) {
                                            return callengesScreen();
                                          }));
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadiusDirectional
                                                    .circular(20.0),
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
                                          child: Column(
                                            children: [
                                              const Image(
                                                image: AssetImage(
                                                    'assets/images/Challenges.png'),
                                                width: 100.0,
                                                height: 80.0,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    bottom: 10.0),
                                                child: Text(
                                                  'تحديات',
                                                  style: TextStyle(
                                                    fontSize: 20.0,
                                                    fontWeight: FontWeight.bold,
                                                    color: defaultTextColor,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 20.0,
                                    ),
                                    Expanded(
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.push(context,
                                              MaterialPageRoute(
                                                  builder: (Context) {
                                            return HabitsPage();
                                          }));
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadiusDirectional
                                                    .circular(20.0),
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
                                          child: Column(
                                            children: [
                                              const Image(
                                                image: AssetImage(
                                                    'assets/images/Habits.png'),
                                                width: 100.0,
                                                height: 80.0,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    bottom: 10.0),
                                                child: Text(
                                                  'عاداتي',
                                                  style: TextStyle(
                                                    fontSize: 20.0,
                                                    fontWeight: FontWeight.bold,
                                                    color: defaultTextColor,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                          separatorBuilder: (context, index) => const SizedBox(
                                height: 50.0,
                              ),
                          itemCount: 1),
                      const SizedBox(
                        height: 50.0,
                      ),
                      ListView.separated(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) => Container(
                                height: 700,
                                child: Column(
                                  children: [
                                    Stack(
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(top: 355),
                                          child: Image(
                                            image: AssetImage(
                                                'assets/images/foot.png'),
                                            width: double.infinity,
                                            fit: BoxFit.cover,
                                            height: 240,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(20.0),
                                          child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 7,
                                                    color:
                                                        const Color(0x55000000),
                                                    offset:
                                                        Offset.fromDirection(
                                                            3, 5),
                                                    spreadRadius: 1.5,
                                                  )
                                                ],
                                                color: Colors.white,
                                                borderRadius:
                                                    const BorderRadiusDirectional
                                                        .only(
                                                  topEnd: Radius.circular(20.0),
                                                  topStart:
                                                      Radius.circular(20.0),
                                                  bottomEnd:
                                                      Radius.circular(40.0),
                                                  bottomStart:
                                                      Radius.circular(40.0),
                                                )),
                                            child: Column(
                                              children: [
                                                const Stack(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.all(0.9),
                                                      child: Image(
                                                        image: AssetImage(
                                                            'assets/images/head.png'),
                                                        width: double.infinity,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.all(10.0),
                                                      child: Center(
                                                        child: Text(
                                                          'المهام اليوميه',
                                                          style: TextStyle(
                                                            fontSize: 20.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          horizontal: 15.0),
                                                      child: ListView.separated(
                                                          physics:
                                                              const NeverScrollableScrollPhysics(),
                                                          shrinkWrap: true,
                                                          itemBuilder:
                                                              (context,
                                                                      index) =>
                                                                  Padding(
                                                                    padding:
                                                                        const EdgeInsets
                                                                            .all(
                                                                            8.0),
                                                                    child: Text(
                                                                      'تنظيف الغرفة',
                                                                      style:
                                                                          TextStyle(
                                                                        fontSize:
                                                                            18.0,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                        color:
                                                                            defaultTextColor,
                                                                      ),
                                                                    ),
                                                                  ),
                                                          separatorBuilder:
                                                              (context,
                                                                      index) =>
                                                                  myDivider(),
                                                          itemCount: 6),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 30.0,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                      alignment: Alignment.topCenter,
                                    ),
                                  ],
                                ),
                              ),
                          separatorBuilder: (context, index) => myDivider(),
                          itemCount: 1),
                      const SizedBox(
                        height: 15.0,
                      ),
                      ListView.separated(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) => Container(
                                height: 750,
                                child: Column(
                                  children: [
                                    Stack(
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(
                                            top: 460,
                                          ),
                                          child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Image(
                                                image: AssetImage(
                                                    'assets/images/foot.png'),
                                                width: double.infinity,
                                                fit: BoxFit.cover,
                                                height: 240,
                                              ),
                                              Column(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.all(20.0),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Expanded(
                                                          child: Column(
                                                            children: [
                                                              Text(
                                                                '7',
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .white,
                                                                    fontSize:
                                                                        40.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              ),
                                                              Text(
                                                                'التحديات المنتهيه',
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .white,
                                                                    fontSize:
                                                                        23.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Column(
                                                            children: [
                                                              Text(
                                                                '7',
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .white,
                                                                    fontSize:
                                                                        40.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              ),
                                                              Text(
                                                                'جميع التحديات',
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .white,
                                                                    fontSize:
                                                                        23.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 10.0,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        'استمر في التقدم',
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 20.0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                      Image(
                                                        image: AssetImage(
                                                            'assets/images/go.png'),
                                                        width: 50.0,
                                                        height: 50.0,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(20.0),
                                          child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 7,
                                                    color:
                                                        const Color(0x55000000),
                                                    offset:
                                                        Offset.fromDirection(
                                                            3, 5),
                                                    spreadRadius: 1.5,
                                                  )
                                                ],
                                                color: Colors.white,
                                                borderRadius:
                                                    const BorderRadiusDirectional
                                                        .only(
                                                  topEnd: Radius.circular(20.0),
                                                  topStart:
                                                      Radius.circular(20.0),
                                                  bottomEnd:
                                                      Radius.circular(40.0),
                                                  bottomStart:
                                                      Radius.circular(40.0),
                                                )),
                                            child: Column(
                                              children: [
                                                const Stack(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.all(0.9),
                                                      child: Image(
                                                        image: AssetImage(
                                                            'assets/images/head.png'),
                                                        width: double.infinity,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.all(10.0),
                                                      child: Center(
                                                        child: Text(
                                                          'تحدياتي',
                                                          style: TextStyle(
                                                            fontSize: 20.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          horizontal: 15.0),
                                                      child: ListView.separated(
                                                          physics:
                                                              const NeverScrollableScrollPhysics(),
                                                          shrinkWrap: true,
                                                          itemBuilder:
                                                              (context,
                                                                      index) =>
                                                                  Padding(
                                                                    padding:
                                                                        const EdgeInsets
                                                                            .all(
                                                                            8.0),
                                                                    child: Row(
                                                                      children: [
                                                                        const Image(
                                                                          image:
                                                                              AssetImage('assets/images/sport.png'),
                                                                          fit: BoxFit
                                                                              .cover,
                                                                          width:
                                                                              45.0,
                                                                          height:
                                                                              45.0,
                                                                        ),
                                                                        const SizedBox(
                                                                          width:
                                                                              10.0,
                                                                        ),
                                                                        Text(
                                                                          'الرياضة',
                                                                          style:
                                                                              TextStyle(
                                                                            fontSize:
                                                                                18.0,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                            color:
                                                                                defaultTextColor,
                                                                          ),
                                                                        ),
                                                                        const Spacer(),
                                                                        IconButton(
                                                                          onPressed:
                                                                              () {},
                                                                          icon:
                                                                              Icon(
                                                                            CupertinoIcons.chevron_back,
                                                                            color:
                                                                                defaultTextColor,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                          separatorBuilder:
                                                              (context,
                                                                      index) =>
                                                                  myDivider(),
                                                          itemCount: 6),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                      alignment: Alignment.topCenter,
                                    ),
                                  ],
                                ),
                              ),
                          separatorBuilder: (context, index) => myDivider(),
                          itemCount: 1),
                    ],
                  ),
                ),
              ),
              BottomBar(
                right_image: 'assets/images/Settings.png',
                center_image: 'assets/images/alarm.png',
                left_image: 'assets/images/allcomment.png',
                center_icon: () {
                  navigateTo(context, GlowProblemsScreen());
                },
                right_icon: () {},
                left_icon: () {
                  navigateTo(context, GlowCommentsScreen());
                },
              ),
              // Container(
              //   height: 120,
              //   child: Stack(
              //     alignment: AlignmentDirectional.bottomEnd,
              //     children: [
              //       Container(
              //         width: double.infinity,
              //         height: 60.0,
              //         decoration: BoxDecoration(
              //           borderRadius: BorderRadiusDirectional.only(
              //             topEnd: Radius.circular(50.0),
              //             topStart: Radius.circular(50.0),
              //           ),
              //           gradient: defaultGradient,
              //
              //         ),
              //     ),
              //       Padding(
              //         padding: const EdgeInsets.all(20.0),
              //         child: Row(
              //           mainAxisAlignment: MainAxisAlignment.center,
              //           children: [
              //             Padding(
              //               padding: const EdgeInsets.symmetric(
              //                 vertical: 5.0
              //               ),
              //               child: Expanded(
              //                 child: CircleAvatar(
              //                   backgroundColor: Colors.white,
              //                   radius: 30.0,
              //                   backgroundImage: AssetImage(
              //                     'assets/images/Settings.png'
              //                   ),
              //                 ),
              //               ),
              //             ),
              //             Spacer(),
              //             Padding(
              //               padding: const EdgeInsets.symmetric(
              //                   vertical: 5.0
              //               ),
              //               child: Expanded(
              //                 child: CircleAvatar(
              //                   backgroundColor: Colors.white,
              //                   radius: 40.0,
              //                   backgroundImage: AssetImage(
              //                       'assets/images/alarm.png'
              //                   ),
              //
              //                 ),
              //               ),
              //             ),
              //             Spacer(),
              //             Padding(
              //               padding: const EdgeInsets.symmetric(
              //                   vertical: 5.0
              //               ),
              //               child: Expanded(
              //                 child: CircleAvatar(
              //                   backgroundColor: Colors.white,
              //                   radius: 30.0,
              //                   backgroundImage: AssetImage(
              //                       'assets/images/allcomment.png'
              //                   ),
              //                 ),
              //               ),
              //             ),
              //           ],
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
      drawer: SideMenu(key: UniqueKey()),
    );
  }
}
