import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:wallpapers_app_ui/core/configs/theme/app_theme.dart';
import 'package:wallpapers_app_ui/presentation/splash/pages/splash_page.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Wallpapers App',
      theme: AppTheme.lightTheme,
      // darkTheme: AppTheme.darkTheme,
      home: const SplashPage(),
      // routes: {
      //   '/': (context) => const SplashPage(),
      //   '/home': (context) => const HomePage(),
      // },
    );
  }
}
