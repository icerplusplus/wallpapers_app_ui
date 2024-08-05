import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wallpapers_app_ui/core/configs/assets/app_vectors.dart';
import 'package:wallpapers_app_ui/core/configs/theme/app_colors.dart';

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  State<MyAppBar> createState() => MyAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
            child: Padding(
          padding: const EdgeInsets.only(left: 14, right: 7, bottom: 7),
          child: Container(
              decoration: const BoxDecoration(
                  color: AppColors.searchInput,
                  borderRadius: BorderRadius.all(Radius.circular(24))),
              child: Row(
                children: [
                  const Expanded(
                    child: TextField(
                      style: TextStyle(
                        fontSize: 14,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Find wallpaper...',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 24, right: 8),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(right: 24),
                    child: SvgPicture.asset(
                      width: 23,
                      height: 23,
                      AppVectors.search,
                    ),
                  )
                ],
              )),
        )),
        Container(
          padding: const EdgeInsets.only(right: 24),
          child: SvgPicture.asset(
            width: 28,
            height: 28,
            AppVectors.notification,
          ),
        ),
      ],
    ));
  }
}
