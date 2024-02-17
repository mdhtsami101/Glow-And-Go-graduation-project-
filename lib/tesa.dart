import 'package:flutter/material.dart';
import 'package:glow/modules/glow_app/login/glow_login_screen.dart';
import 'package:glow/shared/components/components.dart';
import 'package:glow/shared/styles/colors.dart';
import 'package:hexcolor/hexcolor.dart';

class test extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('FAFAFAFF'),
      body: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: SafeArea(
            child:Column(
              children: [
                Container(
                  child: Expanded(
                    child: Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * 0.25, // Adjust the height responsively
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Colors.cyanAccent, Colors.indigoAccent],
                            ),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 3,
                                color: Color(0x66000000),
                                offset: Offset(0, 5),
                                spreadRadius: 1.5,
                              )
                            ],
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(250),
                              bottomRight: Radius.circular(250),
                            ),
                            shape: BoxShape.rectangle,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.98, -0.98),
                          child: IconButton(
                            icon: Icon(
                              Icons.menu,
                              color: Colors.white,
                              size: 30,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.07, -0.3),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1), // Adjust the padding responsively
                            child: Text(
                              'لحياةُ أجمل عندما نشكر الله على ما ذهب مناوما بقي لدينا، وما سيأتي',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.03, 0.2),
                          child: Text(
                            'medhat samy',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.06, 2),
                          child: MaterialButton(
                            onPressed: () {
                              navigateTo(context, GlowLoginScreen());
                            },

                            child: CircleAvatar(
                              radius: MediaQuery.of(context).size.width * 0.15, // Adjust the radius responsively
                              backgroundColor: Colors.transparent,
                              backgroundImage: AssetImage('assets/images/logo.png'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 70,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadiusDirectional.circular(20.0),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 7,
                                color: Color(0x55000000),
                                offset: Offset.fromDirection(3 , 5),

                                spreadRadius: 1.5,
                              )
                            ],

                          ),
                          child: Column(
                            children: [
                              Image(
                                  image:AssetImage('assets/images/Problems.png'),
                                  width:100.0 ,
                                  height:80.0 ,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 10.0
                                ),
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
                      SizedBox(
                        width: 20.0,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadiusDirectional.circular(20.0),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 7,
                                color: Color(0x55000000),
                                offset: Offset.fromDirection(3 , 5),

                                spreadRadius: 1.5,
                              )
                            ],
                          ),
                          child: Column(
                            children: [
                              Image(
                                  image:AssetImage('assets/images/Challenges.png'),
                                  width:100.0 ,
                                  height:80.0 ,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 10.0
                                ),
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
                      SizedBox(
                        width: 20.0,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadiusDirectional.circular(20.0),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 7,
                                color: Color(0x55000000),
                                offset: Offset.fromDirection(3 , 5),

                                spreadRadius: 1.5,
                              )
                            ],
                          ),
                          child: Column(
                            children: [
                              Image(
                                  image:AssetImage('assets/images/Habits.png'),
                                  width:100.0 ,
                                  height:80.0 ,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 10.0
                                ),
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


                    ],
                  ),
                ),
                SizedBox(
                  height: 100.0,
                ),
                Expanded(
                  child: Column(
                   children: [
                     Container(
                       width: double.infinity,
                       color: Colors.white,
                       child:Column(
                         children: [
                           Stack(
                             children: [
                               Image(
                                 image:AssetImage('assets/images/head.png'),
                                 width: double.infinity,
                               ),
                               Padding(
                                 padding: const EdgeInsets.all(10.0),
                                 child: Center(
                                   child: Text(
                                     'المهام اليوميه',
                                     style: TextStyle(
                                       fontSize: 20.0,
                                       fontWeight: FontWeight.bold,
                                       color: Colors.white,
                                     ),
                                   ),
                                 ),
                               ),
                             ],
                           ),
                           Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text(
                                 'تنظيف الغرفة',
                                 style: TextStyle(
                                   fontSize: 18.0,
                                   fontWeight: FontWeight.bold,
                                   color: defaultTextColor,
                                 ),
                               ),
                               myDivider(),
                               Text(
                                 'تنظيف الغرفة',
                                 style: TextStyle(
                                   fontSize: 18.0,
                                   fontWeight: FontWeight.bold,
                                   color: defaultTextColor,
                                 ),
                               ),
                               myDivider(),

                             ],
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
      ),
    );
  }
}
