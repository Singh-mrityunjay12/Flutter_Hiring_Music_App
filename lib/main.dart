import 'package:assign/data/authentication/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'buildings/general_bindings.dart';
import 'feature/screens/splash_screen/splash_screen.dart';
import 'utils/theme/theme.dart';

void main() {
  runApp(const MyApp());

  Get.put(AuthenticationRepository());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      designSize: const Size(380, 845),
      useInheritedMediaQuery: true,
      builder: (_, child) {
        return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            // getPages: AppRoutes.pages,
            themeMode: ThemeMode.system,
            title: 'Flutter Demo',
            theme: MAppTheme.lightTheme,
            darkTheme: MAppTheme.darkTheme,
            initialBinding: GeneralBinding(),
            home: const SplashScreen());
      },
    );
  }
}
