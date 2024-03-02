import 'package:flutter/material.dart';
import 'package:glow/shared/styles/colors.dart';

class SquaredButton extends StatelessWidget {
  SquaredButton({
    super.key,
    required this.image,
    required this.text,
  });
  String image;
  String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
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
      child: Column(
        children: [
          Image(
            image: AssetImage(image),
            width: 100.0,
            height: 80.0,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Text(
              text,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: defaultTextColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
