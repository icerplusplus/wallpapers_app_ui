import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wallpapers_app_ui/common/widgets/padding_vertical.dart';
import 'package:wallpapers_app_ui/core/configs/assets/app_vectors.dart';
import 'package:wallpapers_app_ui/core/configs/theme/app_theme.dart';

class WallpaperGridview extends StatefulWidget {
  final List<String> wallpapers;
  const WallpaperGridview({super.key, required this.wallpapers});

  @override
  _WallpaperGridviewState createState() => _WallpaperGridviewState();
}

class _WallpaperGridviewState extends State<WallpaperGridview> {
  @override
  Widget build(BuildContext context) {
    late List<String> wallpapers = widget.wallpapers;
    return PaddingVertical(
        child: Wrap(
            spacing: 7,
            runSpacing: 7,
            children: List.generate(
              wallpapers.length,
              (index) => Container(
                  height:
                      ((AppTheme.getScreenSize(context).width - 42) / 3) * 2,
                  width: ((AppTheme.getScreenSize(context).width - 42) / 3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      image: AssetImage(
                        wallpapers[index],
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Positioned.fill(
                    child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          padding: const EdgeInsets.all(7),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.black26),
                          child: SvgPicture.asset(
                            AppVectors.heartOutline,
                            width: 20,
                            height: 20,
                          ),
                        )),
                  )),
            )));
  }
}
