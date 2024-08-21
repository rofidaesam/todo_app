import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do/appcolores.dart';

class MyThemeData
{
  static final ThemeData light = ThemeData(
   primaryColor: Appcolores.primaryColor,
    scaffoldBackgroundColor: Appcolores.backGroundlight,
    appBarTheme: AppBarTheme(backgroundColor: Appcolores.primaryColor,
    elevation:0),
    textTheme: TextTheme(
      titleLarge: GoogleFonts.poppins(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: Appcolores.whiteColor

      ),
        titleMedium:  GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Appcolores.blacklight

        ),
        bodyMedium:  GoogleFonts.inter(
  fontSize: 20,
  fontWeight: FontWeight.w700,
  color: Appcolores.blacklight

  ),
    bodySmall: GoogleFonts.poppins(
  fontSize: 18,
  fontWeight: FontWeight.w400,
  color: Appcolores.blacklight

  ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      elevation: 0,
      backgroundColor: Colors.transparent,
      selectedItemColor: Appcolores.primaryColor,
        unselectedItemColor:Appcolores.icondColor,
      showSelectedLabels: true,
    ),
    bottomSheetTheme: BottomSheetThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15)
        ),
        side: BorderSide(color: Appcolores.whiteColor)
      )
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Appcolores.primaryColor,
      shape: StadiumBorder(
        side:BorderSide(
          color: Appcolores.whiteColor,
          width: 5
        )
      )
    )
  );
}