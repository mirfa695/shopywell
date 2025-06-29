import 'package:flutter/material.dart';

class PaymentSuccess extends StatelessWidget {
  const PaymentSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      content: Column(spacing: 10,mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset("assets/images/success.png"),
          Text("Payment done successfully",style: Theme.of(context).textTheme.titleMedium,)
        ],
      ),
    );
  }
}