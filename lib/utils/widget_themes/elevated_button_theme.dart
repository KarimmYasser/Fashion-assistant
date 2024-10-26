import 'package:flutter/material.dart';
import '../../constants.dart';

/* -- Light & Dark Elevated Button Themes -- */
class SElevatedButtonTheme {
  SElevatedButtonTheme._(); //To avoid creating instances

  /* -- Light Theme -- */
  static final ElevatedButtonThemeData lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: OurColors.light,
      backgroundColor: OurColors.primaryColor,
      disabledForegroundColor: Colors.grey,
      disabledBackgroundColor: OurColors.buttonDisabled,
      side: const BorderSide(color: OurColors.primaryColor),
      padding: const EdgeInsets.symmetric(vertical: Sizes.buttonHeight),
      textStyle: const TextStyle(
          fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Sizes.buttonRadius)),
    ),
  );

  /* -- Dark Theme -- */
  static final ElevatedButtonThemeData darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: OurColors.light,
      backgroundColor: OurColors.primaryColor,
      disabledForegroundColor: Colors.grey,
      disabledBackgroundColor: const Color.fromARGB(255, 85, 85, 85),
      side: const BorderSide(color: OurColors.primaryColor),
      padding: const EdgeInsets.symmetric(vertical: Sizes.buttonHeight),
      textStyle: const TextStyle(
          fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Sizes.buttonRadius)),
    ),
  );
}
