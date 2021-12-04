import 'package:success_graphify/utilities/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color(0xff7267CB),
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: const Color(0xff7267CB),
                ),
                margin: EdgeInsets.zero,
                accountName: Text(
                  "Success",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                      fontFamily: GoogleFonts.mateSc().fontFamily),
                ),
                accountEmail: Text(
                  "Graphify",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                      fontFamily: GoogleFonts.mateSc().fontFamily),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/CF.jpg"),
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, MyRoute.homeRoute, ModalRoute.withName("/"));
              },
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),

            const ExpansionTile(
              collapsedIconColor: Colors.white,
              iconColor: Colors.white,
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                'About Us',
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
              children: <Widget>[
                ListTile(
                    title: Text(
                  'We are a group of 3 Computer enthusiasts who built this app to help the competitive community out there. This app was possible with the support by the teachers at our colllege JIIT.',
                  textScaleFactor: 1.2,
                  style: TextStyle(color: Colors.white),
                )),
              ],
            ),

            /*    leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "About Us",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),*/
            // ),
            const ExpansionTile(
              collapsedIconColor: Colors.white,
              iconColor: Colors.white,
              leading: Icon(
                Icons.email,
                color: Colors.white,
              ),
              title: Text(
                "Contact Us",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
              children: <Widget>[
                ListTile(
                    title: Text(
                  'Email-\n 19103041@mail.jiit.ac.in \n 19103058@mail.jiit.ac.in \n 19103059@mail.jiit.ac.in',
                  textScaleFactor: 1.2,
                  style: TextStyle(color: Colors.white),
                )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
