import 'package:flutter/material.dart';
import 'package:glow/shared/styles/colors.dart';

class BottomBar extends StatelessWidget {
  BottomBar(
      {super.key,
      required this.right_image,
      required this.center_image,
      required this.left_image,
      required this.center_icon,
      required this.right_icon,
      required this.left_icon});

  String right_image;
  String center_image;
  String left_image;

  var center_icon;
  var right_icon;
  var left_icon;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  onTap: right_icon,
                  child: Expanded(
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 30.0,
                      backgroundImage: AssetImage(
                        right_image,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: center_icon,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 33.0,
                    ),
                    child: Expanded(
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 37,
                        backgroundImage: AssetImage(
                          center_image,
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: left_icon,
                  child: Expanded(
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 30.0,
                      backgroundImage: AssetImage(left_image),
                    ),
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
