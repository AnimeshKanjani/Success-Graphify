import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

//for custom appbar icon in top-left corner
AppBar buildAppBar() {
  return AppBar(
    elevation: 0.0,
    backgroundColor: Color(0xff6e3cbc),
    title: Text(
      '   SUCCESS GRAPHIFY',
      style: TextStyle(
          //color: Colors.white,
          fontSize: 25,
          fontFamily: GoogleFonts.raleway().fontFamily,
          fontWeight: FontWeight.bold,
          color: Colors.white),
    ),
    leading: Builder(
      builder: (BuildContext context) {
        return IconButton(
          icon: SvgPicture.asset("assets/images/menu.svg"),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        );
      },
    ),
  );
}
