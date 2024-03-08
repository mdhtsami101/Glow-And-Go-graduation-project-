import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glow/modules/glow_app/challenges_users_item/glow_challenges_users_item_screen.dart';
import 'package:glow/shared/styles/colors.dart';

class RectangleButton extends StatelessWidget {
  RectangleButton({super.key, required this.text});
  String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadiusDirectional.circular(20.0),
              boxShadow: [
                BoxShadow(
                  blurRadius: 7,
                  color: Color(0x55000000),
                  offset: Offset.fromDirection(3, 5),
                  spreadRadius: 1.5,
                )
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  text,
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.normal,
                    color: defaultTextColor,
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
    );
  }
}
