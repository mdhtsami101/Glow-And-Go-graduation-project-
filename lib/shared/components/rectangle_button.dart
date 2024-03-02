import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0, right: 130),
                      child: Text(
                        text,
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.normal,
                          color: defaultTextColor,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 90),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.blue,
                          size: 40,
                        ),
                      ),
                    ),
                  ],
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
