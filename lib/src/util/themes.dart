import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

const Color primaryColor = kWhite;

class Themes {
  static final light = ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: kWhite,
      elevation: 0.0,
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),
      titleTextStyle: TextStyle(color: Colors.black, fontSize: 30.sp, fontWeight: FontWeight.bold,)
    ),
    primaryColor: primaryColor,
    colorScheme: ColorScheme.fromSwatch().copyWith(
      secondary: kTileColor,
    ),
    brightness: Brightness.light,
    fontFamily: GoogleFonts.lato().fontFamily,
    iconTheme: const IconThemeData(size: kIconSize),
  );

  static final dark = ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: kDarkGreyColor,
      elevation: 0.0,
    ),
    primaryColor: kDarkGreyColor,
    brightness: Brightness.dark,
    fontFamily: GoogleFonts.lato().fontFamily,
    iconTheme: const IconThemeData(size: kIconSize),
  );
}

TextStyle get subHeadingStyle {
  return const TextStyle(
    fontSize: kSubHeadingFontSize,
    fontWeight: FontWeight.bold,
    // color: Get.isDarkMode ? Colors.grey[400] : Colors.grey,
  );
}

TextStyle get headingStyle {
  return TextStyle(
    fontSize: kHeadingFontSize,
    fontWeight: FontWeight.bold,
  );
}
