import 'package:shopywell/common_widgets/common_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:shopywell/models/cart_item.dart';

class ProductPreviewCard extends StatelessWidget {
  final CartItem? cartItem;
  const ProductPreviewCard({super.key,this.cartItem});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width-20,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(spacing: 10,
            children: [
              Image.network(cartItem?.product?.image?? "https://cdn-icons-png.flaticon.com/512/13434/13434972.png",height: 130,width: 100,fit: BoxFit.cover,),
              Column(spacing: 3,
                mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text(cartItem?.product?.productName??"name unavailable",style: Theme.of(context).textTheme.titleMedium,),
                SizedBox(
                  width: 160,
                  child: Text(cartItem?.product?.overview??"")),
                Row(
                  spacing: 5,
                  children: [
                    CommonDropdown(value: "",hint: "${cartItem?.variant??""}",onChanged: (s){},width: 80,height: 30,),
                     CommonDropdown(value: "",hint: "Qty:${cartItem?.qty}",onChanged: (s){},width: 80,height: 30,),
                 
                ],),
                RichText(text: TextSpan(
                  text: "Delivery by",
                  style: Theme.of(context).textTheme.bodyMedium,
                  children: [
                    TextSpan(text: " 10 June 2XXX",style: TextStyle(fontWeight: FontWeight.bold))
                  ]
                ),)
              ],
              
              )
            ],
          ),
        ),
      ),
    );
  }
}