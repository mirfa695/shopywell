import 'package:shopywell/modules/intro/ui/common_intro_page.dart';
import 'package:flutter/material.dart';

class ChooseProductsIntro extends StatelessWidget {
  const ChooseProductsIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return const CommonIntroPage(
      index: 1,
      title: "Choose Products",
      description: "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
      image: "assets/images/fashion_shop.png",
    );
  }
}