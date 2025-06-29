import 'package:shopywell/modules/intro/ui/common_intro_page.dart';
import 'package:flutter/material.dart';

class PaymentIntro extends StatelessWidget {
  const PaymentIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return const CommonIntroPage(
      index: 2,
      title: "Make Payment",
      description: "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
      image: "assets/images/sales_consulting.png",
    );
  }
}