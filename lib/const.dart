/* 
 File ini berguna sebagai tempat pendeklarasian warna yang dibutuhkan dalam 
 pengembangan aplikasi flutter bulan ini.

 Dalam file ini kita akan menggunakan 2 package yaitu :

 Google font : Untuk membuat text style
 Material : Sebagai base material flutter
 
 */
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Pendefinisian konstan untuk UI
const double kHorizontalMargin = 16.0;

// Pendefinisian warna yang akan dipakai agar mengulang-mengulang
const Color kPrimaryColor = Color(0xFFEA4235);
const Color kAccentColor1 = Color(0xFF4286F5);

// Pendifinisian Text Style menggunakan bantuan package GoogleFont.
var kBlackTextStyle = GoogleFonts.roboto(
  color: Colors.black,
  fontWeight: FontWeight.w400,
);
var kWhiteTextStyle = GoogleFonts.roboto(
  color: Colors.white,
  fontWeight: FontWeight.w400,
);
