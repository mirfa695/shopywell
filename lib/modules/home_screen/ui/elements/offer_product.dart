import 'package:flutter/material.dart';

class OfferProduct extends StatelessWidget {
  const OfferProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Sponcered",style: Theme.of(context).textTheme.titleMedium),
            Container(
              height: 200,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),image: DecorationImage(image: AssetImage("assets/images/offer_product.png"),fit: BoxFit.cover)))
            ,Text("up to 50% off",style: Theme.of(context).textTheme.titleMedium,)
          ],
        ),
      ),
    );
  }
}