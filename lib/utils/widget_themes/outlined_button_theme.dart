import 'package:flutter/material.dart';

import '../../constants.dart';

/* -- Light & Dark Outlined Button Themes -- */
class SOutlinedButtonTheme {
  SOutlinedButtonTheme._(); //To avoid creating instances


  /* -- Light Theme -- */
  static final OutlinedButtonThemeData lightOutlinedButtonTheme  = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: OurColors.secondaryButtonTextColor,
      side: const BorderSide(color: OurColors.secondaryButtonBorderColor),
      textStyle: const TextStyle(fontSize: 16, color: OurColors.secondaryButtonTextColor, fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(vertical: Sizes.buttonHeight, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(Sizes.buttonRadius)),
    ),
  );
}
