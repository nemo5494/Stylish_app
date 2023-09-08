import 'package:stylish_project/data/app_assets.dart';

class products_model {
  final String image;
  final String text;
  final String? description;
  final String newprice;
  final String oldprice;
  final String percentage;

  products_model(
      {required this.image,
      required this.text,
      this.description,
      required this.percentage,
      required this.newprice,
      required this.oldprice});
}

List<products_model> productsList1 = [
  products_model(
      image: AppAssets.kkurta,
      text: 'Women Printed Kurta',
      description: 'Neque porro quisquam est qui\ndolorem ipsum quia',
      percentage: '40% off',
      newprice: '₹1500',
      oldprice: '₹2499'),
  products_model(
      image: AppAssets.kHRXshoe,
      text: 'HRX by Hrithik Roshan',
      description: 'Neque porro quisquam est qui\ndolorem ipsum quia',
      percentage: '50% off',
      newprice: '₹2499',
      oldprice: '₹4999'),
];

List<products_model> productsList2 = [
  products_model(
    image: AppAssets.kwatch,
    text: 'IWC Schaffhausen\n2021 Pilot\'s Watch \n\"SIHH 2019\" 44mm',
    percentage: '60% off',
    newprice: '₹650',
    oldprice: '₹1599',
  ),
  products_model(
    image: AppAssets.ksneaker,
    text: 'Labbin White\nSneakers\nFor Men and Female',
    percentage: '70% off',
    newprice: '₹650',
    oldprice: '₹1250',
    description: '',
  ),
  products_model(
    image: AppAssets.khalfwomen,
    text: 'Mammon Women\'s \nHandbag \n(Set of 3, Beige)',
    percentage: '70% off',
    newprice: '₹650',
    oldprice: '₹1250',
    description: '',
  ),
];
