import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quotedemo/gen/fonts.gen.dart';
import 'package:quotedemo/pages/navigation_handler/navigation_handler_binding.dart';
import 'package:quotedemo/pages/splash_screen/splash_screen.dart';

main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(377, 875),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context) {
          return GetMaterialApp(
            theme: ThemeData(fontFamily: FontFamily.poppins),
            debugShowCheckedModeBanner: false,
            initialBinding: NavigationHandlerBinding(),
            home: const SplashScreen(),
          );
        });
  }
}
