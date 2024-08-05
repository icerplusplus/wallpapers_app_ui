class AppImages {
  static const String basePath = 'assets/images/';
  static const String format = '.png';

  // category path
  static const String categoryPath = 'categories/';

  // heros path
  static const String heroPath = 'heros/';

  // wallpapers path
  static const String wallpaperPath = 'wallpapers/';

  // all category images
  static const String abstract = '$basePath${categoryPath}abstract$format';
  static const String art = '$basePath${categoryPath}art$format';
  static const String beach = '$basePath${categoryPath}beach$format';
  static const String bicycle = '$basePath${categoryPath}bicycle$format';
  static const String bike = '$basePath${categoryPath}bike$format';
  static const String car = '$basePath${categoryPath}car$format';
  static const String food = '$basePath${categoryPath}food$format';
  static const String gaming = '$basePath${categoryPath}gaming$format';
  static const String girl = '$basePath${categoryPath}girl$format';
  static const String god = '$basePath${categoryPath}god$format';
  static const String music = '$basePath${categoryPath}music$format';
  static const String nature = '$basePath${categoryPath}nature$format';
  static const String plane = '$basePath${categoryPath}plane$format';
  static const String plant = '$basePath${categoryPath}plant$format';
  static const String rain = '$basePath${categoryPath}rain$format';
  static const String space = '$basePath${categoryPath}space$format';
  static const String travel = '$basePath${categoryPath}travel$format';
  static const String wildlife = '$basePath${categoryPath}wildlife$format';

  // mock category data card
  static const List<CategoryType> categories = [
    CategoryType(title: 'abstract', imageUrl: abstract),
    CategoryType(title: 'gaming', imageUrl: gaming),
    CategoryType(title: 'music', imageUrl: music),
    CategoryType(title: 'girl', imageUrl: girl),
    CategoryType(title: 'art', imageUrl: art),
    CategoryType(title: 'beach', imageUrl: beach),
    CategoryType(title: 'bicycle', imageUrl: bicycle),
    CategoryType(title: 'bike', imageUrl: bike),
    CategoryType(title: 'car', imageUrl: car),
    CategoryType(title: 'food', imageUrl: food),
    CategoryType(title: 'god', imageUrl: god),
    CategoryType(title: 'nature', imageUrl: nature),
    CategoryType(title: 'plane', imageUrl: plane),
    CategoryType(title: 'plant', imageUrl: plant),
    CategoryType(title: 'rain', imageUrl: rain),
    CategoryType(title: 'space', imageUrl: space),
    CategoryType(title: 'travel', imageUrl: travel),
    CategoryType(title: 'wildlife', imageUrl: wildlife),
  ];

  // all mock heros data
  static const List<String> heros = [
    '$basePath${heroPath}hero_1$format',
    '$basePath${heroPath}hero_2$format',
    '$basePath${heroPath}hero_3$format',
  ];

  // mock wallpapers data
  static const List<String> wallpapers = [
    '$basePath${wallpaperPath}wallpaper_1$format',
    '$basePath${wallpaperPath}wallpaper_2$format',
    '$basePath${wallpaperPath}wallpaper_3$format',
    '$basePath${wallpaperPath}wallpaper_4$format',
    '$basePath${wallpaperPath}wallpaper_5$format',
    '$basePath${wallpaperPath}wallpaper_6$format',
  ];
}

class CategoryType {
  final String title;
  final String imageUrl;

  const CategoryType({required this.title, required this.imageUrl});
}
