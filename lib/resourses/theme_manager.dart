import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors_manager.dart';

ThemeData getLightTheme() {
  return ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: ColorsManager.beige,
    scaffoldBackgroundColor: Colors.transparent,

    //app bar theme.........................................
    appBarTheme: AppBarTheme(
      centerTitle: true,
      titleTextStyle: GoogleFonts.aBeeZee(
        fontWeight: FontWeight.bold,
        fontSize: 25,
        color: ColorsManager.beige,
      ),
      backgroundColor: ColorsManager.black,
      iconTheme: const IconThemeData(
        color: ColorsManager.beige,
      ),
    ),

    // text selection theme....................................................
    textSelectionTheme: TextSelectionThemeData(
        // cursorColor: ColorsManager.gold,
        // selectionColor: ColorsManager.black.withOpacity(0.5),
        // // Change the handle to blue for the text form field ;)
        // selectionHandleColor: ColorsManager.gold,
        ),

    // text form field theme....................................................
    inputDecorationTheme: InputDecorationTheme(
        // content padding
        //   contentPadding: const EdgeInsets.all(16),
        //   hintStyle: Styles.style16Medium(),
        //   errorStyle: Styles.style10Regular().copyWith(color: ColorsManager.red),
        //   labelStyle: Styles.style16Medium(),
        //   //default border
        //   border: const OutlineInputBorder(
        //       borderSide: BorderSide(color: ColorsManager.gold, width: 2),
        //       borderRadius: BorderRadius.all(Radius.circular(16))),
        //   // enabled border style
        //   enabledBorder: const OutlineInputBorder(
        //       borderSide: BorderSide(color: ColorsManager.gold, width: 2),
        //       borderRadius: BorderRadius.all(Radius.circular(16))),
        //   // focused border style
        //   focusedBorder: const OutlineInputBorder(
        //       borderSide: BorderSide(color: ColorsManager.gold, width: 2),
        //       borderRadius: BorderRadius.all(Radius.circular(16))),
        //   // error border style
        //   errorBorder: const OutlineInputBorder(
        //       borderSide: BorderSide(color: ColorsManager.red, width: 2),
        //       borderRadius: BorderRadius.all(Radius.circular(16))),
        //   // focused border style
        //   focusedErrorBorder: const OutlineInputBorder(
        //       borderSide: BorderSide(color: ColorsManager.red, width: 2),
        //       borderRadius: BorderRadius.all(Radius.circular(16))),
        ),

    // elevated button theme..................................................
    // elevatedButtonTheme: ElevatedButtonThemeData(
    //   style: ElevatedButton.styleFrom(
    //     //side: const BorderSide(color: ColorsManager.blue, width: 2),
    //     elevation: 0,
    //     foregroundColor: ColorsManager.darkBlue,
    //     backgroundColor: ColorsManager.gold,
    //     textStyle: Styles.style20Bold(),
    //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    //   ),
    // ),

    //text theme................................................................
    textTheme: TextTheme(
      titleSmall: GoogleFonts.aBeeZee(
        fontWeight: FontWeight.bold,
        fontSize: 18,
        color: ColorsManager.beige,
      ),
      titleMedium: GoogleFonts.aBeeZee(
        fontWeight: FontWeight.bold,
        fontSize: 22,
        color: ColorsManager.beige,
      ),
      titleLarge: GoogleFonts.aBeeZee(
        fontWeight: FontWeight.bold,
        fontSize: 30,
        color: ColorsManager.beige,
      ),
      headlineSmall: GoogleFonts.elMessiri(
        fontWeight: FontWeight.bold,
        fontSize: 18,
        color: ColorsManager.beige,
      ),
      headlineMedium: GoogleFonts.elMessiri(
        fontWeight: FontWeight.bold,
        fontSize: 22,
        color: ColorsManager.beige,
      ),
      headlineLarge: GoogleFonts.elMessiri(
        fontWeight: FontWeight.bold,
        fontSize: 30,
        color: ColorsManager.beige,
      ),
    ),

    //bottom nav bar theme...........................................................
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: ColorsManager.beige,
      showUnselectedLabels: false,
      showSelectedLabels: true,
      unselectedItemColor: ColorsManager.black,
      selectedItemColor: Colors.white,
      type: BottomNavigationBarType.fixed,
    ),
  );
}
