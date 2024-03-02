import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../shared/components/components.dart';
import '../../../shared/styles/colors.dart';
import '../comments/glow_comments_screen.dart';
import '../problems/glow_problems_screen.dart';
import '../problems_item/glow_problems_item_screen.dart';

class GlowChallengesItemScreen extends StatefulWidget {
  const GlowChallengesItemScreen({super.key});

  @override
  State<GlowChallengesItemScreen> createState() => _GlowChallengesItemScreenState();

}

class _GlowChallengesItemScreenState extends State<GlowChallengesItemScreen> {
  bool val = false;
  bool isVisible = true;
  List<bool> checkBoxValues = [false, false, false, false, false];
  List<bool> visibilityValues = [false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                                        'assets/images/topfeed.png',
                                      ),
                                      height: 180,
                                      fit: BoxFit.cover,
                                    ),
                                    Container(
                                      child: Column(
                                        children: [
                                          Text(
                                            'التغذية',
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
                                            'الاكل السليم في الجسم السليم',
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
                            empty:Icon(
                              Icons.star,
                              color: Colors.grey,
                            ),
                          ),
                          onRatingUpdate: (value) {

                          },
                          itemSize: 35,

                      ),
                      SizedBox(
                        height: 15.0,
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
                                      Spacer(),
                                      Text(
                                        ' اليوم الاول',
                                        style: TextStyle(
                                            color: defaultTextColor,
                                            fontSize: 30 ,
                                            fontWeight: FontWeight.bold,

                                        ),
                                      ),
                                      Spacer(),
                                      Checkbox(
                                          value:checkBoxValues[index] ,
                                          checkColor: Colors.green,
                                          side: BorderSide(
                                            color: Colors.red,
                                            width: 2,
                                          ),
                                          fillColor:MaterialStateProperty.all(Colors.white),
                                          onChanged: (value) {
                                            setState(() {
                                              checkBoxValues[index] = value!;

                                            });
                                          },
                                      ),
                                      IconButton(
                                        onPressed: (){
                                          setState(() {
                                            visibilityValues[index] = !visibilityValues[index];
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
                                  visible:  visibilityValues[index],
                                  child:Container(
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
                          separatorBuilder:(context, index) => SizedBox(
                            height: 25.0,
                          ),
                          itemCount: 5
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
                          GestureDetector(
                            onTap: (){
                              navigateTo(context, GlowProblemsItemScreen());
                            },
                            child: Expanded(
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 30.0,
                                backgroundImage: AssetImage(
                                  'assets/images/Settings.png',


                                ),

                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              navigateTo(context, GlowProblemsScreen());
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 33.0,
                              ),
                              child: Expanded(

                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 37,
                                  backgroundImage: AssetImage(
                                    'assets/images/alarm.png',

                                  ),

                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              navigateTo(context, GlowCommentsScreen());
                            },
                            child: Expanded(
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 30.0,
                                backgroundImage: AssetImage(
                                    'assets/images/allcomment.png'
                                ),
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
