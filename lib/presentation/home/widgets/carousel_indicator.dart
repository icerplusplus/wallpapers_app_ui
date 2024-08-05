import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallpapers_app_ui/core/configs/theme/app_colors.dart';

class CarouselIndicator extends StatefulWidget {
  final int length;
  final int activeIndex;
  const CarouselIndicator({ super.key, required this.length, required this.activeIndex });

  @override
  _CarouselIndicatorState createState() => _CarouselIndicatorState();
}

class _CarouselIndicatorState extends State<CarouselIndicator> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSmoothIndicator(
      activeIndex: widget.activeIndex, 
      count: widget.length,
      effect: const ExpandingDotsEffect(
        dotColor: AppColors.searchInput,
        activeDotColor: AppColors.searchPlaceholder,
        dotHeight: 5,
        dotWidth: 10,
      ),
    );
  }
}