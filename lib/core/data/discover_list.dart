import 'package:ticket/core/components/exporting_packages.dart';

class DiscoverData {
  static final List<Discover> _discoverList = [
    Discover('YOUR AREA', AssetIcons.navigation, ConstColors.red),
    Discover('MUSIC', AssetIcons.musicTag, ConstColors.blue),
    Discover('SPORTS', AssetIcons.sport, ConstColors.primaryOrange),
  ];

  static List<Discover> get discoverList => _discoverList;
}
