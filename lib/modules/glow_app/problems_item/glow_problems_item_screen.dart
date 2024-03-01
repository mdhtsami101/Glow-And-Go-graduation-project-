import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../shared/styles/colors.dart';

class GlowProblemsScreen extends StatelessWidget {


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
                                        'assets/images/Problems.png',
                                      ),
                                      height: 180,
                                      fit: BoxFit.cover,
                                    ),
                                    Container(
                                      child: Column(
                                        children: [
                                          Text(
                                            'المشاكل',
                                            style: TextStyle(
                                              fontSize: 25.0,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,

                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            'معلش هي الدنيا كدا كلها مشاكل',
                                            style: TextStyle(
                                              fontSize: 16.0,
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
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20.0
                            ),
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
                                        offset: Offset.fromDirection(3 ,4 ),
                                        spreadRadius: 0.3,
                                      )
                                    ],

                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      IconButton(
                                          onPressed: (){},
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
                                          fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      Spacer(),
                                    ],
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
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.only(
                          topEnd: Radius.circular(50.0),
                          topStart: Radius.circular(50.0),
                        ),
                        gradient: defaultGradient,

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20.0,
                        vertical: 15.0
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 30.0,
                              backgroundImage: AssetImage(
                                  'assets/images/Settings.png'
                              ),
                            ),
                          ),
                          Spacer(),
                          Expanded(
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 35,
                              backgroundImage: AssetImage(
                                  'assets/images/home.png',

                              ),

                            ),
                          ),
                          Spacer(),
                          Expanded(
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 30.0,
                              backgroundImage: AssetImage(
                                  'assets/images/allcomment.png'
                              ),
                            ),
                          ),
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
