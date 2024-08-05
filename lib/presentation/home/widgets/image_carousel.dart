import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:wallpapers_app_ui/presentation/home/widgets/carousel_indicator.dart';

class ImageCarousel extends StatefulWidget {
  final List<String> images;
  const ImageCarousel({ super.key, required this.images });

  @override
  _ImageCarouselState createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  
  // final List<String> pictureUrls = List.generate(
  //   5,
  //   (int index) => 'https://picsum.photos/id/${index + 200}/300/200',
  // );
    int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            viewportFraction: 1,
            onPageChanged: (index, _) => setState(() => activeIndex = index),
          ),
          items: widget.images.map(
                (String url) => Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(24)),
                  ),
                  width: MediaQuery.sizeOf(context).width,
                  margin: const EdgeInsets.symmetric(horizontal: 2),
                  child: Image.asset(url, fit: BoxFit.contain),
                ),
              )
          .toList(),
        ),
        CarouselIndicator(
          activeIndex: activeIndex,
          length: widget.images.length,  
        ),
      ],
    );
  }
}
