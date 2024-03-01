import 'package:flutter/material.dart';
import 'package:glow/shared/components/components.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../shared/styles/colors.dart';

class GlowProblemsItemScreen extends StatelessWidget {


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
                            alignment: AlignmentDirectional.center,
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
                              Container(
                                child: Column(
                                  children: [
                                    Text(
                                      'التفكير المفرط',
                                      style: TextStyle(
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,

                                      ),
                                    ),
                                    SizedBox(
                                      height: 0,
                                    ),
                                    Text(
                                      'ياعم كفايه تفكير و سيبها علي الله',
                                      style: TextStyle(
                                        fontSize: 18.0,
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
                        height: 30.0,
                      ),
                      ListView.separated(
                          physics:NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadiusDirectional.circular(20.0),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 7,
                                        color: const Color(0x55000000),
                                        offset: Offset.fromDirection(3 , 5),
                                        spreadRadius: 1.5,
                                      )
                                    ],
                                  ),
                                  child: Center(
                                    child: Text(
                                      'اتبع هذة النصيجة التي\nستساعدك علي حل مشكلتك',
                                      style: TextStyle(
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.bold,
                                        color: defaultColor,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 200,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadiusDirectional.circular(20.0),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 7,
                                        color: const Color(0x55000000),
                                        offset: Offset.fromDirection(3 , 5),
                                        spreadRadius: 1.5,
                                      )
                                    ],
                                  ),
                                  child: Center(
                                    child: Text(
                                      'ما لا يقضى بالفكر يقضى بالذكر يمسكين',
                                      style: TextStyle(
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.bold,
                                        color: defaultColor,
                                         decoration: TextDecoration.underline,
                                        decorationColor: defaultTextColor,
                                        decorationThickness: 1
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 50,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 15,
                                        color: const Color(0x55000000),
                                        offset: Offset.fromDirection(3 , 8),
                                        spreadRadius: 0.1,
                                      )
                                    ],
                                  ),
                                  child: defaultButton(
                                      Function: (){},
                                      text: 'نصيحه اخري',
                                    background: Colors.white,
                                    width: 150.0,
                                    radius: 25.0,
                                  ),
                                ),

                              ],
                            ),
                          ),
                          separatorBuilder:(context, index) => SizedBox(
                            height: 25.0,
                          ),
                          itemCount: 1
                      ),
                      SizedBox(
                        height: 50.0,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: Stack(

                  alignment: AlignmentDirectional.bottomEnd,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 60.0,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadiusDirectional.only(
                          topEnd: Radius.circular(50.0),
                          topStart: Radius.circular(50.0),
                        ),
                        gradient: defaultGradient,

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Spacer(),
                          Expanded(
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 30.0,
                              backgroundImage: AssetImage(
                                'assets/images/Settings.png',


                              ),

                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 33.0,
                            ),
                            child: Expanded(

                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 37,
                                backgroundImage: AssetImage(
                                  'assets/images/home.png',

                                ),

                              ),
                            ),
                          ),
                          Expanded(
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 30.0,
                              backgroundImage: AssetImage(
                                  'assets/images/allcomment.png'
                              ),
                            ),
                          ),
                          Spacer(),
                        ],
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
