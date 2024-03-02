import 'package:flutter/material.dart';
import 'package:glow/shared/styles/colors.dart';
//import 'package:hexcolor/hexcolor.dart';

// ignore: must_be_immutable
class TopBarWithImg extends StatelessWidget {
  TopBarWithImg({required this.text1, required this.text2, this.image});
  String? image;
  String text1;
  String text2;
  @override
  Widget build(BuildContext context) {
    return Container(
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
                  offset: Offset.fromDirection(3, 1),
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
                    image!,
                  ),
                  height: 180,
                  fit: BoxFit.cover,
                ),
                Container(
                  child: Column(
                    children: [
                      Text(
                        text1,
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
                        text2,
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
    );
  }
}
