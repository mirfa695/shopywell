import 'package:shopywell/modules/intro/ui/common_intro_page.dart';
import 'package:flutter/material.dart';

class GetOrderIntro extends StatelessWidget {
  const GetOrderIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return const CommonIntroPage(
      index: 3,
      title: "Get Your Order",
      description: "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
      image: "assets/images/shopping_bag.png",
    );
  }
}