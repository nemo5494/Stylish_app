class OnboardingModel {
  String text;
  String description;
  String image;
  OnboardingModel(
      {required this.text, required this.description, required this.image});
}

List<OnboardingModel> onboardingmodel = [
  OnboardingModel(
      text: 'Choose Products',
      description:
          'Amet minim mollit non deserunt ullamco est \nsit aliqua dolor do amet sint. Velit officia \nconsequat duis enim velit mollit.',
      image: 'assets/images/shopping.png'),
  OnboardingModel(
      text: 'Make Payment',
      description:
          'Amet minim mollit non deserunt ullamco est \nsit aliqua dolor do amet sint. Velit officia \nconsequat duis enim velit mollit.',
      image: 'assets/images/consulting.png'),
  OnboardingModel(
      text: 'Get Your Order',
      description:
          'Amet minim mollit non deserunt ullamco est \nsit aliqua dolor do amet sint. Velit officia \nconsequat duis enim velit mollit.',
      image: 'assets/images/bag.png'),
];
