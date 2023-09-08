import '../data/app_assets.dart';

class CheckoutModel {
  String image;
  String title;
  String price;
  String originalPrice;
  String percentage;
  String rating;
  String color1;
  String color2;
  CheckoutModel(
      {required this.title,
      required this.image,
      required this.price,
      required this.originalPrice,
      required this.percentage,
      required this.rating,
      required this.color1,
      required this.color2});
}

List<CheckoutModel> checkoutproducts = [
  CheckoutModel(
      title: 'Women’s Casual Wear',
      image: AppAssets.kkurta,
      price: '\$34.00',
      originalPrice: '\$65.00',
      percentage: 'upto 33% off',
      rating: '4.8',
      color1: 'Black',
      color2: 'Red'),
  CheckoutModel(
      title: 'Men’s Jacket',
      image: AppAssets.kmensjacket,
      price: '\$45.00',
      originalPrice: '\$67.00',
      percentage: 'upto 28% off',
      rating: '4.7',
      color1: 'Green',
      color2: 'Grey'),
];
