import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:wallpapers_app_ui/common/widgets/padding_horizontal.dart';
import 'package:wallpapers_app_ui/common/widgets/padding_vertical.dart';
import 'package:wallpapers_app_ui/core/configs/assets/app_images.dart';
import 'package:wallpapers_app_ui/core/configs/assets/app_vectors.dart';
import 'package:wallpapers_app_ui/core/configs/theme/app_theme.dart';
import 'package:wallpapers_app_ui/presentation/home/widgets/appbar.dart';
import 'package:wallpapers_app_ui/presentation/home/widgets/category.dart';
import 'package:wallpapers_app_ui/presentation/home/widgets/image_carousel.dart';
import 'package:wallpapers_app_ui/presentation/home/widgets/wallpaper_gridview.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const MyAppBar(),
        body: SafeArea(
            child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PaddingHorizontal(
                child: const ImageCarousel(images: AppImages.heros),
              ),
              PaddingHorizontal(
                child: const MyCategory(categories: AppImages.categories),
              ),
              // header filter
              PaddingVertical(
                child: PaddingHorizontal(
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: const Color(0xffE1F4FF),
                      borderRadius: BorderRadius.circular(48),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            width:
                                (AppTheme.getScreenSize(context).width - 56) /
                                    3,
                            padding: const EdgeInsets.only(top: 4, bottom: 4),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(48),
                              gradient: const LinearGradient(
                                  begin: Alignment.bottomLeft,
                                  end: Alignment(0.8, 1),
                                  colors: [
                                    Color(0xff6747E7),
                                    Color(0xff00FFF0)
                                  ]),
                            ),
                            child: Column(
                              children: [
                                SvgPicture.asset(AppVectors.trendingActive,
                                    width: 24, height: 24),
                                const SizedBox(height: 4),
                                const Text(
                                  'Trending',
                                  style: TextStyle(color: Colors.white),
                                )
                                // GradientText(
                                //   'Trending',
                                //   colors: [
                                //     const Color(0xff6747E7),
                                //     const Color(0xff00FFF0)
                                //   ],
                                // ),
                              ],
                            )),
                        Container(
                            width:
                                (AppTheme.getScreenSize(context).width - 56) /
                                    3,
                            padding: const EdgeInsets.only(top: 4, bottom: 4),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(48),
                              // gradient: const LinearGradient(
                              //   begin: Alignment.bottomLeft,
                              //   end: Alignment(0.8, 1),
                              //   colors: [
                              //     Color(0xff6747E7),
                              //     Color(0xff00FFF0)
                              //   ]
                              // ),
                            ),
                            child: Column(
                              children: [
                                SvgPicture.asset(AppVectors.recent,
                                    width: 24, height: 24),
                                const SizedBox(height: 4),
                                // const Text(
                                //   'Trending',
                                //   style: TextStyle(
                                //     color: Colors.white
                                //   ),
                                // ),
                                GradientText(
                                  'Recent',
                                  colors: const [
                                    Color(0xff6747E7),
                                    Color(0xff00FFF0)
                                  ],
                                ),
                              ],
                            )),
                        Container(
                            width:
                                (AppTheme.getScreenSize(context).width - 56) /
                                    3,
                            padding: const EdgeInsets.only(top: 4, bottom: 4),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(48),
                              // gradient: const LinearGradient(
                              //   begin: Alignment.bottomLeft,
                              //   end: Alignment(0.8, 1),
                              //   colors: [
                              //     Color(0xff6747E7),
                              //     Color(0xff00FFF0)
                              //   ]
                              // ),
                            ),
                            child: Column(
                              children: [
                                SvgPicture.asset(AppVectors.newIcon,
                                    width: 24, height: 24),
                                const SizedBox(height: 4),
                                // const Text(
                                //   'Trending',
                                //   style: TextStyle(
                                //     color: Colors.white
                                //   ),
                                // )
                                GradientText(
                                  'New',
                                  colors: const [
                                    Color(0xff6747E7),
                                    Color(0xff00FFF0)
                                  ],
                                ),
                              ],
                            )),
                      ],
                    ),
                  ),
                ),
              ),
              // show wallpapers
              PaddingHorizontal(
                  child:
                      const WallpaperGridview(wallpapers: AppImages.wallpapers))
            ],
          ),
        )));
  }
}
