import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'screens/login_screen.dart';
import 'utils/theme.dart';
//import 'screens/total_screen.dart';

void main() {
  runApp(const FashionAssistant());
}

class FashionAssistant extends StatelessWidget {
  const FashionAssistant({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        builder: (BuildContext context, Widget? child) {
          return MaterialApp(
            home: const LoginScreen(),
            theme: SAppTheme.lightTheme,
          );
        });
  }
}
