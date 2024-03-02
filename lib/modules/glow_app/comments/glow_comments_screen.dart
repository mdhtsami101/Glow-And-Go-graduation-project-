import 'package:flutter/material.dart';
import 'package:glow/shared/components/components.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../shared/styles/colors.dart';

class GlowCommentsScreen extends StatelessWidget {
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
                        physics:NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) => Container(
                          // height: 250,
                          child: Stack(
                            alignment: AlignmentDirectional.topCenter,
                            children: [
                              Container(
                                width: double.infinity,
                                height: 180.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadiusDirectional.only(
                                    bottomEnd: Radius.circular(180.0),
                                    bottomStart: Radius.circular(180.0),
                                  ),
                                  gradient: defaultGradient,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 7,
                                      color: Color(0x55000000),
                                      offset: Offset.fromDirection(3 ,1 ),
                                      spreadRadius: 4,
                                    )
                                  ],

                                ),
                              ),
                              Center(
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Image(
                                      image: AssetImage(
                                        'assets/images/allcomment.png',
                                    ),
                                      height: 180,
                                      fit: BoxFit.cover,
                                    ),
                                    Text(
                                        'التعليقات',
                                      style: TextStyle(
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,

                                      ),
                                    ),


                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        separatorBuilder:(context, index) => SizedBox(
                          height: 50.0,
                        ),
                        itemCount: 1,
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      ListView.separated(
                          physics:NeverScrollableScrollPhysics(),
                          shrinkWrap: true,

                          itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 20.0,
                                      backgroundColor: Colors.white,
                                      backgroundImage: AssetImage(
                                          'assets/images/alarm.png'
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15.0,
                                    ),
                                    Text(
                                        'medhat sami',
                                      style: TextStyle(
                                        color: defaultTextColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17.0
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Container(
                                  width: double.infinity,
                                  child: Text(
                                    'لقد كنت اعاني من من مشكلة الصلع ولكن بعد استخدام هذا التطبيق تخلصت من الصلع واصبحت جذابا جدا',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: defaultTextColor
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Row(
                                  children: [
                                    Image(
                                      image: AssetImage(
                                        'assets/images/like.png'
                                    ),
                                      width: 30,
                                      height: 30,

                                    ),
                                    Text(
                                      '20',
                                      style: TextStyle(
                                        color: defaultTextColor,
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    SizedBox(
                                      width: 30.0,
                                    ),
                                    Image(
                                      image: AssetImage(
                                          'assets/images/dislike.png'
                                      ),
                                      width: 30,
                                      height: 30,

                                    ),
                                    Text(
                                      '20',
                                      style: TextStyle(
                                          color: defaultTextColor,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    SizedBox(
                                      width: 30.0,
                                    ),
                                    Image(
                                      image: AssetImage(
                                          'assets/images/comment.png'
                                      ),
                                      width: 30,
                                      height: 30,

                                    ),
                                    Text(
                                      '20',
                                      style: TextStyle(
                                          color: defaultTextColor,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    SizedBox(
                                      width: 30.0,
                                    ),

                                  ],
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),

                              ],
                            ),
                          ),
                          separatorBuilder:(context, index) => Container(
                            width: double.infinity,
                            height: 1.3,
                            color: Colors.grey,
                          ),
                          itemCount: 50
                      ),


                    ],
                  ),
                ),
              ),
              Container(
                height: 60,
                child: Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.only(
                          topEnd: Radius.circular(50.0),
                          topStart: Radius.circular(50.0),
                        ),

                        gradient: defaultGradient,

                      ),
                    ),

                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
