import 'package:flutter/material.dart';
import 'package:wallpapers_app_ui/core/configs/theme/app_colors.dart';

class AppTheme {
   static final lightTheme = ThemeData(
    primaryColor: AppColors.lightBackground,
    scaffoldBackgroundColor: AppColors.lightBackground,
    brightness: Brightness.light,
    fontFamily: 'Poppins',
    sliderTheme: SliderThemeData(
      overlayShape: SliderComponentShape.noOverlay
    )
    );

    static final darkTheme = ThemeData(
    primaryColor: AppColors.darkBackground,
    scaffoldBackgroundColor: AppColors.darkBackground,
    brightness: Brightness.dark,
    fontFamily: 'Poppins',
    sliderTheme: SliderThemeData(
      overlayShape: SliderComponentShape.noOverlay,
      activeTrackColor: const Color(0xffB7B7B7),
      inactiveTrackColor: Colors.grey.withOpacity(0.3),
      thumbColor: const Color(0xffB7B7B7)
    )
    );

    static ScreenSize getScreenSize(BuildContext context) {
      return ScreenSize(width: MediaQuery.sizeOf(context).width, height: MediaQuery.sizeOf(context).height);
    }
}

class ScreenSize {
  final width;
  final height;
  const ScreenSize({required this.width, required this.height});
}