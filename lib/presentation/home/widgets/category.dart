import 'package:flutter/material.dart';
import 'package:wallpapers_app_ui/common/widgets/padding_vertical.dart';
import 'package:wallpapers_app_ui/core/configs/assets/app_images.dart';
import 'package:wallpapers_app_ui/core/configs/theme/app_colors.dart';

class MyCategory extends StatefulWidget {
  final List<CategoryType> categories;
  const MyCategory({ super.key, required this.categories });

  @override
  _MyCategoryState createState() => _MyCategoryState();
}

class _MyCategoryState extends State<MyCategory> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Header
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Category',
              style: TextStyle(
                color: AppColors.dark,
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            Text(
              'View All',
              style: TextStyle(
                color: AppColors.textBlue,
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
            )
          ],
        ),
        // Data
        PaddingVertical(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(4, (index){
              return Center(
                child: Container(
                  width: 78,
                  height: 56,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: AssetImage(widget.categories[index].imageUrl), //NetworkImage(widget.categories[index].imageUrl),
                      fit: BoxFit.cover,
                      alignment: Alignment.center
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 78,
                        height: 56,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.black54,
                          
                        ),
                        child: Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                widget.categories[index].title.replaceFirstMapped(widget.categories[index].title[0], (_) => widget.categories[index].title[0].toUpperCase()),
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          )
                        )
                      ),
                    ],
                  ),
                ));
                  }
                ),
              ),
        )
        ]
      );
  }
}