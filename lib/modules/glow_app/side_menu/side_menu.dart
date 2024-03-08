import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:glow/shared/styles/colors.dart';

class SideMenu extends StatelessWidget {
  SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: const BoxDecoration(gradient: defaultGradient),
        width: MediaQuery.of(context).size.width * (4 / 5),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 35.0,
                    backgroundImage: AssetImage('assets/images/alarm.png'),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'الحساب',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 37,
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              height: 20,
              color: Colors.white,
              thickness: 1,
              indent: 10,
              endIndent: 15,
            ),
            SizedBox(
              height: 25,
            ),
            ListTile(
              title: Text(
                'الخصوصيه',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
              onTap: () {
                // Handle item 1 tap
              },
            ),
            Divider(
              height: 2,
              color: Colors.white,
              thickness: 1,
              indent: 10,
              endIndent: 15,
            ),
            SizedBox(
              height: 25,
            ),
            ListTile(
              title: Text(
                'عن التطبيق',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
              onTap: () {
                // Handle item 1 tap
              },
            ),
            Divider(
              height: 2,
              color: Colors.white,
              thickness: 1,
              indent: 10,
              endIndent: 15,
            ),
            SizedBox(
              height: 25,
            ),
            ListTile(
              title: Text(
                'تواصل معنا',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
              onTap: () {
                // Handle item 1 tap
              },
            ),
            Divider(
              height: 2,
              color: Colors.white,
              thickness: 1,
              indent: 10,
              endIndent: 15,
            ),
            SizedBox(
              height: 25,
            ),
            ListTile(
              title: Text(
                'مساعده',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
              onTap: () {
                // Handle item 1 tap
              },
            ),
            Divider(
              height: 2,
              color: Colors.white,
              thickness: 1,
              indent: 10,
              endIndent: 15,
            ),
            SizedBox(
              height: 25,
            ),
            ListTile(
              title: Text(
                'الاعدادات',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
              onTap: () {
                // Handle item 1 tap
              },
            ),
            Divider(
              height: 2,
              color: Colors.white,
              thickness: 1,
              indent: 10,
              endIndent: 15,
            ),
            // Add more list tiles for additional items
          ],
        ),
      ),
    );
  }
}
