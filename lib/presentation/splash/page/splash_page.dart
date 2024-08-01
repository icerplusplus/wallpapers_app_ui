import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wallpapers_app_ui/core/configs/assets/app_vectors.dart';
import 'package:wallpapers_app_ui/core/configs/theme/app_colors.dart';
import 'package:wallpapers_app_ui/core/configs/theme/app_theme.dart';
import 'package:wallpapers_app_ui/presentation/splash/widgets/loading_indicator.dart';
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        width: 148,
                        height: 96,
                        AppVectors.logo,
                      ),
                      const SizedBox(height: 25),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WallyMax',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold
                            )
                          ),
                          Text(' - 4K Wallpapers',
                            style: TextStyle(
                              fontSize: 24,
                            )
                          ),
                        ],
                      ),
                      const SizedBox(height: 25),
                      const LoadingIndicator(width: 172),
                    ],
                  ),
                ),
              Expanded(
                flex: 1,
                child: Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.all(24),
                width: AppTheme.getScreenSize(context).width,
                height: AppTheme.getScreenSize(context).height/4 < 200 ? AppTheme.getScreenSize(context).height/4: 200,
                decoration: const BoxDecoration(
                  color: AppColors.dark,
                  borderRadius: BorderRadius.all(
                    Radius.circular(23)
                  ),
                ),
                child: const Text(
                    'Native Ad',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 32,
                      color: AppColors.textGrey,
                    ),
                  )
                )
              )
            ],
          )
      )
    );    
  }
}