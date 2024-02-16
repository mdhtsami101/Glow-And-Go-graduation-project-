import 'package:flutter/material.dart';
import 'package:glow/modules/glow_app/login/glow_login_screen.dart';
import 'package:glow/shared/components/components.dart';
import 'package:glow/shared/styles/colors.dart';
import 'package:hexcolor/hexcolor.dart';

class OnBordingScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('FAFAFAFF'),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(23.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
                image: AssetImage('assets/images/alllogo.png'),
                width: 350.0 ,

            ),
            SizedBox(
              height: 30.0,
            ),
            Center(
              child: Text(
                'تنبيه',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              'هذا التطبيق موجه للأشخاص الذين ',
              style: TextStyle(
                color: defaultTextColor,
                fontSize: 22.0,
                fontWeight: FontWeight.w500
                // fontWeight: FontWeight.bold
              ),
            ),
            Text(
              'لا يعانوا من امراض نفسية مزمنة',
              style: TextStyle(
                color: defaultTextColor,
                fontSize: 22.0,
                fontWeight: FontWeight.w500
                // fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Center(
              child: defaultButton(
                  Function: (){
                    navigateTo(context, GlowLoginScreen());
                  },
                  text: 'أوافق',
                  background: Colors.white,
                  width: 150.0,
                radius: 25,

              ),
            )
          ],
          ),
        ),
      ),

    );
  }
}
