import 'package:stylish_project/data/app_assets.dart';

class FeatureClass {
  final String image;
  final String text;
  FeatureClass(this.text, {required this.image});
}

List<FeatureClass> featuremodel = [
  FeatureClass('Beauty', image: AppAssets.kbeauty),
  FeatureClass('Fashion', image: AppAssets.kfashion),
  FeatureClass('Kids', image: AppAssets.kkids),
  FeatureClass('Men', image: AppAssets.kmen),
  FeatureClass('Women', image: AppAssets.kwomen),
];
