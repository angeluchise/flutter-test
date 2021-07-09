import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class DesignAssets {
  LinearGradient linearGradientMain(BuildContext context) {
    return LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Theme.of(context).primaryColorLight,
          Theme.of(context).primaryColor,
        ]);
  }

  // title custom
  static RichText tittleCustom() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          text: 'Shopping',
          style: GoogleFonts.portLligatSans(
              fontSize: 30, fontWeight: FontWeight.w700, color: Colors.white60),
          children: [
            TextSpan(
                text: 'List',
                style: TextStyle(color: Colors.white, fontSize: 30)),
          ]),
    );
  }

  static RichText tittleCustomDark() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          text: 'Shopping',
          style: GoogleFonts.portLligatSans(
              fontSize: 30, fontWeight: FontWeight.w700, color: Colors.grey),
          children: [
            TextSpan(
                text: 'List',
                style: TextStyle(color: Colors.black, fontSize: 30)),
          ]),
    );
  }
}

class TextSpam {}
